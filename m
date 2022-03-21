Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E334E26CB
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 13:44:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E0D510E2A1;
	Mon, 21 Mar 2022 12:44:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3415110E2A1
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 12:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647866670; x=1679402670;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=NR7HYQ+C7eId1tZvZ0gxon4wRyNR7n+i1MJX7qONW24=;
 b=U+iF82uXPDxT5jOLIVaUodoHTavd128YIfEsqWtsBwLbcCGTmAeJ8ikH
 /URbrZbFrp0ZLvmPSit/uB4f3aTV98KFZvauTSeX0AN1dICjP3hMA9lNY
 eapEhYcGKL5YFjcd/1OAD5eoiyy7NkFsJhlQYWGK4n+LKhhuMFJvGCX2J
 n2gS9KzwMAJrd1+NaMUAoydJgupSZdE8McGxy8BheIDSYGYWg3KahMV6J
 Rv9PyBxq8/+vIsWD8YI+dy7rpClzl0IQXPBVwwXbCLKJlPv7VHsume3fK
 dA3swS1X4SHlhw9Vrlv5DaH/f8+RQZtwZbsJn6B3T7/mNOgAGjoSTDw+L w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10292"; a="318250719"
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="318250719"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 05:44:29 -0700
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="559853581"
Received: from abhijitc-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.34.12])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 05:44:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220321110305.12853-2-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220321110305.12853-1-stanislav.lisovskiy@intel.com>
 <20220321110305.12853-2-stanislav.lisovskiy@intel.com>
Date: Mon, 21 Mar 2022 14:44:20 +0200
Message-ID: <877d8nlbkr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm: Add missing DP DSC extended
 capability definitions.
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

On Mon, 21 Mar 2022, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> Adding DP DSC register definitions, we might need for further
> DSC implementation, supporting MST and DP branch pass-through mode.
>
> v2: - Fixed checkpatch comment warning
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/dp/drm_dp.c    | 25 +++++++++++++++++++++++++
>  include/drm/dp/drm_dp_helper.h | 11 ++++++++++-
>  2 files changed, 35 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/dp/drm_dp.c b/drivers/gpu/drm/dp/drm_dp.c
> index 703972ae14c6..45815745ba7b 100644
> --- a/drivers/gpu/drm/dp/drm_dp.c
> +++ b/drivers/gpu/drm/dp/drm_dp.c
> @@ -2312,6 +2312,31 @@ u8 drm_dp_dsc_sink_max_slice_count(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE],
>  }
>  EXPORT_SYMBOL(drm_dp_dsc_sink_max_slice_count);
>  
> +/**
> + * drm_dp_dsc_sink_bpp_increment_div - Get the bits per pixel precision
> + * which DP DSC sink device supports.
> + */
> +u8 drm_dp_dsc_sink_bpp_increment_div(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
> +{
> +	u8 bpp_increment_dpcd = dsc_dpcd[DP_DSC_BITS_PER_PIXEL_INC - DP_DSC_SUPPORT];
> +
> +	switch (bpp_increment_dpcd) {

So I didn't look this up in the spec, but later in the patch you're
adding masks for the dpcd register in question, so I presume it's not
fine to assume the whole register is about bbp.

> +	case DP_DSC_BITS_PER_PIXEL_1_16:
> +		return 16;
> +	case DP_DSC_BITS_PER_PIXEL_1_8:
> +		return 8;
> +	case DP_DSC_BITS_PER_PIXEL_1_4:
> +		return 4;
> +	case DP_DSC_BITS_PER_PIXEL_1_2:
> +		return 2;
> +	case DP_DSC_BITS_PER_PIXEL_1_1:
> +		return 1;
> +	}
> +
> +	return 0;
> +}
> +
> +

Didn't checkpatch complain about the double newline?

You don't use the function for anything in patch 2. And you couldn't
because it's not exported to drivers.

BR,
Jani.

>  /**
>   * drm_dp_dsc_sink_line_buf_depth() - Get the line buffer depth in bits
>   * @dsc_dpcd: DSC capabilities from DPCD
> diff --git a/include/drm/dp/drm_dp_helper.h b/include/drm/dp/drm_dp_helper.h
> index 51e02cf75277..e4c9f4438ccb 100644
> --- a/include/drm/dp/drm_dp_helper.h
> +++ b/include/drm/dp/drm_dp_helper.h
> @@ -246,6 +246,9 @@ struct drm_panel;
>  
>  #define DP_DSC_SUPPORT                      0x060   /* DP 1.4 */
>  # define DP_DSC_DECOMPRESSION_IS_SUPPORTED  (1 << 0)
> +# define DP_DSC_PASS_THROUGH_IS_SUPPORTED   (1 << 1)
> +# define DP_DSC_DYNAMIC_PPS_UPDATE_SUPPORT_COMP_TO_COMP    (1 << 2)
> +# define DP_DSC_DYNAMIC_PPS_UPDATE_SUPPORT_UNCOMP_TO_COMP  (1 << 3)
>  
>  #define DP_DSC_REV                          0x061
>  # define DP_DSC_MAJOR_MASK                  (0xf << 0)
> @@ -284,12 +287,15 @@ struct drm_panel;
>  
>  #define DP_DSC_BLK_PREDICTION_SUPPORT       0x066
>  # define DP_DSC_BLK_PREDICTION_IS_SUPPORTED (1 << 0)
> +# define DP_DSC_RGB_COLOR_CONV_BYPASS_SUPPORT (1 << 1)
>  
>  #define DP_DSC_MAX_BITS_PER_PIXEL_LOW       0x067   /* eDP 1.4 */
>  
>  #define DP_DSC_MAX_BITS_PER_PIXEL_HI        0x068   /* eDP 1.4 */
>  # define DP_DSC_MAX_BITS_PER_PIXEL_HI_MASK  (0x3 << 0)
>  # define DP_DSC_MAX_BITS_PER_PIXEL_HI_SHIFT 8
> +# define DP_DSC_MAX_BPP_DELTA_VERSION_MASK  0x06
> +# define DP_DSC_MAX_BPP_DELTA_AVAILABILITY  0x08
>  
>  #define DP_DSC_DEC_COLOR_FORMAT_CAP         0x069
>  # define DP_DSC_RGB                         (1 << 0)
> @@ -351,11 +357,13 @@ struct drm_panel;
>  # define DP_DSC_24_PER_DP_DSC_SINK          (1 << 2)
>  
>  #define DP_DSC_BITS_PER_PIXEL_INC           0x06F
> +# define DP_DSC_RGB_YCbCr444_MAX_BPP_DELTA_MASK 0x1f
> +# define DP_DSC_RGB_YCbCr420_MAX_BPP_DELTA_MASK 0xe0
>  # define DP_DSC_BITS_PER_PIXEL_1_16         0x0
>  # define DP_DSC_BITS_PER_PIXEL_1_8          0x1
>  # define DP_DSC_BITS_PER_PIXEL_1_4          0x2
>  # define DP_DSC_BITS_PER_PIXEL_1_2          0x3
> -# define DP_DSC_BITS_PER_PIXEL_1            0x4
> +# define DP_DSC_BITS_PER_PIXEL_1_1          0x4
>  
>  #define DP_PSR_SUPPORT                      0x070   /* XXX 1.2? */
>  # define DP_PSR_IS_SUPPORTED                1
> @@ -1825,6 +1833,7 @@ u8 drm_dp_dsc_sink_max_slice_count(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE],
>  u8 drm_dp_dsc_sink_line_buf_depth(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE]);
>  int drm_dp_dsc_sink_supported_input_bpcs(const u8 dsc_dpc[DP_DSC_RECEIVER_CAP_SIZE],
>  					 u8 dsc_bpc[3]);
> +u8 drm_dp_dsc_sink_bpp_increment_div(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE]);
>  
>  static inline bool
>  drm_dp_sink_supports_dsc(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])

-- 
Jani Nikula, Intel Open Source Graphics Center
