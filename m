Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A410F74D458
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 13:15:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 255D510E263;
	Mon, 10 Jul 2023 11:15:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF93310E263
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jul 2023 11:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688987723; x=1720523723;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=FKbmMpmYYvZoqGBnqGqDnKVFn/5e0JhYdi8uYPmVTQc=;
 b=n2NHQwwzWX561X0TCQlDgvgwlLm/hcxwM2UfKuE4aAkjdi9A63tua5Id
 K73iJ+sm8y8KH/lQ5vgTSs3ibztnozueEFaiV4kGICHKpKavFmwYZHq2p
 rOZlM9hnAnvm2XWJAFeRug6ZzQU7o1WU8CfhDsGfwi6UHHg9QePi5SSyr
 HwGE9uM1a/nI5C+EKwUBHMTN0Ccm9J7tavbNIhfKdbH/K2uDLUCwCFMK6
 EPvvYg7Rxtr7H6HklHaeaK724ampgMWar83ukt7ytYDLwO42+zA5XJJea
 tuM7jBgZNameqW2gcwhURCUC5hCvOAg5N0w9r4+XkICczg5fox3++Ok5N g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="363182625"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="363182625"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 04:15:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="714767971"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="714767971"
Received: from stoicaan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.170])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 04:15:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230710100911.2736389-6-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230710100911.2736389-1-suraj.kandpal@intel.com>
 <20230710100911.2736389-6-suraj.kandpal@intel.com>
Date: Mon, 10 Jul 2023 14:15:17 +0300
Message-ID: <87ttuchvay.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/display: Compare the readout
 dsc pps params
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

On Mon, 10 Jul 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> With the dsc config being readout and filled in crtc_state add
> macros and use them to compare current and previous PPS param in
> DSC.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 55 ++++++++++++++++++++
>  1 file changed, 55 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index eed01957bdb9..5c1596d7cd92 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5007,6 +5007,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  {
>  	struct drm_i915_private *dev_priv = to_i915(current_config->uapi.crtc->dev);
>  	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> +	const struct drm_dsc_config *dsc_current_config = &current_config->dsc.config;
> +	const struct drm_dsc_config *dsc_pipe_config = &pipe_config->dsc.config;
>  	bool ret = true;
>  	bool fixup_inherited = fastset &&
>  		current_config->inherited && !pipe_config->inherited;
> @@ -5202,6 +5204,26 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  #define PIPE_CONF_QUIRK(quirk) \
>  	((current_config->quirks | pipe_config->quirks) & (quirk))
>  
> +#define PIPE_DSC_CONF_CHECK_I(name) do { \
> +	if (dsc_current_config->name != dsc_pipe_config->name) { \
> +		pipe_config_mismatch(fastset, crtc, __stringify(name), \
> +				     "(expected %i, found %i)", \
> +				     dsc_current_config->name, \
> +				     dsc_pipe_config->name); \
> +		ret = false; \
> +	} \
> +} while (0)
> +
> +#define PIPE_DSC_CONF_CHECK_BOOL(name) do { \
> +	if (dsc_current_config->name != dsc_pipe_config->name) { \
> +		pipe_config_mismatch(fastset, crtc,  __stringify(name), \
> +				     "(expected %s, found %s)", \
> +				     str_yes_no(dsc_current_config->name), \
> +				     str_yes_no(dsc_pipe_config->name)); \
> +		ret = false; \
> +	} \
> +} while (0)
> +
>  	PIPE_CONF_CHECK_I(hw.enable);
>  	PIPE_CONF_CHECK_I(hw.active);
>  
> @@ -5378,6 +5400,39 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  	PIPE_CONF_CHECK_I(master_transcoder);
>  	PIPE_CONF_CHECK_X(bigjoiner_pipes);
>  
> +	PIPE_DSC_CONF_CHECK_BOOL(block_pred_enable);

You should be able to pass the dsc substruct as name, no need to define
dupe macros for DSC. See e.g. PIPE_CONF_CHECK_I(hw.enable); above in the
patch context above.

> +	PIPE_DSC_CONF_CHECK_BOOL(convert_rgb);
> +	PIPE_DSC_CONF_CHECK_BOOL(simple_422);
> +	PIPE_DSC_CONF_CHECK_BOOL(native_422);
> +	PIPE_DSC_CONF_CHECK_BOOL(native_420);
> +	PIPE_DSC_CONF_CHECK_BOOL(vbr_enable);
> +	PIPE_DSC_CONF_CHECK_I(line_buf_depth);
> +	PIPE_DSC_CONF_CHECK_I(bits_per_component);
> +	PIPE_DSC_CONF_CHECK_I(pic_width);
> +	PIPE_DSC_CONF_CHECK_I(pic_height);
> +	PIPE_DSC_CONF_CHECK_I(slice_width);
> +	PIPE_DSC_CONF_CHECK_I(slice_height);
> +	PIPE_DSC_CONF_CHECK_I(initial_dec_delay);
> +	PIPE_DSC_CONF_CHECK_I(initial_xmit_delay);
> +	PIPE_DSC_CONF_CHECK_I(scale_decrement_interval);
> +	PIPE_DSC_CONF_CHECK_I(scale_increment_interval);
> +	PIPE_DSC_CONF_CHECK_I(initial_scale_value);
> +	PIPE_DSC_CONF_CHECK_I(first_line_bpg_offset);
> +	PIPE_DSC_CONF_CHECK_I(flatness_min_qp);
> +	PIPE_DSC_CONF_CHECK_I(flatness_max_qp);
> +	PIPE_DSC_CONF_CHECK_I(slice_bpg_offset);
> +	PIPE_DSC_CONF_CHECK_I(nfl_bpg_offset);
> +	PIPE_DSC_CONF_CHECK_I(initial_offset);
> +	PIPE_DSC_CONF_CHECK_I(final_offset);
> +	PIPE_DSC_CONF_CHECK_I(rc_model_size);
> +	PIPE_DSC_CONF_CHECK_I(rc_quant_incr_limit0);
> +	PIPE_DSC_CONF_CHECK_I(rc_quant_incr_limit1);
> +	PIPE_DSC_CONF_CHECK_I(slice_chunk_size);
> +	if (DISPLAY_VER(dev_priv) >= 14) {
> +		PIPE_DSC_CONF_CHECK_I(second_line_bpg_offset);
> +		PIPE_DSC_CONF_CHECK_I(nsl_bpg_offset);
> +	}

I'd prefer it if we didn't have version checks here. Just check the
values anyway, it should be zeros in both hw and sw states for display <
14, and if it's not, the state checker caught a bug.


> +
>  	PIPE_CONF_CHECK_I(dsc.compression_enable);
>  	PIPE_CONF_CHECK_I(dsc.dsc_split);
>  	PIPE_CONF_CHECK_I(dsc.compressed_bpp);

-- 
Jani Nikula, Intel Open Source Graphics Center
