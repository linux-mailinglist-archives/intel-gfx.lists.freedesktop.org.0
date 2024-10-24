Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A5D9AE26B
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 12:23:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA0F610E8F1;
	Thu, 24 Oct 2024 10:23:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IBvbfaq0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EC0610E8F2
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2024 10:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729765387; x=1761301387;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=liprMZVwKMQfjSPC5GhBzWHS/tnG7yOTL984IZXW6+w=;
 b=IBvbfaq0gb1zqAc/o8i/u+ei2f7l+8ka1tGK5rvKSGhqrST5tJH0NM5d
 CbZD8yEvPj1W+eEHbDsxiapJNgCDrGzIHKkX1R+eWGEnJdv7lzvUxc9i8
 2IQFd4Uw7xx69pGCpta62UmcukDF/sORZvRBzSxaVmH/DdNbAJYQI7Bln
 I48C6s3tRcpzwsz9HFH2kInw7Lx+SaZsVfAbbmgTfnYDCDCZ0cMlZNKie
 fqn856YRQSENxA7CKO7OLkO96LwguJAOxRyuA3ak3KWczIRXl+1sJ8f6N
 lNbSd4EVdxN2W2bKNRLHTVrMZ7psVy+zIQEb6Cpdf6l3B40yY2QWWLoON w==;
X-CSE-ConnectionGUID: DF7j0ai5SY2Y/ed9Tm5YTw==
X-CSE-MsgGUID: 9Ho/BExKTq28FXijrwdEVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="29492381"
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="29492381"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 03:23:07 -0700
X-CSE-ConnectionGUID: iv3T8kZQQEW+L/vxGFTVAA==
X-CSE-MsgGUID: H0WHzX+bSXe5dc9iDDo0xA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="80132946"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.151])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 03:23:05 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH topic/core-for-CI 2/2] Revert "HAX sound: Disable
 probing snd_hda with DG1"
In-Reply-To: <20241023211834.3370346-2-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241023211834.3370346-1-lucas.demarchi@intel.com>
 <20241023211834.3370346-2-lucas.demarchi@intel.com>
Date: Thu, 24 Oct 2024 13:23:01 +0300
Message-ID: <87r085ssu2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 23 Oct 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> This reverts commit 852510ccd334063bec2c2c3e5a61a071599ac015.
>
> This should be solved already since commit e6d0c13e9f46 ("ALSA: hda:
> i915: Remove extra argument from snd_hdac_i915_init").
>
> We can try to drop it and see if anything explodes on dg1 land.
>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  sound/hda/hdac_i915.c     | 23 -----------------------
>  sound/pci/hda/hda_intel.c |  3 +++
>  2 files changed, 3 insertions(+), 23 deletions(-)
>
> diff --git a/sound/hda/hdac_i915.c b/sound/hda/hdac_i915.c
> index a214636ed9757..e9425213320ea 100644
> --- a/sound/hda/hdac_i915.c
> +++ b/sound/hda/hdac_i915.c
> @@ -170,26 +170,6 @@ static int i915_gfx_present(struct pci_dev *hdac_pci)
>  	return false;
>  }
>  
> -static bool dg1_gfx_present(void)
> -{
> -	static const struct pci_device_id ids[] = {
> -		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x4905),
> -		  .class = PCI_BASE_CLASS_DISPLAY << 16,
> -		  .class_mask = 0xff << 16 },
> -		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x4906),
> -		  .class = PCI_BASE_CLASS_DISPLAY << 16,
> -		  .class_mask = 0xff << 16 },
> -		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x4907),
> -		  .class = PCI_BASE_CLASS_DISPLAY << 16,
> -		  .class_mask = 0xff << 16 },
> -		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x4908),
> -		  .class = PCI_BASE_CLASS_DISPLAY << 16,
> -		  .class_mask = 0xff << 16 },
> -		{}
> -	};
> -	return pci_dev_present(ids);
> -}
> -
>  /**
>   * snd_hdac_i915_init - Initialize i915 audio component
>   * @bus: HDA core bus
> @@ -210,9 +190,6 @@ int snd_hdac_i915_init(struct hdac_bus *bus)
>  	if (!i915_gfx_present(to_pci_dev(bus->dev)))
>  		return -ENODEV;
>  
> -	if (dg1_gfx_present())
> -		return -ENODEV;
> -
>  	err = snd_hdac_acomp_init(bus, NULL,
>  				  i915_component_master_match,
>  				  sizeof(struct i915_audio_component) - sizeof(*acomp));
> diff --git a/sound/pci/hda/hda_intel.c b/sound/pci/hda/hda_intel.c
> index 282e87cc2166b..b4540c5cd2a6f 100644
> --- a/sound/pci/hda/hda_intel.c
> +++ b/sound/pci/hda/hda_intel.c
> @@ -2143,6 +2143,9 @@ static int azx_probe(struct pci_dev *pci,
>  			 * codecs can be on the same link.
>  			 */
>  			if (HDA_CONTROLLER_IN_GPU(pci)) {
> +				dev_err_probe(card->dev, err,
> +					     "HSW/BDW HD-audio HDMI/DP requires binding with gfx driver\n");
> +
>  				goto out_free;
>  			} else {
>  				/* don't bother any longer */

-- 
Jani Nikula, Intel
