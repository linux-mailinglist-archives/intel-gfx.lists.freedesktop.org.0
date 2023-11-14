Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD0C7EB0E1
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 14:29:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D34410E206;
	Tue, 14 Nov 2023 13:29:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33C7C10E202;
 Tue, 14 Nov 2023 13:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699968581; x=1731504581;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=vwx3xvYGbHUkwtN7ZYKT932p6wwa9UKztjxYNr4OIhg=;
 b=WfVNZoe9GbclgciZZXilLRQCCC6xrIRVYy0zFRU5Ds+OJ2810534eWL3
 4xTDlQm638540dXK10NFZlviZwUOYX2cMI6wzn3zp2kSul/ZlzCExfifg
 hzsrZvz4J5YHSUKFeyeCdhEfT/2gTX3IzqChZy+EBYv6WXQt9zmUOakE2
 O6ZNozIfKqZ3FlppS4ssPT65TDTl7iw64xl2BmPux7y75IF8kjTJL6dFk
 NAD0b63B2VFqvneks/6nGuRY+E7K6VymalTiaZjtiQcy8bT8hUXMkZRlD
 /oqytIU+xS1qm/4+XrT33oESFI7j9eVac3RSBNvAgCeSOhzy5XrYQ4dws w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="390446759"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; d="scan'208";a="390446759"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 05:29:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="855276369"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; d="scan'208";a="855276369"
Received: from mehlinma-mobl.ger.corp.intel.com (HELO [10.249.44.16])
 ([10.249.44.16])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 05:29:33 -0800
Message-ID: <569f8832-25f1-45be-bb60-50f5a76d8e44@linux.intel.com>
Date: Tue, 14 Nov 2023 14:29:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20231002193847.7134-1-maarten.lankhorst@linux.intel.com>
 <20231002193847.7134-11-maarten.lankhorst@linux.intel.com>
 <ZVNUxZzCGcxQzqJX@intel.com> <87bkbwsebl.fsf@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <87bkbwsebl.fsf@intel.com>
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
Cc: alsa-devel@alsa-project.org, Takashi Iwai <tiwai@suse.de>,
 intel-gfx@lists.freedesktop.org, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hey,

Den 2023-11-14 kl. 13:35, skrev Jani Nikula:
> On Tue, 14 Nov 2023, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
>> On Mon, Oct 02, 2023 at 09:38:44PM +0200, maarten.lankhorst@linux.intel.com wrote:
>>> From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>>>
>>> Now that we can use -EPROBE_DEFER, it's no longer required to spin off
>>> the snd_hdac_i915_init into a workqueue.
>>>
>>> Use the -EPROBE_DEFER mechanism instead, which must be returned in the
>>> probe function.
>> This completely broke i915 audio!
>>
>> I also can't see any trace of this stuff ever being posted to
>> intel-gfx so it never went through the CI.
>>
>> Please fix or revert ASAP.
> Cc: Jani, Suresh
>
> Ville, please file a bug at gitlab so we can track this, thanks.

I've originally tested this on TGL and DG2, so can you be more specific 
on what broke?

Cheers,

~Maarten

>>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>>> Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
>>> Reviewed-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
>>> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
>>> ---
>>>   sound/pci/hda/hda_intel.c | 54 +++++++++++++++++++--------------------
>>>   1 file changed, 27 insertions(+), 27 deletions(-)
>>>
>>> diff --git a/sound/pci/hda/hda_intel.c b/sound/pci/hda/hda_intel.c
>>> index e42ad0e816e1..9dad3607596a 100644
>>> --- a/sound/pci/hda/hda_intel.c
>>> +++ b/sound/pci/hda/hda_intel.c
>>> @@ -2135,6 +2135,33 @@ static int azx_probe(struct pci_dev *pci,
>>>   
>>>   	pci_set_drvdata(pci, card);
>>>   
>>> +#ifdef CONFIG_SND_HDA_I915
>>> +	/* bind with i915 if needed */
>>> +	if (chip->driver_caps & AZX_DCAPS_I915_COMPONENT) {
>>> +		err = snd_hdac_i915_init(azx_bus(chip), false);
>>> +		if (err < 0) {
>>> +			/* if the controller is bound only with HDMI/DP
>>> +			 * (for HSW and BDW), we need to abort the probe;
>>> +			 * for other chips, still continue probing as other
>>> +			 * codecs can be on the same link.
>>> +			 */
>>> +			if (HDA_CONTROLLER_IN_GPU(pci)) {
>>> +				goto out_free;
>>> +			} else {
>>> +				/* don't bother any longer */
>>> +				chip->driver_caps &= ~AZX_DCAPS_I915_COMPONENT;
>>> +			}
>>> +		}
>>> +
>>> +		/* HSW/BDW controllers need this power */
>>> +		if (HDA_CONTROLLER_IN_GPU(pci))
>>> +			hda->need_i915_power = true;
>>> +	}
>>> +#else
>>> +	if (HDA_CONTROLLER_IN_GPU(pci))
>>> +		dev_err(card->dev, "Haswell/Broadwell HDMI/DP must build in CONFIG_SND_HDA_I915\n");
>>> +#endif
>>> +
>>>   	err = register_vga_switcheroo(chip);
>>>   	if (err < 0) {
>>>   		dev_err(card->dev, "Error registering vga_switcheroo client\n");
>>> @@ -2162,11 +2189,6 @@ static int azx_probe(struct pci_dev *pci,
>>>   	}
>>>   #endif /* CONFIG_SND_HDA_PATCH_LOADER */
>>>   
>>> -#ifndef CONFIG_SND_HDA_I915
>>> -	if (HDA_CONTROLLER_IN_GPU(pci))
>>> -		dev_err(card->dev, "Haswell/Broadwell HDMI/DP must build in CONFIG_SND_HDA_I915\n");
>>> -#endif
>>> -
>>>   	if (schedule_probe)
>>>   		schedule_delayed_work(&hda->probe_work, 0);
>>>   
>>> @@ -2264,28 +2286,6 @@ static int azx_probe_continue(struct azx *chip)
>>>   	to_hda_bus(bus)->bus_probing = 1;
>>>   	hda->probe_continued = 1;
>>>   
>>> -	/* bind with i915 if needed */
>>> -	if (chip->driver_caps & AZX_DCAPS_I915_COMPONENT) {
>>> -		err = snd_hdac_i915_init(bus, true);
>>> -		if (err < 0) {
>>> -			/* if the controller is bound only with HDMI/DP
>>> -			 * (for HSW and BDW), we need to abort the probe;
>>> -			 * for other chips, still continue probing as other
>>> -			 * codecs can be on the same link.
>>> -			 */
>>> -			if (HDA_CONTROLLER_IN_GPU(pci)) {
>>> -				goto out_free;
>>> -			} else {
>>> -				/* don't bother any longer */
>>> -				chip->driver_caps &= ~AZX_DCAPS_I915_COMPONENT;
>>> -			}
>>> -		}
>>> -
>>> -		/* HSW/BDW controllers need this power */
>>> -		if (HDA_CONTROLLER_IN_GPU(pci))
>>> -			hda->need_i915_power = true;
>>> -	}
>>> -
>>>   	/* Request display power well for the HDA controller or codec. For
>>>   	 * Haswell/Broadwell, both the display HDA controller and codec need
>>>   	 * this power. For other platforms, like Baytrail/Braswell, only the
>>> -- 
>>> 2.40.1
