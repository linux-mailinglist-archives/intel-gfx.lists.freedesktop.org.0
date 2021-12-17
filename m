Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF356478874
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 11:12:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BEC310FE2A;
	Fri, 17 Dec 2021 10:12:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5113010FE2A
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Dec 2021 10:12:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10200"; a="239676088"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="239676088"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 02:12:27 -0800
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="546353459"
Received: from kmcgonig-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.8.181])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 02:12:25 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20211217071356.12517-4-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211217071356.12517-1-suraj.kandpal@intel.com>
 <20211217071356.12517-4-suraj.kandpal@intel.com>
Date: Fri, 17 Dec 2021 12:12:21 +0200
Message-ID: <877dc335h6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Define WD trancoder for i915
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
Cc: arun.r.murthy@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 17 Dec 2021, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> From: suraj kandpal <suraj.kandpal@intel.com>
>
> Adding WD Types, WD transcoder to enum list and WD Transcoder offsets

This should be part of the patch that uses them.

BR,
Jani.

>
> Signed-off-by: suraj kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.h       | 6 ++++++
>  drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
>  drivers/gpu/drm/i915/i915_reg.h                    | 2 ++
>  3 files changed, 9 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index d425ee77aad7..76f999525d43 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -117,6 +117,8 @@ enum transcoder {
>  	TRANSCODER_DSI_1,
>  	TRANSCODER_DSI_A = TRANSCODER_DSI_0,	/* legacy DSI */
>  	TRANSCODER_DSI_C = TRANSCODER_DSI_1,	/* legacy DSI */
> +	TRANSCODER_WD_0,
> +	TRANSCODER_WD_1,
>  
>  	I915_MAX_TRANSCODERS
>  };
> @@ -138,6 +140,10 @@ static inline const char *transcoder_name(enum transcoder transcoder)
>  		return "DSI A";
>  	case TRANSCODER_DSI_C:
>  		return "DSI C";
> +	case TRANSCODER_WD_0:
> +		return "WD 0";
> +	case TRANSCODER_WD_1:
> +		return "WD 1";
>  	default:
>  		return "<invalid>";
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 9413ebae15f5..f20086280d7e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -69,6 +69,7 @@ enum intel_output_type {
>  	INTEL_OUTPUT_DSI = 9,
>  	INTEL_OUTPUT_DDI = 10,
>  	INTEL_OUTPUT_DP_MST = 11,
> +	INTEL_OUTPUT_WD = 12,
>  };
>  
>  enum hdmi_force_audio {
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index ef594df039db..b8e42c55ff87 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4431,6 +4431,8 @@ enum {
>  #define TRANSCODER_EDP_OFFSET 0x6f000
>  #define TRANSCODER_DSI0_OFFSET	0x6b000
>  #define TRANSCODER_DSI1_OFFSET	0x6b800
> +#define TRANSCODER_WD0_OFFSET	0x6e000
> +#define TRANSCODER_WD1_OFFSET	0x6e800
>  
>  #define HTOTAL(trans)		_MMIO_TRANS2(trans, _HTOTAL_A)
>  #define HBLANK(trans)		_MMIO_TRANS2(trans, _HBLANK_A)

-- 
Jani Nikula, Intel Open Source Graphics Center
