Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B306C96114
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 09:06:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F306010E2F8;
	Mon,  1 Dec 2025 08:06:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16ADB10E2F5;
 Mon,  1 Dec 2025 08:06:21 +0000 (UTC)
Received: from mobile-access-d98cd5-49.dhcp.inet.fi ([217.140.213.49]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vPyvJ-00000000V5c-0id3; Mon, 01 Dec 2025 10:06:18 +0200
Message-ID: <5023c3918fbc4e21984c4d35c059ef80792c4413.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Mon, 01 Dec 2025 10:06:16 +0200
In-Reply-To: <f45a77708108dc4b606d732c1b011aa08fab72b5.1764076995.git.jani.nikula@intel.com>
References: <cover.1764076995.git.jani.nikula@intel.com>
 <f45a77708108dc4b606d732c1b011aa08fab72b5.1764076995.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-7 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH v2 1/5] drm/i915/pps: drop wakeref parameter from
 with_intel_pps_lock()
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
> Add another level of macro abstraction, and declare the wakeref within
> the for loop using __UNIQUE_ID. This allows us to drop a bunch of
> boilerplate declarations and parameter passing.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c    |  3 +-
>  drivers/gpu/drm/i915/display/intel_pps.c | 56 +++++++-----------------
>  drivers/gpu/drm/i915/display/intel_pps.h |  7 ++-
>  3 files changed, 22 insertions(+), 44 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915=
/display/g4x_dp.c
> index a3ff21b2f69f..27f4c55d7484 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -684,12 +684,11 @@ static void intel_enable_dp(struct intel_atomic_sta=
te *state,
>  	struct intel_display *display =3D to_intel_display(state);
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  	u32 dp_reg =3D intel_de_read(display, intel_dp->output_reg);
> -	intel_wakeref_t wakeref;
> =20
>  	if (drm_WARN_ON(display->drm, dp_reg & DP_PORT_EN))
>  		return;
> =20
> -	with_intel_pps_lock(intel_dp, wakeref) {
> +	with_intel_pps_lock(intel_dp) {
>  		if (display->platform.valleyview || display->platform.cherryview)
>  			vlv_pps_port_enable_unlocked(encoder, pipe_config);
> =20
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i=
915/display/intel_pps.c
> index 25692a547764..34376255b85c 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -697,12 +697,10 @@ static void wait_panel_power_cycle(struct intel_dp =
*intel_dp)
> =20
>  void intel_pps_wait_power_cycle(struct intel_dp *intel_dp)
>  {
> -	intel_wakeref_t wakeref;
> -
>  	if (!intel_dp_is_edp(intel_dp))
>  		return;
> =20
> -	with_intel_pps_lock(intel_dp, wakeref)
> +	with_intel_pps_lock(intel_dp)
>  		wait_panel_power_cycle(intel_dp);
>  }
> =20
> @@ -811,14 +809,13 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *int=
el_dp)
>  void intel_pps_vdd_on(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> -	intel_wakeref_t wakeref;
>  	bool vdd;
> =20
>  	if (!intel_dp_is_edp(intel_dp))
>  		return;
> =20
>  	vdd =3D false;
> -	with_intel_pps_lock(intel_dp, wakeref)
> +	with_intel_pps_lock(intel_dp)
>  		vdd =3D intel_pps_vdd_on_unlocked(intel_dp);
>  	INTEL_DISPLAY_STATE_WARN(display, !vdd, "[ENCODER:%d:%s] %s VDD already=
 requested on\n",
>  				 dp_to_dig_port(intel_dp)->base.base.base.id,
> @@ -873,8 +870,6 @@ static void intel_pps_vdd_off_sync_unlocked(struct in=
tel_dp *intel_dp)
> =20
>  void intel_pps_vdd_off_sync(struct intel_dp *intel_dp)
>  {
> -	intel_wakeref_t wakeref;
> -
>  	if (!intel_dp_is_edp(intel_dp))
>  		return;
> =20
> @@ -883,7 +878,7 @@ void intel_pps_vdd_off_sync(struct intel_dp *intel_dp=
)
>  	 * vdd might still be enabled due to the delayed vdd off.
>  	 * Make sure vdd is actually turned off here.
>  	 */
> -	with_intel_pps_lock(intel_dp, wakeref)
> +	with_intel_pps_lock(intel_dp)
>  		intel_pps_vdd_off_sync_unlocked(intel_dp);
>  }
> =20
> @@ -892,9 +887,8 @@ static void edp_panel_vdd_work(struct work_struct *__=
work)
>  	struct intel_pps *pps =3D container_of(to_delayed_work(__work),
>  					     struct intel_pps, panel_vdd_work);
>  	struct intel_dp *intel_dp =3D container_of(pps, struct intel_dp, pps);
> -	intel_wakeref_t wakeref;
> =20
> -	with_intel_pps_lock(intel_dp, wakeref) {
> +	with_intel_pps_lock(intel_dp) {
>  		if (!intel_dp->pps.want_panel_vdd)
>  			intel_pps_vdd_off_sync_unlocked(intel_dp);
>  	}
> @@ -952,12 +946,10 @@ void intel_pps_vdd_off_unlocked(struct intel_dp *in=
tel_dp, bool sync)
> =20
>  void intel_pps_vdd_off(struct intel_dp *intel_dp)
>  {
> -	intel_wakeref_t wakeref;
> -
>  	if (!intel_dp_is_edp(intel_dp))
>  		return;
> =20
> -	with_intel_pps_lock(intel_dp, wakeref)
> +	with_intel_pps_lock(intel_dp)
>  		intel_pps_vdd_off_unlocked(intel_dp, false);
>  }
> =20
> @@ -1026,12 +1018,10 @@ void intel_pps_on_unlocked(struct intel_dp *intel=
_dp)
> =20
>  void intel_pps_on(struct intel_dp *intel_dp)
>  {
> -	intel_wakeref_t wakeref;
> -
>  	if (!intel_dp_is_edp(intel_dp))
>  		return;
> =20
> -	with_intel_pps_lock(intel_dp, wakeref)
> +	with_intel_pps_lock(intel_dp)
>  		intel_pps_on_unlocked(intel_dp);
>  }
> =20
> @@ -1082,12 +1072,10 @@ void intel_pps_off_unlocked(struct intel_dp *inte=
l_dp)
> =20
>  void intel_pps_off(struct intel_dp *intel_dp)
>  {
> -	intel_wakeref_t wakeref;
> -
>  	if (!intel_dp_is_edp(intel_dp))
>  		return;
> =20
> -	with_intel_pps_lock(intel_dp, wakeref)
> +	with_intel_pps_lock(intel_dp)
>  		intel_pps_off_unlocked(intel_dp);
>  }
> =20
> @@ -1095,7 +1083,6 @@ void intel_pps_off(struct intel_dp *intel_dp)
>  void intel_pps_backlight_on(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> -	intel_wakeref_t wakeref;
> =20
>  	/*
>  	 * If we enable the backlight right away following a panel power
> @@ -1105,7 +1092,7 @@ void intel_pps_backlight_on(struct intel_dp *intel_=
dp)
>  	 */
>  	wait_backlight_on(intel_dp);
> =20
> -	with_intel_pps_lock(intel_dp, wakeref) {
> +	with_intel_pps_lock(intel_dp) {
>  		i915_reg_t pp_ctrl_reg =3D _pp_ctrl_reg(intel_dp);
>  		u32 pp;
> =20
> @@ -1121,12 +1108,11 @@ void intel_pps_backlight_on(struct intel_dp *inte=
l_dp)
>  void intel_pps_backlight_off(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> -	intel_wakeref_t wakeref;
> =20
>  	if (!intel_dp_is_edp(intel_dp))
>  		return;
> =20
> -	with_intel_pps_lock(intel_dp, wakeref) {
> +	with_intel_pps_lock(intel_dp) {
>  		i915_reg_t pp_ctrl_reg =3D _pp_ctrl_reg(intel_dp);
>  		u32 pp;
> =20
> @@ -1149,11 +1135,10 @@ void intel_pps_backlight_power(struct intel_conne=
ctor *connector, bool enable)
>  {
>  	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> -	intel_wakeref_t wakeref;
>  	bool is_enabled;
> =20
>  	is_enabled =3D false;
> -	with_intel_pps_lock(intel_dp, wakeref)
> +	with_intel_pps_lock(intel_dp)
>  		is_enabled =3D ilk_get_pp_control(intel_dp) & EDP_BLC_ENABLE;
>  	if (is_enabled =3D=3D enable)
>  		return;
> @@ -1251,9 +1236,7 @@ void vlv_pps_pipe_init(struct intel_dp *intel_dp)
>  /* Call on all DP, not just eDP */
>  void vlv_pps_pipe_reset(struct intel_dp *intel_dp)
>  {
> -	intel_wakeref_t wakeref;
> -
> -	with_intel_pps_lock(intel_dp, wakeref)
> +	with_intel_pps_lock(intel_dp)
>  		intel_dp->pps.vlv_active_pipe =3D vlv_active_pipe(intel_dp);
>  }
> =20
> @@ -1329,9 +1312,7 @@ void vlv_pps_port_disable(struct intel_encoder *enc=
oder,
>  {
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> =20
> -	intel_wakeref_t wakeref;
> -
> -	with_intel_pps_lock(intel_dp, wakeref)
> +	with_intel_pps_lock(intel_dp)
>  		intel_dp->pps.vlv_active_pipe =3D INVALID_PIPE;
>  }
> =20
> @@ -1362,10 +1343,9 @@ static void pps_vdd_init(struct intel_dp *intel_dp=
)
> =20
>  bool intel_pps_have_panel_power_or_vdd(struct intel_dp *intel_dp)
>  {
> -	intel_wakeref_t wakeref;
>  	bool have_power =3D false;
> =20
> -	with_intel_pps_lock(intel_dp, wakeref) {
> +	with_intel_pps_lock(intel_dp) {
>  		have_power =3D edp_have_panel_power(intel_dp) ||
>  			     edp_have_panel_vdd(intel_dp);
>  	}
> @@ -1692,12 +1672,11 @@ static void pps_init_registers(struct intel_dp *i=
ntel_dp, bool force_disable_vdd
>  void intel_pps_encoder_reset(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> -	intel_wakeref_t wakeref;
> =20
>  	if (!intel_dp_is_edp(intel_dp))
>  		return;
> =20
> -	with_intel_pps_lock(intel_dp, wakeref) {
> +	with_intel_pps_lock(intel_dp) {
>  		/*
>  		 * Reinit the power sequencer also on the resume path, in case
>  		 * BIOS did something nasty with it.
> @@ -1716,7 +1695,6 @@ void intel_pps_encoder_reset(struct intel_dp *intel=
_dp)
> =20
>  bool intel_pps_init(struct intel_dp *intel_dp)
>  {
> -	intel_wakeref_t wakeref;
>  	bool ret;
> =20
>  	intel_dp->pps.initializing =3D true;
> @@ -1724,7 +1702,7 @@ bool intel_pps_init(struct intel_dp *intel_dp)
> =20
>  	pps_init_timestamps(intel_dp);
> =20
> -	with_intel_pps_lock(intel_dp, wakeref) {
> +	with_intel_pps_lock(intel_dp) {
>  		ret =3D pps_initial_setup(intel_dp);
> =20
>  		pps_init_delays(intel_dp);
> @@ -1760,9 +1738,7 @@ static void pps_init_late(struct intel_dp *intel_dp=
)
> =20
>  void intel_pps_init_late(struct intel_dp *intel_dp)
>  {
> -	intel_wakeref_t wakeref;
> -
> -	with_intel_pps_lock(intel_dp, wakeref) {
> +	with_intel_pps_lock(intel_dp) {
>  		/* Reinit delays after per-panel info has been parsed from VBT */
>  		pps_init_late(intel_dp);
> =20
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i=
915/display/intel_pps.h
> index c83007152f07..ad5c458ccdaf 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.h
> +++ b/drivers/gpu/drm/i915/display/intel_pps.h
> @@ -20,8 +20,11 @@ struct intel_encoder;
>  intel_wakeref_t intel_pps_lock(struct intel_dp *intel_dp);
>  intel_wakeref_t intel_pps_unlock(struct intel_dp *intel_dp, intel_wakere=
f_t wakeref);
> =20
> -#define with_intel_pps_lock(dp, wf)						\
> -	for ((wf) =3D intel_pps_lock(dp); (wf); (wf) =3D intel_pps_unlock((dp),=
 (wf)))
> +#define __with_intel_pps_lock(dp, wf) \
> +	for (intel_wakeref_t (wf) =3D intel_pps_lock(dp); (wf); (wf) =3D intel_=
pps_unlock((dp), (wf)))
> +
> +#define with_intel_pps_lock(dp) \
> +	__with_intel_pps_lock((dp), __UNIQUE_ID(wakeref))
> =20
>  void intel_pps_backlight_on(struct intel_dp *intel_dp);
>  void intel_pps_backlight_off(struct intel_dp *intel_dp);

Nice!

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
