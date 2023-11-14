Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5AA7EB436
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 16:53:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9237810E454;
	Tue, 14 Nov 2023 15:53:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B12E010E454;
 Tue, 14 Nov 2023 15:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699977212; x=1731513212;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=oJ3L70+WCz5hA1RyBMC0XAHjP86uMYTYzqH9F010sFQ=;
 b=K1dtDSPg4C+h4R6W8SoHErApAwGPyVRTUjrHQFArD0W+tg3wEsvUW2yr
 kSf+ZQ/3Cm1y51qaC2xmp4mYjZvTg7/N1/FH5VpMIMXbqAz3Q+eHICUY8
 cAGnO1Spb3wI2bRQ/jKfmhqAJKXcJyOpVpON0+dLgvhs8xisbGOligxoo
 eGE8IeUIEKoLypnZatxokxJWsSE0rG4tGEqtVpMIquhWr4Js7/qvY6DK9
 emFAnIcIy3kRRNDXwuTPsSmt0Rn7HnP4wc5m0jF14e2t9xAgdscc59RHX
 j1r0v8sH4ZWm7opvgyTdP5FeX927c3LH3IIDfqO0M9C1HHlkLZ0BiC8zS w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="457174747"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; d="scan'208";a="457174747"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 07:53:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="908417609"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; d="scan'208";a="908417609"
Received: from hoffbaue-mobl1.ger.corp.intel.com (HELO [10.249.43.206])
 ([10.249.43.206])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 07:52:54 -0800
Message-ID: <265607f1-debc-410e-add3-198af804f37c@linux.intel.com>
Date: Tue, 14 Nov 2023 16:52:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Takashi Iwai <tiwai@suse.de>
References: <20231002193847.7134-1-maarten.lankhorst@linux.intel.com>
 <20231002193847.7134-11-maarten.lankhorst@linux.intel.com>
 <ZVNUxZzCGcxQzqJX@intel.com> <87bkbwsebl.fsf@intel.com>
 <ZVN4rQjLxROOjTE-@intel.com>
 <f72ce7ff-19a4-4a12-9ede-615a964e7228@linux.intel.com>
 <87ttpopc5i.wl-tiwai@suse.de>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <87ttpopc5i.wl-tiwai@suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
Cc: alsa-devel@alsa-project.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hey,

Den 2023-11-14 kl. 16:50, skrev Takashi Iwai:
> On Tue, 14 Nov 2023 15:39:16 +0100,
> Maarten Lankhorst wrote:
>>
>> Hey,
>>
>> Den 2023-11-14 kl. 14:39, skrev Ville Syrjälä:
>>
>>      On Tue, Nov 14, 2023 at 02:35:10PM +0200, Jani Nikula wrote:
>>      
>>          On Tue, 14 Nov 2023, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
>>          
>>              On Mon, Oct 02, 2023 at 09:38:44PM +0200, maarten.lankhorst@linux.intel.com wrote:
>>              
>>                  From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>>                  
>>                  Now that we can use -EPROBE_DEFER, it's no longer required to spin off
>>                  the snd_hdac_i915_init into a workqueue.
>>                  
>>                  Use the -EPROBE_DEFER mechanism instead, which must be returned in the
>>                  probe function.
>>                  
>>              This completely broke i915 audio!
>>              
>>              I also can't see any trace of this stuff ever being posted to
>>              intel-gfx so it never went through the CI.
>>              
>>              Please fix or revert ASAP.
>>              
>>          Cc: Jani, Suresh
>>          
>>          Ville, please file a bug at gitlab so we can track this, thanks.
>>          
>>      https://gitlab.freedesktop.org/drm/intel/-/issues/9671
>>      
>> Looks like a simple patch should be enough, can you test below?
> Seems that we reached to the same conclusion :)
>
> I took a quick look at other code paths, and sound/pci/hda/hda_intel.c
> is the only place that needs the correction.  Other (ASoC) drivers are
> either simply always returning the error or dealing only with -ENODEV
> case for skipping the HDMI codec.

Yeah, the original comment in the code confused me and led me to not 
handle -EPROBE_DEFER in the first place there.

Cheers,

Maarten

> thanks,
>
> Takashi
>
>> ----
>>
>> diff --git a/sound/pci/hda/hda_intel.c b/sound/pci/hda/hda_intel.c
>> index 058f6e6491f9a..946aaa487f200 100644
>> --- a/sound/pci/hda/hda_intel.c
>> +++ b/sound/pci/hda/hda_intel.c
>> @@ -2145,7 +2145,8 @@ static int azx_probe(struct pci_dev *pci,
>>                                                                     * for other chips, still continue probing as other
>>                                                                     * codecs can be on the same link.
>>                                                                     */
>> -                                                                 if (HDA_CONTROLLER_IN_GPU(pci)) {
>> +                                                                 if (HDA_CONTROLLER_IN_GPU(pci) ||
>> +                                                                     err == -EPROBE_DEFER) {
>>                                                                                          goto out_free;
>>                                                                    } else {
>>                                                                                          /* don't bother any longer */
>>
