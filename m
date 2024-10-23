Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9186F9AC9D5
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 14:15:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBA0210E7BF;
	Wed, 23 Oct 2024 12:15:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qc9joU5F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E90E10E7BF
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2024 12:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729685754; x=1761221754;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DtnljeLxmbp/fmrp627wLnzLN1ASKyB6iorWLOxQmY0=;
 b=Qc9joU5Fi/TNs8+SfpEdDVUyMTVZhcudVEGKuovHFWnd9P4rPeephXvR
 ixXyXQIbIXZitmAmhkdnsQEtfZjOBWSTgl8ZRTWrMYvJrHG88SvZAA9xr
 uolzTdio1Bh4XFo4H5zcoRaShElgpNm2rE5lnXXtkatS9nSHpmOqHN8vy
 Fye/X0opnCN+0LZ4ATzMXczkwzMBfDLY/Ey2MHFSsmqzShV/fguYIQgX9
 wmvxc9J4A0V5kjhRwiH1aSCBDKH6yw2Dzy+VP80TRjHSogsxF2zIG5gIw
 Dhpmaf+mL4G1StwaRlSFVzyW1GoV/SFCImrbB1Hn8WctFED+dgoNQyQ8x w==;
X-CSE-ConnectionGUID: EaOpjMrETcSU81SbHlKxmg==
X-CSE-MsgGUID: NIIuSl4WQtug2RZsDXxT1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="39844066"
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="39844066"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 05:15:54 -0700
X-CSE-ConnectionGUID: 0SwZWAVHQq2qgLftOptiNg==
X-CSE-MsgGUID: zz4JYA8/TCCTs0nWbBgj7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="80253446"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Oct 2024 05:15:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Oct 2024 15:15:51 +0300
Date: Wed, 23 Oct 2024 15:15:51 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v3 6/8] drm/i915/dp: Write the source OUI for eDP before
 detecting sink capabilities
Message-ID: <Zxjo9_gw6CHQYXQy@intel.com>
References: <20241016132405.2231744-1-imre.deak@intel.com>
 <20241016132405.2231744-7-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241016132405.2231744-7-imre.deak@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Oct 16, 2024 at 04:24:03PM +0300, Imre Deak wrote:
> The eDP sink's capabilities, like DSC, may depend on the source OUI
> written to the sink, so ensure the OUI is written before reading out the
> capabilities.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index e2c37680caa91..520cc6f50a126 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4200,6 +4200,12 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
>  		intel_dp->use_max_params = intel_dp->edp_dpcd[0] < DP_EDP_14;
>  	}
>  
> +	/*
> +	 * If needed, program our source OUI so we can make various Intel-specific AUX services
> +	 * available (such as HDR backlight controls)
> +	 */
> +	intel_dp_init_source_oui(intel_dp);
> +
>  	/*
>  	 * This has to be called after intel_dp->edp_dpcd is filled, PSR checks
>  	 * for SET_POWER_CAPABLE bit in intel_dp->edp_dpcd[1]
> @@ -4212,12 +4218,6 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
>  	/* Read the eDP DSC DPCD registers */
>  	intel_dp_detect_dsc_caps(intel_dp, connector);
>  
> -	/*
> -	 * If needed, program our source OUI so we can make various Intel-specific AUX services
> -	 * available (such as HDR backlight controls)
> -	 */
> -	intel_dp_init_source_oui(intel_dp);
> -
>  	return true;
>  }
>  
> -- 
> 2.44.2

-- 
Ville Syrjälä
Intel
