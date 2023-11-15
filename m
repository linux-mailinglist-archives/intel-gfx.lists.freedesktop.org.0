Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D10E27ED208
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 21:33:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C264A10E238;
	Wed, 15 Nov 2023 20:33:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81FD310E212;
 Wed, 15 Nov 2023 20:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700080419; x=1731616419;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=sfHNZboaVnHWwEsVgAb8hSxbO+bGVrQdSdI+2IQ3rhU=;
 b=OXhOBn6sdFkJ1G09OVwEXM3ev6JcMlFgNMr8kV0QnqlI/EL2q79whu0F
 tmi+M095Yu9h1TnENwAwxduFQpBjj8zRHyKdDYAjfGW9cgWuQbJOVpBEQ
 pkPaae20RrI1gXUzFDq6xWH3P113pv/38PjRSvCxsPiNKMNpTk0fhruxh
 cDWyUUFMat4P7DSaCZcLLQO1/2402Al7JZIxs/ImDCVDh6SQ4gPzhPvnD
 a9kuqeEASvCvIzGRNRp1PL7JORqx3kccO/HEJSaS8V2D481BGP3814kZG
 LKC5OJueY1q/8JCNRTd8vw6KS4X1U8435X72hpv1NRDGcybZRHtMw9kGd A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="12503729"
X-IronPort-AV: E=Sophos;i="6.03,306,1694761200"; d="scan'208";a="12503729"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 12:33:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="758603411"
X-IronPort-AV: E=Sophos;i="6.03,306,1694761200"; d="scan'208";a="758603411"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Nov 2023 12:33:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Nov 2023 22:33:32 +0200
Date: Wed, 15 Nov 2023 22:33:32 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <ZVUrHJL4387iYEby@intel.com>
References: <20231115123625.74286-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231115123625.74286-1-maarten.lankhorst@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] ALSA: hda: i915: Alays handle -EPROBE_DEFER
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
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 15, 2023 at 01:36:25PM +0100, Maarten Lankhorst wrote:
> It turns out that even if the comment says that the driver can load
> fine, it's not really the case and no codecs are detected.
> Specifically for -EPROBE_DEFER, always fail the probe.
> 
> This fixes a regression when HDA-intel is loaded before i915.
> 
> Reported-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Tested-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Fixes: e6d0c13e9f46 ("ALSA: hda: i915: Remove extra argument from snd_hdac_i915_init")
> Cc: Takashi Iwai <tiwai@suse.de>

Appears to work here as well. Thanks.

> 
> ---
> Using Takashi's version, as I like the separate -EPROBE_DEFER if more.
> ---
>  sound/pci/hda/hda_intel.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/sound/pci/hda/hda_intel.c b/sound/pci/hda/hda_intel.c
> index 058f6e6491f9..8e9a003daa8d 100644
> --- a/sound/pci/hda/hda_intel.c
> +++ b/sound/pci/hda/hda_intel.c
> @@ -2140,6 +2140,9 @@ static int azx_probe(struct pci_dev *pci,
>  	if (chip->driver_caps & AZX_DCAPS_I915_COMPONENT) {
>  		err = snd_hdac_i915_init(azx_bus(chip));
>  		if (err < 0) {
> +			if (err == -EPROBE_DEFER)
> +				goto out_free;
> +
>  			/* if the controller is bound only with HDMI/DP
>  			 * (for HSW and BDW), we need to abort the probe;
>  			 * for other chips, still continue probing as other
> -- 
> 2.40.1

-- 
Ville Syrjälä
Intel
