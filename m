Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A00388327F2
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 11:47:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37A8710E1AE;
	Fri, 19 Jan 2024 10:47:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71CCF10E1C6
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jan 2024 10:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705661271; x=1737197271;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to;
 bh=BJndfCkB2OhH/x6dobrnj+J93MllnWKU1EOeGJdbL8A=;
 b=eWo9/ROnMGnrwKzlgojErERIyWMRvzqe3Jkb1Vb5ISIcdg1fRUbDOFKL
 KOyJmd4hEzh7ZxHWsTzHxZZgYIOCASlqA2KITQ9sO5/SWtq3IY/V8XxLw
 ky17O2i/e1kLgYucvxa0FM6TXggba0csjkEez8XhjCqwxqbX2ZWNY+AN0
 BQotlNMamA1R5aKrdyZzK+E/D31yceFI4a7vgM1SQuX2tMp4eN4Z6EbE0
 4wSTbIYen8oH8g/xWjbvFwOIfpjbg2b/xRIHi4XjFjg5PJ3M4ppqbdFBq
 NTrW2KB4tWd6uSpFTMRjGBzWb0vabzIJA5bbLElhFEFZG7NvqOJPVavSz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="8119524"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; d="scan'208,217";a="8119524"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:47:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="819035897"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; 
 d="scan'208,217";a="819035897"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.246.32.214])
 ([10.246.32.214])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:47:44 -0800
Content-Type: multipart/alternative;
 boundary="------------E64snj7wpRQzZsNb9Gj4Nohq"
Message-ID: <cdbdeae2-041c-43ef-8cba-d57546b50e88@linux.intel.com>
Date: Fri, 19 Jan 2024 11:47:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/16] drm/i915: Disable the "binder"
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-6-ville.syrjala@linux.intel.com>
 <ux7q2bmbk47rnke6n2qo3dabdx7lxkuwcy5rrauwsyz7v2bthc@p7jgbcz6vs7d>
 <32646e92-e06b-45a4-8d25-185be9c1e4d4@intel.com> <ZamwS6sLlEdJRv59@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <ZamwS6sLlEdJRv59@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org,
 =?UTF-8?Q?Micha=C5=82_Winiarski?= <michal.winiarski@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--------------E64snj7wpRQzZsNb9Gj4Nohq
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 1/19/2024 12:12 AM, Ville Syrjälä wrote:
> On Wed, Jan 17, 2024 at 06:46:24PM +0100, Nirmoy Das wrote:
>> On 1/17/2024 3:13 PM, Michał Winiarski wrote:
>>> On Tue, Jan 16, 2024 at 09:56:25AM +0200, Ville Syrjala wrote:
>>>> From: Ville Syrjälä<ville.syrjala@linux.intel.com>
>>>>
>>>> Now that the GGTT PTE updates go straight to GSMBASE (bypassing
>>>> GTTMMADR) there should be no more risk of system hangs? So the
>>>> "binder" (ie. update the PTEs via MI_UPDATE_GTT) is no longer
>>>> necessary, disable it.
>>>>
>>>> My main worry with the MI_UPDATE_GTT are:
>>>> - only used on this one platform so very limited testing coverage
>>>> - async so more opprtunities to screw things up
>>>> - what happens if the engine hangs while we're waiting for MI_UPDATE_GTT
>>>>     to finish?
>>>> - requires working command submission, so even getting a working
>>>>     display now depends on a lot more extra components working correctly
>>>>
>>>> TODO: MI_UPDATE_GTT might be interesting as an optimization
>>>> though, so perhaps someone should look into always using it
>>>> (assuming the GPU is alive and well)?
>>>>
>>>> v2: Keep using MI_UPDATE_GTT on VM guests
>>>>
>>>> Cc: Paz Zcharya<pazz@chromium.org>
>>>> Cc: Nirmoy Das<nirmoy.das@intel.com>
>>>> Signed-off-by: Ville Syrjälä<ville.syrjala@linux.intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/gt/intel_gtt.c | 3 ++-
>>>>    1 file changed, 2 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
>>>> index 86f73fe558ca..e83dabc56a14 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
>>>> @@ -24,7 +24,8 @@
>>>>    bool i915_ggtt_require_binder(struct drm_i915_private *i915)
>>>>    {
>>>>    	/* Wa_13010847436 & Wa_14019519902 */
>>>> -	return MEDIA_VER_FULL(i915) == IP_VER(13, 0);
>>>> +	return i915_run_as_guest() &&
>>>> +		MEDIA_VER_FULL(i915) == IP_VER(13, 0);
>>> Note that i915_run_as_guest() is not the most reliable way to decide
>>> whether to use MI_UPDATE_GTT or straight to GSMBASE, as it requires the
>>> hypervisor to "opt-in" and set the X86_FEATURE_HYPERVISOR.
>>> If it's not set - the driver will go into GSMBASE, which is not mapped
>>> inside the guest.
>>> Does the system firmware advertise whether GSMBASE is "open" or "closed"
>>> to CPU access in any way?
>> Had a chat with David from IVE team, David suggested to read 0x138914 to
>> determine that.  "GOP needs to qualify the WA by reading GFX MMIO offset
>> 0x138914 and verify the value there is 0x1." -> as per the HSD-22018444074
> OK, so we can confirm the firmware is on board. I suppose no real harm
> in doing so even though it would clearly be a rather weird if someone
> would ship some ancient firmware that doesn't handle this.
>
> But that still won't help with the guest side handling because that
> register will read the same in the guest.


We are back to the same question :/ How about
if (boot_cpu_has(X86_FEATURE_HYPERVISOR) && !i915_run_as_guest()

disable binder

Regards,

Nirmoy

>
--------------E64snj7wpRQzZsNb9Gj4Nohq
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 1/19/2024 12:12 AM, Ville Syrjälä
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:ZamwS6sLlEdJRv59@intel.com">
      <pre class="moz-quote-pre" wrap="">On Wed, Jan 17, 2024 at 06:46:24PM +0100, Nirmoy Das wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
On 1/17/2024 3:13 PM, Michał Winiarski wrote:
</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">On Tue, Jan 16, 2024 at 09:56:25AM +0200, Ville Syrjala wrote:
</pre>
          <blockquote type="cite">
            <pre class="moz-quote-pre" wrap="">From: Ville Syrjälä <a class="moz-txt-link-rfc2396E" href="mailto:ville.syrjala@linux.intel.com">&lt;ville.syrjala@linux.intel.com&gt;</a>

Now that the GGTT PTE updates go straight to GSMBASE (bypassing
GTTMMADR) there should be no more risk of system hangs? So the
"binder" (ie. update the PTEs via MI_UPDATE_GTT) is no longer
necessary, disable it.

My main worry with the MI_UPDATE_GTT are:
- only used on this one platform so very limited testing coverage
- async so more opprtunities to screw things up
- what happens if the engine hangs while we're waiting for MI_UPDATE_GTT
   to finish?
- requires working command submission, so even getting a working
   display now depends on a lot more extra components working correctly

TODO: MI_UPDATE_GTT might be interesting as an optimization
though, so perhaps someone should look into always using it
(assuming the GPU is alive and well)?

v2: Keep using MI_UPDATE_GTT on VM guests

Cc: Paz Zcharya <a class="moz-txt-link-rfc2396E" href="mailto:pazz@chromium.org">&lt;pazz@chromium.org&gt;</a>
Cc: Nirmoy Das <a class="moz-txt-link-rfc2396E" href="mailto:nirmoy.das@intel.com">&lt;nirmoy.das@intel.com&gt;</a>
Signed-off-by: Ville Syrjälä <a class="moz-txt-link-rfc2396E" href="mailto:ville.syrjala@linux.intel.com">&lt;ville.syrjala@linux.intel.com&gt;</a>
---
  drivers/gpu/drm/i915/gt/intel_gtt.c | 3 ++-
  1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 86f73fe558ca..e83dabc56a14 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -24,7 +24,8 @@
  bool i915_ggtt_require_binder(struct drm_i915_private *i915)
  {
  	/* Wa_13010847436 &amp; Wa_14019519902 */
-	return MEDIA_VER_FULL(i915) == IP_VER(13, 0);
+	return i915_run_as_guest() &amp;&amp;
+		MEDIA_VER_FULL(i915) == IP_VER(13, 0);
</pre>
          </blockquote>
          <pre class="moz-quote-pre" wrap="">Note that i915_run_as_guest() is not the most reliable way to decide
whether to use MI_UPDATE_GTT or straight to GSMBASE, as it requires the
hypervisor to "opt-in" and set the X86_FEATURE_HYPERVISOR.
If it's not set - the driver will go into GSMBASE, which is not mapped
inside the guest.
Does the system firmware advertise whether GSMBASE is "open" or "closed"
to CPU access in any way?
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
Had a chat with David from IVE team, David suggested to read 0x138914 to 
determine that.  "GOP needs to qualify the WA by reading GFX MMIO offset 
0x138914 and verify the value there is 0x1." -&gt; as per the HSD-22018444074
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
OK, so we can confirm the firmware is on board. I suppose no real harm
in doing so even though it would clearly be a rather weird if someone
would ship some ancient firmware that doesn't handle this.

But that still won't help with the guest side handling because that
register will read the same in the guest.</pre>
    </blockquote>
    <p><br>
    </p>
    <p>We are back to the same question :/ How about<br>
      if (boot_cpu_has(X86_FEATURE_HYPERVISOR) &amp;&amp; !<span
      style="white-space: pre-wrap">i915_run_as_guest()</span></p>
    <p><span style="white-space: pre-wrap">	disable binder</span></p>
    <p><span style="white-space: pre-wrap">
</span></p>
    <p><span style="white-space: pre-wrap">Regards,</span></p>
    <p><span style="white-space: pre-wrap">Nirmoy
</span></p>
    <p><span style="white-space: pre-wrap">	
</span></p>
    <blockquote type="cite" cite="mid:ZamwS6sLlEdJRv59@intel.com">
      <pre class="moz-quote-pre" wrap="">

</pre>
    </blockquote>
  </body>
</html>

--------------E64snj7wpRQzZsNb9Gj4Nohq--
