Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB28EC96135
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 09:11:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8409110E2F0;
	Mon,  1 Dec 2025 08:11:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E56A610E2E5;
 Mon,  1 Dec 2025 08:11:16 +0000 (UTC)
Received: from mobile-access-d98cd5-49.dhcp.inet.fi ([217.140.213.49]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vPz05-00000000V6O-0V53; Mon, 01 Dec 2025 10:11:14 +0200
Message-ID: <82bc1df4fe386e7d4dba1332f0e9b7219a155ce4.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Mon, 01 Dec 2025 10:11:12 +0200
In-Reply-To: <d568d5a1a0dc0ad81697010a29fb4a3f552af827.1764076995.git.jani.nikula@intel.com>
References: <cover.1764076995.git.jani.nikula@intel.com>
 <d568d5a1a0dc0ad81697010a29fb4a3f552af827.1764076995.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-7 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH v2 3/5] drm/i915/power: drop wakeref parameter from
 with_intel_display_power*()
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
>  drivers/gpu/drm/i915/display/intel_cmtg.c      |  3 +--
>  drivers/gpu/drm/i915/display/intel_display.c   | 15 +++++----------
>  .../gpu/drm/i915/display/intel_display_power.h | 14 ++++++++++----
>  drivers/gpu/drm/i915/display/intel_dp.c        |  3 +--
>  drivers/gpu/drm/i915/display/intel_tc.c        | 18 ++++++------------
>  5 files changed, 23 insertions(+), 30 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/=
i915/display/intel_cmtg.c
> index 165138b95cb2..e1fdc6fe9762 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -85,7 +85,6 @@ static bool intel_cmtg_transcoder_is_secondary(struct i=
ntel_display *display,
>  					       enum transcoder trans)
>  {
>  	enum intel_display_power_domain power_domain;
> -	intel_wakeref_t wakeref;
>  	u32 val =3D 0;
> =20
>  	if (!HAS_TRANSCODER(display, trans))
> @@ -93,7 +92,7 @@ static bool intel_cmtg_transcoder_is_secondary(struct i=
ntel_display *display,
> =20
>  	power_domain =3D POWER_DOMAIN_TRANSCODER(trans);
> =20
> -	with_intel_display_power_if_enabled(display, power_domain, wakeref)
> +	with_intel_display_power_if_enabled(display, power_domain)
>  		val =3D intel_de_read(display, TRANS_DDI_FUNC_CTL2(display, trans));
> =20
>  	return val & CMTG_SECONDARY_MODE;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 04f5c488f399..34e69b884713 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3469,12 +3469,11 @@ static bool transcoder_ddi_func_is_enabled(struct=
 intel_display *display,
>  					   enum transcoder cpu_transcoder)
>  {
>  	enum intel_display_power_domain power_domain;
> -	intel_wakeref_t wakeref;
>  	u32 tmp =3D 0;
> =20
>  	power_domain =3D POWER_DOMAIN_TRANSCODER(cpu_transcoder);
> =20
> -	with_intel_display_power_if_enabled(display, power_domain, wakeref)
> +	with_intel_display_power_if_enabled(display, power_domain)
>  		tmp =3D intel_de_read(display,
>  				    TRANS_DDI_FUNC_CTL(display, cpu_transcoder));
> =20
> @@ -3496,10 +3495,9 @@ static void enabled_uncompressed_joiner_pipes(stru=
ct intel_display *display,
>  					 joiner_pipes(display)) {
>  		enum intel_display_power_domain power_domain;
>  		enum pipe pipe =3D crtc->pipe;
> -		intel_wakeref_t wakeref;
> =20
>  		power_domain =3D POWER_DOMAIN_PIPE(pipe);
> -		with_intel_display_power_if_enabled(display, power_domain, wakeref) {
> +		with_intel_display_power_if_enabled(display, power_domain) {
>  			u32 tmp =3D intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
> =20
>  			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
> @@ -3525,10 +3523,9 @@ static void enabled_bigjoiner_pipes(struct intel_d=
isplay *display,
>  					 joiner_pipes(display)) {
>  		enum intel_display_power_domain power_domain;
>  		enum pipe pipe =3D crtc->pipe;
> -		intel_wakeref_t wakeref;
> =20
>  		power_domain =3D intel_dsc_power_domain(crtc, (enum transcoder)pipe);
> -		with_intel_display_power_if_enabled(display, power_domain, wakeref) {
> +		with_intel_display_power_if_enabled(display, power_domain) {
>  			u32 tmp =3D intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
> =20
>  			if (!(tmp & BIG_JOINER_ENABLE))
> @@ -3595,10 +3592,9 @@ static void enabled_ultrajoiner_pipes(struct intel=
_display *display,
>  					 joiner_pipes(display)) {
>  		enum intel_display_power_domain power_domain;
>  		enum pipe pipe =3D crtc->pipe;
> -		intel_wakeref_t wakeref;
> =20
>  		power_domain =3D intel_dsc_power_domain(crtc, (enum transcoder)pipe);
> -		with_intel_display_power_if_enabled(display, power_domain, wakeref) {
> +		with_intel_display_power_if_enabled(display, power_domain) {
>  			u32 tmp =3D intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
> =20
>  			if (!(tmp & ULTRA_JOINER_ENABLE))
> @@ -3756,12 +3752,11 @@ static u8 hsw_enabled_transcoders(struct intel_cr=
tc *crtc)
>  	for_each_cpu_transcoder_masked(display, cpu_transcoder,
>  				       panel_transcoder_mask) {
>  		enum intel_display_power_domain power_domain;
> -		intel_wakeref_t wakeref;
>  		enum pipe trans_pipe;
>  		u32 tmp =3D 0;
> =20
>  		power_domain =3D POWER_DOMAIN_TRANSCODER(cpu_transcoder);
> -		with_intel_display_power_if_enabled(display, power_domain, wakeref)
> +		with_intel_display_power_if_enabled(display, power_domain)
>  			tmp =3D intel_de_read(display,
>  					    TRANS_DDI_FUNC_CTL(display, cpu_transcoder));
> =20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers=
/gpu/drm/i915/display/intel_display_power.h
> index f8813b0e16df..79ce8d94bf7d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -297,12 +297,18 @@ enum dbuf_slice {
>  void gen9_dbuf_slices_update(struct intel_display *display,
>  			     u8 req_slices);
> =20
> -#define with_intel_display_power(display, domain, wf) \
> -	for ((wf) =3D intel_display_power_get((display), (domain)); (wf); \
> +#define __with_intel_display_power(display, domain, wf) \
> +	for (intel_wakeref_t (wf) =3D intel_display_power_get((display), (domai=
n)); (wf); \
>  	     intel_display_power_put_async((display), (domain), (wf)), (wf) =3D=
 NULL)
> =20
> -#define with_intel_display_power_if_enabled(display, domain, wf) \
> -	for ((wf) =3D intel_display_power_get_if_enabled((display), (domain)); =
(wf); \
> +#define with_intel_display_power(display, domain) \
> +	__with_intel_display_power(display, domain, __UNIQUE_ID(wakeref))
> +
> +#define __with_intel_display_power_if_enabled(display, domain, wf) \
> +	for (intel_wakeref_t (wf) =3D intel_display_power_get_if_enabled((displ=
ay), (domain)); (wf); \
>  	     intel_display_power_put_async((display), (domain), (wf)), (wf) =3D=
 NULL)
> =20
> +#define with_intel_display_power_if_enabled(display, domain) \
> +	__with_intel_display_power_if_enabled(display, domain, __UNIQUE_ID(wake=
ref))
> +
>  #endif /* __INTEL_DISPLAY_POWER_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 0ec82fcbcf48..7df0e5e13688 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5791,9 +5791,8 @@ bool intel_digital_port_connected_locked(struct int=
el_encoder *encoder)
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>  	bool is_glitch_free =3D intel_tc_port_handles_hpd_glitches(dig_port);
>  	bool is_connected =3D false;
> -	intel_wakeref_t wakeref;
> =20
> -	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref) {
> +	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE) {
>  		poll_timeout_us(is_connected =3D dig_port->connected(encoder),
>  				is_connected || is_glitch_free,
>  				30, 4000, false);
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i9=
15/display/intel_tc.c
> index 1e21fd02685d..c678216af352 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -269,10 +269,9 @@ assert_tc_port_power_enabled(struct intel_tc_port *t=
c)
>  static u32 get_lane_mask(struct intel_tc_port *tc)
>  {
>  	struct intel_display *display =3D to_intel_display(tc->dig_port);
> -	intel_wakeref_t wakeref;
>  	u32 lane_mask;
> =20
> -	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref)
> +	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE)
>  		lane_mask =3D intel_de_read(display, PORT_TX_DFLEXDPSP(tc->phy_fia));
> =20
>  	drm_WARN_ON(display->drm, lane_mask =3D=3D 0xffffffff);
> @@ -296,7 +295,6 @@ get_pin_assignment(struct intel_tc_port *tc)
>  	struct intel_display *display =3D to_intel_display(tc->dig_port);
>  	enum tc_port tc_port =3D intel_encoder_to_tc(&tc->dig_port->base);
>  	enum intel_tc_pin_assignment pin_assignment;
> -	intel_wakeref_t wakeref;
>  	i915_reg_t reg;
>  	u32 mask;
>  	u32 val;
> @@ -312,7 +310,7 @@ get_pin_assignment(struct intel_tc_port *tc)
>  		mask =3D DP_PIN_ASSIGNMENT_MASK(tc->phy_fia_idx);
>  	}
> =20
> -	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref)
> +	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE)
>  		val =3D intel_de_read(display, reg);
> =20
>  	drm_WARN_ON(display->drm, val =3D=3D 0xffffffff);
> @@ -527,12 +525,11 @@ static u32 icl_tc_phy_hpd_live_status(struct intel_=
tc_port *tc)
>  	struct intel_display *display =3D to_intel_display(tc->dig_port);
>  	struct intel_digital_port *dig_port =3D tc->dig_port;
>  	u32 isr_bit =3D display->hotplug.pch_hpd[dig_port->base.hpd_pin];
> -	intel_wakeref_t wakeref;
>  	u32 fia_isr;
>  	u32 pch_isr;
>  	u32 mask =3D 0;
> =20
> -	with_intel_display_power(display, tc_phy_cold_off_domain(tc), wakeref) =
{
> +	with_intel_display_power(display, tc_phy_cold_off_domain(tc)) {
>  		fia_isr =3D intel_de_read(display, PORT_TX_DFLEXDPSP(tc->phy_fia));
>  		pch_isr =3D intel_de_read(display, SDEISR);
>  	}
> @@ -774,10 +771,9 @@ tgl_tc_phy_cold_off_domain(struct intel_tc_port *tc)
>  static void tgl_tc_phy_init(struct intel_tc_port *tc)
>  {
>  	struct intel_display *display =3D to_intel_display(tc->dig_port);
> -	intel_wakeref_t wakeref;
>  	u32 val;
> =20
> -	with_intel_display_power(display, tc_phy_cold_off_domain(tc), wakeref)
> +	with_intel_display_power(display, tc_phy_cold_off_domain(tc))
>  		val =3D intel_de_read(display, PORT_TX_DFLEXDPSP(FIA1));
> =20
>  	drm_WARN_ON(display->drm, val =3D=3D 0xffffffff);
> @@ -819,12 +815,11 @@ static u32 adlp_tc_phy_hpd_live_status(struct intel=
_tc_port *tc)
>  	enum hpd_pin hpd_pin =3D dig_port->base.hpd_pin;
>  	u32 cpu_isr_bits =3D display->hotplug.hpd[hpd_pin];
>  	u32 pch_isr_bit =3D display->hotplug.pch_hpd[hpd_pin];
> -	intel_wakeref_t wakeref;
>  	u32 cpu_isr;
>  	u32 pch_isr;
>  	u32 mask =3D 0;
> =20
> -	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref) {
> +	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE) {
>  		cpu_isr =3D intel_de_read(display, GEN11_DE_HPD_ISR);
>  		pch_isr =3D intel_de_read(display, SDEISR);
>  	}
> @@ -1015,12 +1010,11 @@ static u32 xelpdp_tc_phy_hpd_live_status(struct i=
ntel_tc_port *tc)
>  	enum hpd_pin hpd_pin =3D dig_port->base.hpd_pin;
>  	u32 pica_isr_bits =3D display->hotplug.hpd[hpd_pin];
>  	u32 pch_isr_bit =3D display->hotplug.pch_hpd[hpd_pin];
> -	intel_wakeref_t wakeref;
>  	u32 pica_isr;
>  	u32 pch_isr;
>  	u32 mask =3D 0;
> =20
> -	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref) {
> +	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE) {
>  		pica_isr =3D intel_de_read(display, PICAINTERRUPT_ISR);
>  		pch_isr =3D intel_de_read(display, SDEISR);
>  	}

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
