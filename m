Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 814A3C96144
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 09:15:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4691010E2CC;
	Mon,  1 Dec 2025 08:15:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD74710E0FA;
 Mon,  1 Dec 2025 08:15:37 +0000 (UTC)
Received: from mobile-access-d98cd5-49.dhcp.inet.fi ([217.140.213.49]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vPz4H-00000000V77-4BDe; Mon, 01 Dec 2025 10:15:35 +0200
Message-ID: <20d6e9910f0a7faf3ed14e37db0ff0860a17e017.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Mon, 01 Dec 2025 10:15:33 +0200
In-Reply-To: <f182bd26d5f9a00e843246d4aac8b25ff7531c51.1764076995.git.jani.nikula@intel.com>
References: <cover.1764076995.git.jani.nikula@intel.com>
 <f182bd26d5f9a00e843246d4aac8b25ff7531c51.1764076995.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-7 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH v2 4/5] drm/i915/power: convert intel_wakeref_t to
 struct ref_tracker *
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

On Tue, 2025-11-25 at 15:24 +0200, Jani Nikula wrote:
> Under the hood, intel_wakeref_t is just struct ref_tracker *. Use the
> actual underlying type both for clarity (we *are* using intel_wakeref_t
> as a pointer though it doesn't look like one) and to help i915, xe and
> display coexistence without custom types.
>=20
> v2: Keep intel_wakeref.h includes as they are
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c         |  2 +-
>  drivers/gpu/drm/i915/display/g4x_hdmi.c       |  2 +-
>  drivers/gpu/drm/i915/display/i9xx_plane.c     |  2 +-
>  drivers/gpu/drm/i915/display/icl_dsi.c        |  4 +--
>  drivers/gpu/drm/i915/display/intel_audio.c    |  6 ++--
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  4 +--
>  drivers/gpu/drm/i915/display/intel_crt.c      |  6 ++--
>  drivers/gpu/drm/i915/display/intel_cursor.c   |  4 +--
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 18 +++++-----
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 16 ++++-----
>  drivers/gpu/drm/i915/display/intel_display.c  |  8 ++---
>  .../gpu/drm/i915/display/intel_display_core.h |  2 +-
>  .../drm/i915/display/intel_display_debugfs.c  |  2 +-
>  .../drm/i915/display/intel_display_power.c    | 26 +++++++--------
>  .../drm/i915/display/intel_display_power.h    | 33 ++++++++++---------
>  .../drm/i915/display/intel_display_types.h    |  6 ++--
>  drivers/gpu/drm/i915/display/intel_dmc.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp_aux.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 18 +++++-----
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  4 +--
>  drivers/gpu/drm/i915/display/intel_dsi.h      |  7 ++--
>  drivers/gpu/drm/i915/display/intel_gmbus.c    |  4 +--
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  4 +--
>  drivers/gpu/drm/i915/display/intel_hotplug.c  |  2 +-
>  drivers/gpu/drm/i915/display/intel_lt_phy.c   | 14 ++++----
>  drivers/gpu/drm/i915/display/intel_lvds.c     |  2 +-
>  .../drm/i915/display/intel_modeset_setup.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_pipe_crc.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_sprite.c   |  6 ++--
>  drivers/gpu/drm/i915/display/intel_tc.c       | 22 ++++++-------
>  drivers/gpu/drm/i915/display/intel_vdsc.c     |  2 +-
>  .../drm/i915/display/skl_universal_plane.c    |  2 +-
>  drivers/gpu/drm/i915/display/skl_watermark.c  |  2 +-
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |  2 +-
>  .../xe/compat-i915-headers/intel_wakeref.h    |  4 ---
>  drivers/gpu/drm/xe/display/xe_display_rpm.c   |  1 +
>  36 files changed, 122 insertions(+), 123 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915=
/display/g4x_dp.c
> index 27f4c55d7484..4cb753177fd8 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -302,7 +302,7 @@ static bool intel_dp_get_hw_state(struct intel_encode=
r *encoder,
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	bool ret;
> =20
>  	wakeref =3D intel_display_power_get_if_enabled(display,
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i9=
15/display/g4x_hdmi.c
> index f6e2d1ed5639..8b22447e8e23 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -68,7 +68,7 @@ static bool intel_hdmi_get_hw_state(struct intel_encode=
r *encoder,
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	struct intel_hdmi *intel_hdmi =3D enc_to_intel_hdmi(encoder);
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	bool ret;
> =20
>  	wakeref =3D intel_display_power_get_if_enabled(display,
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/=
i915/display/i9xx_plane.c
> index 51ccc6bd5f21..6b570335f393 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -724,7 +724,7 @@ static bool i9xx_plane_get_hw_state(struct intel_plan=
e *plane,
>  	struct intel_display *display =3D to_intel_display(plane);
>  	enum intel_display_power_domain power_domain;
>  	enum i9xx_plane_id i9xx_plane =3D plane->i9xx_plane;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	bool ret;
>  	u32 val;
> =20
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 9230792960f2..dac781f54661 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1411,7 +1411,7 @@ static void gen11_dsi_disable_io_power(struct intel=
_encoder *encoder)
>  	enum port port;
> =20
>  	for_each_dsi_port(port, intel_dsi->ports) {
> -		intel_wakeref_t wakeref;
> +		struct ref_tracker *wakeref;
> =20
>  		wakeref =3D fetch_and_zero(&intel_dsi->io_wakeref[port]);
>  		intel_display_power_put(display,
> @@ -1722,7 +1722,7 @@ static bool gen11_dsi_get_hw_state(struct intel_enc=
oder *encoder,
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
>  	enum transcoder dsi_trans;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	enum port port;
>  	bool ret =3D false;
>  	u32 tmp;
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index 5bdaef38f13d..5f3c175afdd2 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -1042,10 +1042,10 @@ int intel_audio_min_cdclk(const struct intel_crtc=
_state *crtc_state)
>  static unsigned long intel_audio_component_get_power(struct device *kdev=
)
>  {
>  	struct intel_display *display =3D to_intel_display(kdev);
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
> =20
>  	/* Catch potential impedance mismatches before they occur! */
> -	BUILD_BUG_ON(sizeof(intel_wakeref_t) > sizeof(unsigned long));
> +	BUILD_BUG_ON(sizeof(wakeref) > sizeof(unsigned long));
> =20
>  	wakeref =3D intel_display_power_get(display, POWER_DOMAIN_AUDIO_PLAYBAC=
K);
> =20
> @@ -1074,7 +1074,7 @@ static void intel_audio_component_put_power(struct =
device *kdev,
>  					    unsigned long cookie)
>  {
>  	struct intel_display *display =3D to_intel_display(kdev);
> -	intel_wakeref_t wakeref =3D (intel_wakeref_t)cookie;
> +	struct ref_tracker *wakeref =3D (struct ref_tracker *)cookie;
> =20
>  	/* Stop forcing CDCLK to 2*BCLK if no need for audio to be powered. */
>  	if (--display->audio.power_refcount =3D=3D 0)
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 5c90e53b4e46..ada08fd1447b 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -667,7 +667,7 @@ static void vlv_set_cdclk(struct intel_display *displ=
ay,
>  {
>  	int cdclk =3D cdclk_config->cdclk;
>  	u32 val, cmd =3D cdclk_config->voltage_level;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	int ret;
> =20
>  	switch (cdclk) {
> @@ -757,7 +757,7 @@ static void chv_set_cdclk(struct intel_display *displ=
ay,
>  {
>  	int cdclk =3D cdclk_config->cdclk;
>  	u32 val, cmd =3D cdclk_config->voltage_level;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	int ret;
> =20
>  	switch (cdclk) {
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i=
915/display/intel_crt.c
> index 82e89cdbe5a5..5f9a03877ea9 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -109,7 +109,7 @@ static bool intel_crt_get_hw_state(struct intel_encod=
er *encoder,
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	struct intel_crt *crt =3D intel_encoder_to_crt(encoder);
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	bool ret;
> =20
>  	wakeref =3D intel_display_power_get_if_enabled(display,
> @@ -847,7 +847,7 @@ intel_crt_detect(struct drm_connector *connector,
>  	struct intel_crt *crt =3D intel_attached_crt(to_intel_connector(connect=
or));
>  	struct intel_encoder *encoder =3D &crt->base;
>  	struct drm_atomic_state *state;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	int status;
> =20
>  	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s] force=3D%d\n",
> @@ -936,7 +936,7 @@ static int intel_crt_get_modes(struct drm_connector *=
connector)
>  	struct intel_display *display =3D to_intel_display(connector->dev);
>  	struct intel_crt *crt =3D intel_attached_crt(to_intel_connector(connect=
or));
>  	struct intel_encoder *encoder =3D &crt->base;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	struct i2c_adapter *ddc;
>  	int ret;
> =20
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/dr=
m/i915/display/intel_cursor.c
> index a10b2425b94d..341d1cb40295 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -324,7 +324,7 @@ static bool i845_cursor_get_hw_state(struct intel_pla=
ne *plane,
>  {
>  	struct intel_display *display =3D to_intel_display(plane);
>  	enum intel_display_power_domain power_domain;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	bool ret;
> =20
>  	power_domain =3D POWER_DOMAIN_PIPE(PIPE_A);
> @@ -727,7 +727,7 @@ static bool i9xx_cursor_get_hw_state(struct intel_pla=
ne *plane,
>  {
>  	struct intel_display *display =3D to_intel_display(plane);
>  	enum intel_display_power_domain power_domain;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	bool ret;
>  	u32 val;
> =20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/d=
rm/i915/display/intel_cx0_phy.c
> index 27be2a490297..7bd17723e7ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -105,11 +105,11 @@ static void intel_cx0_program_msgbus_timer(struct i=
ntel_encoder *encoder)
>   * We also do the msgbus timer programming here to ensure that the timer
>   * is already programmed before any access to the msgbus.
>   */
> -static intel_wakeref_t intel_cx0_phy_transaction_begin(struct intel_enco=
der *encoder)
> +static struct ref_tracker *intel_cx0_phy_transaction_begin(struct intel_=
encoder *encoder)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
> =20
>  	intel_psr_pause(intel_dp);
>  	wakeref =3D intel_display_power_get(display, POWER_DOMAIN_DC_OFF);
> @@ -118,7 +118,7 @@ static intel_wakeref_t intel_cx0_phy_transaction_begi=
n(struct intel_encoder *enc
>  	return wakeref;
>  }
> =20
> -static void intel_cx0_phy_transaction_end(struct intel_encoder *encoder,=
 intel_wakeref_t wakeref)
> +static void intel_cx0_phy_transaction_end(struct intel_encoder *encoder,=
 struct ref_tracker *wakeref)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> @@ -476,7 +476,7 @@ void intel_cx0_phy_set_signal_levels(struct intel_enc=
oder *encoder,
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	const struct intel_ddi_buf_trans *trans;
>  	u8 owned_lane_mask;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	int n_entries, ln;
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> =20
> @@ -2252,7 +2252,7 @@ static void intel_c10pll_readout_hw_state(struct in=
tel_encoder *encoder,
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	enum phy phy =3D intel_encoder_to_phy(encoder);
>  	u8 lane =3D INTEL_CX0_LANE0;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	int i;
> =20
>  	cx0pll_state->use_c10 =3D true;
> @@ -2756,7 +2756,7 @@ static void intel_c20pll_readout_hw_state(struct in=
tel_encoder *encoder,
>  	struct intel_c20pll_state *pll_state =3D &cx0pll_state->c20;
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	bool cntx;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	int i;
> =20
>  	cx0pll_state->use_c10 =3D false;
> @@ -3225,7 +3225,7 @@ static void intel_cx0pll_enable(struct intel_encode=
r *encoder,
>  	bool lane_reversal =3D dig_port->lane_reversal;
>  	u8 maxpclk_lane =3D lane_reversal ? INTEL_CX0_LANE1 :
>  					  INTEL_CX0_LANE0;
> -	intel_wakeref_t wakeref =3D intel_cx0_phy_transaction_begin(encoder);
> +	struct ref_tracker *wakeref =3D intel_cx0_phy_transaction_begin(encoder=
);
> =20
>  	/*
>  	 * Lane reversal is never used in DP-alt mode, in that case the
> @@ -3463,7 +3463,7 @@ void intel_lnl_mac_transmit_lfps(struct intel_encod=
er *encoder,
>  				 const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	int i;
>  	u8 owned_lane_mask;
> =20
> @@ -3510,7 +3510,7 @@ static void intel_cx0pll_disable(struct intel_encod=
er *encoder)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	enum phy phy =3D intel_encoder_to_phy(encoder);
> -	intel_wakeref_t wakeref =3D intel_cx0_phy_transaction_begin(encoder);
> +	struct ref_tracker *wakeref =3D intel_cx0_phy_transaction_begin(encoder=
);
> =20
>  	/* 1. Change owned PHY lane power to Disable state. */
>  	intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index ed9798b0ec00..8158f9829ddf 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -728,7 +728,7 @@ int intel_ddi_toggle_hdcp_bits(struct intel_encoder *=
intel_encoder,
>  			       bool enable, u32 hdcp_mask)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_encoder);
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	int ret =3D 0;
> =20
>  	wakeref =3D intel_display_power_get_if_enabled(display,
> @@ -749,7 +749,7 @@ bool intel_ddi_connector_get_hw_state(struct intel_co=
nnector *intel_connector)
>  	int type =3D intel_connector->base.connector_type;
>  	enum port port =3D encoder->port;
>  	enum transcoder cpu_transcoder;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	enum pipe pipe =3D 0;
>  	u32 ddi_mode;
>  	bool ret;
> @@ -805,7 +805,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_=
encoder *encoder,
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	enum port port =3D encoder->port;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	enum pipe p;
>  	u32 tmp;
>  	u8 mst_pipe_mask =3D 0, dp128b132b_pipe_mask =3D 0;
> @@ -848,7 +848,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_=
encoder *encoder,
>  	for_each_pipe(display, p) {
>  		enum transcoder cpu_transcoder =3D (enum transcoder)p;
>  		u32 port_mask, ddi_select, ddi_mode;
> -		intel_wakeref_t trans_wakeref;
> +		struct ref_tracker *trans_wakeref;
> =20
>  		trans_wakeref =3D intel_display_power_get_if_enabled(display,
>  								   POWER_DOMAIN_TRANSCODER(cpu_transcoder));
> @@ -1002,7 +1002,7 @@ main_link_aux_power_domain_put(struct intel_digital=
_port *dig_port,
>  	struct intel_display *display =3D to_intel_display(dig_port);
>  	enum intel_display_power_domain domain =3D
>  		intel_ddi_main_link_aux_domain(dig_port, crtc_state);
> -	intel_wakeref_t wf;
> +	struct ref_tracker *wf;
> =20
>  	wf =3D fetch_and_zero(&dig_port->aux_wakeref);
>  	if (!wf)
> @@ -3130,7 +3130,7 @@ static void intel_ddi_post_disable_dp(struct intel_=
atomic_state *state,
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>  	struct intel_dp *intel_dp =3D &dig_port->dp;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	bool is_mst =3D intel_crtc_has_type(old_crtc_state,
>  					  INTEL_OUTPUT_DP_MST);
> =20
> @@ -3198,7 +3198,7 @@ static void intel_ddi_post_disable_hdmi(struct inte=
l_atomic_state *state,
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>  	struct intel_hdmi *intel_hdmi =3D &dig_port->hdmi;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
> =20
>  	dig_port->set_infoframes(encoder, false,
>  				 old_crtc_state, old_conn_state);
> @@ -3965,7 +3965,7 @@ static void bdw_get_trans_port_sync_config(struct i=
ntel_crtc_state *crtc_state)
> =20
>  	for_each_cpu_transcoder_masked(display, cpu_transcoder, transcoders) {
>  		enum intel_display_power_domain power_domain;
> -		intel_wakeref_t trans_wakeref;
> +		struct ref_tracker *trans_wakeref;
> =20
>  		power_domain =3D POWER_DOMAIN_TRANSCODER(cpu_transcoder);
>  		trans_wakeref =3D intel_display_power_get_if_enabled(display,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 34e69b884713..62e97d725887 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -372,7 +372,7 @@ void assert_transcoder(struct intel_display *display,
>  {
>  	bool cur_state;
>  	enum intel_display_power_domain power_domain;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
> =20
>  	/* we keep both pipes enabled on 830 */
>  	if (display->platform.i830)
> @@ -3035,7 +3035,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc =
*crtc,
>  	struct intel_display *display =3D to_intel_display(crtc);
>  	enum intel_display_power_domain power_domain;
>  	enum transcoder cpu_transcoder =3D (enum transcoder)crtc->pipe;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	bool ret =3D false;
>  	u32 tmp;
> =20
> @@ -3379,7 +3379,7 @@ static bool ilk_get_pipe_config(struct intel_crtc *=
crtc,
>  	struct intel_display *display =3D to_intel_display(crtc);
>  	enum intel_display_power_domain power_domain;
>  	enum transcoder cpu_transcoder =3D (enum transcoder)crtc->pipe;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	bool ret =3D false;
>  	u32 tmp;
> =20
> @@ -7376,7 +7376,7 @@ static void intel_atomic_commit_tail(struct intel_a=
tomic_state *state)
>  	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>  	struct intel_crtc *crtc;
>  	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] =3D {};
> -	intel_wakeref_t wakeref =3D NULL;
> +	struct ref_tracker *wakeref =3D NULL;
>  	int i;
> =20
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/=
gpu/drm/i915/display/intel_display_core.h
> index 9b36654b593d..5b2120afa806 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -386,7 +386,7 @@ struct intel_display {
> =20
>  	struct {
>  		struct intel_dmc *dmc;
> -		intel_wakeref_t wakeref;
> +		struct ref_tracker *wakeref;
>  	} dmc;
> =20
>  	struct {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 9bbfdae8d024..aba13e8a9051 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -86,7 +86,7 @@ static int i915_frontbuffer_tracking(struct seq_file *m=
, void *unused)
>  static int i915_sr_status(struct seq_file *m, void *unused)
>  {
>  	struct intel_display *display =3D node_to_intel_display(m->private);
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	bool sr_enabled =3D false;
> =20
>  	wakeref =3D intel_display_power_get(display, POWER_DOMAIN_INIT);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 08db9bbbfcb1..7cbef1a68266 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -544,8 +544,8 @@ __intel_display_power_get_domain(struct intel_display=
 *display,
>   * Any power domain reference obtained by this function must have a symm=
etric
>   * call to intel_display_power_put() to release the reference again.
>   */
> -intel_wakeref_t intel_display_power_get(struct intel_display *display,
> -					enum intel_display_power_domain domain)
> +struct ref_tracker *intel_display_power_get(struct intel_display *displa=
y,
> +					    enum intel_display_power_domain domain)
>  {
>  	struct i915_power_domains *power_domains =3D &display->power.domains;
>  	struct ref_tracker *wakeref;
> @@ -571,7 +571,7 @@ intel_wakeref_t intel_display_power_get(struct intel_=
display *display,
>   * Any power domain reference obtained by this function must have a symm=
etric
>   * call to intel_display_power_put() to release the reference again.
>   */
> -intel_wakeref_t
> +struct ref_tracker *
>  intel_display_power_get_if_enabled(struct intel_display *display,
>  				   enum intel_display_power_domain domain)
>  {
> @@ -638,7 +638,7 @@ static void __intel_display_power_put(struct intel_di=
splay *display,
> =20
>  static void
>  queue_async_put_domains_work(struct i915_power_domains *power_domains,
> -			     intel_wakeref_t wakeref,
> +			     struct ref_tracker *wakeref,
>  			     int delay_ms)
>  {
>  	struct intel_display *display =3D container_of(power_domains,
> @@ -740,7 +740,7 @@ intel_display_power_put_async_work(struct work_struct=
 *work)
>   */
>  void __intel_display_power_put_async(struct intel_display *display,
>  				     enum intel_display_power_domain domain,
> -				     intel_wakeref_t wakeref,
> +				     struct ref_tracker *wakeref,
>  				     int delay_ms)
>  {
>  	struct i915_power_domains *power_domains =3D &display->power.domains;
> @@ -799,7 +799,7 @@ void intel_display_power_flush_work(struct intel_disp=
lay *display)
>  {
>  	struct i915_power_domains *power_domains =3D &display->power.domains;
>  	struct intel_power_domain_mask async_put_mask;
> -	intel_wakeref_t work_wakeref;
> +	struct ref_tracker *work_wakeref;
> =20
>  	mutex_lock(&power_domains->lock);
> =20
> @@ -853,7 +853,7 @@ intel_display_power_flush_work_sync(struct intel_disp=
lay *display)
>   */
>  void intel_display_power_put(struct intel_display *display,
>  			     enum intel_display_power_domain domain,
> -			     intel_wakeref_t wakeref)
> +			     struct ref_tracker *wakeref)
>  {
>  	__intel_display_power_put(display, domain);
>  	intel_display_rpm_put(display, wakeref);
> @@ -885,7 +885,7 @@ intel_display_power_get_in_set(struct intel_display *=
display,
>  			       struct intel_display_power_domain_set *power_domain_set,
>  			       enum intel_display_power_domain domain)
>  {
> -	intel_wakeref_t __maybe_unused wf;
> +	struct ref_tracker *__maybe_unused wf;
> =20
>  	drm_WARN_ON(display->drm, test_bit(domain, power_domain_set->mask.bits)=
);
> =20
> @@ -901,7 +901,7 @@ intel_display_power_get_in_set_if_enabled(struct inte=
l_display *display,
>  					  struct intel_display_power_domain_set *power_domain_set,
>  					  enum intel_display_power_domain domain)
>  {
> -	intel_wakeref_t wf;
> +	struct ref_tracker *wf;
> =20
>  	drm_WARN_ON(display->drm, test_bit(domain, power_domain_set->mask.bits)=
);
> =20
> @@ -928,7 +928,7 @@ intel_display_power_put_mask_in_set(struct intel_disp=
lay *display,
>  		    !bitmap_subset(mask->bits, power_domain_set->mask.bits, POWER_DOMA=
IN_NUM));
> =20
>  	for_each_power_domain(domain, mask) {
> -		intel_wakeref_t __maybe_unused wf =3D INTEL_WAKEREF_DEF;
> +		struct ref_tracker *__maybe_unused wf =3D INTEL_WAKEREF_DEF;
> =20
>  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
>  		wf =3D fetch_and_zero(&power_domain_set->wakerefs[domain]);
> @@ -2004,7 +2004,7 @@ void intel_power_domains_init_hw(struct intel_displ=
ay *display, bool resume)
>   */
>  void intel_power_domains_driver_remove(struct intel_display *display)
>  {
> -	intel_wakeref_t wakeref __maybe_unused =3D
> +	struct ref_tracker *wakeref __maybe_unused =3D
>  		fetch_and_zero(&display->power.domains.init_wakeref);
> =20
>  	/* Remove the refcount we took to keep power well support disabled. */
> @@ -2065,7 +2065,7 @@ void intel_power_domains_sanitize_state(struct inte=
l_display *display)
>   */
>  void intel_power_domains_enable(struct intel_display *display)
>  {
> -	intel_wakeref_t wakeref __maybe_unused =3D
> +	struct ref_tracker *wakeref __maybe_unused =3D
>  		fetch_and_zero(&display->power.domains.init_wakeref);
> =20
>  	intel_display_power_put(display, POWER_DOMAIN_INIT, wakeref);
> @@ -2104,7 +2104,7 @@ void intel_power_domains_disable(struct intel_displ=
ay *display)
>  void intel_power_domains_suspend(struct intel_display *display, bool s2i=
dle)
>  {
>  	struct i915_power_domains *power_domains =3D &display->power.domains;
> -	intel_wakeref_t wakeref __maybe_unused =3D
> +	struct ref_tracker *wakeref __maybe_unused =3D
>  		fetch_and_zero(&power_domains->init_wakeref);
> =20
>  	intel_display_power_put(display, POWER_DOMAIN_INIT, wakeref);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers=
/gpu/drm/i915/display/intel_display_power.h
> index 79ce8d94bf7d..6f8d921b4482 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -16,6 +16,7 @@ enum port;
>  struct i915_power_well;
>  struct intel_display;
>  struct intel_encoder;
> +struct ref_tracker;
>  struct seq_file;
> =20
>  /*
> @@ -142,14 +143,14 @@ struct i915_power_domains {
>  	u32 target_dc_state;
>  	u32 allowed_dc_mask;
> =20
> -	intel_wakeref_t init_wakeref;
> -	intel_wakeref_t disable_wakeref;
> +	struct ref_tracker *init_wakeref;
> +	struct ref_tracker *disable_wakeref;
> =20
>  	struct mutex lock;
>  	int domain_use_count[POWER_DOMAIN_NUM];
> =20
>  	struct delayed_work async_put_work;
> -	intel_wakeref_t async_put_wakeref;
> +	struct ref_tracker *async_put_wakeref;
>  	struct intel_power_domain_mask async_put_domains[2];
>  	int async_put_next_delay;
> =20
> @@ -159,7 +160,7 @@ struct i915_power_domains {
>  struct intel_display_power_domain_set {
>  	struct intel_power_domain_mask mask;
>  #ifdef CONFIG_DRM_I915_DEBUG_RUNTIME_PM
> -	intel_wakeref_t wakerefs[POWER_DOMAIN_NUM];
> +	struct ref_tracker *wakerefs[POWER_DOMAIN_NUM];
>  #endif
>  };
> =20
> @@ -187,24 +188,24 @@ u32 intel_display_power_get_current_dc_state(struct=
 intel_display *display);
> =20
>  bool intel_display_power_is_enabled(struct intel_display *display,
>  				    enum intel_display_power_domain domain);
> -intel_wakeref_t intel_display_power_get(struct intel_display *display,
> -					enum intel_display_power_domain domain);
> -intel_wakeref_t
> +struct ref_tracker *intel_display_power_get(struct intel_display *displa=
y,
> +					    enum intel_display_power_domain domain);
> +struct ref_tracker *
>  intel_display_power_get_if_enabled(struct intel_display *display,
>  				   enum intel_display_power_domain domain);
>  void __intel_display_power_put_async(struct intel_display *display,
>  				     enum intel_display_power_domain domain,
> -				     intel_wakeref_t wakeref,
> +				     struct ref_tracker *wakeref,
>  				     int delay_ms);
>  void intel_display_power_flush_work(struct intel_display *display);
>  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
>  void intel_display_power_put(struct intel_display *display,
>  			     enum intel_display_power_domain domain,
> -			     intel_wakeref_t wakeref);
> +			     struct ref_tracker *wakeref);
>  static inline void
>  intel_display_power_put_async(struct intel_display *display,
>  			      enum intel_display_power_domain domain,
> -			      intel_wakeref_t wakeref)
> +			      struct ref_tracker *wakeref)
>  {
>  	__intel_display_power_put_async(display, domain, wakeref, -1);
>  }
> @@ -212,7 +213,7 @@ intel_display_power_put_async(struct intel_display *d=
isplay,
>  static inline void
>  intel_display_power_put_async_delay(struct intel_display *display,
>  				    enum intel_display_power_domain domain,
> -				    intel_wakeref_t wakeref,
> +				    struct ref_tracker *wakeref,
>  				    int delay_ms)
>  {
>  	__intel_display_power_put_async(display, domain, wakeref, delay_ms);
> @@ -224,7 +225,7 @@ void intel_display_power_put_unchecked(struct intel_d=
isplay *display,
>  static inline void
>  intel_display_power_put(struct intel_display *display,
>  			enum intel_display_power_domain domain,
> -			intel_wakeref_t wakeref)
> +			struct ref_tracker *wakeref)
>  {
>  	intel_display_power_put_unchecked(display, domain);
>  }
> @@ -232,7 +233,7 @@ intel_display_power_put(struct intel_display *display=
,
>  static inline void
>  intel_display_power_put_async(struct intel_display *display,
>  			      enum intel_display_power_domain domain,
> -			      intel_wakeref_t wakeref)
> +			      struct ref_tracker *wakeref)
>  {
>  	__intel_display_power_put_async(display, domain, INTEL_WAKEREF_DEF, -1)=
;
>  }
> @@ -240,7 +241,7 @@ intel_display_power_put_async(struct intel_display *d=
isplay,
>  static inline void
>  intel_display_power_put_async_delay(struct intel_display *display,
>  				    enum intel_display_power_domain domain,
> -				    intel_wakeref_t wakeref,
> +				    struct ref_tracker *wakeref,
>  				    int delay_ms)
>  {
>  	__intel_display_power_put_async(display, domain, INTEL_WAKEREF_DEF, del=
ay_ms);
> @@ -298,14 +299,14 @@ void gen9_dbuf_slices_update(struct intel_display *=
display,
>  			     u8 req_slices);
> =20
>  #define __with_intel_display_power(display, domain, wf) \
> -	for (intel_wakeref_t (wf) =3D intel_display_power_get((display), (domai=
n)); (wf); \
> +	for (struct ref_tracker *(wf) =3D intel_display_power_get((display), (d=
omain)); (wf); \
>  	     intel_display_power_put_async((display), (domain), (wf)), (wf) =3D=
 NULL)
> =20
>  #define with_intel_display_power(display, domain) \
>  	__with_intel_display_power(display, domain, __UNIQUE_ID(wakeref))
> =20
>  #define __with_intel_display_power_if_enabled(display, domain, wf) \
> -	for (intel_wakeref_t (wf) =3D intel_display_power_get_if_enabled((displ=
ay), (domain)); (wf); \
> +	for (struct ref_tracker *(wf) =3D intel_display_power_get_if_enabled((d=
isplay), (domain)); (wf); \
>  	     intel_display_power_put_async((display), (domain), (wf)), (wf) =3D=
 NULL)
> =20
>  #define with_intel_display_power_if_enabled(display, domain) \
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 38702a9e0f50..ed0f7448e6cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1658,7 +1658,7 @@ struct intel_pps {
>  	unsigned long last_power_on;
>  	unsigned long last_backlight_off;
>  	ktime_t panel_power_off_time;
> -	intel_wakeref_t vdd_wakeref;
> +	struct ref_tracker *vdd_wakeref;
> =20
>  	union {
>  		/*
> @@ -1940,8 +1940,8 @@ struct intel_digital_port {
>  	/* Used for DP and ICL+ TypeC/DP and TypeC/HDMI ports. */
>  	enum aux_ch aux_ch;
>  	enum intel_display_power_domain ddi_io_power_domain;
> -	intel_wakeref_t ddi_io_wakeref;
> -	intel_wakeref_t aux_wakeref;
> +	struct ref_tracker *ddi_io_wakeref;
> +	struct ref_tracker *aux_wakeref;
> =20
>  	struct intel_tc_port *tc;
> =20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i=
915/display/intel_dmc.c
> index 6ebbd97e6351..2fb6fec6dc99 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -1322,7 +1322,7 @@ static void intel_dmc_runtime_pm_get(struct intel_d=
isplay *display)
> =20
>  static void intel_dmc_runtime_pm_put(struct intel_display *display)
>  {
> -	intel_wakeref_t wakeref __maybe_unused =3D
> +	struct ref_tracker *wakeref __maybe_unused =3D
>  		fetch_and_zero(&display->dmc.wakeref);
> =20
>  	intel_display_power_put(display, POWER_DOMAIN_INIT, wakeref);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/dr=
m/i915/display/intel_dp_aux.c
> index 38e03f3efac5..51b3a168ec33 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -245,7 +245,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  	i915_reg_t ch_ctl, ch_data[5];
>  	u32 aux_clock_divider;
>  	enum intel_display_power_domain aux_domain;
> -	intel_wakeref_t aux_wakeref;
> +	struct ref_tracker *aux_wakeref;
>  	struct ref_tracker *pps_wakeref =3D NULL;
>  	int i, ret, recv_bytes;
>  	int try, clock =3D 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index e0e5e5f65d19..9aa84a430f09 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -547,7 +547,7 @@ static bool ibx_pch_dpll_get_hw_state(struct intel_di=
splay *display,
>  {
>  	struct i9xx_dpll_hw_state *hw_state =3D &dpll_hw_state->i9xx;
>  	const enum intel_dpll_id id =3D pll->info->id;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	u32 val;
> =20
>  	wakeref =3D intel_display_power_get_if_enabled(display,
> @@ -768,7 +768,7 @@ static bool hsw_ddi_wrpll_get_hw_state(struct intel_d=
isplay *display,
>  {
>  	struct hsw_dpll_hw_state *hw_state =3D &dpll_hw_state->hsw;
>  	const enum intel_dpll_id id =3D pll->info->id;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	u32 val;
> =20
>  	wakeref =3D intel_display_power_get_if_enabled(display,
> @@ -789,7 +789,7 @@ static bool hsw_ddi_spll_get_hw_state(struct intel_di=
splay *display,
>  				      struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	struct hsw_dpll_hw_state *hw_state =3D &dpll_hw_state->hsw;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	u32 val;
> =20
>  	wakeref =3D intel_display_power_get_if_enabled(display,
> @@ -1447,7 +1447,7 @@ static bool skl_ddi_pll_get_hw_state(struct intel_d=
isplay *display,
>  	struct skl_dpll_hw_state *hw_state =3D &dpll_hw_state->skl;
>  	const struct skl_dpll_regs *regs =3D skl_dpll_regs;
>  	const enum intel_dpll_id id =3D pll->info->id;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	bool ret;
>  	u32 val;
> =20
> @@ -1485,7 +1485,7 @@ static bool skl_ddi_dpll0_get_hw_state(struct intel=
_display *display,
>  	struct skl_dpll_hw_state *hw_state =3D &dpll_hw_state->skl;
>  	const struct skl_dpll_regs *regs =3D skl_dpll_regs;
>  	const enum intel_dpll_id id =3D pll->info->id;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	u32 val;
>  	bool ret;
> =20
> @@ -2188,7 +2188,7 @@ static bool bxt_ddi_pll_get_hw_state(struct intel_d=
isplay *display,
>  {
>  	struct bxt_dpll_hw_state *hw_state =3D &dpll_hw_state->bxt;
>  	enum port port =3D (enum port)pll->info->id; /* 1:1 port->PLL mapping *=
/
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	enum dpio_phy phy;
>  	enum dpio_channel ch;
>  	u32 val;
> @@ -3598,7 +3598,7 @@ static bool mg_pll_get_hw_state(struct intel_displa=
y *display,
>  	struct icl_dpll_hw_state *hw_state =3D &dpll_hw_state->icl;
>  	const enum intel_dpll_id id =3D pll->info->id;
>  	enum tc_port tc_port =3D icl_pll_id_to_tc_port(id);
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	bool ret =3D false;
>  	u32 val;
> =20
> @@ -3665,7 +3665,7 @@ static bool dkl_pll_get_hw_state(struct intel_displ=
ay *display,
>  	struct icl_dpll_hw_state *hw_state =3D &dpll_hw_state->icl;
>  	const enum intel_dpll_id id =3D pll->info->id;
>  	enum tc_port tc_port =3D icl_pll_id_to_tc_port(id);
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	bool ret =3D false;
>  	u32 val;
> =20
> @@ -3737,7 +3737,7 @@ static bool icl_pll_get_hw_state(struct intel_displ=
ay *display,
>  {
>  	struct icl_dpll_hw_state *hw_state =3D &dpll_hw_state->icl;
>  	const enum intel_dpll_id id =3D pll->info->id;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	bool ret =3D false;
>  	u32 val;
> =20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.h
> index 322af5c55d7c..5b71c860515f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -28,7 +28,6 @@
>  #include <linux/types.h>
> =20
>  #include "intel_display_power.h"
> -#include "intel_wakeref.h"
> =20
>  #define for_each_dpll(__display, __pll, __i) \
>  	for ((__i) =3D 0; (__i) < (__display)->dpll.num_dpll && \
> @@ -42,6 +41,7 @@ struct intel_crtc_state;
>  struct intel_dpll_funcs;
>  struct intel_encoder;
>  struct intel_shared_dpll;
> +struct ref_tracker;
> =20
>  /**
>   * enum intel_dpll_id - possible DPLL ids
> @@ -396,7 +396,7 @@ struct intel_dpll {
>  	 * @wakeref: In some platforms a device-level runtime pm reference may
>  	 * need to be grabbed to disable DC states while this DPLL is enabled
>  	 */
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  };
> =20
>  #define SKL_DPLL0 0
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i=
915/display/intel_dsi.h
> index 89c7166a3860..489d26ffd235 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsi.h
> @@ -29,6 +29,9 @@
> =20
>  #include "intel_display_types.h"
> =20
> +struct intel_dsi_host;
> +struct ref_tracker;
> +
>  #define INTEL_DSI_VIDEO_MODE	0
>  #define INTEL_DSI_COMMAND_MODE	1
> =20
> @@ -37,13 +40,11 @@
>  #define DSI_DUAL_LINK_FRONT_BACK	1
>  #define DSI_DUAL_LINK_PIXEL_ALT		2
> =20
> -struct intel_dsi_host;
> -
>  struct intel_dsi {
>  	struct intel_encoder base;
> =20
>  	struct intel_dsi_host *dsi_hosts[I915_MAX_PORTS];
> -	intel_wakeref_t io_wakeref[I915_MAX_PORTS];
> +	struct ref_tracker *io_wakeref[I915_MAX_PORTS];
> =20
>  	/* GPIO Desc for panel and backlight control */
>  	struct gpio_desc *gpio_panel;
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm=
/i915/display/intel_gmbus.c
> index acc85853b2a7..2caff677600c 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> @@ -789,7 +789,7 @@ gmbus_xfer(struct i2c_adapter *adapter, struct i2c_ms=
g *msgs, int num)
>  {
>  	struct intel_gmbus *bus =3D to_intel_gmbus(adapter);
>  	struct intel_display *display =3D bus->display;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	int ret;
> =20
>  	wakeref =3D intel_display_power_get(display, POWER_DOMAIN_GMBUS);
> @@ -829,7 +829,7 @@ int intel_gmbus_output_aksv(struct i2c_adapter *adapt=
er)
>  			.buf =3D buf,
>  		}
>  	};
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	int ret;
> =20
>  	wakeref =3D intel_display_power_get(display, POWER_DOMAIN_GMBUS);
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 908faf17f93d..055e68810d0d 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2518,7 +2518,7 @@ intel_hdmi_set_edid(struct drm_connector *_connecto=
r)
>  	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_hdmi *intel_hdmi =3D intel_attached_hdmi(connector);
>  	struct i2c_adapter *ddc =3D connector->base.ddc;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	const struct drm_edid *drm_edid;
>  	bool connected =3D false;
> =20
> @@ -2561,7 +2561,7 @@ intel_hdmi_detect(struct drm_connector *_connector,=
 bool force)
>  	enum drm_connector_status status =3D connector_status_disconnected;
>  	struct intel_hdmi *intel_hdmi =3D intel_attached_hdmi(connector);
>  	struct intel_encoder *encoder =3D &hdmi_to_dig_port(intel_hdmi)->base;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
> =20
>  	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s]\n",
>  		    connector->base.base.id, connector->base.name);
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/d=
rm/i915/display/intel_hotplug.c
> index 7575a063f7be..970aa95ee344 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -785,7 +785,7 @@ static void i915_hpd_poll_init_work(struct work_struc=
t *work)
>  		container_of(work, typeof(*display), hotplug.poll_init_work);
>  	struct drm_connector_list_iter conn_iter;
>  	struct intel_connector *connector;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	bool enabled;
> =20
>  	mutex_lock(&display->drm->mode_config.mutex);
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/dr=
m/i915/display/intel_lt_phy.c
> index aaf5a2433690..939c8975fd4c 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1324,11 +1324,11 @@ intel_lt_phy_config_changed(struct intel_encoder =
*encoder,
>  	return true;
>  }
> =20
> -static intel_wakeref_t intel_lt_phy_transaction_begin(struct intel_encod=
er *encoder)
> +static struct ref_tracker *intel_lt_phy_transaction_begin(struct intel_e=
ncoder *encoder)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
> =20
>  	intel_psr_pause(intel_dp);
>  	wakeref =3D intel_display_power_get(display, POWER_DOMAIN_DC_OFF);
> @@ -1336,7 +1336,7 @@ static intel_wakeref_t intel_lt_phy_transaction_beg=
in(struct intel_encoder *enco
>  	return wakeref;
>  }
> =20
> -static void intel_lt_phy_transaction_end(struct intel_encoder *encoder, =
intel_wakeref_t wakeref)
> +static void intel_lt_phy_transaction_end(struct intel_encoder *encoder, =
struct ref_tracker *wakeref)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> @@ -1932,7 +1932,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder *=
encoder,
>  	u8 owned_lane_mask =3D intel_lt_phy_get_owned_lane_mask(encoder);
>  	enum phy phy =3D intel_encoder_to_phy(encoder);
>  	enum port port =3D encoder->port;
> -	intel_wakeref_t wakeref =3D 0;
> +	struct ref_tracker *wakeref =3D 0;
>  	u32 lane_phy_pulse_status =3D owned_lane_mask =3D=3D INTEL_LT_PHY_BOTH_=
LANES
>  					? (XE3PLPDP_LANE_PHY_PULSE_STATUS(0) |
>  					   XE3PLPDP_LANE_PHY_PULSE_STATUS(1))
> @@ -2060,7 +2060,7 @@ void intel_lt_phy_pll_disable(struct intel_encoder =
*encoder)
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	enum phy phy =3D intel_encoder_to_phy(encoder);
>  	enum port port =3D encoder->port;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	u8 owned_lane_mask =3D intel_lt_phy_get_owned_lane_mask(encoder);
>  	u32 lane_pipe_reset =3D owned_lane_mask =3D=3D INTEL_LT_PHY_BOTH_LANES
>  				? (XELPDP_LANE_PIPE_RESET(0) |
> @@ -2137,7 +2137,7 @@ void intel_lt_phy_set_signal_levels(struct intel_en=
coder *encoder,
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	const struct intel_ddi_buf_trans *trans;
>  	u8 owned_lane_mask;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	int n_entries, ln;
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> =20
> @@ -2222,7 +2222,7 @@ void intel_lt_phy_pll_readout_hw_state(struct intel=
_encoder *encoder,
>  {
>  	u8 owned_lane_mask;
>  	u8 lane;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	int i, j, k;
> =20
>  	pll_state->tbt_mode =3D intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(e=
ncoder));
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/=
i915/display/intel_lvds.c
> index 89aeb4fb340e..457d60863536 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -105,7 +105,7 @@ static bool intel_lvds_get_hw_state(struct intel_enco=
der *encoder,
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	struct intel_lvds_encoder *lvds_encoder =3D to_lvds_encoder(encoder);
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	bool ret;
> =20
>  	wakeref =3D intel_display_power_get_if_enabled(display, encoder->power_=
domain);
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers=
/gpu/drm/i915/display/intel_modeset_setup.c
> index 0dcb0597879a..d10cbf69a5f8 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -940,7 +940,7 @@ void intel_modeset_setup_hw_state(struct intel_displa=
y *display,
>  {
>  	struct intel_encoder *encoder;
>  	struct intel_crtc *crtc;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
> =20
>  	wakeref =3D intel_display_power_get(display, POWER_DOMAIN_INIT);
> =20
> diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c b/drivers/gpu/=
drm/i915/display/intel_pipe_crc.c
> index 71cb0178c8b1..57586c78582d 100644
> --- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> +++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> @@ -588,7 +588,7 @@ int intel_crtc_set_crc_source(struct drm_crtc *_crtc,=
 const char *source_name)
>  	enum intel_display_power_domain power_domain;
>  	enum intel_pipe_crc_source source;
>  	enum pipe pipe =3D crtc->pipe;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	u32 val =3D 0; /* shut up gcc */
>  	int ret =3D 0;
>  	bool enable;
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index 69b6873a6044..2d1c293aeff6 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -462,7 +462,7 @@ vlv_sprite_get_hw_state(struct intel_plane *plane,
>  	struct intel_display *display =3D to_intel_display(plane);
>  	enum intel_display_power_domain power_domain;
>  	enum plane_id plane_id =3D plane->id;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	bool ret;
> =20
>  	power_domain =3D POWER_DOMAIN_PIPE(plane->pipe);
> @@ -893,7 +893,7 @@ ivb_sprite_get_hw_state(struct intel_plane *plane,
>  {
>  	struct intel_display *display =3D to_intel_display(plane);
>  	enum intel_display_power_domain power_domain;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	bool ret;
> =20
>  	power_domain =3D POWER_DOMAIN_PIPE(plane->pipe);
> @@ -1233,7 +1233,7 @@ g4x_sprite_get_hw_state(struct intel_plane *plane,
>  {
>  	struct intel_display *display =3D to_intel_display(plane);
>  	enum intel_display_power_domain power_domain;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	bool ret;
> =20
>  	power_domain =3D POWER_DOMAIN_PIPE(plane->pipe);
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i9=
15/display/intel_tc.c
> index c678216af352..064f572bbc85 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -51,7 +51,7 @@ struct intel_tc_port {
>  	const struct intel_tc_phy_ops *phy_ops;
> =20
>  	struct mutex lock;	/* protects the TypeC port mode */
> -	intel_wakeref_t lock_wakeref;
> +	struct ref_tracker *lock_wakeref;
>  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
>  	enum intel_display_power_domain lock_power_domain;
>  #endif
> @@ -182,7 +182,7 @@ bool intel_tc_cold_requires_aux_pw(struct intel_digit=
al_port *dig_port)
>  	       intel_display_power_legacy_aux_domain(display, dig_port->aux_ch)=
;
>  }
> =20
> -static intel_wakeref_t
> +static struct ref_tracker *
>  __tc_cold_block(struct intel_tc_port *tc, enum intel_display_power_domai=
n *domain)
>  {
>  	struct intel_display *display =3D to_intel_display(tc->dig_port);
> @@ -192,11 +192,11 @@ __tc_cold_block(struct intel_tc_port *tc, enum inte=
l_display_power_domain *domai
>  	return intel_display_power_get(display, *domain);
>  }
> =20
> -static intel_wakeref_t
> +static struct ref_tracker *
>  tc_cold_block(struct intel_tc_port *tc)
>  {
>  	enum intel_display_power_domain domain;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
> =20
>  	wakeref =3D __tc_cold_block(tc, &domain);
>  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> @@ -207,7 +207,7 @@ tc_cold_block(struct intel_tc_port *tc)
> =20
>  static void
>  __tc_cold_unblock(struct intel_tc_port *tc, enum intel_display_power_dom=
ain domain,
> -		  intel_wakeref_t wakeref)
> +		  struct ref_tracker *wakeref)
>  {
>  	struct intel_display *display =3D to_intel_display(tc->dig_port);
> =20
> @@ -215,7 +215,7 @@ __tc_cold_unblock(struct intel_tc_port *tc, enum inte=
l_display_power_domain doma
>  }
> =20
>  static void
> -tc_cold_unblock(struct intel_tc_port *tc, intel_wakeref_t wakeref)
> +tc_cold_unblock(struct intel_tc_port *tc, struct ref_tracker *wakeref)
>  {
>  	struct intel_display __maybe_unused *display =3D to_intel_display(tc->d=
ig_port);
>  	enum intel_display_power_domain domain =3D tc_phy_cold_off_domain(tc);
> @@ -625,7 +625,7 @@ static bool icl_tc_phy_is_owned(struct intel_tc_port =
*tc)
>  static void icl_tc_phy_get_hw_state(struct intel_tc_port *tc)
>  {
>  	enum intel_display_power_domain domain;
> -	intel_wakeref_t tc_cold_wref;
> +	struct ref_tracker *tc_cold_wref;
> =20
>  	tc_cold_wref =3D __tc_cold_block(tc, &domain);
> =20
> @@ -892,7 +892,7 @@ static void adlp_tc_phy_get_hw_state(struct intel_tc_=
port *tc)
>  	struct intel_display *display =3D to_intel_display(tc->dig_port);
>  	enum intel_display_power_domain port_power_domain =3D
>  		tc_port_power_domain(tc);
> -	intel_wakeref_t port_wakeref;
> +	struct ref_tracker *port_wakeref;
> =20
>  	port_wakeref =3D intel_display_power_get(display, port_power_domain);
> =20
> @@ -911,7 +911,7 @@ static bool adlp_tc_phy_connect(struct intel_tc_port =
*tc, int required_lanes)
>  	struct intel_display *display =3D to_intel_display(tc->dig_port);
>  	enum intel_display_power_domain port_power_domain =3D
>  		tc_port_power_domain(tc);
> -	intel_wakeref_t port_wakeref;
> +	struct ref_tracker *port_wakeref;
> =20
>  	if (tc->mode =3D=3D TC_PORT_TBT_ALT) {
>  		tc->lock_wakeref =3D tc_cold_block(tc);
> @@ -963,7 +963,7 @@ static void adlp_tc_phy_disconnect(struct intel_tc_po=
rt *tc)
>  	struct intel_display *display =3D to_intel_display(tc->dig_port);
>  	enum intel_display_power_domain port_power_domain =3D
>  		tc_port_power_domain(tc);
> -	intel_wakeref_t port_wakeref;
> +	struct ref_tracker *port_wakeref;
> =20
>  	port_wakeref =3D intel_display_power_get(display, port_power_domain);
> =20
> @@ -1169,7 +1169,7 @@ static bool xelpdp_tc_phy_is_owned(struct intel_tc_=
port *tc)
>  static void xelpdp_tc_phy_get_hw_state(struct intel_tc_port *tc)
>  {
>  	struct intel_display *display =3D to_intel_display(tc->dig_port);
> -	intel_wakeref_t tc_cold_wref;
> +	struct ref_tracker *tc_cold_wref;
>  	enum intel_display_power_domain domain;
> =20
>  	tc_cold_wref =3D __tc_cold_block(tc, &domain);
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/=
i915/display/intel_vdsc.c
> index 0e727fc5e80c..ad5fe841e4b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -999,7 +999,7 @@ void intel_dsc_get_config(struct intel_crtc_state *cr=
tc_state)
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	enum intel_display_power_domain power_domain;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	u32 dss_ctl1, dss_ctl2;
> =20
>  	if (!intel_dsc_source_support(crtc_state))
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 89c8003ccfe7..0b5a1ec2f77a 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -939,7 +939,7 @@ skl_plane_get_hw_state(struct intel_plane *plane,
>  	struct intel_display *display =3D to_intel_display(plane);
>  	enum intel_display_power_domain power_domain;
>  	enum plane_id plane_id =3D plane->id;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	bool ret;
> =20
>  	power_domain =3D POWER_DOMAIN_PIPE(plane->pipe);
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 7964cfffdaae..a6aab79812e5 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -718,7 +718,7 @@ static void skl_pipe_ddb_get_hw_state(struct intel_cr=
tc *crtc,
>  	struct intel_display *display =3D to_intel_display(crtc);
>  	enum intel_display_power_domain power_domain;
>  	enum pipe pipe =3D crtc->pipe;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	enum plane_id plane_id;
> =20
>  	power_domain =3D POWER_DOMAIN_PIPE(pipe);
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i91=
5/display/vlv_dsi.c
> index 19bdd8662359..d705af3bf8ba 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -936,7 +936,7 @@ static bool intel_dsi_get_hw_state(struct intel_encod=
er *encoder,
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	enum port port;
>  	bool active =3D false;
> =20
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h b/dri=
vers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
> index 2a32faea9db5..910a8a60da64 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
> @@ -3,8 +3,4 @@
>   * Copyright =C2=A9 2023 Intel Corporation
>   */
> =20
> -#include <linux/types.h>
> -
> -typedef struct ref_tracker *intel_wakeref_t;
> -
>  #define INTEL_WAKEREF_DEF ERR_PTR(-ENOENT)
> diff --git a/drivers/gpu/drm/xe/display/xe_display_rpm.c b/drivers/gpu/dr=
m/xe/display/xe_display_rpm.c
> index 340f65884812..9416ec784e39 100644
> --- a/drivers/gpu/drm/xe/display/xe_display_rpm.c
> +++ b/drivers/gpu/drm/xe/display/xe_display_rpm.c
> @@ -5,6 +5,7 @@
> =20
>  #include "intel_display_core.h"
>  #include "intel_display_rpm.h"
> +#include "intel_wakeref.h"

Just to be sure this is not a stray change, why did you add it here?


>  #include "xe_device.h"
>  #include "xe_device_types.h"
>  #include "xe_pm.h"

Regardless:

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
