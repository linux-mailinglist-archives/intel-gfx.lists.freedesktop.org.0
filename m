Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B00F5A4E65
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 15:42:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C983010F29F;
	Mon, 29 Aug 2022 13:42:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A20C10EEF4
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Aug 2022 13:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661780554; x=1693316554;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=JpslcEe0mDU7tWe8MtV8eYzvJugeyDrNAtsJqnX9u1Q=;
 b=UR/8+LBFOPT15gyeFr9KocnDjR4S9pxj9YZWQ7kIulMMRjRG8v7F3CoO
 15IhJMmGG4qFifsVSxSQGeQI7kd6pgXn+Nr2R/HDzvX8OfpgAr9+pTEXC
 6qAgpVy358Vw3McDW8av+TllgCLGjI9qQGQ+ebplQMuc5V/z4NH7vRy48
 hp+20DiCmVnM5RVS9yM5Ew6pUdEgBdPbP925CL1soJw3yqmUh3tEzRJir
 z2b5zpWNZPVxEQ+9bDaq3beu1XZ0G0gWk6tSsgJEdbr3XRfmqWSnEdAuF
 UInczDPMZbFpTDmxa31G/BJtL3rxcSz95OqnpMG6WYmxND1+7NhsgYY2d w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="381197694"
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="381197694"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 06:42:34 -0700
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="614218552"
Received: from idecesar-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.198])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 06:42:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <87bks3fa1d.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220823090128.488008-1-maarten.lankhorst@linux.intel.com>
 <20220823090128.488008-5-maarten.lankhorst@linux.intel.com>
 <87bks3fa1d.fsf@intel.com>
Date: Mon, 29 Aug 2022 16:42:25 +0300
Message-ID: <875yibf9oe.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Replace remaining display
 uncore references to use intel_de
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

On Mon, 29 Aug 2022, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Tue, 23 Aug 2022, Maarten Lankhorst <maarten.lankhorst@linux.intel.com> wrote:
>
> Commit message!
>
> I think this is doing a bit too much at once. The straightforward
> conversions are fine I think, but adding new de helpers and using them
> here along with everything else is a bit much.

Also, nitpick, there were a bunch of places where the following lines
need to be reindented.

>
> BR,
> Jani.
>
>
>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bw.c       |  8 ++--
>>  drivers/gpu/drm/i915/display/intel_crt.c      | 33 +++++++------
>>  drivers/gpu/drm/i915/display/intel_de.h       | 47 +++++++++++++++++++
>>  .../drm/i915/display/intel_display_power.c    |  2 +-
>>  drivers/gpu/drm/i915/display/intel_dmc.c      |  6 +--
>>  drivers/gpu/drm/i915/display/intel_dp_aux.c   | 30 ++++++------
>>  drivers/gpu/drm/i915/display/intel_dpio_phy.c |  9 ++--
>>  drivers/gpu/drm/i915/display/intel_fbc.c      | 10 +---
>>  drivers/gpu/drm/i915/display/intel_gmbus.c    | 42 ++++++++---------
>>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  6 +--
>>  drivers/gpu/drm/i915/display/intel_snps_phy.c | 11 ++---
>>  11 files changed, 118 insertions(+), 86 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
>> index 8ecf4e3e2bc6..1ca588e31dc9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bw.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>> @@ -42,7 +42,7 @@ static int dg1_mchbar_read_qgv_point_info(struct drm_i915_private *dev_priv,
>>  	u32 dclk_ratio, dclk_reference;
>>  	u32 val;
>>  
>> -	val = intel_uncore_read(&dev_priv->uncore, SA_PERF_STATUS_0_0_0_MCHBAR_PC);
>> +	val = intel_de_read(dev_priv, SA_PERF_STATUS_0_0_0_MCHBAR_PC);
>>  	dclk_ratio = REG_FIELD_GET(DG1_QCLK_RATIO_MASK, val);
>>  	if (val & DG1_QCLK_REFERENCE)
>>  		dclk_reference = 6; /* 6 * 16.666 MHz = 100 MHz */
>> @@ -50,18 +50,18 @@ static int dg1_mchbar_read_qgv_point_info(struct drm_i915_private *dev_priv,
>>  		dclk_reference = 8; /* 8 * 16.666 MHz = 133 MHz */
>>  	sp->dclk = DIV_ROUND_UP((16667 * dclk_ratio * dclk_reference) + 500, 1000);
>>  
>> -	val = intel_uncore_read(&dev_priv->uncore, SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU);
>> +	val = intel_de_read(dev_priv, SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU);
>>  	if (val & DG1_GEAR_TYPE)
>>  		sp->dclk *= 2;
>>  
>>  	if (sp->dclk == 0)
>>  		return -EINVAL;
>>  
>> -	val = intel_uncore_read(&dev_priv->uncore, MCHBAR_CH0_CR_TC_PRE_0_0_0_MCHBAR);
>> +	val = intel_de_read(dev_priv, MCHBAR_CH0_CR_TC_PRE_0_0_0_MCHBAR);
>>  	sp->t_rp = REG_FIELD_GET(DG1_DRAM_T_RP_MASK, val);
>>  	sp->t_rdpre = REG_FIELD_GET(DG1_DRAM_T_RDPRE_MASK, val);
>>  
>> -	val = intel_uncore_read(&dev_priv->uncore, MCHBAR_CH0_CR_TC_PRE_0_0_0_MCHBAR_HIGH);
>> +	val = intel_de_read(dev_priv, MCHBAR_CH0_CR_TC_PRE_0_0_0_MCHBAR_HIGH);
>>  	sp->t_rcd = REG_FIELD_GET(DG1_DRAM_T_RCD_MASK, val);
>>  	sp->t_ras = REG_FIELD_GET(DG1_DRAM_T_RAS_MASK, val);
>>  
>> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
>> index 6a3893c8ff22..5f64d1d600b7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_crt.c
>> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
>> @@ -679,7 +679,6 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
>>  {
>>  	struct drm_device *dev = crt->base.base.dev;
>>  	struct drm_i915_private *dev_priv = to_i915(dev);
>> -	struct intel_uncore *uncore = &dev_priv->uncore;
>>  	u32 save_bclrpat;
>>  	u32 save_vtotal;
>>  	u32 vtotal, vactive;
>> @@ -700,9 +699,9 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
>>  	pipeconf_reg = PIPECONF(pipe);
>>  	pipe_dsl_reg = PIPEDSL(pipe);
>>  
>> -	save_bclrpat = intel_uncore_read(uncore, bclrpat_reg);
>> -	save_vtotal = intel_uncore_read(uncore, vtotal_reg);
>> -	vblank = intel_uncore_read(uncore, vblank_reg);
>> +	save_bclrpat = intel_de_read(dev_priv, bclrpat_reg);
>> +	save_vtotal = intel_de_read(dev_priv, vtotal_reg);
>> +	vblank = intel_de_read(dev_priv, vblank_reg);
>>  
>>  	vtotal = ((save_vtotal >> 16) & 0xfff) + 1;
>>  	vactive = (save_vtotal & 0x7ff) + 1;
>> @@ -711,23 +710,23 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
>>  	vblank_end = ((vblank >> 16) & 0xfff) + 1;
>>  
>>  	/* Set the border color to purple. */
>> -	intel_uncore_write(uncore, bclrpat_reg, 0x500050);
>> +	intel_de_write(dev_priv, bclrpat_reg, 0x500050);
>>  
>>  	if (DISPLAY_VER(dev_priv) != 2) {
>> -		u32 pipeconf = intel_uncore_read(uncore, pipeconf_reg);
>> -		intel_uncore_write(uncore,
>> +		u32 pipeconf = intel_de_read(dev_priv, pipeconf_reg);
>> +		intel_de_write(dev_priv,
>>  				   pipeconf_reg,
>>  				   pipeconf | PIPECONF_FORCE_BORDER);
>> -		intel_uncore_posting_read(uncore, pipeconf_reg);
>> +		intel_de_posting_read(dev_priv, pipeconf_reg);
>>  		/* Wait for next Vblank to substitue
>>  		 * border color for Color info */
>>  		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
>> -		st00 = intel_uncore_read8(uncore, _VGA_MSR_WRITE);
>> +		st00 = intel_de_read8(dev_priv, _VGA_MSR_WRITE);
>>  		status = ((st00 & (1 << 4)) != 0) ?
>>  			connector_status_connected :
>>  			connector_status_disconnected;
>>  
>> -		intel_uncore_write(uncore, pipeconf_reg, pipeconf);
>> +		intel_de_write(dev_priv, pipeconf_reg, pipeconf);
>>  	} else {
>>  		bool restore_vblank = false;
>>  		int count, detect;
>> @@ -741,7 +740,7 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
>>  			u32 vsync_start = (vsync & 0xffff) + 1;
>>  
>>  			vblank_start = vsync_start;
>> -			intel_uncore_write(uncore,
>> +			intel_de_write(dev_priv,
>>  					   vblank_reg,
>>  					   (vblank_start - 1) |
>>  					   ((vblank_end - 1) << 16));
>> @@ -756,9 +755,9 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
>>  		/*
>>  		 * Wait for the border to be displayed
>>  		 */
>> -		while (intel_uncore_read(uncore, pipe_dsl_reg) >= vactive)
>> +		while (intel_de_read(dev_priv, pipe_dsl_reg) >= vactive)
>>  			;
>> -		while ((dsl = intel_uncore_read(uncore, pipe_dsl_reg)) <=
>> +		while ((dsl = intel_de_read(dev_priv, pipe_dsl_reg)) <=
>>  		       vsample)
>>  			;
>>  		/*
>> @@ -769,14 +768,14 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
>>  		do {
>>  			count++;
>>  			/* Read the ST00 VGA status register */
>> -			st00 = intel_uncore_read8(uncore, _VGA_MSR_WRITE);
>> +			st00 = intel_de_read8(dev_priv, _VGA_MSR_WRITE);
>>  			if (st00 & (1 << 4))
>>  				detect++;
>> -		} while ((intel_uncore_read(uncore, pipe_dsl_reg) == dsl));
>> +		} while ((intel_de_read(dev_priv, pipe_dsl_reg) == dsl));
>>  
>>  		/* restore vblank if necessary */
>>  		if (restore_vblank)
>> -			intel_uncore_write(uncore, vblank_reg, vblank);
>> +			intel_de_write(dev_priv, vblank_reg, vblank);
>>  		/*
>>  		 * If more than 3/4 of the scanline detected a monitor,
>>  		 * then it is assumed to be present. This works even on i830,
>> @@ -789,7 +788,7 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
>>  	}
>>  
>>  	/* Restore previous settings */
>> -	intel_uncore_write(uncore, bclrpat_reg, save_bclrpat);
>> +	intel_de_write(dev_priv, bclrpat_reg, save_bclrpat);
>>  
>>  	return status;
>>  }
>> diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
>> index d51e83a45dce..648b8778f0dc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_de.h
>> +++ b/drivers/gpu/drm/i915/display/intel_de.h
>> @@ -17,6 +17,12 @@ intel_de_read(struct drm_i915_private *i915, i915_reg_t reg)
>>  	return intel_uncore_read(&i915->uncore, reg);
>>  }
>>  
>> +static inline u8
>> +intel_de_read8(struct drm_i915_private *i915, i915_reg_t reg)
>> +{
>> +	return intel_uncore_read8(&i915->uncore, reg);
>> +}
>> +
>>  static inline void
>>  intel_de_posting_read(struct drm_i915_private *i915, i915_reg_t reg)
>>  {
>> @@ -42,6 +48,23 @@ intel_de_wait_for_register(struct drm_i915_private *i915, i915_reg_t reg,
>>  	return intel_wait_for_register(&i915->uncore, reg, mask, value, timeout);
>>  }
>>  
>> +static inline int
>> +intel_de_wait_for_register_fw(struct drm_i915_private *i915, i915_reg_t reg,
>> +			      u32 mask, u32 value, unsigned int timeout)
>> +{
>> +	return intel_wait_for_register_fw(&i915->uncore, reg, mask, value, timeout);
>> +}
>> +
>> +static inline int
>> +__intel_de_wait_for_register(struct drm_i915_private *i915, i915_reg_t reg,
>> +			     u32 mask, u32 value,
>> +			     unsigned int fast_timeout_us,
>> +			     unsigned int slow_timeout_ms, u32 *out_value)
>> +{
>> +	return __intel_wait_for_register(&i915->uncore, reg, mask, value,
>> +					 fast_timeout_us, slow_timeout_ms, out_value);
>> +}
>> +
>>  static inline int
>>  intel_de_wait_for_set(struct drm_i915_private *i915, i915_reg_t reg,
>>  		      u32 mask, unsigned int timeout)
>> @@ -82,6 +105,30 @@ intel_de_write_fw(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
>>  	intel_uncore_write_fw(&i915->uncore, reg, val);
>>  }
>>  
>> +static inline void
>> +intel_de_write_samevalue(struct drm_i915_private *i915, i915_reg_t reg)
>> +{
>> +	/*
>> +	 * This is used by FBC to write the same value, protected against
>> +	 * atomic commit using the uncore lock.
>> +	 */
>> +	spin_lock_irq(&i915->uncore.lock);
>> +	intel_de_write_fw(i915, reg, intel_de_read_fw(i915, reg));
>> +	spin_unlock_irq(&i915->uncore.lock);
>> +}
>> +
>> +static inline u32
>> +intel_de_read_notrace(struct drm_i915_private *i915, i915_reg_t reg)
>> +{
>> +	return intel_uncore_read_notrace(&i915->uncore, reg);
>> +}
>> +
>> +static inline void
>> +intel_de_write_notrace(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
>> +{
>> +	intel_uncore_write_notrace(&i915->uncore, reg, val);
>> +}
>> +
>>  static inline int
>>  intel_de_pcode_write_timeout(struct drm_i915_private *i915, u32 mbox, u32 val,
>>  			    int fast_timeout_us, int slow_timeout_ms)
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>> index 3d2ac2c5b0d2..aff5c3ac3a36 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -1660,7 +1660,7 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
>>  	if (DISPLAY_VER(dev_priv) >= 12) {
>>  		val = DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM |
>>  		      DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR;
>> -		intel_uncore_rmw(&dev_priv->uncore, GEN11_CHICKEN_DCPR_2, 0, val);
>> +		intel_de_rmw(dev_priv, GEN11_CHICKEN_DCPR_2, 0, val);
>>  	}
>>  
>>  	/* Wa_14011503030:xelpd */
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>> index 6c35212c3625..da7b67c8a283 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> @@ -433,9 +433,9 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
>>  
>>  	for (id = 0; id < DMC_FW_MAX; id++) {
>>  		for (i = 0; i < dmc->dmc_info[id].dmc_fw_size; i++) {
>> -			intel_uncore_write_fw(&dev_priv->uncore,
>> -					      DMC_PROGRAM(dmc->dmc_info[id].start_mmioaddr, i),
>> -					      dmc->dmc_info[id].payload[i]);
>> +			intel_de_write_fw(dev_priv,
>> +					  DMC_PROGRAM(dmc->dmc_info[id].start_mmioaddr, i),
>> +					  dmc->dmc_info[id].payload[i]);
>>  		}
>>  	}
>>  
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> index 2bc119374555..db5cc008f78f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> @@ -5,6 +5,7 @@
>>  
>>  #include "i915_drv.h"
>>  #include "i915_trace.h"
>> +#include "intel_de.h"
>>  #include "intel_display_types.h"
>>  #include "intel_dp_aux.h"
>>  #include "intel_pps.h"
>> @@ -41,7 +42,7 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
>>  	u32 status;
>>  	bool done;
>>  
>> -#define C (((status = intel_uncore_read_notrace(&i915->uncore, ch_ctl)) & DP_AUX_CH_CTL_SEND_BUSY) == 0)
>> +#define C (((status = intel_de_read_notrace(i915, ch_ctl)) & DP_AUX_CH_CTL_SEND_BUSY) == 0)
>>  	done = wait_event_timeout(i915->gmbus_wait_queue, C,
>>  				  msecs_to_jiffies_timeout(timeout_ms));
>>  
>> @@ -182,7 +183,6 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>  	struct drm_i915_private *i915 =
>>  			to_i915(dig_port->base.base.dev);
>> -	struct intel_uncore *uncore = &i915->uncore;
>>  	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
>>  	bool is_tc_port = intel_phy_is_tc(i915, phy);
>>  	i915_reg_t ch_ctl, ch_data[5];
>> @@ -226,7 +226,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>>  
>>  	/* Try to wait for any previous AUX channel activity */
>>  	for (try = 0; try < 3; try++) {
>> -		status = intel_uncore_read_notrace(uncore, ch_ctl);
>> +		status = intel_de_read_notrace(i915, ch_ctl);
>>  		if ((status & DP_AUX_CH_CTL_SEND_BUSY) == 0)
>>  			break;
>>  		msleep(1);
>> @@ -235,7 +235,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>>  	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
>>  
>>  	if (try == 3) {
>> -		const u32 status = intel_uncore_read(uncore, ch_ctl);
>> +		const u32 status = intel_de_read(i915, ch_ctl);
>>  
>>  		if (status != intel_dp->aux_busy_last_status) {
>>  			drm_WARN(&i915->drm, 1,
>> @@ -265,23 +265,21 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>>  		for (try = 0; try < 5; try++) {
>>  			/* Load the send data into the aux channel data registers */
>>  			for (i = 0; i < send_bytes; i += 4)
>> -				intel_uncore_write(uncore,
>> -						   ch_data[i >> 2],
>> -						   intel_dp_aux_pack(send + i,
>> -								     send_bytes - i));
>> +				intel_de_write(i915, ch_data[i >> 2],
>> +					       intel_dp_aux_pack(send + i,
>> +								 send_bytes - i));
>>  
>>  			/* Send the command and wait for it to complete */
>> -			intel_uncore_write(uncore, ch_ctl, send_ctl);
>> +			intel_de_write(i915, ch_ctl, send_ctl);
>>  
>>  			status = intel_dp_aux_wait_done(intel_dp);
>>  
>>  			/* Clear done status and any errors */
>> -			intel_uncore_write(uncore,
>> -					   ch_ctl,
>> -					   status |
>> -					   DP_AUX_CH_CTL_DONE |
>> -					   DP_AUX_CH_CTL_TIME_OUT_ERROR |
>> -					   DP_AUX_CH_CTL_RECEIVE_ERROR);
>> +			intel_de_write(i915, ch_ctl,
>> +				       status |
>> +				       DP_AUX_CH_CTL_DONE |
>> +				       DP_AUX_CH_CTL_TIME_OUT_ERROR |
>> +				       DP_AUX_CH_CTL_RECEIVE_ERROR);
>>  
>>  			/*
>>  			 * DP CTS 1.2 Core Rev 1.1, 4.2.1.1 & 4.2.1.2
>> @@ -352,7 +350,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>>  		recv_bytes = recv_size;
>>  
>>  	for (i = 0; i < recv_bytes; i += 4)
>> -		intel_dp_aux_unpack(intel_uncore_read(uncore, ch_data[i >> 2]),
>> +		intel_dp_aux_unpack(intel_de_read(i915, ch_data[i >> 2]),
>>  				    recv + i, recv_bytes - i);
>>  
>>  	ret = recv_bytes;
>> diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
>> index cc6abe761f5e..220e5795482f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
>> @@ -400,11 +400,10 @@ static void _bxt_ddi_phy_init(struct drm_i915_private *dev_priv,
>>  	 * The flag should get set in 100us according to the HW team, but
>>  	 * use 1ms due to occasional timeouts observed with that.
>>  	 */
>> -	if (intel_wait_for_register_fw(&dev_priv->uncore,
>> -				       BXT_PORT_CL1CM_DW0(phy),
>> -				       PHY_RESERVED | PHY_POWER_GOOD,
>> -				       PHY_POWER_GOOD,
>> -				       1))
>> +	if (intel_de_wait_for_register_fw(dev_priv,
>> +					  BXT_PORT_CL1CM_DW0(phy),
>> +					  PHY_RESERVED | PHY_POWER_GOOD,
>> +					  PHY_POWER_GOOD, 1))
>>  		drm_err(&dev_priv->drm, "timeout during PHY%d power on\n",
>>  			phy);
>>  
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
>> index 7436b35f7ea0..3b772ebf7e39 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> @@ -323,10 +323,7 @@ static void i8xx_fbc_nuke(struct intel_fbc *fbc)
>>  	enum i9xx_plane_id i9xx_plane = fbc_state->plane->i9xx_plane;
>>  	struct drm_i915_private *dev_priv = fbc->i915;
>>  
>> -	spin_lock_irq(&dev_priv->uncore.lock);
>> -	intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane),
>> -			  intel_de_read_fw(dev_priv, DSPADDR(i9xx_plane)));
>> -	spin_unlock_irq(&dev_priv->uncore.lock);
>> +	intel_de_write_samevalue(dev_priv, DSPADDR(i9xx_plane));
>>  }
>>  
>>  static void i8xx_fbc_program_cfb(struct intel_fbc *fbc)
>> @@ -359,10 +356,7 @@ static void i965_fbc_nuke(struct intel_fbc *fbc)
>>  	enum i9xx_plane_id i9xx_plane = fbc_state->plane->i9xx_plane;
>>  	struct drm_i915_private *dev_priv = fbc->i915;
>>  
>> -	spin_lock_irq(&dev_priv->uncore.lock);
>> -	intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
>> -			  intel_de_read_fw(dev_priv, DSPSURF(i9xx_plane)));
>> -	spin_unlock_irq(&dev_priv->uncore.lock);
>> +	intel_de_write_samevalue(dev_priv, DSPSURF(i9xx_plane));
>>  }
>>  
>>  static const struct intel_fbc_funcs i965_fbc_funcs = {
>> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
>> index a6ba7fb72339..cd8eedff97d9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
>> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
>> @@ -219,12 +219,11 @@ static void bxt_gmbus_clock_gating(struct drm_i915_private *dev_priv,
>>  static u32 get_reserved(struct intel_gmbus *bus)
>>  {
>>  	struct drm_i915_private *i915 = bus->dev_priv;
>> -	struct intel_uncore *uncore = &i915->uncore;
>>  	u32 reserved = 0;
>>  
>>  	/* On most chips, these bits must be preserved in software. */
>>  	if (!IS_I830(i915) && !IS_I845G(i915))
>> -		reserved = intel_uncore_read_notrace(uncore, bus->gpio_reg) &
>> +		reserved = intel_de_read_notrace(i915, bus->gpio_reg) &
>>  			   (GPIO_DATA_PULLUP_DISABLE |
>>  			    GPIO_CLOCK_PULLUP_DISABLE);
>>  
>> @@ -234,37 +233,36 @@ static u32 get_reserved(struct intel_gmbus *bus)
>>  static int get_clock(void *data)
>>  {
>>  	struct intel_gmbus *bus = data;
>> -	struct intel_uncore *uncore = &bus->dev_priv->uncore;
>> +	struct drm_i915_private *i915 = bus->dev_priv;
>>  	u32 reserved = get_reserved(bus);
>>  
>> -	intel_uncore_write_notrace(uncore,
>> +	intel_de_write_notrace(i915,
>>  				   bus->gpio_reg,
>>  				   reserved | GPIO_CLOCK_DIR_MASK);
>> -	intel_uncore_write_notrace(uncore, bus->gpio_reg, reserved);
>> +	intel_de_write_notrace(i915, bus->gpio_reg, reserved);
>>  
>> -	return (intel_uncore_read_notrace(uncore, bus->gpio_reg) &
>> +	return (intel_de_read_notrace(i915, bus->gpio_reg) &
>>  		GPIO_CLOCK_VAL_IN) != 0;
>>  }
>>  
>>  static int get_data(void *data)
>>  {
>>  	struct intel_gmbus *bus = data;
>> -	struct intel_uncore *uncore = &bus->dev_priv->uncore;
>> +	struct drm_i915_private *i915 = bus->dev_priv;
>>  	u32 reserved = get_reserved(bus);
>>  
>> -	intel_uncore_write_notrace(uncore,
>> -				   bus->gpio_reg,
>> -				   reserved | GPIO_DATA_DIR_MASK);
>> -	intel_uncore_write_notrace(uncore, bus->gpio_reg, reserved);
>> +	intel_de_write_notrace(i915, bus->gpio_reg,
>> +			       reserved | GPIO_DATA_DIR_MASK);
>> +	intel_de_write_notrace(i915, bus->gpio_reg, reserved);
>>  
>> -	return (intel_uncore_read_notrace(uncore, bus->gpio_reg) &
>> +	return (intel_de_read_notrace(i915, bus->gpio_reg) &
>>  		GPIO_DATA_VAL_IN) != 0;
>>  }
>>  
>>  static void set_clock(void *data, int state_high)
>>  {
>>  	struct intel_gmbus *bus = data;
>> -	struct intel_uncore *uncore = &bus->dev_priv->uncore;
>> +	struct drm_i915_private *i915 = bus->dev_priv;
>>  	u32 reserved = get_reserved(bus);
>>  	u32 clock_bits;
>>  
>> @@ -274,16 +272,15 @@ static void set_clock(void *data, int state_high)
>>  		clock_bits = GPIO_CLOCK_DIR_OUT | GPIO_CLOCK_DIR_MASK |
>>  			     GPIO_CLOCK_VAL_MASK;
>>  
>> -	intel_uncore_write_notrace(uncore,
>> -				   bus->gpio_reg,
>> -				   reserved | clock_bits);
>> -	intel_uncore_posting_read(uncore, bus->gpio_reg);
>> +	intel_de_write_notrace(i915, bus->gpio_reg,
>> +			       reserved | clock_bits);
>> +	intel_de_posting_read(i915, bus->gpio_reg);
>>  }
>>  
>>  static void set_data(void *data, int state_high)
>>  {
>>  	struct intel_gmbus *bus = data;
>> -	struct intel_uncore *uncore = &bus->dev_priv->uncore;
>> +	struct drm_i915_private *i915 = bus->dev_priv;
>>  	u32 reserved = get_reserved(bus);
>>  	u32 data_bits;
>>  
>> @@ -293,8 +290,8 @@ static void set_data(void *data, int state_high)
>>  		data_bits = GPIO_DATA_DIR_OUT | GPIO_DATA_DIR_MASK |
>>  			GPIO_DATA_VAL_MASK;
>>  
>> -	intel_uncore_write_notrace(uncore, bus->gpio_reg, reserved | data_bits);
>> -	intel_uncore_posting_read(uncore, bus->gpio_reg);
>> +	intel_de_write_notrace(i915, bus->gpio_reg, reserved | data_bits);
>> +	intel_de_posting_read(i915, bus->gpio_reg);
>>  }
>>  
>>  static int
>> @@ -403,9 +400,8 @@ gmbus_wait_idle(struct drm_i915_private *dev_priv)
>>  	add_wait_queue(&dev_priv->gmbus_wait_queue, &wait);
>>  	intel_de_write_fw(dev_priv, GMBUS4, irq_enable);
>>  
>> -	ret = intel_wait_for_register_fw(&dev_priv->uncore,
>> -					 GMBUS2, GMBUS_ACTIVE, 0,
>> -					 10);
>> +	ret = intel_de_wait_for_register_fw(dev_priv,
>> +					    GMBUS2, GMBUS_ACTIVE, 0, 10);
>>  
>>  	intel_de_write_fw(dev_priv, GMBUS4, 0);
>>  	remove_wait_queue(&dev_priv->gmbus_wait_queue, &wait);
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> index f819b29906bd..691d6d9a6854 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> @@ -310,9 +310,9 @@ static int intel_hdcp_load_keys(struct drm_i915_private *dev_priv)
>>  	}
>>  
>>  	/* Wait for the keys to load (500us) */
>> -	ret = __intel_wait_for_register(&dev_priv->uncore, HDCP_KEY_STATUS,
>> -					HDCP_KEY_LOAD_DONE, HDCP_KEY_LOAD_DONE,
>> -					10, 1, &val);
>> +	ret = __intel_de_wait_for_register(dev_priv, HDCP_KEY_STATUS,
>> +					   HDCP_KEY_LOAD_DONE, HDCP_KEY_LOAD_DONE,
>> +					   10, 1, &val);
>>  	if (ret)
>>  		return ret;
>>  	else if (!(val & HDCP_KEY_LOAD_STATUS))
>> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
>> index 0bdbedc67d7d..ba6a6d607c93 100644
>> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
>> @@ -53,8 +53,8 @@ void intel_snps_phy_update_psr_power_state(struct drm_i915_private *dev_priv,
>>  
>>  	val = REG_FIELD_PREP(SNPS_PHY_TX_REQ_LN_DIS_PWR_STATE_PSR,
>>  			     enable ? 2 : 3);
>> -	intel_uncore_rmw(&dev_priv->uncore, SNPS_PHY_TX_REQ(phy),
>> -			 SNPS_PHY_TX_REQ_LN_DIS_PWR_STATE_PSR, val);
>> +	intel_de_rmw(dev_priv, SNPS_PHY_TX_REQ(phy),
>> +		     SNPS_PHY_TX_REQ_LN_DIS_PWR_STATE_PSR, val);
>>  }
>>  
>>  void intel_snps_phy_set_signal_levels(struct intel_encoder *encoder,
>> @@ -668,7 +668,7 @@ void intel_mpllb_enable(struct intel_encoder *encoder,
>>  	 */
>>  
>>  	/* 5. Software sets DPLL_ENABLE [PLL Enable] to "1". */
>> -	intel_uncore_rmw(&dev_priv->uncore, enable_reg, 0, PLL_ENABLE);
>> +	intel_de_rmw(dev_priv, enable_reg, 0, PLL_ENABLE);
>>  
>>  	/*
>>  	 * 9. Software sets SNPS_PHY_MPLLB_DIV dp_mpllb_force_en to "1". This
>> @@ -713,14 +713,13 @@ void intel_mpllb_disable(struct intel_encoder *encoder)
>>  	 */
>>  
>>  	/* 2. Software programs DPLL_ENABLE [PLL Enable] to "0" */
>> -	intel_uncore_rmw(&i915->uncore, enable_reg, PLL_ENABLE, 0);
>> +	intel_de_rmw(i915, enable_reg, PLL_ENABLE, 0);
>>  
>>  	/*
>>  	 * 4. Software programs SNPS_PHY_MPLLB_DIV dp_mpllb_force_en to "0".
>>  	 * This will allow the PLL to stop running.
>>  	 */
>> -	intel_uncore_rmw(&i915->uncore, SNPS_PHY_MPLLB_DIV(phy),
>> -			 SNPS_PHY_MPLLB_FORCE_EN, 0);
>> +	intel_de_rmw(i915, SNPS_PHY_MPLLB_DIV(phy), SNPS_PHY_MPLLB_FORCE_EN, 0);
>>  
>>  	/*
>>  	 * 5. Software polls DPLL_ENABLE [PLL Lock] for PHY acknowledgment

-- 
Jani Nikula, Intel Open Source Graphics Center
