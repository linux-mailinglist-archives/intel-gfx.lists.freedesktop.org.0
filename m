Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E86C62D8BFF
	for <lists+intel-gfx@lfdr.de>; Sun, 13 Dec 2020 08:13:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B60F76E0BA;
	Sun, 13 Dec 2020 07:13:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF3226E0BA;
 Sun, 13 Dec 2020 07:13:35 +0000 (UTC)
IronPort-SDR: xt+Sh+1ITzYrE/cfoYW/6W1GTdLFhXVqcmymg0kf+wWQeI+FVyDHnwT7GC8nyU31jYBJZHjEWB
 wexG+2v34ANA==
X-IronPort-AV: E=McAfee;i="6000,8403,9833"; a="161641349"
X-IronPort-AV: E=Sophos;i="5.78,415,1599548400"; d="scan'208";a="161641349"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2020 23:13:34 -0800
IronPort-SDR: B2UU8cCjrDnbXuAsU3oLcVvF05O6Nt7Bj5V+nbS5kBMf29p0jwU9+8Z7gZZ+tGrEJybpjBU6YE
 wp9CXg/rpohw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,415,1599548400"; d="scan'208";a="366508774"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga008.jf.intel.com with ESMTP; 12 Dec 2020 23:13:34 -0800
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 12 Dec 2020 23:13:33 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 13 Dec 2020 12:43:31 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Sun, 13 Dec 2020 12:43:31 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4 13/16] drm/i915: Add helper functions for calculating
 DSC parameters for HDMI2.1
Thread-Index: AQHWzTf0KY9rKIwhkUWWwTYoYj5dUqn0pF1w
Date: Sun, 13 Dec 2020 07:13:31 +0000
Message-ID: <ae09590a845d458891819df544a10036@intel.com>
References: <20201208075145.17389-1-ankit.k.nautiyal@intel.com>
 <20201208075145.17389-14-ankit.k.nautiyal@intel.com>
In-Reply-To: <20201208075145.17389-14-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 13/16] drm/i915: Add helper functions for
 calculating DSC parameters for HDMI2.1
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
Cc: "airlied@linux.ie" <airlied@linux.ie>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Tuesday, December 8, 2020 1:22 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: dri-devel@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>;
> airlied@linux.ie; jani.nikula@linux.intel.com; ville.syrjala@linux.intel.com;
> Kulkarni, Vandita <vandita.kulkarni@intel.com>; Sharma, Swati2
> <swati2.sharma@intel.com>
> Subject: [PATCH v4 13/16] drm/i915: Add helper functions for calculating DSC
> parameters for HDMI2.1
> 
> The DP-HDMI2.1 PCON spec provides way for a source to set PPS
> parameters: slice height, slice width and bits_per_pixel, based on the HDMI2.1
> sink capabilities. The DSC encoder of the PCON will respect these parameters,
> while preparing the 128 byte PPS.
> 
> This patch adds helper functions to calculate these PPS paremeters as per the
> HDMI2.1 specification.
> 
> v2: Addressed review comments given by Uma Shankar:
> -added documentation for functions
> -fixed typos and errors

Looks good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 233 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_hdmi.h |   7 +
>  2 files changed, 240 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index e10fdb369daa..41eb1c175a0e 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -3428,3 +3428,236 @@ void intel_hdmi_init(struct drm_i915_private
> *dev_priv,
>  	dig_port->aux_ch = intel_bios_port_aux_ch(dev_priv, port);
>  	intel_hdmi_init_connector(dig_port, intel_connector);  }
> +
> +/*
> + * intel_hdmi_dsc_get_slice_height - get the dsc slice_height
> + * @vactive: Vactive of a display mode
> + *
> + * @return: appropriate dsc slice height for a given mode.
> + */
> +int intel_hdmi_dsc_get_slice_height(int vactive) {
> +	int slice_height;
> +
> +	/*
> +	 * Slice Height determination : HDMI2.1 Section 7.7.5.2
> +	 * Select smallest slice height >=96, that results in a valid PPS and
> +	 * requires minimum padding lines required for final slice.
> +	 *
> +	 * Assumption : Vactive is even.
> +	 */
> +	for (slice_height = 96; slice_height <= vactive; slice_height += 2)
> +		if (vactive % slice_height == 0)
> +			return slice_height;
> +
> +	return 0;
> +}
> +
> +/*
> + * intel_hdmi_dsc_get_num_slices - get no. of dsc slices based on dsc
> +encoder
> + * and dsc decoder capabilites
> + *
> + * @crtc_state: intel crtc_state
> + * @src_max_slices: maximum slices supported by the DSC encoder
> + * @src_max_slice_width: maximum slice width supported by DSC encoder
> + * @hdmi_max_slices: maximum slices supported by sink DSC decoder
> + * @hdmi_throughput: maximum clock per slice (MHz) supported by HDMI
> +sink
> + *
> + * @return: num of dsc slices that can be supported by the dsc encoder
> + * and decoder.
> + */
> +int
> +intel_hdmi_dsc_get_num_slices(const struct intel_crtc_state *crtc_state,
> +			      int src_max_slices, int src_max_slice_width,
> +			      int hdmi_max_slices, int hdmi_throughput) {
> +/* Pixel rates in KPixels/sec */
> +#define HDMI_DSC_PEAK_PIXEL_RATE		2720000
> +/*
> + * Rates at which the source and sink are required to process pixels in
> +each
> + * slice, can be two levels: either atleast 340000KHz or atleast 40000KHz.
> + */
> +#define HDMI_DSC_MAX_ENC_THROUGHPUT_0		340000
> +#define HDMI_DSC_MAX_ENC_THROUGHPUT_1		400000
> +
> +/* Spec limits the slice width to 2720 pixels */
> +#define MAX_HDMI_SLICE_WIDTH			2720
> +	int kslice_adjust;
> +	int adjusted_clk_khz;
> +	int min_slices;
> +	int target_slices;
> +	int max_throughput; /* max clock freq. in khz per slice */
> +	int max_slice_width;
> +	int slice_width;
> +	int pixel_clock = crtc_state->hw.adjusted_mode.crtc_clock;
> +
> +	if (!hdmi_throughput)
> +		return 0;
> +
> +	/*
> +	 * Slice Width determination : HDMI2.1 Section 7.7.5.1
> +	 * kslice_adjust factor for 4:2:0, and 4:2:2 formats is 0.5, where as
> +	 * for 4:4:4 is 1.0. Multiplying these factors by 10 and later
> +	 * dividing adjusted clock value by 10.
> +	 */
> +	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 ||
> +	    crtc_state->output_format == INTEL_OUTPUT_FORMAT_RGB)
> +		kslice_adjust = 10;
> +	else
> +		kslice_adjust = 5;
> +
> +	/*
> +	 * As per spec, the rate at which the source and the sink process
> +	 * the pixels per slice are at two levels: atleast 340Mhz or 400Mhz.
> +	 * This depends upon the pixel clock rate and output formats
> +	 * (kslice adjust).
> +	 * If pixel clock * kslice adjust >= 2720MHz slices can be processed
> +	 * at max 340MHz, otherwise they can be processed at max 400MHz.
> +	 */
> +
> +	adjusted_clk_khz = DIV_ROUND_UP(kslice_adjust * pixel_clock, 10);
> +
> +	if (adjusted_clk_khz <= HDMI_DSC_PEAK_PIXEL_RATE)
> +		max_throughput = HDMI_DSC_MAX_ENC_THROUGHPUT_0;
> +	else
> +		max_throughput = HDMI_DSC_MAX_ENC_THROUGHPUT_1;
> +
> +	/*
> +	 * Taking into account the sink's capability for maximum
> +	 * clock per slice (in MHz) as read from HF-VSDB.
> +	 */
> +	max_throughput = min(max_throughput, hdmi_throughput * 1000);
> +
> +	min_slices = DIV_ROUND_UP(adjusted_clk_khz, max_throughput);
> +	max_slice_width = min(MAX_HDMI_SLICE_WIDTH, src_max_slice_width);
> +
> +	/*
> +	 * Keep on increasing the num of slices/line, starting from min_slices
> +	 * per line till we get such a number, for which the slice_width is
> +	 * just less than max_slice_width. The slices/line selected should be
> +	 * less than or equal to the max horizontal slices that the combination
> +	 * of PCON encoder and HDMI decoder can support.
> +	 */
> +	slice_width = max_slice_width;
> +
> +	do {
> +		if (min_slices <= 1 && src_max_slices >= 1 && hdmi_max_slices
> >= 1)
> +		       target_slices = 1;
> +		else if (min_slices <= 2 && src_max_slices >= 2 &&
> hdmi_max_slices >= 2)
> +		       target_slices = 2;
> +		else if (min_slices <= 4 && src_max_slices >= 4 &&
> hdmi_max_slices >= 4)
> +		       target_slices = 4;
> +		else if (min_slices <= 8 && src_max_slices >= 8 &&
> hdmi_max_slices >= 8)
> +		       target_slices = 8;
> +		else if (min_slices <= 12 && src_max_slices >= 12 &&
> hdmi_max_slices >= 12)
> +		       target_slices = 12;
> +		else if (min_slices <= 16 && src_max_slices >= 16 &&
> hdmi_max_slices >= 16)
> +		       target_slices = 16;
> +		else
> +			return 0;
> +
> +		slice_width = DIV_ROUND_UP(crtc_state-
> >hw.adjusted_mode.hdisplay, target_slices);
> +		if (slice_width >= max_slice_width)
> +			min_slices = target_slices + 1;
> +	} while (slice_width >= max_slice_width);
> +
> +	return target_slices;
> +}
> +
> +/*
> + * intel_hdmi_dsc_get_bpp - get the appropriate compressed
> +bits_per_pixel based on
> + * source and sink capabilities.
> + *
> + * @src_fraction_bpp: fractional bpp supported by the source
> + * @slice_width: dsc slice width supported by the source and sink
> + * @num_slices: num of slices supported by the source and sink
> + * @output_format: video output format
> + * @hdmi_all_bpp: sink supports decoding of 1/16th bpp setting
> + * @hdmi_max_chunk_bytes: max bytes in a line of chunks supported by
> +sink
> + *
> + * @return: compressed bits_per_pixel in step of 1/16 of bits_per_pixel
> +*/ int intel_hdmi_dsc_get_bpp(int src_fractional_bpp, int slice_width,
> +int num_slices,
> +		       int output_format, bool hdmi_all_bpp,
> +		       int hdmi_max_chunk_bytes)
> +{
> +	int max_dsc_bpp, min_dsc_bpp;
> +	int target_bytes;
> +	bool bpp_found = false;
> +	int bpp_decrement_x16;
> +	int bpp_target;
> +	int bpp_target_x16;
> +
> +	/*
> +	 * Get min bpp and max bpp as per Table 7.23, in HDMI2.1 spec
> +	 * Start with the max bpp and keep on decrementing with
> +	 * fractional bpp, if supported by PCON DSC encoder
> +	 *
> +	 * for each bpp we check if no of bytes can be supported by HDMI sink
> +	 */
> +
> +	/* Assuming: bpc as 8*/
> +	if (output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
> +		min_dsc_bpp = 6;
> +		max_dsc_bpp = 3 * 4; /* 3*bpc/2 */
> +	} else if (output_format == INTEL_OUTPUT_FORMAT_YCBCR444 ||
> +		   output_format == INTEL_OUTPUT_FORMAT_RGB) {
> +		min_dsc_bpp = 8;
> +		max_dsc_bpp = 3 * 8; /* 3*bpc */
> +	} else {
> +		/* Assuming 4:2:2 encoding */
> +		min_dsc_bpp = 7;
> +		max_dsc_bpp = 2 * 8; /* 2*bpc */
> +	}
> +
> +	/*
> +	 * Taking into account if all dsc_all_bpp supported by HDMI2.1 sink
> +	 * Section 7.7.34 : Source shall not enable compressed Video
> +	 * Transport with bpp_target settings above 12 bpp unless
> +	 * DSC_all_bpp is set to 1.
> +	 */
> +	if (!hdmi_all_bpp)
> +		max_dsc_bpp = min(max_dsc_bpp, 12);
> +
> +	/*
> +	 * The Sink has a limit of compressed data in bytes for a scanline,
> +	 * as described in max_chunk_bytes field in HFVSDB block of edid.
> +	 * The no. of bytes depend on the target bits per pixel that the
> +	 * source configures. So we start with the max_bpp and calculate
> +	 * the target_chunk_bytes. We keep on decrementing the target_bpp,
> +	 * till we get the target_chunk_bytes just less than what the sink's
> +	 * max_chunk_bytes, or else till we reach the min_dsc_bpp.
> +	 *
> +	 * The decrement is according to the fractional support from PCON DSC
> +	 * encoder. For fractional BPP we use bpp_target as a multiple of 16.
> +	 *
> +	 * bpp_target_x16 = bpp_target * 16
> +	 * So we need to decrement by {1, 2, 4, 8, 16} for fractional bpps
> +	 * {1/16, 1/8, 1/4, 1/2, 1} respectively.
> +	 */
> +
> +	bpp_target = max_dsc_bpp;
> +
> +	/* src does not support fractional bpp implies decrement by 16 for
> bppx16 */
> +	if (!src_fractional_bpp)
> +		src_fractional_bpp = 1;
> +	bpp_decrement_x16 = DIV_ROUND_UP(16, src_fractional_bpp);
> +	bpp_target_x16 = (bpp_target * 16) - bpp_decrement_x16;
> +
> +	while (bpp_target_x16 > (min_dsc_bpp * 16)) {
> +		int bpp;
> +
> +		bpp = DIV_ROUND_UP(bpp_target_x16, 16);
> +		target_bytes = DIV_ROUND_UP((num_slices * slice_width * bpp),
> 8);
> +		if (target_bytes <= hdmi_max_chunk_bytes) {
> +			bpp_found = true;
> +			break;
> +		}
> +		bpp_target_x16 -= bpp_decrement_x16;
> +	}
> +	if (bpp_found)
> +		return bpp_target_x16;
> +
> +	return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h
> b/drivers/gpu/drm/i915/display/intel_hdmi.h
> index 15eb0ccde76e..fa1a9b030850 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
> @@ -50,5 +50,12 @@ bool intel_hdmi_limited_color_range(const struct
> intel_crtc_state *crtc_state,
>  				    const struct drm_connector_state
> *conn_state);  bool intel_hdmi_deep_color_possible(const struct intel_crtc_state
> *crtc_state, int bpc,
>  				    bool has_hdmi_sink, bool ycbcr420_output);
> +int intel_hdmi_dsc_get_bpp(int src_fractional_bpp, int slice_width,
> +			   int num_slices, int output_format, bool hdmi_all_bpp,
> +			   int hdmi_max_chunk_bytes);
> +int intel_hdmi_dsc_get_num_slices(const struct intel_crtc_state *crtc_state,
> +				  int src_max_slices, int src_max_slice_width,
> +				  int hdmi_max_slices, int hdmi_throughput); int
> +intel_hdmi_dsc_get_slice_height(int vactive);
> 
>  #endif /* __INTEL_HDMI_H__ */
> --
> 2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
