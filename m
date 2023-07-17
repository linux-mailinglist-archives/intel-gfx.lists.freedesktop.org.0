Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBAA9756078
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jul 2023 12:33:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7747310E227;
	Mon, 17 Jul 2023 10:33:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1671610E229
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jul 2023 10:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689589979; x=1721125979;
 h=message-id:date:mime-version:subject:to:references:cc:
 from:in-reply-to:content-transfer-encoding;
 bh=WmMnmW1xH1VPTYgKFQhDbwk5yUO69biQu8wpfpMq7fM=;
 b=Aaqq8Z8qX8x56m6eAFT/bxx6cWtJ+zp0P9KmAPGuPx4q0G2EbntpDKo2
 cRHszahx5oFWEEnJFur82qRTOYCA/fr9r2m5DptQtg/WtJBcAJuiFjOOk
 vaSSdYgenCxGZONQHM64j95mUTUQP+6QpwobXQcMPbkTfJvujc3se9uat
 CVDhYBs7vARAodmV51HRAkI9mTMSWVCYvj0B2qSgrUKvTHlzefV+hD6Eu
 vpFSKxoIjmaquQ3pbh0FpTybqtrN4Rmv94jn/Mid4DV3MVa4n5dR3AlsP
 k4Z2ZZOaDdo2ad18+7m8ESbDMW1F2p6VlRjhLqqB8R6TxNfO1OSwQCyIt w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="363360555"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="363360555"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 03:32:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="969835679"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="969835679"
Received: from rgwhiteh-mobl1.ger.corp.intel.com (HELO [10.213.205.103])
 ([10.213.205.103])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 03:32:55 -0700
Message-ID: <a7e0a7d5-2a86-e9c4-b5ec-5256104ba22c@linux.intel.com>
Date: Mon, 17 Jul 2023 11:32:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
 <20210515031035.2561658-14-matthew.d.roper@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20210515031035.2561658-14-matthew.d.roper@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v4 13/23] drm/i915/adl_p: MBUS programming
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


[Reviving a bit of an old thread to ask a fastboot related question...]

On 15/05/2021 04:10, Matt Roper wrote:
> From: Vandita Kulkarni <vandita.kulkarni@intel.com>
> 
> Update MBUS_CTL register if the 2 mbus can be joined as per the current
> DDB allocation and active pipes, also update hashing mode and pipe
> select bits as  per the sequence mentioned in the bspec.
> 
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Cc: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_atomic.c  | 20 +++++
>   drivers/gpu/drm/i915/display/intel_atomic.h  |  1 +
>   drivers/gpu/drm/i915/display/intel_display.c |  3 +
>   drivers/gpu/drm/i915/i915_reg.h              | 11 +++
>   drivers/gpu/drm/i915/intel_pm.c              | 92 ++++++++++++++++++--
>   drivers/gpu/drm/i915/intel_pm.h              |  2 +-
>   6 files changed, 120 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
> index 88f424020a5f..b4e7ac51aa31 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -187,6 +187,26 @@ intel_connector_needs_modeset(struct intel_atomic_state *state,
>   									    new_conn_state->crtc)));
>   }
>   
> +/**
> + * intel_any_crtc_needs_modeset - check if any CRTC needs a modeset
> + * @state: the atomic state corresponding to this modeset
> + *
> + * Returns true if any CRTC in @state needs a modeset.
> + */
> +bool intel_any_crtc_needs_modeset(struct intel_atomic_state *state)
> +{
> +	struct intel_crtc *crtc;
> +	struct intel_crtc_state *crtc_state;
> +	int i;
> +
> +	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> +		if (intel_crtc_needs_modeset(crtc_state))
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
>   struct intel_digital_connector_state *
>   intel_atomic_get_digital_connector_state(struct intel_atomic_state *state,
>   					 struct intel_connector *connector)
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.h b/drivers/gpu/drm/i915/display/intel_atomic.h
> index 62a3365ed5e6..d2700c74c9da 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.h
> @@ -35,6 +35,7 @@ struct drm_connector_state *
>   intel_digital_connector_duplicate_state(struct drm_connector *connector);
>   bool intel_connector_needs_modeset(struct intel_atomic_state *state,
>   				   struct drm_connector *connector);
> +bool intel_any_crtc_needs_modeset(struct intel_atomic_state *state);
>   struct intel_digital_connector_state *
>   intel_atomic_get_digital_connector_state(struct intel_atomic_state *state,
>   					 struct intel_connector *connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index f7b25a723f87..dd248995c53d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -9959,6 +9959,9 @@ static int intel_atomic_check(struct drm_device *dev,
>   	if (ret)
>   		goto fail;
>   
> +	if (intel_any_crtc_needs_modeset(state))
> +		any_ms = true;
> +
>   	if (any_ms) {
>   		ret = intel_modeset_checks(state);
>   		if (ret)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 47be6054d480..0e7a2616b3cd 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2935,6 +2935,15 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>   #define MBUS_BBOX_CTL_S1		_MMIO(0x45040)
>   #define MBUS_BBOX_CTL_S2		_MMIO(0x45044)
>   
> +#define MBUS_CTL			_MMIO(0x4438C)
> +#define MBUS_JOIN			REG_BIT(31)
> +#define MBUS_HASHING_MODE_MASK		REG_BIT(30)
> +#define MBUS_HASHING_MODE_2x2		REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 0)
> +#define MBUS_HASHING_MODE_1x4		REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 1)
> +#define MBUS_JOIN_PIPE_SELECT_MASK	REG_GENMASK(28, 26)
> +#define MBUS_JOIN_PIPE_SELECT(pipe)	REG_FIELD_PREP(MBUS_JOIN_PIPE_SELECT_MASK, pipe)
> +#define MBUS_JOIN_PIPE_SELECT_NONE	MBUS_JOIN_PIPE_SELECT(7)
> +
>   #define HDPORT_STATE			_MMIO(0x45050)
>   #define   HDPORT_DPLL_USED_MASK		REG_GENMASK(15, 12)
>   #define   HDPORT_DDI_USED(phy)		REG_BIT(2 * (phy) + 1)
> @@ -8166,6 +8175,8 @@ enum {
>   #define  DBUF_POWER_STATE			REG_BIT(30)
>   #define  DBUF_TRACKER_STATE_SERVICE_MASK	REG_GENMASK(23, 19)
>   #define  DBUF_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(DBUF_TRACKER_STATE_SERVICE_MASK, x)
> +#define  DBUF_MIN_TRACKER_STATE_SERVICE_MASK	REG_GENMASK(18, 16) /* ADL-P+ */
> +#define  DBUF_MIN_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(DBUF_MIN_TRACKER_STATE_SERVICE_MASK, x) /* ADL-P+ */
>   
>   #define GEN7_MSG_CTL	_MMIO(0x45010)
>   #define  WAIT_FOR_PCH_RESET_ACK		(1 << 1)
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index cbbd966f710e..00f3dead20ad 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4266,7 +4266,6 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
>   static void skl_ddb_entry_init_from_hw(struct drm_i915_private *dev_priv,
>   				       struct skl_ddb_entry *entry, u32 reg)
>   {
> -
>   	entry->start = reg & DDB_ENTRY_MASK;
>   	entry->end = (reg >> DDB_ENTRY_END_SHIFT) & DDB_ENTRY_MASK;
>   
> @@ -4391,6 +4390,7 @@ skl_plane_downscale_amount(const struct intel_crtc_state *crtc_state,
>   struct dbuf_slice_conf_entry {
>   	u8 active_pipes;
>   	u8 dbuf_mask[I915_MAX_PIPES];
> +	bool join_mbus;
>   };
>   
>   /*
> @@ -4583,14 +4583,16 @@ static const struct dbuf_slice_conf_entry adlp_allowed_dbufs[] = {
>   	{
>   		.active_pipes = BIT(PIPE_A),
>   		.dbuf_mask = {
> -			[PIPE_A] = BIT(DBUF_S1) | BIT(DBUF_S2),
> +			[PIPE_A] = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) | BIT(DBUF_S4),
>   		},
> +		.join_mbus = true,
>   	},
>   	{
>   		.active_pipes = BIT(PIPE_B),
>   		.dbuf_mask = {
> -			[PIPE_B] = BIT(DBUF_S3) | BIT(DBUF_S4),
> +			[PIPE_B] = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) | BIT(DBUF_S4),
>   		},
> +		.join_mbus = true,
>   	},
>   	{
>   		.active_pipes = BIT(PIPE_A) | BIT(PIPE_B),
> @@ -4691,6 +4693,23 @@ static const struct dbuf_slice_conf_entry adlp_allowed_dbufs[] = {
>   
>   };
>   
> +static bool check_mbus_joined(u8 active_pipes,
> +			      const struct dbuf_slice_conf_entry *dbuf_slices)
> +{
> +	int i;
> +
> +	for (i = 0; i < dbuf_slices[i].active_pipes; i++) {
> +		if (dbuf_slices[i].active_pipes == active_pipes)
> +			return dbuf_slices[i].join_mbus;
> +	}
> +	return false;
> +}
> +
> +static bool adlp_check_mbus_joined(u8 active_pipes)
> +{
> +	return check_mbus_joined(active_pipes, adlp_allowed_dbufs);
> +}
> +
>   static u8 compute_dbuf_slices(enum pipe pipe, u8 active_pipes,
>   			      const struct dbuf_slice_conf_entry *dbuf_slices)
>   {
> @@ -5972,16 +5991,29 @@ skl_compute_ddb(struct intel_atomic_state *state)
>   
>   	new_dbuf_state->enabled_slices = intel_dbuf_enabled_slices(new_dbuf_state);
>   
> -	if (old_dbuf_state->enabled_slices != new_dbuf_state->enabled_slices) {
> +	if (IS_ALDERLAKE_P(dev_priv))
> +		new_dbuf_state->joined_mbus = adlp_check_mbus_joined(new_dbuf_state->active_pipes);
> +
> +	if (old_dbuf_state->enabled_slices != new_dbuf_state->enabled_slices ||
> +	    old_dbuf_state->joined_mbus != new_dbuf_state->joined_mbus) {
>   		ret = intel_atomic_serialize_global_state(&new_dbuf_state->base);
>   		if (ret)
>   			return ret;
>   
> +		if (old_dbuf_state->joined_mbus != new_dbuf_state->joined_mbus) {
> +			/* TODO: Implement vblank synchronized MBUS joining changes */
> +			ret = intel_modeset_all_pipes(state);

In newer kernels like 6.4 this actually looks like this:

                 if (old_dbuf_state->joined_mbus != new_dbuf_state->joined_mbus) {
                         /* TODO: Implement vblank synchronized MBUS joining changes */
                         ret = intel_modeset_all_pipes(state, "MBUS joining change");

My question is - if this triggers during boot, something like (log filtered to relevant pipe):

  [drm:intel_modeset_setup_hw_state] [CRTC:80:pipe A] hw state readout: enabled
  [drm:drm_atomic_set_mode_for_crtc] Set [MODE:1920x1200] for [CRTC:80:pipe A] state 000000007a858c07
  [drm:intel_modeset_setup_hw_state] [PLANE:31:plane 1A] min_cdclk 78050 kHz
  [drm:intel_modeset_setup_hw_state] [PLANE:40:plane 2A] min_cdclk 0 kHz
  [drm:intel_modeset_setup_hw_state] [PLANE:49:plane 3A] min_cdclk 0 kHz
  [drm:intel_modeset_setup_hw_state] [PLANE:58:plane 4A] min_cdclk 0 kHz
  [drm:intel_modeset_setup_hw_state] [PLANE:67:plane 5A] min_cdclk 0 kHz
  [drm:intel_modeset_setup_hw_state] [PLANE:76:cursor A] min_cdclk 0 kHz
  [drm:intel_bw_crtc_update] pipe A data rate 624400 num active planes 1
  [drm:intel_crtc_state_dump] [CRTC:80:pipe A] enable: yes [setup_hw_state]
  [drm:intel_crtc_state_dump] active: yes, output_types: EDP (0x100), output format: RGB
  [drm:intel_crtc_state_dump] cpu_transcoder: A, pipe bpp: 24, dithering: 0
  [drm:intel_crtc_state_dump] MST master transcoder: <invalid>
  [drm:intel_crtc_state_dump] port sync: master transcoder: <invalid>, slave transcoder bitmask = 0x0
  [drm:intel_crtc_state_dump] bigjoiner: no, pipes: 0x0
  [drm:intel_crtc_state_dump] splitter: disabled, link count 0, overlap 0
  [drm:intel_dump_m_n_config] dp m_n: lanes: 2; data_m: 7274787, data_n: 8388608, link_m: 303116, link_n: 524288, tu: 64
  [drm:intel_dump_m_n_config] dp m2_n2: lanes: 2; data_m: 0, data_n: 0, link_m: 0, link_n: 0, tu: 0
  [drm:intel_crtc_state_dump] framestart delay: 1, MSA timing delay: 0
  [drm:intel_crtc_state_dump] audio: 0, infoframes: 0, infoframes enabled: 0x0
  [drm:intel_crtc_state_dump] vrr: no, vmin: 0, vmax: 0, pipeline full: 0, guardband: 0 flipline: 0, vmin vblank: 1, vmax vblank: 0
  [drm:intel_crtc_state_dump] requested mode: "1920x1200": 60 156100 1920 1936 1952 2104 1200 1203 1217 1236 0x40 0x9
  [drm:intel_crtc_state_dump] adjusted mode: "1920x1200": 60 156100 1920 1936 1952 2104 1200 1203 1217 1236 0x40 0x9
  [drm:intel_dump_crtc_timings] crtc timings: clock=156100, hd=1920 hb=1920-2104 hs=1936-1952 ht=2104, vd=1200 vb=1200-1236 vs=1203-1217 vt=1236, flags=0x9
  [drm:intel_crtc_state_dump] pipe mode: "1920x1200": 60 156100 1920 1936 1952 2104 1200 1203 1217 1236 0x40 0x9
  [drm:intel_dump_crtc_timings] crtc timings: clock=156100, hd=1920 hb=1920-2104 hs=1936-1952 ht=2104, vd=1200 vb=1200-1236 vs=1203-1217 vt=1236, flags=0x9
  [drm:intel_crtc_state_dump] port clock: 270000, pipe src: 1920x1200+0+0, pixel rate 156100
  [drm:intel_crtc_state_dump] linetime: 108, ips linetime: 0
  [drm:intel_crtc_state_dump] num_scalers: 2, scaler_users: 0x0, scaler_id: -1, scaling_filter: 0
  [drm:intel_crtc_state_dump] pch pfit: 0x0+0+0, disabled, force thru: no
  [drm:intel_crtc_state_dump] ips: 0, double wide: 0, drrs: 0
  [drm:icl_dump_hw_state] dpll_hw_state: cfgcr0: 0xe001a5, cfgcr1: 0x88, div0: 0x0, mg_refclkin_ctl: 0x0, hg_clktop2_coreclkctl1: 0x0, mg_clktop2_hsclkctl: 0x0, mg_pll_div0: 0x0, mg_pll_div2: 0x0, mg_pll_lf: 0x0, mg_pll_frac_lock: 0x0, mg_pll_ssc: 0x0, mg_pll_bias: 0x0, mg_pll_tdc_coldst_bias: 0x0
  [drm:intel_crtc_state_dump] csc_mode: 0x20000000 gamma_mode: 0x20000000 gamma_enable: 0 csc_enable: 0
  [drm:intel_crtc_state_dump] pre csc lut: 0 entries, post csc lut: 0 entries
  [drm:skl_wm_get_hw_state_and_sanitize] [CRTC:80:pipe A] dbuf slices 0x3, ddb (0 - 2048), active pipes 0x1, mbus joined: no
  [drm:skl_get_initial_plane_config] pipe A/plane 1A with fb: size=1920x1200@32, offset=0, pitch 7680, size 0x8ca000
  [drm:intel_modeset_setup_hw_state] [PLANE:31:plane 1A] hw state readout: enabled, pipe A
  [drm:intel_modeset_setup_hw_state] [PLANE:40:plane 2A] hw state readout: disabled, pipe A
  [drm:intel_modeset_setup_hw_state] [PLANE:49:plane 3A] hw state readout: disabled, pipe A
  [drm:intel_modeset_setup_hw_state] [PLANE:58:plane 4A] hw state readout: disabled, pipe A
  [drm:intel_modeset_setup_hw_state] [PLANE:67:plane 5A] hw state readout: disabled, pipe A
  [drm:intel_modeset_setup_hw_state] [PLANE:76:cursor A] hw state readout: disabled, pipe A
  [drm:drm_atomic_state_init] Allocated atomic state 0000000040c39674
  [drm:drm_atomic_get_crtc_state] Added [CRTC:80:pipe A] 000000004f7fe797 state to 0000000040c39674
  [drm:drm_atomic_add_affected_planes] Adding all current planes for [CRTC:80:pipe A] to 0000000040c39674
  [drm:drm_atomic_get_plane_state] Added [PLANE:31:plane 1A] 0000000053d68b4a state to 0000000040c39674
  [drm:intel_plane_atomic_check_with_state] [CRTC:80:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on 0, ms 0
  [drm:intel_atomic_get_global_obj_state] Added new global object 00000000e13fb26d state 00000000808b6476 to 0000000040c39674
  [drm:intel_modeset_all_pipes] [CRTC:80:pipe A] Full modeset due to MBUS joining change
set_all_pipes -> drm_atomic_add_affected_connectors()
  [drm:drm_atomic_add_affected_connectors] Adding all current connectors for [CRTC:80:pipe A] to 0000000040c39674
  [drm:drm_atomic_get_connector_state] Added [CONNECTOR:236:eDP-1] 000000002482e3f0 state to 0000000040c39674
set_all_pipes -> intel_atomic_add_affected_planes()
  [drm:skl_compute_wm] Enabled dbuf slices 0xf -> 0xf (total dbuf slices 0xf), mbus joined? no->yes
  [drm:skl_compute_wm] [CRTC:80:pipe A] dbuf slices 0x3 -> 0xf, ddb (0 - 2048) -> (0 - 4096), active pipes 0x1 -> 0x1
  [drm:drm_atomic_get_plane_state] Added [PLANE:76:cursor A] 000000004dbc0965 state to 0000000040c39674
  [drm:intel_atomic_get_global_obj_state] Added new global object 0000000074f9145a state 00000000977a9d2d to 0000000040c39674
  [drm:drm_atomic_get_plane_state] Added [PLANE:40:plane 2A] 00000000aaf335bf state to 0000000040c39674
  [drm:drm_atomic_get_plane_state] Added [PLANE:49:plane 3A] 00000000030ea62d state to 0000000040c39674
  [drm:drm_atomic_get_plane_state] Added [PLANE:58:plane 4A] 000000009fb0fb31 state to 0000000040c39674
  [drm:drm_atomic_get_plane_state] Added [PLANE:67:plane 5A] 00000000dca1b7b4 state to 0000000040c39674
  [drm:skl_compute_wm] [PLANE:31:plane 1A] ddb (   0 - 2048) -> (   0 - 4057), size 2048 -> 4057
  [drm:skl_compute_wm] [PLANE:76:cursor A] ddb (   0 -    0) -> (4057 - 4096), size    0 ->   39
  [drm:skl_compute_wm] [PLANE:31:plane 1A]   level *wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm,*swm, stwm -> *wm0,*wm1,*wm2,*wm3,*wm4,*wm5, wm6, wm7, twm,*swm, stwm
  [drm:skl_compute_wm] [PLANE:31:plane 1A]   lines    1,   1,   1,   1,   1,   1,   0,   0,   1,   3,    1 ->    1,   5,   7,   8,  11,  11,   0,   0,   0,   3,    0
  [drm:skl_compute_wm] [PLANE:31:plane 1A]  blocks   17,  17,  17,  17,  17,  17,   0,   0,   7,  49,    7 ->   16,  81, 113, 129, 177, 177,   0,   0,   0,  49,    0
  [drm:skl_compute_wm] [PLANE:31:plane 1A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->   19,  91, 126, 143, 196, 196,   0,   0,   0,  55,    0
  [drm:intel_atomic_get_global_obj_state] Added new global object 000000008a844c14 state 000000008aeecf58 to 0000000040c39674
  [drm:intel_bw_calc_min_cdclk] new bandwidth min cdclk (12196 kHz) > old min cdclk (0 kHz)
  [drm:intel_crtc_state_dump] [CRTC:80:pipe A] enable: yes [modeset]
  [drm:intel_crtc_state_dump] active: yes, output_types: EDP (0x100), output format: RGB
  [drm:intel_crtc_state_dump] cpu_transcoder: A, pipe bpp: 24, dithering: 0
  [drm:intel_crtc_state_dump] MST master transcoder: <invalid>
  [drm:intel_crtc_state_dump] port sync: master transcoder: <invalid>, slave transcoder bitmask = 0x0
  [drm:intel_crtc_state_dump] bigjoiner: no, pipes: 0x0
  [drm:intel_crtc_state_dump] splitter: disabled, link count 0, overlap 0
  [drm:intel_dump_m_n_config] dp m_n: lanes: 2; data_m: 7274787, data_n: 8388608, link_m: 303116, link_n: 524288, tu: 64
  [drm:intel_dump_m_n_config] dp m2_n2: lanes: 2; data_m: 0, data_n: 0, link_m: 0, link_n: 0, tu: 0
  [drm:intel_crtc_state_dump] framestart delay: 1, MSA timing delay: 0
  [drm:intel_crtc_state_dump] audio: 0, infoframes: 0, infoframes enabled: 0x0
  [drm:intel_crtc_state_dump] vrr: no, vmin: 0, vmax: 0, pipeline full: 0, guardband: 0 flipline: 0, vmin vblank: 1, vmax vblank: 0
  [drm:intel_crtc_state_dump] requested mode: "1920x1200": 60 156100 1920 1936 1952 2104 1200 1203 1217 1236 0x40 0x9
  [drm:intel_crtc_state_dump] adjusted mode: "1920x1200": 60 156100 1920 1936 1952 2104 1200 1203 1217 1236 0x40 0x9
  [drm:intel_dump_crtc_timings] crtc timings: clock=156100, hd=1920 hb=1920-2104 hs=1936-1952 ht=2104, vd=1200 vb=1200-1236 vs=1203-1217 vt=1236, flags=0x9
  [drm:intel_crtc_state_dump] pipe mode: "1920x1200": 60 156100 1920 1936 1952 2104 1200 1203 1217 1236 0x40 0x9
  [drm:intel_dump_crtc_timings] crtc timings: clock=156100, hd=1920 hb=1920-2104 hs=1936-1952 ht=2104, vd=1200 vb=1200-1236 vs=1203-1217 vt=1236, flags=0x9
  [drm:intel_crtc_state_dump] port clock: 270000, pipe src: 1920x1200+0+0, pixel rate 156100
  [drm:intel_crtc_state_dump] linetime: 108, ips linetime: 0
  [drm:intel_crtc_state_dump] num_scalers: 2, scaler_users: 0x0, scaler_id: -1, scaling_filter: 0
  [drm:intel_crtc_state_dump] pch pfit: 0x0+0+0, disabled, force thru: no
  [drm:intel_crtc_state_dump] ips: 0, double wide: 0, drrs: 0
  [drm:icl_dump_hw_state] dpll_hw_state: cfgcr0: 0xe001a5, cfgcr1: 0x88, div0: 0x0, mg_refclkin_ctl: 0x0, hg_clktop2_coreclkctl1: 0x0, mg_clktop2_hsclkctl: 0x0, mg_pll_div0: 0x0, mg_pll_div2: 0x0, mg_pll_lf: 0x0, mg_pll_frac_lock: 0x0, mg_pll_ssc: 0x0, mg_pll_bias: 0x0, mg_pll_tdc_coldst_bias: 0x0
  [drm:intel_crtc_state_dump] csc_mode: 0x0 gamma_mode: 0x0 gamma_enable: 0 csc_enable: 0
  [drm:intel_crtc_state_dump] pre csc lut: 0 entries, post csc lut: 0 entries
  [drm:intel_crtc_state_dump] [PLANE:31:plane 1A] fb: [FB:291] 1920x1200 format = XR24 little-endian (0x34325258) modifier = 0x0, visible: yes
  [drm:intel_crtc_state_dump] 	rotation: 0x1, scaler: -1, scaling_filter: 0
  [drm:intel_crtc_state_dump] 	src: 1920.000000x1200.000000+0.000000+0.000000 dst: 1920x1200+0+0
  [drm:intel_crtc_state_dump] [PLANE:40:plane 2A] fb: [NOFB], visible: no
  [drm:intel_crtc_state_dump] [PLANE:49:plane 3A] fb: [NOFB], visible: no
  [drm:intel_crtc_state_dump] [PLANE:58:plane 4A] fb: [NOFB], visible: no
  [drm:intel_crtc_state_dump] [PLANE:67:plane 5A] fb: [NOFB], visible: no
  [drm:intel_crtc_state_dump] [PLANE:76:cursor A] fb: [NOFB], visible: no
  [drm:drm_atomic_commit] committing 0000000040c39674

So fastboot/fastset fails, report is of a visual glitch due full modeset being triggered, can we conclude firmware is doing something incorrectly:

  [drm:skl_wm_get_hw_state_and_sanitize] [CRTC:80:pipe A] dbuf slices 0x3, ddb (0 - 2048), active pipes 0x1, mbus joined: no

... later i915 wants to enable it ...

  [drm:intel_modeset_all_pipes] [CRTC:80:pipe A] Full modeset due to MBUS joining change
..
  [drm:skl_compute_wm] Enabled dbuf slices 0xf -> 0xf (total dbuf slices 0xf), mbus joined? no->yes

Or can we say i915 could (should?) work around that by not insisting to "join mbus" (excuse a display noob who doesn't really know what that is), and so prioritising/preserving fastboot?

Regards,

Tvrtko

> +			if (ret)
> +				return ret;
> +		}
> +
>   		drm_dbg_kms(&dev_priv->drm,
> -			    "Enabled dbuf slices 0x%x -> 0x%x (total dbuf slices 0x%x)\n",
> +			    "Enabled dbuf slices 0x%x -> 0x%x (total dbuf slices 0x%x), mbus joined? %s->%s\n",
>   			    old_dbuf_state->enabled_slices,
>   			    new_dbuf_state->enabled_slices,
> -			    INTEL_INFO(dev_priv)->dbuf.slice_mask);
> +			    INTEL_INFO(dev_priv)->dbuf.slice_mask,
> +			    yesno(old_dbuf_state->joined_mbus),
> +			    yesno(new_dbuf_state->joined_mbus));
>   	}
>   
>   	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> @@ -6433,6 +6465,9 @@ void skl_wm_get_hw_state(struct drm_i915_private *dev_priv)
>   		to_intel_dbuf_state(dev_priv->dbuf.obj.state);
>   	struct intel_crtc *crtc;
>   
> +	if (IS_ALDERLAKE_P(dev_priv))
> +		dbuf_state->joined_mbus = intel_de_read(dev_priv, MBUS_CTL) & MBUS_JOIN;
> +
>   	for_each_intel_crtc(&dev_priv->drm, crtc) {
>   		struct intel_crtc_state *crtc_state =
>   			to_intel_crtc_state(crtc->base.state);
> @@ -6472,10 +6507,11 @@ void skl_wm_get_hw_state(struct drm_i915_private *dev_priv)
>   		crtc_state->wm.skl.ddb.end = mbus_offset + dbuf_state->ddb[pipe].end;
>   
>   		drm_dbg_kms(&dev_priv->drm,
> -			    "[CRTC:%d:%s] dbuf slices 0x%x, ddb (%d - %d), active pipes 0x%x\n",
> +			    "[CRTC:%d:%s] dbuf slices 0x%x, ddb (%d - %d), active pipes 0x%x, mbus joined: %s\n",
>   			    crtc->base.base.id, crtc->base.name,
>   			    dbuf_state->slices[pipe], dbuf_state->ddb[pipe].start,
> -			    dbuf_state->ddb[pipe].end, dbuf_state->active_pipes);
> +			    dbuf_state->ddb[pipe].end, dbuf_state->active_pipes,
> +			    yesno(dbuf_state->joined_mbus));
>   	}
>   
>   	dbuf_state->enabled_slices = dev_priv->dbuf.enabled_slices;
> @@ -8009,6 +8045,45 @@ int intel_dbuf_init(struct drm_i915_private *dev_priv)
>   	return 0;
>   }
>   
> +/*
> + * Configure MBUS_CTL and all DBUF_CTL_S of each slice to join_mbus state before
> + * update the request state of all DBUS slices.
> + */
> +static void update_mbus_pre_enable(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> +	u32 mbus_ctl, dbuf_min_tracker_val;
> +	enum dbuf_slice slice;
> +	const struct intel_dbuf_state *dbuf_state =
> +		intel_atomic_get_new_dbuf_state(state);
> +
> +	if (!IS_ALDERLAKE_P(dev_priv))
> +		return;
> +
> +	/*
> +	 * TODO: Implement vblank synchronized MBUS joining changes.
> +	 * Must be properly coordinated with dbuf reprogramming.
> +	 */
> +	if (dbuf_state->joined_mbus) {
> +		mbus_ctl = MBUS_HASHING_MODE_1x4 | MBUS_JOIN |
> +			MBUS_JOIN_PIPE_SELECT_NONE;
> +		dbuf_min_tracker_val = DBUF_MIN_TRACKER_STATE_SERVICE(3);
> +	} else {
> +		mbus_ctl = MBUS_HASHING_MODE_2x2 |
> +			MBUS_JOIN_PIPE_SELECT_NONE;
> +		dbuf_min_tracker_val = DBUF_MIN_TRACKER_STATE_SERVICE(1);
> +	}
> +
> +	intel_de_rmw(dev_priv, MBUS_CTL,
> +		     MBUS_HASHING_MODE_MASK | MBUS_JOIN |
> +		     MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
> +
> +	for_each_dbuf_slice(dev_priv, slice)
> +		intel_de_rmw(dev_priv, DBUF_CTL_S(slice),
> +			     DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
> +			     dbuf_min_tracker_val);
> +}
> +
>   void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
>   {
>   	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> @@ -8023,6 +8098,7 @@ void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
>   
>   	WARN_ON(!new_dbuf_state->base.changed);
>   
> +	update_mbus_pre_enable(state);
>   	gen9_dbuf_slices_update(dev_priv,
>   				old_dbuf_state->enabled_slices |
>   				new_dbuf_state->enabled_slices);
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
> index 669c8d505677..bac72c859a84 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -78,9 +78,9 @@ struct intel_dbuf_state {
>   	struct skl_ddb_entry ddb[I915_MAX_PIPES];
>   	unsigned int weight[I915_MAX_PIPES];
>   	u8 slices[I915_MAX_PIPES];
> -
>   	u8 enabled_slices;
>   	u8 active_pipes;
> +	bool joined_mbus;
>   };
>   
>   int intel_dbuf_init(struct drm_i915_private *dev_priv);
