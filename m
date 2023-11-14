Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C777EB287
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 15:39:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 392A910E44D;
	Tue, 14 Nov 2023 14:39:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BB1110E0A0;
 Tue, 14 Nov 2023 14:39:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699972779; x=1731508779;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to;
 bh=RNu88Qa8kRK+fGGgkqNdrWpncasm0z6GqSV1j3RyLMc=;
 b=X/U51jxu0lFEgTdgkj8qjIkQ788SUdWcz6O7Rj2qk5wLys84LpLwd6SK
 PDcFoo2Y5ElCz3nJXDzggbKka3onQM2LJC71mxCmCR6u+1s8GhKIJjG9n
 /YVr0ME+EG2tfE9U6IYkt0lpiD3XbvMfJFUms1/lT+CVydnmlwxF7TR52
 IdBcIkcwCLXvlvdLECH5yVnKGpbqJa6065s1qwrTeAQKFFIRBxv9Qtf+8
 y6HyALkuB2E3FVFbx28r3woHRN3dterM8mXifBLvm4YcBI6RJShjAZb/z
 0puuHQM9x1TMG2BXphOpSF9z51/Za4ln8CTAIFcLGlHK6Q+dzSY8TbijK w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="390459805"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; 
 d="scan'208,217";a="390459805"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 06:39:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; d="scan'208,217";a="6045497"
Received: from pchochol-mobl.ger.corp.intel.com (HELO [10.251.218.4])
 ([10.251.218.4])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 06:39:18 -0800
Content-Type: multipart/alternative;
 boundary="------------AjDDkQ5gEu4F90u0JvOrwefa"
Message-ID: <f72ce7ff-19a4-4a12-9ede-615a964e7228@linux.intel.com>
Date: Tue, 14 Nov 2023 15:39:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
References: <20231002193847.7134-1-maarten.lankhorst@linux.intel.com>
 <20231002193847.7134-11-maarten.lankhorst@linux.intel.com>
 <ZVNUxZzCGcxQzqJX@intel.com> <87bkbwsebl.fsf@intel.com>
 <ZVN4rQjLxROOjTE-@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <ZVN4rQjLxROOjTE-@intel.com>
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 11/14] ALSA: hda/intel: Move
 snd_hdac_i915_init to before probe_work.
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
Cc: alsa-devel@alsa-project.org, Takashi Iwai <tiwai@suse.de>,
 intel-gfx@lists.freedesktop.org, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--------------AjDDkQ5gEu4F90u0JvOrwefa
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hey,

Den 2023-11-14 kl. 14:39, skrev Ville Syrjälä:
> On Tue, Nov 14, 2023 at 02:35:10PM +0200, Jani Nikula wrote:
>> On Tue, 14 Nov 2023, Ville Syrjälä<ville.syrjala@linux.intel.com>  wrote:
>>> On Mon, Oct 02, 2023 at 09:38:44PM +0200,maarten.lankhorst@linux.intel.com  wrote:
>>>> From: Maarten Lankhorst<maarten.lankhorst@linux.intel.com>
>>>>
>>>> Now that we can use -EPROBE_DEFER, it's no longer required to spin off
>>>> the snd_hdac_i915_init into a workqueue.
>>>>
>>>> Use the -EPROBE_DEFER mechanism instead, which must be returned in the
>>>> probe function.
>>> This completely broke i915 audio!
>>>
>>> I also can't see any trace of this stuff ever being posted to
>>> intel-gfx so it never went through the CI.
>>>
>>> Please fix or revert ASAP.
>> Cc: Jani, Suresh
>>
>> Ville, please file a bug at gitlab so we can track this, thanks.
> https://gitlab.freedesktop.org/drm/intel/-/issues/9671

Looks like a simple patch should be enough, can you test below?

----

diff --git a/sound/pci/hda/hda_intel.c b/sound/pci/hda/hda_intel.c
index 058f6e6491f9a..946aaa487f200 100644
--- a/sound/pci/hda/hda_intel.c
+++ b/sound/pci/hda/hda_intel.c
@@ -2145,7 +2145,8 @@ static int azx_probe(struct pci_dev *pci,
  			 * for other chips, still continue probing as other
  			 * codecs can be on the same link.
  			 */
-			if (HDA_CONTROLLER_IN_GPU(pci)) {
+			if (HDA_CONTROLLER_IN_GPU(pci) ||
+			    err == -EPROBE_DEFER) {
  				goto out_free;
  			} else {
  				/* don't bother any longer */

--------------AjDDkQ5gEu4F90u0JvOrwefa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hey,<br>
    </p>
    <div class="moz-cite-prefix">Den 2023-11-14 kl. 14:39, skrev Ville
      Syrjälä:<br>
    </div>
    <blockquote type="cite" cite="mid:ZVN4rQjLxROOjTE-@intel.com">
      <pre class="moz-quote-pre" wrap="">On Tue, Nov 14, 2023 at 02:35:10PM +0200, Jani Nikula wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">On Tue, 14 Nov 2023, Ville Syrjälä <a class="moz-txt-link-rfc2396E" href="mailto:ville.syrjala@linux.intel.com">&lt;ville.syrjala@linux.intel.com&gt;</a> wrote:
</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">On Mon, Oct 02, 2023 at 09:38:44PM +0200, <a class="moz-txt-link-abbreviated" href="mailto:maarten.lankhorst@linux.intel.com">maarten.lankhorst@linux.intel.com</a> wrote:
</pre>
          <blockquote type="cite">
            <pre class="moz-quote-pre" wrap="">From: Maarten Lankhorst <a class="moz-txt-link-rfc2396E" href="mailto:maarten.lankhorst@linux.intel.com">&lt;maarten.lankhorst@linux.intel.com&gt;</a>

Now that we can use -EPROBE_DEFER, it's no longer required to spin off
the snd_hdac_i915_init into a workqueue.

Use the -EPROBE_DEFER mechanism instead, which must be returned in the
probe function.
</pre>
          </blockquote>
          <pre class="moz-quote-pre" wrap="">
This completely broke i915 audio!

I also can't see any trace of this stuff ever being posted to 
intel-gfx so it never went through the CI.

Please fix or revert ASAP.
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
Cc: Jani, Suresh

Ville, please file a bug at gitlab so we can track this, thanks.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
<a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/intel/-/issues/9671">https://gitlab.freedesktop.org/drm/intel/-/issues/9671</a></pre>
    </blockquote>
    <p>Looks like a simple patch should be enough, can you test below?</p>
    <p>----<br>
    </p>
    <pre>diff --git a/sound/pci/hda/hda_intel.c b/sound/pci/hda/hda_intel.c
index 058f6e6491f9a..946aaa487f200 100644
--- a/sound/pci/hda/hda_intel.c
+++ b/sound/pci/hda/hda_intel.c
@@ -2145,7 +2145,8 @@ static int azx_probe(struct pci_dev *pci,
 			 * for other chips, still continue probing as other
 			 * codecs can be on the same link.
 			 */
-			if (HDA_CONTROLLER_IN_GPU(pci)) {
+			if (HDA_CONTROLLER_IN_GPU(pci) ||
+			    err == -EPROBE_DEFER) {
 				goto out_free;
 			} else {
 				/* don't bother any longer */

</pre>
  </body>
</html>

--------------AjDDkQ5gEu4F90u0JvOrwefa--
