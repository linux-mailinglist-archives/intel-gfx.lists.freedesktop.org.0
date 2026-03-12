Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eAhMOC91sml/MwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:11:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5457C26EB3F
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:11:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A28410E9DF;
	Thu, 12 Mar 2026 08:11:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4092C10E9DF;
 Thu, 12 Mar 2026 08:11:24 +0000 (UTC)
Received: from 37-33-19-16.bb.dnainternet.fi ([37.33.19.16]
 helo=[192.168.101.111])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1w0b8Z-00000003G2b-1dJs; Thu, 12 Mar 2026 10:11:21 +0200
Message-ID: <687335ed794eb133347e00adb14b1bea55552a68.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@linux.intel.com>, Luca Coelho
 <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com
Date: Thu, 12 Mar 2026 10:11:17 +0200
In-Reply-To: <d9934b9f57fde3abad73b40013d68f1238f7284a@intel.com>
References: <20260305100100.332956-1-luciano.coelho@intel.com>
 <20260305100100.332956-2-luciano.coelho@intel.com>
 <3ac0ffb3dae8ae824d34fc9330bbbc974af34651@intel.com>
 <d9934b9f57fde3abad73b40013d68f1238f7284a@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-8 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH v5 01/16] drm/i915/display: remove enum macro magic in
 intel_display_wa()
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
X-Spamd-Result: default: False [-0.61 / 15.00];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,coelho.fi:mid];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.956];
	FROM_NEQ_ENVFROM(0.00)[luca@coelho.fi,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[coelho.fi];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Queue-Id: 5457C26EB3F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 2026-03-06 at 13:38 +0200, Jani Nikula wrote:
> On Fri, 06 Mar 2026, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> > On Thu, 05 Mar 2026, Luca Coelho <luciano.coelho@intel.com> wrote:
> > > There's not much use in passing a number to the macro and let it
> > > convert that into the enum and a string.  It just hides the symbols.
> >=20
> > There was a point, though. Passing a random number to intel_display_wa(=
)
> > would fail the build. Now you'll only find out runtime. I'll concede
> > there's value, perhaps more so, in having the symbols not hidden.

Good point, but there are many nicer ways of achieving the same thing
without creating a ficticious integer for it, because the WA number is
really an ID, and could be any string...

Anyway, this series is already merged, but I'll send a new proposal
with BUILD_BUG_ON() that should achieve the same thing.


> >=20
> > > Remove the number to enum conversion magic in intel_display_wa().
> > >=20
> > > This has the side-effect of changing the print in the drm_WARN() that
> > > is issued when the number is not implemented, but that is moot anyway
> > > and can be changed later to something cleaner if needed.
> >=20
> > I actually wonder if having the names there is really worth it. It's
> > just a bunch of rodata bloat for not much benefit. It should be easy
> > enough to find which enumerator isn't handled.
> >=20
> > Maybe check the objdump bloat reduction with the intel_display_wa()
> > wrapper macro and the const char *name parameter removed?

Yes, good idea, I'll check this and maybe send a patch to improve this
as well.



> PS. All of this can be done in follow-up too, to not hold this series
> back any longer.

Thanks!

--
Cheers,
Luca.


> >=20
> > >=20
> > > Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_cdclk.c              | 5 +++--
> > >  drivers/gpu/drm/i915/display/intel_display.c            | 2 +-
> > >  drivers/gpu/drm/i915/display/intel_display_power_well.c | 4 ++--
> > >  drivers/gpu/drm/i915/display/intel_display_wa.c         | 2 +-
> > >  drivers/gpu/drm/i915/display/intel_display_wa.h         | 2 +-
> > >  drivers/gpu/drm/i915/display/intel_fbc.c                | 8 ++++----
> > >  drivers/gpu/drm/i915/display/intel_gmbus.c              | 6 +++---
> > >  drivers/gpu/drm/i915/display/skl_scaler.c               | 2 +-
> > >  8 files changed, 16 insertions(+), 15 deletions(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu=
/drm/i915/display/intel_cdclk.c
> > > index 38331e899519..7767f8c198da 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > @@ -1870,7 +1870,7 @@ static void icl_cdclk_pll_disable(struct intel_=
display *display)
> > >  	 *      after the PLL is enabled (which is already done as part of =
the
> > >  	 *      normal flow of _bxt_set_cdclk()).
> > >  	 */
> > > -	if (intel_display_wa(display, 13012396614))
> > > +	if (intel_display_wa(display, INTEL_DISPLAY_WA_13012396614))
> > >  		intel_de_rmw(display, CDCLK_CTL, MDCLK_SOURCE_SEL_MASK, MDCLK_SOUR=
CE_SEL_CD2XCLK);
> > > =20
> > >  	intel_de_rmw(display, BXT_DE_PLL_ENABLE,
> > > @@ -2186,7 +2186,8 @@ static u32 bxt_cdclk_ctl(struct intel_display *=
display,
> > >  		 * icl_cdclk_pll_disable().  Here we are just making sure
> > >  		 * we keep the expected value.
> > >  		 */
> > > -		if (intel_display_wa(display, 13012396614) && vco =3D=3D 0)
> > > +		if (intel_display_wa(display, INTEL_DISPLAY_WA_13012396614) &&
> > > +		    vco =3D=3D 0)
> > >  			val |=3D MDCLK_SOURCE_SEL_CD2XCLK;
> > >  		else
> > >  			val |=3D xe2lpd_mdclk_source_sel(display);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/g=
pu/drm/i915/display/intel_display.c
> > > index 138ee7dd1977..15edf609fff4 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -1070,7 +1070,7 @@ static void intel_post_plane_update(struct inte=
l_atomic_state *state,
> > >  	if (audio_enabling(old_crtc_state, new_crtc_state))
> > >  		intel_encoders_audio_enable(state, crtc);
> > > =20
> > > -	if (intel_display_wa(display, 14011503117)) {
> > > +	if (intel_display_wa(display, INTEL_DISPLAY_WA_14011503117)) {
> > >  		if (old_crtc_state->pch_pfit.enabled !=3D new_crtc_state->pch_pfit=
.enabled)
> > >  			adl_scaler_ecc_unmask(new_crtc_state);
> > >  	}
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c =
b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > index 9c8d29839caf..1e03187dbd38 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > @@ -249,7 +249,7 @@ static void hsw_power_well_post_enable(struct int=
el_display *display,
> > >  	if (irq_pipe_mask) {
> > >  		gen8_irq_power_well_post_enable(display, irq_pipe_mask);
> > > =20
> > > -		if (intel_display_wa(display, 22021048059))
> > > +		if (intel_display_wa(display, INTEL_DISPLAY_WA_22021048059))
> > >  			dss_pipe_gating_enable_disable(display, irq_pipe_mask, false);
> > >  	}
> > >  }
> > > @@ -258,7 +258,7 @@ static void hsw_power_well_pre_disable(struct int=
el_display *display,
> > >  				       u8 irq_pipe_mask)
> > >  {
> > >  	if (irq_pipe_mask) {
> > > -		if (intel_display_wa(display, 22021048059))
> > > +		if (intel_display_wa(display, INTEL_DISPLAY_WA_22021048059))
> > >  			dss_pipe_gating_enable_disable(display, irq_pipe_mask, true);
> > > =20
> > >  		gen8_irq_power_well_pre_disable(display, irq_pipe_mask);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/driver=
s/gpu/drm/i915/display/intel_display_wa.c
> > > index c2ccdca2c2f3..1d8340b36c01 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > > @@ -87,7 +87,7 @@ bool __intel_display_wa(struct intel_display *displ=
ay, enum intel_display_wa wa,
> > >  	case INTEL_DISPLAY_WA_22021048059:
> > >  		return IS_DISPLAY_VER(display, 14, 35);
> > >  	default:
> > > -		drm_WARN(display->drm, 1, "Missing Wa number: %s\n", name);
> > > +		drm_WARN(display->drm, 1, "Missing Wa: %s\n", name);
> > >  		break;
> > >  	}
> > > =20
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/driver=
s/gpu/drm/i915/display/intel_display_wa.h
> > > index 767420d5f406..06c1f62c0f6d 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> > > @@ -40,6 +40,6 @@ enum intel_display_wa {
> > >  bool __intel_display_wa(struct intel_display *display, enum intel_di=
splay_wa wa, const char *name);
> > > =20
> > >  #define intel_display_wa(__display, __wa) \
> > > -	__intel_display_wa((__display), INTEL_DISPLAY_WA_##__wa, __stringif=
y(__wa))
> > > +	__intel_display_wa((__display), __wa, __stringify(__wa))
> > > =20
> > >  #endif
> > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/d=
rm/i915/display/intel_fbc.c
> > > index 3e9b3e532499..5d0d7c1027f5 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > @@ -957,7 +957,7 @@ static void intel_fbc_program_workarounds(struct =
intel_fbc *fbc)
> > >  	 * Fixes: Screen flicker with FBC and Package C state enabled
> > >  	 * Workaround: Forced SLB invalidation before start of new frame.
> > >  	 */
> > > -	if (intel_display_wa(display, 22014263786))
> > > +	if (intel_display_wa(display, INTEL_DISPLAY_WA_22014263786))
> > >  		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
> > >  			     0, DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
> > > =20
> > > @@ -979,7 +979,7 @@ static void fbc_sys_cache_update_config(struct in=
tel_display *display, u32 reg,
> > >  	 * Fixes: SoC hardware issue in read caching
> > >  	 * Workaround: disable cache read setting which is enabled by defau=
lt.
> > >  	 */
> > > -	if (!intel_display_wa(display, 14025769978))
> > > +	if (!intel_display_wa(display, INTEL_DISPLAY_WA_14025769978))
> > >  		/* Cache read enable is set by default */
> > >  		reg |=3D FBC_SYS_CACHE_READ_ENABLE;
> > > =20
> > > @@ -1612,7 +1612,7 @@ static int intel_fbc_check_plane(struct intel_a=
tomic_state *state,
> > >  		return 0;
> > >  	}
> > > =20
> > > -	if (intel_display_wa(display, 16023588340)) {
> > > +	if (intel_display_wa(display, INTEL_DISPLAY_WA_16023588340)) {
> > >  		plane_state->no_fbc_reason =3D "Wa_16023588340";
> > >  		return 0;
> > >  	}
> > > @@ -1622,7 +1622,7 @@ static int intel_fbc_check_plane(struct intel_a=
tomic_state *state,
> > >  	 * Fixes: Underrun during media decode
> > >  	 * Workaround: Do not enable FBC
> > >  	 */
> > > -	if (intel_display_wa(display, 15018326506)) {
> > > +	if (intel_display_wa(display, INTEL_DISPLAY_WA_15018326506)) {
> > >  		plane_state->no_fbc_reason =3D "Wa_15018326506";
> > >  		return 0;
> > >  	}
> > > diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu=
/drm/i915/display/intel_gmbus.c
> > > index 38706017c0c6..df48f27f1cc1 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> > > @@ -250,7 +250,7 @@ static u32 get_reserved(struct intel_gmbus *bus)
> > >  	preserve_bits |=3D GPIO_DATA_PULLUP_DISABLE | GPIO_CLOCK_PULLUP_DIS=
ABLE;
> > > =20
> > >  	/* Wa_16025573575: the masks bits need to be preserved through out =
*/
> > > -	if (intel_display_wa(display, 16025573575))
> > > +	if (intel_display_wa(display, INTEL_DISPLAY_WA_16025573575))
> > >  		preserve_bits |=3D GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_VAL_MASK |
> > >  				 GPIO_DATA_DIR_MASK | GPIO_DATA_VAL_MASK;
> > > =20
> > > @@ -342,7 +342,7 @@ intel_gpio_pre_xfer(struct i2c_adapter *adapter)
> > >  	if (display->platform.pineview)
> > >  		pnv_gmbus_clock_gating(display, false);
> > > =20
> > > -	if (intel_display_wa(display, 16025573575))
> > > +	if (intel_display_wa(display, INTEL_DISPLAY_WA_16025573575))
> > >  		ptl_handle_mask_bits(bus, true);
> > > =20
> > >  	set_data(bus, 1);
> > > @@ -363,7 +363,7 @@ intel_gpio_post_xfer(struct i2c_adapter *adapter)
> > >  	if (display->platform.pineview)
> > >  		pnv_gmbus_clock_gating(display, true);
> > > =20
> > > -	if (intel_display_wa(display, 16025573575))
> > > +	if (intel_display_wa(display, INTEL_DISPLAY_WA_16025573575))
> > >  		ptl_handle_mask_bits(bus, false);
> > >  }
> > > =20
> > > diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/=
drm/i915/display/skl_scaler.c
> > > index 4c4deac7f9c8..7c5cb188ebf0 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> > > +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> > > @@ -823,7 +823,7 @@ void skl_pfit_enable(const struct intel_crtc_stat=
e *crtc_state)
> > >  			crtc_state->scaler_state.scaler_id < 0))
> > >  		return;
> > > =20
> > > -	if (intel_display_wa(display, 14011503117))
> > > +	if (intel_display_wa(display, INTEL_DISPLAY_WA_14011503117))
> > >  		adl_scaler_ecc_mask(crtc_state);
> > > =20
> > >  	drm_rect_init(&src, 0, 0,
