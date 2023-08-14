Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD0077B798
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 13:30:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1191110E1AE;
	Mon, 14 Aug 2023 11:30:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 232D710E1AA
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Aug 2023 11:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692012641; x=1723548641;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=kTopojKJhyDh7CP91Y4E9xQaE8EScSSPWMfqTZKPvV8=;
 b=GwI4KqyTDIOGYchANlqhpXflcmSvDUqLqv1oh0gvsCpc+sZVG+5QMuE8
 a6ipviWhK1jJN/4M1BFrVJNL3+uBrD32eWqWU5uEHqa+hlifG290RahtA
 +g6qs4GgAYGSuB8YI+R2wVv74gOfC7wjlIKXIfuSHieW88It3Xx9ZhFie
 qE2FBPM3spcoXidO3mrLDGf1hsXIfjgmOeBvWu1SCfECqpipjh7oeDfLa
 fNUjVrsWDNgu2ki4VZEXlLdiW96nzS6xnW/zu71kVqCqUUwnBN+gYqcCQ
 o/CD18+prSzwfXmwuRtbwkaIWDWXU9FZlzC87QRiEW97TcPx9bYG5wYHV w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10801"; a="403002259"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="403002259"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 04:30:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10801"; a="710297595"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="710297595"
Received: from spasula-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.51.125])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 04:30:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230804083737.3844575-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230804082852.3842668-1-suraj.kandpal@intel.com>
 <20230804083737.3844575-1-suraj.kandpal@intel.com>
Date: Mon, 14 Aug 2023 14:30:36 +0300
Message-ID: <87edk5zwrn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vdsc: Fix first_line_bpg_offset
 calculation
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
Cc: juha-pekka.heikkila@intel.com, william.tseng@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 04 Aug 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> On checking DSC1.1 Errata and DSC 1.2 spec the current formula
> we were using was incorrect to calculate first_line_bpg_offset.
> The new fixed formula is derived from C model.
>
> --v2
> -Use clamp function in linux/minmax.h [Ankit]
>
> --v3
> -remove linux/minmax.h header
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Should this be:

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9102

> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 9d76c2756784..e4c395b4dc46 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -80,13 +80,19 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
>  	int bpc = vdsc_cfg->bits_per_component;
>  	int bpp = vdsc_cfg->bits_per_pixel >> 4;
>  	int qp_bpc_modifier = (bpc - 8) * 2;
> +	int uncompressed_bpg_rate;
> +	int first_line_bpg_offset;
>  	u32 res, buf_i, bpp_i;
>  
>  	if (vdsc_cfg->slice_height >= 8)
> -		vdsc_cfg->first_line_bpg_offset =
> -			12 + DIV_ROUND_UP((9 * min(34, vdsc_cfg->slice_height - 8)), 100);
> +		first_line_bpg_offset =
> +			12 + (9 * min(34, vdsc_cfg->slice_height - 8)) / 100;
>  	else
> -		vdsc_cfg->first_line_bpg_offset = 2 * (vdsc_cfg->slice_height - 1);
> +		first_line_bpg_offset = 2 * (vdsc_cfg->slice_height - 1);
> +
> +	uncompressed_bpg_rate = (3 * bpc + (vdsc_cfg->convert_rgb ? 0 : 2)) * 3;
> +	vdsc_cfg->first_line_bpg_offset = clamp(first_line_bpg_offset, 0,
> +						uncompressed_bpg_rate - 3 * bpp);
>  
>  	/*
>  	 * According to DSC 1.2 spec in Section 4.1 if native_420 is set:

-- 
Jani Nikula, Intel Open Source Graphics Center
