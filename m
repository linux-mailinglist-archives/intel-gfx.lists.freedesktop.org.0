Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B84E96ECC19
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Apr 2023 14:33:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ADBF10E4E7;
	Mon, 24 Apr 2023 12:33:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC8E210E4E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Apr 2023 12:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682339579; x=1713875579;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=fAsOE1nDIKdd6TrLI5KvvgeKV0OLBRmwf+pucFhL2+4=;
 b=QdOLk5tz1SzQd2kTcQZg2NxcIGtHiO8BC4YOETsFgtGshJP85FDsvuui
 3W3RWF7j05O5TAjWvof/5t2sJ86L1bRgb/AUn/2g8MlTYgjT6NChyGfT2
 krEDijTK7YWPy0nxrCJu7nuMiBYgxAqiAC3xoueT9pf43p/Mb6QKMtStZ
 L9Er9M8uLyTGgrkVgMBKzB3GjG85eNCH5XSXZBsLx/7xJWzGWDlV4I7Au
 PAcy9HfAKAgN7mEqJYa0pTrVFF5aCw1YAk4uyI4LJQwnLnZhBWrnx0/8n
 Uv4eiHz9Cm1wVD0OWMTDt5IUULcUGWCyH2obG6byAcYC2zMmcu9sA/sTA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10689"; a="411716097"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="411716097"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 05:32:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10689"; a="686826137"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="686826137"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 24 Apr 2023 05:32:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Apr 2023 15:32:55 +0300
Date: Mon, 24 Apr 2023 15:32:55 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <ZEZ298imGD1okjis@intel.com>
References: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
 <20230331101613.936776-5-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230331101613.936776-5-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 04/13] drm/i915/dp: Configure PCON for
 conversion of output_format to YCbCr444
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 31, 2023 at 03:46:04PM +0530, Ankit Nautiyal wrote:
> Handle the case with DP to HDMI PCON, where sink_format is set to YCbCr444.
> In that case PCON is required to be configured to convert from given
> output_format to YCbCR444.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 837532952936..c3f3003c52ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2862,6 +2862,22 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>  			MISSING_CASE(crtc_state->output_format);
>  			break;
>  		}
> +	} else if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR444) {
> +		switch (crtc_state->output_format) {
> +		case INTEL_OUTPUT_FORMAT_YCBCR420:
> +			drm_WARN(&i915->drm,
> +				 crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420,
> +				 "Cannot convert YCbCr420->YCbCr444\n");

Since this should never happen I think we can drop this
and just let the MISSING_CASE() catch it.

with that
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +			break;
> +		case INTEL_OUTPUT_FORMAT_YCBCR444:
> +			break;
> +		case INTEL_OUTPUT_FORMAT_RGB:
> +			rgb_to_ycbcr = true;
> +			break;
> +		default:
> +			MISSING_CASE(crtc_state->output_format);
> +			break;
> +		}
>  	}
>  
>  	tmp = ycbcr444_to_420 ? DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
