Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E679AC9D1
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 14:15:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 753EA10E7CB;
	Wed, 23 Oct 2024 12:15:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S5em+OAw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4131710E7BE
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2024 12:15:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729685732; x=1761221732;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vbE1JwrH5NpM1W0P6r66Gj5SpsdGPAQEN6nZxha38Z4=;
 b=S5em+OAwimw0cP3UJ4VS+ZTVWu8TAb1h/9hS3On4XjtHpBqcx+wEb0OI
 rEnWShkf2jqg4Rg7P/UIpF7KgMtI32tKuj325k8npZoewXf/FHohzn2ud
 lB1zjP/d3LWpSvJqy6VHJh2aKhs5CWtyGidym3mIHf/u5haDUPp+4mKLb
 gERaNVXpiSZVyGoN2dDycSsAKhQT9byw+lH1vaFPberLoYm8ODA+gowoO
 HNI+W11cbCpfga4iXywPBBsv3BmlDWR3d76aE+F/TzajwL6goVPby1bCy
 gbvEpHPoyyQNnYsxpYkS/RGRqO68k9MLHStJRoDHXqkKp7KnkqUdG3A+I w==;
X-CSE-ConnectionGUID: jwqWk9CESBii8WNFAVWofA==
X-CSE-MsgGUID: uJtDue+ASpecF0EtAhPt9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="39844031"
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="39844031"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 05:15:32 -0700
X-CSE-ConnectionGUID: wy3cKnaBQj23/KOCQVMnVQ==
X-CSE-MsgGUID: BErVcha7SeqnmtKq7811nQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="80253351"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Oct 2024 05:15:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Oct 2024 15:15:29 +0300
Date: Wed, 23 Oct 2024 15:15:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v3 3/8] drm/i915/dp: Initialize the source OUI write
 timestamp always
Message-ID: <Zxjo4QC_mAXTFsWF@intel.com>
References: <20241016132405.2231744-1-imre.deak@intel.com>
 <20241016132405.2231744-4-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241016132405.2231744-4-imre.deak@intel.com>
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

On Wed, Oct 16, 2024 at 04:24:00PM +0300, Imre Deak wrote:
> If the source OUI DPCD register value matches the expected Intel OUI
> value, the write timestamp doesn't get updated leaving it at the 0
> initial value if the OUI wasn't written before. This can lead to an
> incorrect wait duration in intel_dp_wait_source_oui(), since jiffies is
> not inited to 0 in general (on a 32 bit system INITIAL_JIFFIES is set to
> 5 minutes ahead of wrap-around). Fix this by intializing the write
> timestamp in the above case as well.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3da06d25bc4ef..0b9981f7f1a68 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3414,8 +3414,11 @@ intel_edp_init_source_oui(struct intel_dp *intel_dp, bool careful)
>  		if (drm_dp_dpcd_read(&intel_dp->aux, DP_SOURCE_OUI, buf, sizeof(buf)) < 0)
>  			drm_err(&i915->drm, "Failed to read source OUI\n");
>  
> -		if (memcmp(oui, buf, sizeof(oui)) == 0)
> +		if (memcmp(oui, buf, sizeof(oui)) == 0) {
> +			/* Assume the OUI was written now. */
> +			intel_dp->last_oui_write = jiffies;
>  			return;
> +		}
>  	}
>  
>  	if (drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, oui, sizeof(oui)) < 0)
> -- 
> 2.44.2

-- 
Ville Syrjälä
Intel
