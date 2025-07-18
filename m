Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCF3B0A1F2
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 13:31:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2D1810E977;
	Fri, 18 Jul 2025 11:31:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93E1810E972;
 Fri, 18 Jul 2025 11:31:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="------------NJQBe6N2aKidiAFTIeivJL72"
Message-ID: <9972db08-ccef-449f-9335-1c36b261d352@lankhorst.se>
Date: Fri, 18 Jul 2025 13:31:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/xe/display: Block hpd during suspend
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, imre.deak@intel.com
References: <20250717085425.1347043-1-dibin.moolakadan.subrahmanian@intel.com>
 <47db7bc5-2e0c-4d64-8d74-db5d3f90fa78@lankhorst.se>
 <07704628-3fcd-41c1-8318-ac9ead866d7d@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten@lankhorst.se>
In-Reply-To: <07704628-3fcd-41c1-8318-ac9ead866d7d@intel.com>
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--------------NJQBe6N2aKidiAFTIeivJL72
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



Den 2025-07-18 kl. 07:21, skrev Dibin Moolakadan Subrahmanian:
> On 17-07-2025 17:24, Maarten Lankhorst wrote:
>> Hey,
>>
>> When I looked at enabling -RT for Xe yesterday, I noticed this trace.
>>
>> https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-151626v2/shard-bmg-6/igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-3.html#dmesg-warnings488
>>
>> I independently discovered the bug as a result, and sent this patch to actually disable the irqs.
>>
>> https://patchwork.freedesktop.org/series/151728/
>>
>> If you have a reproducer, can  you confirm this fixes it?
> I was not able to reproduce this issue , but I did change to trigger hpd in suspend path
> to test my changes.
Can you try without your changes? It should be unnecessary with this change.

Kind regards,
~Maarten
>> Kind regards,
>> ~Maarten
>>
>> Den 2025-07-17 kl. 10:54, skrev Dibin Moolakadan Subrahmanian:
>>> It has been observed that during `xe_display_pm_suspend()` execution,
>>> an HPD interrupt can still be triggered, resulting in `dig_port_work`
>>> being scheduled. The issue arises when this work executes after
>>> `xe_display_pm_suspend_late()`, by which time the display is fully
>>> suspended.
>>>
>>> This can lead to errors such as "DC state mismatch", as the dig_port
>>> work accesses display resources that are no longer available or
>>> powered.
>>>
>>> To address this, introduce  'intel_hpd_block_all_encoders()' and
>>> 'intel_hpd_unblock_all_encoders()' functions, which iterate over all
>>> encoders and block/unblock HPD respectively.
>>>
>>> These are used to:
>>> - Block HPD IRQs before calling 'intel_hpd_cancel_work' in suspend
>>> - Unblock HPD IRQs after 'intel_hpd_init' in resume
>>>
>>> This will prevent 'dig_port_work' being scheduled during display
>>> suspend.
>>>
>>> Continuation of previous patch discussion:
>>> https://patchwork.freedesktop.org/patch/663964/
>>>
>>> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_hotplug.c | 24 ++++++++++++++++++--
>>>  drivers/gpu/drm/i915/display/intel_hotplug.h |  2 ++
>>>  drivers/gpu/drm/xe/display/xe_display.c      |  4 ++++
>>>  3 files changed, 28 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
>>> index 265aa97fcc75..7ffd8ded1c26 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
>>> @@ -223,6 +223,28 @@ queue_detection_work(struct intel_display *display, struct work_struct *work)
>>>  	return queue_work(display->wq.unordered, work);
>>>  }
>>>  
>>> +void intel_hpd_unblock_all_encoders(struct intel_display *display)
>>> +{
>>> +	struct intel_encoder *encoder;
>>> +
>>> +	if (!HAS_DISPLAY(display))
>>> +		return;
>>> +
>>> +	for_each_intel_encoder(display->drm, encoder)
>>> +		intel_hpd_unblock(encoder);
>>> +}
>>> +
>>> +void intel_hpd_block_all_encoders(struct intel_display *display)
>>> +{
>>> +	struct intel_encoder *encoder;
>>> +
>>> +	if (!HAS_DISPLAY(display))
>>> +		return;
>>> +
>>> +	for_each_intel_encoder(display->drm, encoder)
>>> +		intel_hpd_block(encoder);
>>> +}
>>> +
>>>  static void
>>>  intel_hpd_irq_storm_switch_to_polling(struct intel_display *display)
>>>  {
>>> @@ -971,8 +993,6 @@ void intel_hpd_cancel_work(struct intel_display *display)
>>>  
>>>  	spin_lock_irq(&display->irq.lock);
>>>  
>>> -	drm_WARN_ON(display->drm, get_blocked_hpd_pin_mask(display));
>>> -
>>>  	display->hotplug.long_hpd_pin_mask = 0;
>>>  	display->hotplug.short_hpd_pin_mask = 0;
>>>  	display->hotplug.event_bits = 0;
>>> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu/drm/i915/display/intel_hotplug.h
>>> index edc41c9d3d65..3938c93d2385 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_hotplug.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
>>> @@ -34,5 +34,7 @@ void intel_hpd_debugfs_register(struct intel_display *display);
>>>  void intel_hpd_enable_detection_work(struct intel_display *display);
>>>  void intel_hpd_disable_detection_work(struct intel_display *display);
>>>  bool intel_hpd_schedule_detection(struct intel_display *display);
>>> +void intel_hpd_block_all_encoders(struct intel_display *display);
>>> +void intel_hpd_unblock_all_encoders(struct intel_display *display);
>>>  
>>>  #endif /* __INTEL_HOTPLUG_H__ */
>>> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
>>> index e2e0771cf274..51584ea3ed09 100644
>>> --- a/drivers/gpu/drm/xe/display/xe_display.c
>>> +++ b/drivers/gpu/drm/xe/display/xe_display.c
>>> @@ -340,6 +340,8 @@ void xe_display_pm_suspend(struct xe_device *xe)
>>>  
>>>  	xe_display_flush_cleanup_work(xe);
>>>  
>>> +	intel_hpd_block_all_encoders(display);
>>> +
>>>  	intel_hpd_cancel_work(display);
>>>  
>>>  	if (has_display(xe)) {
>>> @@ -471,6 +473,8 @@ void xe_display_pm_resume(struct xe_device *xe)
>>>  
>>>  	intel_hpd_init(display);
>>>  
>>> +	intel_hpd_unblock_all_encoders(display);
>>> +
>>>  	if (has_display(xe)) {
>>>  		intel_display_driver_resume(display);
>>>  		drm_kms_helper_poll_enable(&xe->drm);

--------------NJQBe6N2aKidiAFTIeivJL72
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">Den 2025-07-18 kl. 07:21, skrev Dibin
      Moolakadan Subrahmanian:<br>
    </div>
    <blockquote type="cite"
      cite="mid:07704628-3fcd-41c1-8318-ac9ead866d7d@intel.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <div class="moz-cite-prefix">On 17-07-2025 17:24, Maarten
        Lankhorst wrote:<br>
      </div>
      <blockquote type="cite"
        cite="mid:47db7bc5-2e0c-4d64-8d74-db5d3f90fa78@lankhorst.se">
        <pre wrap="" class="moz-quote-pre">Hey,

When I looked at enabling -RT for Xe yesterday, I noticed this trace.

<a class="moz-txt-link-freetext"
href="https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-151626v2/shard-bmg-6/igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-3.html#dmesg-warnings488"
        moz-do-not-send="true">https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-151626v2/shard-bmg-6/igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-3.html#dmesg-warnings488</a>

I independently discovered the bug as a result, and sent this patch to actually disable the irqs.

<a class="moz-txt-link-freetext"
        href="https://patchwork.freedesktop.org/series/151728/"
        moz-do-not-send="true">https://patchwork.freedesktop.org/series/151728/</a>

If you have a reproducer, can  you confirm this fixes it?</pre>
      </blockquote>
      <pre>I was not able to reproduce this issue , but I did change to trigger hpd in suspend path
to test my changes.
</pre>
    </blockquote>
    Can you try without your changes? It should be unnecessary with this
    change.<br>
    <br>
    Kind regards,<br>
    ~Maarten<br>
    <blockquote type="cite"
      cite="mid:07704628-3fcd-41c1-8318-ac9ead866d7d@intel.com">
      <pre>
</pre>
      <blockquote type="cite"
        cite="mid:47db7bc5-2e0c-4d64-8d74-db5d3f90fa78@lankhorst.se">
        <pre wrap="" class="moz-quote-pre">Kind regards,
~Maarten

Den 2025-07-17 kl. 10:54, skrev Dibin Moolakadan Subrahmanian:
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">It has been observed that during `xe_display_pm_suspend()` execution,
an HPD interrupt can still be triggered, resulting in `dig_port_work`
being scheduled. The issue arises when this work executes after
`xe_display_pm_suspend_late()`, by which time the display is fully
suspended.

This can lead to errors such as "DC state mismatch", as the dig_port
work accesses display resources that are no longer available or
powered.

To address this, introduce  'intel_hpd_block_all_encoders()' and
'intel_hpd_unblock_all_encoders()' functions, which iterate over all
encoders and block/unblock HPD respectively.

These are used to:
- Block HPD IRQs before calling 'intel_hpd_cancel_work' in suspend
- Unblock HPD IRQs after 'intel_hpd_init' in resume

This will prevent 'dig_port_work' being scheduled during display
suspend.

Continuation of previous patch discussion:
<a class="moz-txt-link-freetext"
          href="https://patchwork.freedesktop.org/patch/663964/"
          moz-do-not-send="true">https://patchwork.freedesktop.org/patch/663964/</a>

Signed-off-by: Dibin Moolakadan Subrahmanian <a
          class="moz-txt-link-rfc2396E"
          href="mailto:dibin.moolakadan.subrahmanian@intel.com"
          moz-do-not-send="true">&lt;dibin.moolakadan.subrahmanian@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c | 24 ++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_hotplug.h |  2 ++
 drivers/gpu/drm/xe/display/xe_display.c      |  4 ++++
 3 files changed, 28 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 265aa97fcc75..7ffd8ded1c26 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -223,6 +223,28 @@ queue_detection_work(struct intel_display *display, struct work_struct *work)
 	return queue_work(display-&gt;wq.unordered, work);
 }
 
+void intel_hpd_unblock_all_encoders(struct intel_display *display)
+{
+	struct intel_encoder *encoder;
+
+	if (!HAS_DISPLAY(display))
+		return;
+
+	for_each_intel_encoder(display-&gt;drm, encoder)
+		intel_hpd_unblock(encoder);
+}
+
+void intel_hpd_block_all_encoders(struct intel_display *display)
+{
+	struct intel_encoder *encoder;
+
+	if (!HAS_DISPLAY(display))
+		return;
+
+	for_each_intel_encoder(display-&gt;drm, encoder)
+		intel_hpd_block(encoder);
+}
+
 static void
 intel_hpd_irq_storm_switch_to_polling(struct intel_display *display)
 {
@@ -971,8 +993,6 @@ void intel_hpd_cancel_work(struct intel_display *display)
 
 	spin_lock_irq(&amp;display-&gt;irq.lock);
 
-	drm_WARN_ON(display-&gt;drm, get_blocked_hpd_pin_mask(display));
-
 	display-&gt;hotplug.long_hpd_pin_mask = 0;
 	display-&gt;hotplug.short_hpd_pin_mask = 0;
 	display-&gt;hotplug.event_bits = 0;
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu/drm/i915/display/intel_hotplug.h
index edc41c9d3d65..3938c93d2385 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.h
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
@@ -34,5 +34,7 @@ void intel_hpd_debugfs_register(struct intel_display *display);
 void intel_hpd_enable_detection_work(struct intel_display *display);
 void intel_hpd_disable_detection_work(struct intel_display *display);
 bool intel_hpd_schedule_detection(struct intel_display *display);
+void intel_hpd_block_all_encoders(struct intel_display *display);
+void intel_hpd_unblock_all_encoders(struct intel_display *display);
 
 #endif /* __INTEL_HOTPLUG_H__ */
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index e2e0771cf274..51584ea3ed09 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -340,6 +340,8 @@ void xe_display_pm_suspend(struct xe_device *xe)
 
 	xe_display_flush_cleanup_work(xe);
 
+	intel_hpd_block_all_encoders(display);
+
 	intel_hpd_cancel_work(display);
 
 	if (has_display(xe)) {
@@ -471,6 +473,8 @@ void xe_display_pm_resume(struct xe_device *xe)
 
 	intel_hpd_init(display);
 
+	intel_hpd_unblock_all_encoders(display);
+
 	if (has_display(xe)) {
 		intel_display_driver_resume(display);
 		drm_kms_helper_poll_enable(&amp;xe-&gt;drm);
</pre>
        </blockquote>
      </blockquote>
    </blockquote>
    <br>
  </body>
</html>

--------------NJQBe6N2aKidiAFTIeivJL72--
