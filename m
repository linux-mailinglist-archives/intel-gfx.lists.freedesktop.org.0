Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DAD25547D
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Aug 2020 08:26:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E16E86E142;
	Fri, 28 Aug 2020 06:26:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 320026E148
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Aug 2020 06:26:15 +0000 (UTC)
IronPort-SDR: lNcPVcTde47bT3chTI6eeKCJHfvOnlQCSIR1lYJUWQS/JaMenbIabYDusQiEq7IdHK7zQxxT9q
 MDjO35mbeztw==
X-IronPort-AV: E=McAfee;i="6000,8403,9726"; a="156621547"
X-IronPort-AV: E=Sophos;i="5.76,362,1592895600"; d="scan'208";a="156621547"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2020 23:26:14 -0700
IronPort-SDR: aa8x+2pWwX1RTh/vzYdaLzZjCv60Pi7RmS5rVTa7yvJ0rsDJpVKToHPymdRaENs/KLV9hEgaor
 NU6A1jWL1B3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,362,1592895600"; d="scan'208";a="300123719"
Received: from skallurr-mobl3.ger.corp.intel.com (HELO [10.249.32.37])
 ([10.249.32.37])
 by orsmga006.jf.intel.com with ESMTP; 27 Aug 2020 23:26:13 -0700
To: "Navare, Manasi" <manasi.d.navare@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200716211209.13266-1-manasi.d.navare@intel.com>
 <20200810232828.11398-1-manasi.d.navare@intel.com>
 <20200827233509.GA26009@labuser-Z97X-UD5H>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <16390edb-fca7-d2a7-d1ae-c943b3f3e0a9@linux.intel.com>
Date: Fri, 28 Aug 2020 08:26:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200827233509.GA26009@labuser-Z97X-UD5H>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v8 06/11] drm/i915: Enable big joiner
 support in enable and disable sequences.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Op 28-08-2020 om 01:35 schreef Navare, Manasi:
> On Mon, Aug 10, 2020 at 04:28:28PM -0700, Manasi Navare wrote:
>> From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>>
>> Make vdsc work when no output is enabled. The big joiner needs VDSC
>> on the slave, so enable it and set the appropriate bits.
>> Also update timestamping constants, because slave crtc's are not
>> updated in drm_atomic_helper_update_legacy_modeset_state().
>>
>> This should be enough to bring up CRTC's in a big joiner configuration,
>> without any plane configuration on the second pipe yet.
>>
>> HOWEVER, we still bring up the crtc's in the wrong order. We need to
>> make sure that the master crtc is brought up after the slave crtc.
>> This is done correctly later in this series.
>>
>> The next steps are to enable planes correctly, and make sure we enable
>> and update both master and slave in the correct order.
>>
>> v2:
>> * Manual rebase (Manasi)
>>
>> v3:
>> * Rebase (Manasi)
>>
>> v4:
>> * Rebase (Manasi)
>>
>> v5:
>> * Get dsc power domain in ddi_init (Manasi)
>>
>> v6:
>> * Remove dsc power put from dsc_disable (Maarten)
>>
>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/icl_dsi.c        |   2 -
>>  drivers/gpu/drm/i915/display/intel_ddi.c      |  68 +++-
>>  drivers/gpu/drm/i915/display/intel_display.c  | 377 ++++++++++++------
>>  .../drm/i915/display/intel_display_types.h    |   1 +
>>  drivers/gpu/drm/i915/display/intel_dp.c       |   6 +-
>>  drivers/gpu/drm/i915/display/intel_vdsc.c     | 201 +++++-----
>>  drivers/gpu/drm/i915/display/intel_vdsc.h     |   7 +-
>>  7 files changed, 413 insertions(+), 249 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
>> index 8c55f5bee9ab..26f7372b4c25 100644
>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> @@ -1454,8 +1454,6 @@ static void gen11_dsi_get_config(struct intel_encoder *encoder,
>>  	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
>>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
>>  
>> -	intel_dsc_get_config(encoder, pipe_config);
> Maarten,
> Why do we need to remove this from dsi_get_config()?
This is read by the pipe now, which is the only place that does get_config().
>
>> -
>>  	/* FIXME: adapt icl_ddi_clock_get() for DSI and use that? */
>>  	pipe_config->port_clock = intel_dpll_get_freq(i915,
>>  						      pipe_config->shared_dpll);
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index de5b216561d8..6de13c67f5b8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -28,6 +28,7 @@
>>  #include <drm/drm_scdc_helper.h>
>>  
>>  #include "i915_drv.h"
>> +#include "i915_trace.h"
>>  #include "intel_audio.h"
>>  #include "intel_combo_phy.h"
>>  #include "intel_connector.h"
>> @@ -2093,12 +2094,6 @@ static void intel_ddi_get_power_domains(struct intel_encoder *encoder,
>>  		intel_display_power_get(dev_priv,
>>  					intel_ddi_main_link_aux_domain(dig_port));
>>  
>> -	/*
>> -	 * VDSC power is needed when DSC is enabled
>> -	 */
>> -	if (crtc_state->dsc.compression_enable)
>> -		intel_display_power_get(dev_priv,
>> -					intel_dsc_power_domain(crtc_state));
>>  }
>>  
>>  void intel_ddi_enable_pipe_clock(struct intel_encoder *encoder,
>> @@ -3387,7 +3382,8 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>>  
>>  	/* 7.l Configure and enable FEC if needed */
>>  	intel_ddi_enable_fec(encoder, crtc_state);
>> -	intel_dsc_enable(encoder, crtc_state);
>> +	if (!crtc_state->bigjoiner)
>> +		intel_dsc_enable(encoder, crtc_state);
>>  }
>>  
>>  static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
>> @@ -3458,7 +3454,8 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
>>  	if (!is_mst)
>>  		intel_ddi_enable_pipe_clock(encoder, crtc_state);
>>  
>> -	intel_dsc_enable(encoder, crtc_state);
>> +	if (!crtc_state->bigjoiner)
>> +		intel_dsc_enable(encoder, crtc_state);
>>  }
>>  
>>  static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
>> @@ -3713,6 +3710,21 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
>>  			ilk_pfit_disable(old_crtc_state);
>>  	}
>>  
>> +	if (old_crtc_state->bigjoiner_linked_crtc) {
>> +		struct intel_atomic_state *state =
>> +			to_intel_atomic_state(old_crtc_state->uapi.state);
>> +		struct intel_crtc *slave =
>> +			old_crtc_state->bigjoiner_linked_crtc;
>> +		const struct intel_crtc_state *old_slave_crtc_state =
>> +			intel_atomic_get_old_crtc_state(state, slave);
>> +
>> +		intel_crtc_vblank_off(old_slave_crtc_state);
>> +		trace_intel_pipe_disable(slave);
>> +
>> +		intel_dsc_disable(old_slave_crtc_state);
>> +		skl_scaler_disable(old_slave_crtc_state);
>> +	}
>> +
>>  	/*
>>  	 * When called from DP MST code:
>>  	 * - old_conn_state will be NULL
>> @@ -3927,7 +3939,8 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
>>  {
>>  	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
>>  
>> -	intel_ddi_enable_transcoder_func(encoder, crtc_state);
>> +	if (!crtc_state->bigjoiner_slave)
>> +		intel_ddi_enable_transcoder_func(encoder, crtc_state);
>>  
>>  	intel_enable_pipe(crtc_state);
>>  
>> @@ -4274,8 +4287,8 @@ static void bdw_get_trans_port_sync_config(struct intel_crtc_state *crtc_state)
>>  		    crtc_state->sync_mode_slaves_mask);
>>  }
>>  
>> -void intel_ddi_get_config(struct intel_encoder *encoder,
>> -			  struct intel_crtc_state *pipe_config)
>> +static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
>> +				    struct intel_crtc_state *pipe_config)
>>  {
>>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>  	struct intel_crtc *intel_crtc = to_intel_crtc(pipe_config->uapi.crtc);
>> @@ -4283,13 +4296,10 @@ void intel_ddi_get_config(struct intel_encoder *encoder,
>>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>>  	u32 temp, flags = 0;
>>  
>> -	/* XXX: DSI transcoder paranoia */
>> -	if (drm_WARN_ON(&dev_priv->drm, transcoder_is_dsi(cpu_transcoder)))
>> +	temp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
>> +	if (!(temp & TRANS_DDI_FUNC_ENABLE))
>>  		return;
>>  
>> -	intel_dsc_get_config(encoder, pipe_config);
>> -
>> -	temp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
>>  	if (temp & TRANS_DDI_PHSYNC)
>>  		flags |= DRM_MODE_FLAG_PHSYNC;
>>  	else
>> @@ -4397,6 +4407,29 @@ void intel_ddi_get_config(struct intel_encoder *encoder,
>>  		intel_dp->regs.dp_tp_ctl = TGL_DP_TP_CTL(transcoder);
>>  		intel_dp->regs.dp_tp_status = TGL_DP_TP_STATUS(transcoder);
>>  	}
>> +}
>> +
>> +void intel_ddi_get_config(struct intel_encoder *encoder,
>> +			  struct intel_crtc_state *pipe_config)
>> +{
>> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>> +	enum transcoder cpu_transcoder = pipe_config->cpu_transcoder;
>> +
>> +	/* XXX: DSI transcoder paranoia */
>> +	if (WARN_ON(transcoder_is_dsi(cpu_transcoder)))
>> +		return;
>> +
>> +	intel_ddi_read_func_ctl(encoder, pipe_config);
>> +	if (pipe_config->bigjoiner_slave) {
>> +		/* read out pipe settings from master */
>> +		enum transcoder save = pipe_config->cpu_transcoder;
>> +
>> +		/* Our own transcoder needs to be disabled when reading it in intel_ddi_read_func_ctl() */
>> +		WARN_ON(pipe_config->output_types);
>> +		pipe_config->cpu_transcoder = (enum transcoder)pipe_config->bigjoiner_linked_crtc->pipe;
>> +		intel_ddi_read_func_ctl(encoder, pipe_config);
>> +		pipe_config->cpu_transcoder = save;
>> +	}
>>  
>>  	pipe_config->has_audio =
>>  		intel_ddi_is_audio_enabled(dev_priv, cpu_transcoder);
>> @@ -4422,7 +4455,8 @@ void intel_ddi_get_config(struct intel_encoder *encoder,
>>  		dev_priv->vbt.edp.bpp = pipe_config->pipe_bpp;
>>  	}
>>  
>> -	intel_ddi_clock_get(encoder, pipe_config);
>> +	if (!pipe_config->bigjoiner_slave)
>> +		intel_ddi_clock_get(encoder, pipe_config);
>>  
>>  	if (IS_GEN9_LP(dev_priv))
>>  		pipe_config->lane_lat_optim_mask =
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 41af7f1011fd..7223b6d916e7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -7024,6 +7024,45 @@ static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
>>  	intel_de_write(dev_priv, reg, val);
>>  }
>>  
>> +static void tgl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
>> +					 const struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_crtc *master = to_intel_crtc(crtc_state->uapi.crtc);
>> +	struct intel_crtc_state *master_crtc_state;
>> +	struct drm_connector_state *conn_state;
>> +	struct drm_connector *conn;
>> +	struct intel_encoder *encoder = NULL;
>> +	int i;
>> +
>> +	if (crtc_state->bigjoiner_slave)
>> +		master = crtc_state->bigjoiner_linked_crtc;
>> +
>> +	master_crtc_state = intel_atomic_get_new_crtc_state(state, master);
>> +
>> +	for_each_new_connector_in_state(&state->base, conn, conn_state, i) {
>> +		if (conn_state->crtc != &master->base)
>> +			continue;
>> +
>> +		encoder = to_intel_encoder(conn_state->best_encoder);
>> +		break;
>> +	}
>> +
>> +	if (!crtc_state->bigjoiner_slave) {
>> +		/* need to enable VDSC, which we skipped in pre-enable */
>> +		intel_dsc_enable(encoder, crtc_state);
>> +	} else {
>> +		/*
>> +		 * Enable sequence steps 1-7 on bigjoiner master
>> +		 */
>> +		intel_encoders_pre_pll_enable(state, master);
>> +		intel_enable_shared_dpll(master_crtc_state);
>> +		intel_encoders_pre_enable(state, master);
>> +
>> +		/* and DSC on slave */
> Also here fec_enable never gets called for the slave since we call intel_encoders_pre_enable
> only for the master. So essentially on slave we are just doing dsc enable without FEC which is wrong.
>
> Regard

It is? I thought FEC was only required for the master when I was carefully reading the spec.

The DP encoder on the slave is completely unused, so no fec should be needed there.

~Maarten

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
