Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EDE67EAFE8
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 13:35:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40B0710E04F;
	Tue, 14 Nov 2023 12:35:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C4A910E04F;
 Tue, 14 Nov 2023 12:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699965317; x=1731501317;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=rgBX+6BNPPignD2WXoRNHkw+DgIpZgv7ToDXL12eqIQ=;
 b=YdVDvZv+BLGjTK0cTYfZigEGON1ikNLF7NO+/b6LvUaLbuYBBZjsmQIb
 JvfH8V45GYdns5pLKx+r8FG3qfd9NX17TuTTTMBLqr665eFMnfCgCe7WK
 o3DsdsRiydhFa5/u8K1w02CcUDWvU/wJDj1oWt4LuF9cIAQa2HPUsBhdt
 XL3VoQUVoEuRWR09Do8ZPooDWUpaqzs7MYUQBg1G+kyjGiqJbuv6fnhMN
 2fa0FmQ7jiiOV3JwHbe4Zmq/8Qxy78sPgnTiSbSs9TXl5DPeXrwr96h+A
 3eVRDDxkwJNaa33onKaRmNSHKewUKBC/QkRbcS/7NxuJgd4uCejm+f7SH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="421743945"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; d="scan'208";a="421743945"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 04:35:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; 
   d="scan'208";a="5792560"
Received: from hatran1-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.56.145])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 04:35:14 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 maarten.lankhorst@linux.intel.com
In-Reply-To: <ZVNUxZzCGcxQzqJX@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231002193847.7134-1-maarten.lankhorst@linux.intel.com>
 <20231002193847.7134-11-maarten.lankhorst@linux.intel.com>
 <ZVNUxZzCGcxQzqJX@intel.com>
Date: Tue, 14 Nov 2023 14:35:10 +0200
Message-ID: <87bkbwsebl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Tue, 14 Nov 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Oct 02, 2023 at 09:38:44PM +0200, maarten.lankhorst@linux.intel.c=
om wrote:
>> From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>>=20
>> Now that we can use -EPROBE_DEFER, it's no longer required to spin off
>> the snd_hdac_i915_init into a workqueue.
>>=20
>> Use the -EPROBE_DEFER mechanism instead, which must be returned in the
>> probe function.
>
> This completely broke i915 audio!
>
> I also can't see any trace of this stuff ever being posted to=20
> intel-gfx so it never went through the CI.
>
> Please fix or revert ASAP.

Cc: Jani, Suresh

Ville, please file a bug at gitlab so we can track this, thanks.

BR,
Jani.



>
>>=20
>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
>> Reviewed-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
>> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
>> ---
>>  sound/pci/hda/hda_intel.c | 54 +++++++++++++++++++--------------------
>>  1 file changed, 27 insertions(+), 27 deletions(-)
>>=20
>> diff --git a/sound/pci/hda/hda_intel.c b/sound/pci/hda/hda_intel.c
>> index e42ad0e816e1..9dad3607596a 100644
>> --- a/sound/pci/hda/hda_intel.c
>> +++ b/sound/pci/hda/hda_intel.c
>> @@ -2135,6 +2135,33 @@ static int azx_probe(struct pci_dev *pci,
>>=20=20
>>  	pci_set_drvdata(pci, card);
>>=20=20
>> +#ifdef CONFIG_SND_HDA_I915
>> +	/* bind with i915 if needed */
>> +	if (chip->driver_caps & AZX_DCAPS_I915_COMPONENT) {
>> +		err =3D snd_hdac_i915_init(azx_bus(chip), false);
>> +		if (err < 0) {
>> +			/* if the controller is bound only with HDMI/DP
>> +			 * (for HSW and BDW), we need to abort the probe;
>> +			 * for other chips, still continue probing as other
>> +			 * codecs can be on the same link.
>> +			 */
>> +			if (HDA_CONTROLLER_IN_GPU(pci)) {
>> +				goto out_free;
>> +			} else {
>> +				/* don't bother any longer */
>> +				chip->driver_caps &=3D ~AZX_DCAPS_I915_COMPONENT;
>> +			}
>> +		}
>> +
>> +		/* HSW/BDW controllers need this power */
>> +		if (HDA_CONTROLLER_IN_GPU(pci))
>> +			hda->need_i915_power =3D true;
>> +	}
>> +#else
>> +	if (HDA_CONTROLLER_IN_GPU(pci))
>> +		dev_err(card->dev, "Haswell/Broadwell HDMI/DP must build in CONFIG_SN=
D_HDA_I915\n");
>> +#endif
>> +
>>  	err =3D register_vga_switcheroo(chip);
>>  	if (err < 0) {
>>  		dev_err(card->dev, "Error registering vga_switcheroo client\n");
>> @@ -2162,11 +2189,6 @@ static int azx_probe(struct pci_dev *pci,
>>  	}
>>  #endif /* CONFIG_SND_HDA_PATCH_LOADER */
>>=20=20
>> -#ifndef CONFIG_SND_HDA_I915
>> -	if (HDA_CONTROLLER_IN_GPU(pci))
>> -		dev_err(card->dev, "Haswell/Broadwell HDMI/DP must build in CONFIG_SN=
D_HDA_I915\n");
>> -#endif
>> -
>>  	if (schedule_probe)
>>  		schedule_delayed_work(&hda->probe_work, 0);
>>=20=20
>> @@ -2264,28 +2286,6 @@ static int azx_probe_continue(struct azx *chip)
>>  	to_hda_bus(bus)->bus_probing =3D 1;
>>  	hda->probe_continued =3D 1;
>>=20=20
>> -	/* bind with i915 if needed */
>> -	if (chip->driver_caps & AZX_DCAPS_I915_COMPONENT) {
>> -		err =3D snd_hdac_i915_init(bus, true);
>> -		if (err < 0) {
>> -			/* if the controller is bound only with HDMI/DP
>> -			 * (for HSW and BDW), we need to abort the probe;
>> -			 * for other chips, still continue probing as other
>> -			 * codecs can be on the same link.
>> -			 */
>> -			if (HDA_CONTROLLER_IN_GPU(pci)) {
>> -				goto out_free;
>> -			} else {
>> -				/* don't bother any longer */
>> -				chip->driver_caps &=3D ~AZX_DCAPS_I915_COMPONENT;
>> -			}
>> -		}
>> -
>> -		/* HSW/BDW controllers need this power */
>> -		if (HDA_CONTROLLER_IN_GPU(pci))
>> -			hda->need_i915_power =3D true;
>> -	}
>> -
>>  	/* Request display power well for the HDA controller or codec. For
>>  	 * Haswell/Broadwell, both the display HDA controller and codec need
>>  	 * this power. For other platforms, like Baytrail/Braswell, only the
>> --=20
>> 2.40.1

--=20
Jani Nikula, Intel
