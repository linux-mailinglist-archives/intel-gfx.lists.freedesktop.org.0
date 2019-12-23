Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E1A129B0D
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 22:25:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48DAE89EEB;
	Mon, 23 Dec 2019 21:25:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFF7C89EEB
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 21:25:38 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 13:25:38 -0800
X-IronPort-AV: E=Sophos;i="5.69,349,1571727600"; d="scan'208";a="211676558"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.14.204])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 13:25:37 -0800
Date: Mon, 23 Dec 2019 13:25:32 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20191223212532.z6ecjybh3psti4pe@ldmartin-desk1>
References: <20191223195850.25997-1-lucas.demarchi@intel.com>
 <20191223195850.25997-4-lucas.demarchi@intel.com>
 <20191223211656.GH2877816@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191223211656.GH2877816@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915/display: prefer the more
 common dig_port name
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 23, 2019 at 01:16:56PM -0800, Matt Roper wrote:
>On Mon, Dec 23, 2019 at 11:58:44AM -0800, Lucas De Marchi wrote:
>> intel_ddi.c uses a mix of dport and dig_port as variable for
>> intel_digital_port, with the latter being more frequent. In some cases
>> we were also using intel_dport to make it worse. intel_dpio_phy.c had
>> standardized on dport, but overall dig_port is much more common.
>> Standardize on dig_port.
>>
>> This is the only place in the driver where we refer to a
>> intel_digital_port as intel_dport. Let's use the same name everywhere:
>> dig_port.
>
>The second paragraph here seems redundant (and sounds like it might have
>been the commit message for a second commit you squashed into the first
>since the "This" is ambigous).

yes, I reworded the commit message and forgot to remove this part.
Thanks for catching it.

>
>Also, there are still a bunch of remaining intel_dig_port
>parameters/variables.  Maybe we want an additional patch to drop the
>intel_ prefix from those and make everything consistent?  At this point
>I think we've dropped the intel_ prefix from most/all of our crtcs,
>planes, etc. so it probably makes sense to do the same here with
>dig_ports.

Agreed.

thanks
Lucas De Marchi

>
>
>Matt
>
>>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_ddi.c      | 30 +++++++--------
>>  drivers/gpu/drm/i915/display/intel_display.c  |  6 +--
>>  drivers/gpu/drm/i915/display/intel_display.h  |  2 +-
>>  .../drm/i915/display/intel_display_power.c    |  4 +-
>>  .../drm/i915/display/intel_display_types.h    |  8 ++--
>>  drivers/gpu/drm/i915/display/intel_dpio_phy.c | 38 +++++++++----------
>>  drivers/gpu/drm/i915/display/intel_hdmi.c     | 20 +++++-----
>>  7 files changed, 54 insertions(+), 54 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index f054c82214c0..1bdf63845472 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -2900,9 +2900,9 @@ static u32 intel_ddi_dp_level(struct intel_dp *intel_dp)
>>
>>  u32 bxt_signal_levels(struct intel_dp *intel_dp)
>>  {
>> -	struct intel_digital_port *dport = dp_to_dig_port(intel_dp);
>> -	struct drm_i915_private *dev_priv = to_i915(dport->base.base.dev);
>> -	struct intel_encoder *encoder = &dport->base;
>> +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>> +	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
>> +	struct intel_encoder *encoder = &dig_port->base;
>>  	int level = intel_ddi_dp_level(intel_dp);
>>
>>  	if (INTEL_GEN(dev_priv) >= 12)
>> @@ -2921,9 +2921,9 @@ u32 bxt_signal_levels(struct intel_dp *intel_dp)
>>
>>  u32 ddi_signal_levels(struct intel_dp *intel_dp)
>>  {
>> -	struct intel_digital_port *dport = dp_to_dig_port(intel_dp);
>> -	struct drm_i915_private *dev_priv = to_i915(dport->base.base.dev);
>> -	struct intel_encoder *encoder = &dport->base;
>> +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>> +	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
>> +	struct intel_encoder *encoder = &dig_port->base;
>>  	int level = intel_ddi_dp_level(intel_dp);
>>
>>  	if (IS_GEN9_BC(dev_priv))
>> @@ -4721,14 +4721,14 @@ intel_ddi_init_hdmi_connector(struct intel_digital_port *intel_dig_port)
>>  	return connector;
>>  }
>>
>> -static bool intel_ddi_a_force_4_lanes(struct intel_digital_port *dport)
>> +static bool intel_ddi_a_force_4_lanes(struct intel_digital_port *dig_port)
>>  {
>> -	struct drm_i915_private *dev_priv = to_i915(dport->base.base.dev);
>> +	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
>>
>> -	if (dport->base.port != PORT_A)
>> +	if (dig_port->base.port != PORT_A)
>>  		return false;
>>
>> -	if (dport->saved_port_bits & DDI_A_4_LANES)
>> +	if (dig_port->saved_port_bits & DDI_A_4_LANES)
>>  		return false;
>>
>>  	/* Broxton/Geminilake: Bspec says that DDI_A_4_LANES is the only
>> @@ -4750,10 +4750,10 @@ static bool intel_ddi_a_force_4_lanes(struct intel_digital_port *dport)
>>  }
>>
>>  static int
>> -intel_ddi_max_lanes(struct intel_digital_port *intel_dport)
>> +intel_ddi_max_lanes(struct intel_digital_port *dig_port)
>>  {
>> -	struct drm_i915_private *dev_priv = to_i915(intel_dport->base.base.dev);
>> -	enum port port = intel_dport->base.port;
>> +	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
>> +	enum port port = dig_port->base.port;
>>  	int max_lanes = 4;
>>
>>  	if (INTEL_GEN(dev_priv) >= 11)
>> @@ -4772,9 +4772,9 @@ intel_ddi_max_lanes(struct intel_digital_port *intel_dport)
>>  	 * wasn't lit up at boot.  Force this bit set when needed
>>  	 * so we use the proper lane count for our calculations.
>>  	 */
>> -	if (intel_ddi_a_force_4_lanes(intel_dport)) {
>> +	if (intel_ddi_a_force_4_lanes(dig_port)) {
>>  		DRM_DEBUG_KMS("Forcing DDI_A_4_LANES for port A\n");
>> -		intel_dport->saved_port_bits |= DDI_A_4_LANES;
>> +		dig_port->saved_port_bits |= DDI_A_4_LANES;
>>  		max_lanes = 4;
>>  	}
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 3b9011fd086c..04819b0bd494 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -1606,13 +1606,13 @@ static void chv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
>>  }
>>
>>  void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
>> -			 struct intel_digital_port *dport,
>> +			 struct intel_digital_port *dig_port,
>>  			 unsigned int expected_mask)
>>  {
>>  	u32 port_mask;
>>  	i915_reg_t dpll_reg;
>>
>> -	switch (dport->base.port) {
>> +	switch (dig_port->base.port) {
>>  	case PORT_B:
>>  		port_mask = DPLL_PORTB_READY_MASK;
>>  		dpll_reg = DPLL(0);
>> @@ -1633,7 +1633,7 @@ void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
>>  	if (intel_de_wait_for_register(dev_priv, dpll_reg,
>>  				       port_mask, expected_mask, 1000))
>>  		WARN(1, "timed out waiting for [ENCODER:%d:%s] port ready: got 0x%x, expected 0x%x\n",
>> -		     dport->base.base.base.id, dport->base.base.name,
>> +		     dig_port->base.base.base.id, dig_port->base.base.name,
>>  		     I915_READ(dpll_reg) & port_mask, expected_mask);
>>  }
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
>> index 0fef9263cddc..05d68bd393dc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>> @@ -523,7 +523,7 @@ void intel_crtc_vblank_off(const struct intel_crtc_state *crtc_state);
>>
>>  int ironlake_get_lanes_required(int target_clock, int link_bw, int bpp);
>>  void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
>> -			 struct intel_digital_port *dport,
>> +			 struct intel_digital_port *dig_port,
>>  			 unsigned int expected_mask);
>>  int intel_get_load_detect_pipe(struct drm_connector *connector,
>>  			       struct intel_load_detect_pipe *old,
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>> index 679457156797..e6f33e50d6fb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -1664,8 +1664,8 @@ void chv_phy_powergate_lanes(struct intel_encoder *encoder,
>>  {
>>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>  	struct i915_power_domains *power_domains = &dev_priv->power_domains;
>> -	enum dpio_phy phy = vlv_dport_to_phy(enc_to_dig_port(&encoder->base));
>> -	enum dpio_channel ch = vlv_dport_to_channel(enc_to_dig_port(&encoder->base));
>> +	enum dpio_phy phy = vlv_dig_port_to_phy(enc_to_dig_port(&encoder->base));
>> +	enum dpio_channel ch = vlv_dig_port_to_channel(enc_to_dig_port(&encoder->base));
>>
>>  	mutex_lock(&power_domains->lock);
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 83ea04149b77..a3a067dacf84 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1377,9 +1377,9 @@ struct intel_dp_mst_encoder {
>>  };
>>
>>  static inline enum dpio_channel
>> -vlv_dport_to_channel(struct intel_digital_port *dport)
>> +vlv_dig_port_to_channel(struct intel_digital_port *dig_port)
>>  {
>> -	switch (dport->base.port) {
>> +	switch (dig_port->base.port) {
>>  	case PORT_B:
>>  	case PORT_D:
>>  		return DPIO_CH0;
>> @@ -1391,9 +1391,9 @@ vlv_dport_to_channel(struct intel_digital_port *dport)
>>  }
>>
>>  static inline enum dpio_phy
>> -vlv_dport_to_phy(struct intel_digital_port *dport)
>> +vlv_dig_port_to_phy(struct intel_digital_port *dig_port)
>>  {
>> -	switch (dport->base.port) {
>> +	switch (dig_port->base.port) {
>>  	case PORT_B:
>>  	case PORT_C:
>>  		return DPIO_PHY0;
>> diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
>> index 704f38681c4b..f784fe8f6c21 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
>> @@ -642,9 +642,9 @@ void chv_set_phy_signal_level(struct intel_encoder *encoder,
>>  			      bool uniq_trans_scale)
>>  {
>>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>> -	struct intel_digital_port *dport = enc_to_dig_port(&encoder->base);
>> +	struct intel_digital_port *dig_port = enc_to_dig_port(&encoder->base);
>>  	struct intel_crtc *intel_crtc = to_intel_crtc(encoder->base.crtc);
>> -	enum dpio_channel ch = vlv_dport_to_channel(dport);
>> +	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
>>  	enum pipe pipe = intel_crtc->pipe;
>>  	u32 val;
>>  	int i;
>> @@ -738,7 +738,7 @@ void chv_data_lane_soft_reset(struct intel_encoder *encoder,
>>  			      bool reset)
>>  {
>>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>> -	enum dpio_channel ch = vlv_dport_to_channel(enc_to_dig_port(&encoder->base));
>> +	enum dpio_channel ch = vlv_dig_port_to_channel(enc_to_dig_port(&encoder->base));
>>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>  	enum pipe pipe = crtc->pipe;
>>  	u32 val;
>> @@ -781,10 +781,10 @@ void chv_data_lane_soft_reset(struct intel_encoder *encoder,
>>  void chv_phy_pre_pll_enable(struct intel_encoder *encoder,
>>  			    const struct intel_crtc_state *crtc_state)
>>  {
>> -	struct intel_digital_port *dport = enc_to_dig_port(&encoder->base);
>> +	struct intel_digital_port *dig_port = enc_to_dig_port(&encoder->base);
>>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> -	enum dpio_channel ch = vlv_dport_to_channel(dport);
>> +	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
>>  	enum pipe pipe = crtc->pipe;
>>  	unsigned int lane_mask =
>>  		intel_dp_unused_lane_mask(crtc_state->lane_count);
>> @@ -795,7 +795,7 @@ void chv_phy_pre_pll_enable(struct intel_encoder *encoder,
>>  	 * Otherwise we can't even access the PLL.
>>  	 */
>>  	if (ch == DPIO_CH0 && pipe == PIPE_B)
>> -		dport->release_cl2_override =
>> +		dig_port->release_cl2_override =
>>  			!chv_phy_powergate_ch(dev_priv, DPIO_PHY0, DPIO_CH1, true);
>>
>>  	chv_phy_powergate_lanes(encoder, true, lane_mask);
>> @@ -862,10 +862,10 @@ void chv_phy_pre_encoder_enable(struct intel_encoder *encoder,
>>  				const struct intel_crtc_state *crtc_state)
>>  {
>>  	struct intel_dp *intel_dp = enc_to_intel_dp(&encoder->base);
>> -	struct intel_digital_port *dport = dp_to_dig_port(intel_dp);
>> +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> -	enum dpio_channel ch = vlv_dport_to_channel(dport);
>> +	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
>>  	enum pipe pipe = crtc->pipe;
>>  	int data, i, stagger;
>>  	u32 val;
>> @@ -940,12 +940,12 @@ void chv_phy_pre_encoder_enable(struct intel_encoder *encoder,
>>
>>  void chv_phy_release_cl2_override(struct intel_encoder *encoder)
>>  {
>> -	struct intel_digital_port *dport = enc_to_dig_port(&encoder->base);
>> +	struct intel_digital_port *dig_port = enc_to_dig_port(&encoder->base);
>>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>
>> -	if (dport->release_cl2_override) {
>> +	if (dig_port->release_cl2_override) {
>>  		chv_phy_powergate_ch(dev_priv, DPIO_PHY0, DPIO_CH1, false);
>> -		dport->release_cl2_override = false;
>> +		dig_port->release_cl2_override = false;
>>  	}
>>  }
>>
>> @@ -989,8 +989,8 @@ void vlv_set_phy_signal_level(struct intel_encoder *encoder,
>>  {
>>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>  	struct intel_crtc *intel_crtc = to_intel_crtc(encoder->base.crtc);
>> -	struct intel_digital_port *dport = enc_to_dig_port(&encoder->base);
>> -	enum dpio_channel port = vlv_dport_to_channel(dport);
>> +	struct intel_digital_port *dig_port = enc_to_dig_port(&encoder->base);
>> +	enum dpio_channel port = vlv_dig_port_to_channel(dig_port);
>>  	enum pipe pipe = intel_crtc->pipe;
>>
>>  	vlv_dpio_get(dev_priv);
>> @@ -1014,10 +1014,10 @@ void vlv_set_phy_signal_level(struct intel_encoder *encoder,
>>  void vlv_phy_pre_pll_enable(struct intel_encoder *encoder,
>>  			    const struct intel_crtc_state *crtc_state)
>>  {
>> -	struct intel_digital_port *dport = enc_to_dig_port(&encoder->base);
>> +	struct intel_digital_port *dig_port = enc_to_dig_port(&encoder->base);
>>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> -	enum dpio_channel port = vlv_dport_to_channel(dport);
>> +	enum dpio_channel port = vlv_dig_port_to_channel(dig_port);
>>  	enum pipe pipe = crtc->pipe;
>>
>>  	/* Program Tx lane resets to default */
>> @@ -1044,10 +1044,10 @@ void vlv_phy_pre_encoder_enable(struct intel_encoder *encoder,
>>  				const struct intel_crtc_state *crtc_state)
>>  {
>>  	struct intel_dp *intel_dp = enc_to_intel_dp(&encoder->base);
>> -	struct intel_digital_port *dport = dp_to_dig_port(intel_dp);
>> +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> -	enum dpio_channel port = vlv_dport_to_channel(dport);
>> +	enum dpio_channel port = vlv_dig_port_to_channel(dig_port);
>>  	enum pipe pipe = crtc->pipe;
>>  	u32 val;
>>
>> @@ -1073,10 +1073,10 @@ void vlv_phy_pre_encoder_enable(struct intel_encoder *encoder,
>>  void vlv_phy_reset_lanes(struct intel_encoder *encoder,
>>  			 const struct intel_crtc_state *old_crtc_state)
>>  {
>> -	struct intel_digital_port *dport = enc_to_dig_port(&encoder->base);
>> +	struct intel_digital_port *dig_port = enc_to_dig_port(&encoder->base);
>>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>  	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
>> -	enum dpio_channel port = vlv_dport_to_channel(dport);
>> +	enum dpio_channel port = vlv_dig_port_to_channel(dig_port);
>>  	enum pipe pipe = crtc->pipe;
>>
>>  	vlv_dpio_get(dev_priv);
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> index 685589064d10..69fc31df4978 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> @@ -2676,7 +2676,7 @@ static void vlv_hdmi_pre_enable(struct intel_encoder *encoder,
>>  				const struct intel_crtc_state *pipe_config,
>>  				const struct drm_connector_state *conn_state)
>>  {
>> -	struct intel_digital_port *dport = enc_to_dig_port(&encoder->base);
>> +	struct intel_digital_port *dig_port = enc_to_dig_port(&encoder->base);
>>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>
>>  	vlv_phy_pre_encoder_enable(encoder, pipe_config);
>> @@ -2685,13 +2685,13 @@ static void vlv_hdmi_pre_enable(struct intel_encoder *encoder,
>>  	vlv_set_phy_signal_level(encoder, 0x2b245f5f, 0x00002000, 0x5578b83a,
>>  				 0x2b247878);
>>
>> -	dport->set_infoframes(encoder,
>> -			      pipe_config->has_infoframe,
>> -			      pipe_config, conn_state);
>> +	dig_port->set_infoframes(encoder,
>> +				 pipe_config->has_infoframe,
>> +				 pipe_config, conn_state);
>>
>>  	g4x_enable_hdmi(encoder, pipe_config, conn_state);
>>
>> -	vlv_wait_port_ready(dev_priv, dport, 0x0);
>> +	vlv_wait_port_ready(dev_priv, dig_port, 0x0);
>>  }
>>
>>  static void vlv_hdmi_pre_pll_enable(struct intel_encoder *encoder,
>> @@ -2746,7 +2746,7 @@ static void chv_hdmi_pre_enable(struct intel_encoder *encoder,
>>  				const struct intel_crtc_state *pipe_config,
>>  				const struct drm_connector_state *conn_state)
>>  {
>> -	struct intel_digital_port *dport = enc_to_dig_port(&encoder->base);
>> +	struct intel_digital_port *dig_port = enc_to_dig_port(&encoder->base);
>>  	struct drm_device *dev = encoder->base.dev;
>>  	struct drm_i915_private *dev_priv = to_i915(dev);
>>
>> @@ -2756,13 +2756,13 @@ static void chv_hdmi_pre_enable(struct intel_encoder *encoder,
>>  	/* Use 800mV-0dB */
>>  	chv_set_phy_signal_level(encoder, 128, 102, false);
>>
>> -	dport->set_infoframes(encoder,
>> -			      pipe_config->has_infoframe,
>> -			      pipe_config, conn_state);
>> +	dig_port->set_infoframes(encoder,
>> +				 pipe_config->has_infoframe,
>> +				 pipe_config, conn_state);
>>
>>  	g4x_enable_hdmi(encoder, pipe_config, conn_state);
>>
>> -	vlv_wait_port_ready(dev_priv, dport, 0x0);
>> +	vlv_wait_port_ready(dev_priv, dig_port, 0x0);
>>
>>  	/* Second common lane will stay alive on its own now */
>>  	chv_phy_release_cl2_override(encoder);
>> --
>> 2.24.0
>>
>
>-- 
>Matt Roper
>Graphics Software Engineer
>VTT-OSGC Platform Enablement
>Intel Corporation
>(916) 356-2795
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
