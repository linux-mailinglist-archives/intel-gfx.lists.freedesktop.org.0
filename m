Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DFD284CA5
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 15:43:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B6196E048;
	Tue,  6 Oct 2020 13:43:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4AE36E048
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 13:43:51 +0000 (UTC)
IronPort-SDR: fj04b5b6PgzwAlRg2VlgjP3tWSWgtbCTdba8sdJdguyWGWnB2SF94iG4VY2T4g9XNz9U5MtUqj
 /V8fI4gJqLHQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="228629889"
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="228629889"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 06:43:44 -0700
IronPort-SDR: RFWfjKtlu14UkXJ1KU9joLOzye60t9luJoVyg/fyD43saWYzQ1vhRg8gb7UM2ol+QjefAkPioK
 eWcq7xCYewBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="315642495"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 06 Oct 2020 06:43:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Oct 2020 16:43:40 +0300
Date: Tue, 6 Oct 2020 16:43:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20201006134340.GW6112@intel.com>
References: <20201001151640.14590-1-ville.syrjala@linux.intel.com>
 <20201001151640.14590-3-ville.syrjala@linux.intel.com>
 <87o8lfk8i5.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87o8lfk8i5.fsf@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 3/6] drm/i915: Replace the VLV/CHV eDP
 reboot notifier with the .shutdown() hook
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 06, 2020 at 12:29:22PM +0300, Jani Nikula wrote:
> On Thu, 01 Oct 2020, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > Currently VLV/CHV use a reboot notifier to make sure the panel
> > power cycle delay isn't violated across a system reboot. Replace
> > that with the new encoder .shutdown() hook.
> >
> > And let's also stop overriding the power cycle delay with the
> > max value. No idea why the current code does that. The already
> > programmed delay should be correct.
> =

> I kind of have a little uneasy feeling about conflating these two
> changes together. I think both are objectively good changes, just not
> necessarily at once.
> =

> ISTR setting the max delay was, perhaps, somehow related to the hardware
> losing its marbles after power is cut, effectively not ensuring any of
> the delays at power-on. So it's possible we set the max here to account
> for that. Maybe. ;)
> =

> Anyway,
> =

> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> =

> on the whole.
> =

> I'm leaving it up to you, but personally I'd lean towards switching
> edp_notify_handler() to use wait_panel_power_cycle(intel_dp) first in a
> separate patch, to help with potential bisect results, and then doing
> the rest.

I don't think it would be quite that simple. We'd have to also toss
in some combination of panel_off() and vdd_off_sync() in there,
depending on whether the panel power is currently enabled or not.
Otherwise the bookkeeping needed by wait_panel_power_cycle() isn't
going to be up to date.

> =

> >
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  .../drm/i915/display/intel_display_types.h    |  2 -
> >  drivers/gpu/drm/i915/display/intel_dp.c       | 58 +++++--------------
> >  2 files changed, 14 insertions(+), 46 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drive=
rs/gpu/drm/i915/display/intel_display_types.h
> > index 6f3e3d756383..9b9ed1a2f412 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1319,8 +1319,6 @@ struct intel_dp {
> >  	unsigned long last_backlight_off;
> >  	ktime_t panel_power_off_time;
> >  =

> > -	struct notifier_block edp_notifier;
> > -
> >  	/*
> >  	 * Pipe whose power sequencer is currently locked into
> >  	 * this port. Only relevant on VLV/CHV.
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/=
i915/display/intel_dp.c
> > index 70e0b85442f9..e0f2e9236785 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -28,7 +28,6 @@
> >  #include <linux/export.h>
> >  #include <linux/i2c.h>
> >  #include <linux/notifier.h>
> > -#include <linux/reboot.h>
> >  #include <linux/slab.h>
> >  #include <linux/types.h>
> >  =

> > @@ -1191,41 +1190,6 @@ _pp_stat_reg(struct intel_dp *intel_dp)
> >  	return regs.pp_stat;
> >  }
> >  =

> > -/* Reboot notifier handler to shutdown panel power to guarantee T12 ti=
ming
> > -   This function only applicable when panel PM state is not to be trac=
ked */
> > -static int edp_notify_handler(struct notifier_block *this, unsigned lo=
ng code,
> > -			      void *unused)
> > -{
> > -	struct intel_dp *intel_dp =3D container_of(this, typeof(* intel_dp),
> > -						 edp_notifier);
> > -	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> > -	intel_wakeref_t wakeref;
> > -
> > -	if (!intel_dp_is_edp(intel_dp) || code !=3D SYS_RESTART)
> > -		return 0;
> > -
> > -	with_pps_lock(intel_dp, wakeref) {
> > -		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> > -			enum pipe pipe =3D vlv_power_sequencer_pipe(intel_dp);
> > -			i915_reg_t pp_ctrl_reg, pp_div_reg;
> > -			u32 pp_div;
> > -
> > -			pp_ctrl_reg =3D PP_CONTROL(pipe);
> > -			pp_div_reg  =3D PP_DIVISOR(pipe);
> > -			pp_div =3D intel_de_read(dev_priv, pp_div_reg);
> > -			pp_div &=3D PP_REFERENCE_DIVIDER_MASK;
> > -
> > -			/* 0x1F write to PP_DIV_REG sets max cycle delay */
> > -			intel_de_write(dev_priv, pp_div_reg, pp_div | 0x1F);
> > -			intel_de_write(dev_priv, pp_ctrl_reg,
> > -				       PANEL_UNLOCK_REGS);
> > -			msleep(intel_dp->panel_power_cycle_delay);
> > -		}
> > -	}
> > -
> > -	return 0;
> > -}
> > -
> >  static bool edp_have_panel_power(struct intel_dp *intel_dp)
> >  {
> >  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> > @@ -6690,11 +6654,6 @@ void intel_dp_encoder_flush_work(struct drm_enco=
der *encoder)
> >  		 */
> >  		with_pps_lock(intel_dp, wakeref)
> >  			edp_panel_vdd_off_sync(intel_dp);
> > -
> > -		if (intel_dp->edp_notifier.notifier_call) {
> > -			unregister_reboot_notifier(&intel_dp->edp_notifier);
> > -			intel_dp->edp_notifier.notifier_call =3D NULL;
> > -		}
> >  	}
> >  =

> >  	intel_dp_aux_fini(intel_dp);
> > @@ -6725,6 +6684,18 @@ void intel_dp_encoder_suspend(struct intel_encod=
er *intel_encoder)
> >  		edp_panel_vdd_off_sync(intel_dp);
> >  }
> >  =

> > +static void intel_dp_encoder_shutdown(struct intel_encoder *intel_enco=
der)
> > +{
> > +	struct intel_dp *intel_dp =3D enc_to_intel_dp(intel_encoder);
> > +	intel_wakeref_t wakeref;
> > +
> > +	if (!intel_dp_is_edp(intel_dp))
> > +		return;
> > +
> > +	with_pps_lock(intel_dp, wakeref)
> > +		wait_panel_power_cycle(intel_dp);
> > +}
> > +
> >  static void intel_edp_panel_vdd_sanitize(struct intel_dp *intel_dp)
> >  {
> >  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> > @@ -7838,9 +7809,6 @@ static bool intel_edp_init_connector(struct intel=
_dp *intel_dp,
> >  	mutex_unlock(&dev->mode_config.mutex);
> >  =

> >  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> > -		intel_dp->edp_notifier.notifier_call =3D edp_notify_handler;
> > -		register_reboot_notifier(&intel_dp->edp_notifier);
> > -
> >  		/*
> >  		 * Figure out the current pipe for the initial backlight setup.
> >  		 * If the current pipe isn't valid, try the PPS pipe, and if that
> > @@ -8061,6 +8029,8 @@ bool intel_dp_init(struct drm_i915_private *dev_p=
riv,
> >  	intel_encoder->get_config =3D intel_dp_get_config;
> >  	intel_encoder->update_pipe =3D intel_panel_update_backlight;
> >  	intel_encoder->suspend =3D intel_dp_encoder_suspend;
> > +	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> > +		intel_encoder->shutdown =3D intel_dp_encoder_shutdown;
> >  	if (IS_CHERRYVIEW(dev_priv)) {
> >  		intel_encoder->pre_pll_enable =3D chv_dp_pre_pll_enable;
> >  		intel_encoder->pre_enable =3D chv_pre_enable_dp;
> =

> -- =

> Jani Nikula, Intel Open Source Graphics Center

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
