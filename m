Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4BMHCh0wEGoaUwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 12:29:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 791185B21C3
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 12:29:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEF8210E1D9;
	Fri, 22 May 2026 10:29:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eX8wMRj+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C0D810E1D9;
 Fri, 22 May 2026 10:29:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779445785; x=1810981785;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=fMS1A/iD1uQbfbOfmjoWxWs9lpzqYP9T92jFlkZ2U+0=;
 b=eX8wMRj+HkKJ/e66D5Yk+gQdd5a7rjmP4ra5TxPY8M7ygYxFE9C8eadd
 Kd5lSjtoV1kT8UMQYxY6llYayCZCehwG1EsV6x2UTNeKpFfjUeSnOrg2R
 ZlUKX8BW8a2mNNUwG0p4Jh6IZVUrVhK/Aa5XGigu++eeeXnav2uQhGJGd
 00V4xne3P4DfZnZZCgSCmHaDyRuSKxuFnvThijO26UMHT+ja1vfwYjohP
 jKw/topjSnuRoUxhbMaYlwd0BS2Kz6hGXRmz2kcymUXrHMUxqDhyQPK96
 0lf9ovwc5XBgbDB4RnGM9KsJvv3aHQuvfVOxaP/GJTf3/RUQDy2vC9ZDu A==;
X-CSE-ConnectionGUID: cYl0kIZKRw+c5T4ck4UeRA==
X-CSE-MsgGUID: G+vPmFmRSKGwrzozeUrX5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="80427787"
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="80427787"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 03:29:45 -0700
X-CSE-ConnectionGUID: 5vE4l0/oTcq6wfjJePjHvQ==
X-CSE-MsgGUID: 6HQ7pncdTWq11n4fKUw79w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="245152258"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.1])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 03:29:42 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: imre.deak@intel.com, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Cc: Jouni Hogander <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/5] drm/i915/dp: Add helpers to reset link params
In-Reply-To: <ahAJPJUYbSRvWPQT@ideak-desk.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260518112427.2460725-1-imre.deak@intel.com>
 <20260518112427.2460725-2-imre.deak@intel.com>
 <ag962-z5WD8SVS9I@intel.com> <ahAJPJUYbSRvWPQT@ideak-desk.lan>
Date: Fri, 22 May 2026 13:29:39 +0300
Message-ID: <6b7498358483981472e9a9c6b0c76739de0b028a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 791185B21C3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 22 May 2026, Imre Deak <imre.deak@intel.com> wrote:
> On Fri, May 22, 2026 at 12:36:27AM +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
>> On Mon, May 18, 2026 at 02:24:22PM +0300, Imre Deak wrote:
>> > Add helpers to defer and handle link params resets instead of
>> > open-coding the same. Rename intel_dp_reset_link_params() to
>> > intel_dp_reset_link_params_force() to align its name with the new
>> > deferred reset helpers.
>> >=20
>> > When deferring a reset, return whether a new reset was queued, used by=
 a
>> > follow-up change.
>> >=20
>> > Signed-off-by: Imre Deak <imre.deak@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/g4x_dp.c         |  2 +-
>> >  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
>> >  drivers/gpu/drm/i915/display/intel_dp.c       | 41 +++++++++++++++----
>> >  drivers/gpu/drm/i915/display/intel_dp.h       |  3 +-
>> >  .../drm/i915/display/intel_dp_link_training.c |  4 +-
>> >  5 files changed, 38 insertions(+), 14 deletions(-)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i=
915/display/g4x_dp.c
>> > index 5ff1cdf4581a5..c20a97e21419b 100644
>> > --- a/drivers/gpu/drm/i915/display/g4x_dp.c
>> > +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
>> > @@ -1265,7 +1265,7 @@ static void intel_dp_encoder_reset(struct drm_en=
coder *encoder)
>> >=20=20
>> >  	intel_dp->DP =3D intel_de_read(display, intel_dp->output_reg);
>> >=20=20
>> > -	intel_dp->reset_link_params =3D true;
>> > +	intel_dp_reset_link_params_defer(intel_dp);
>> >  	intel_dp_invalidate_source_oui(intel_dp);
>> >=20=20
>> >  	if (display->platform.valleyview || display->platform.cherryview)
>> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/dr=
m/i915/display/intel_ddi.c
>> > index 86520848892e0..77819aaeccb76 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> > @@ -4664,7 +4664,7 @@ static void intel_ddi_encoder_reset(struct drm_e=
ncoder *encoder)
>> >  	struct intel_dp *intel_dp =3D enc_to_intel_dp(to_intel_encoder(encod=
er));
>> >  	struct intel_digital_port *dig_port =3D enc_to_dig_port(to_intel_enc=
oder(encoder));
>> >=20=20
>> > -	intel_dp->reset_link_params =3D true;
>> > +	intel_dp_reset_link_params_defer(intel_dp);
>> >  	intel_dp_invalidate_source_oui(intel_dp);
>> >=20=20
>> >  	intel_pps_encoder_reset(intel_dp);
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm=
/i915/display/intel_dp.c
>> > index 1920d2f026665..13163dd085e91 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> > @@ -3710,7 +3710,11 @@ void intel_dp_set_link_params(struct intel_dp *=
intel_dp,
>> >  	intel_dp->lane_count =3D lane_count;
>> >  }
>> >=20=20
>> > -void intel_dp_reset_link_params(struct intel_dp *intel_dp)
>> > +/*
>> > + * Reset link params now, preserving any deferred connector
>> > + * detect-time reset request.
>> > + */
>> > +void intel_dp_reset_link_params_force(struct intel_dp *intel_dp)
>> >  {
>> >  	intel_dp->link.max_lane_count =3D intel_dp_max_common_lane_count(int=
el_dp);
>> >  	intel_dp->link.max_rate =3D intel_dp_max_common_rate(intel_dp);
>> > @@ -3720,6 +3724,28 @@ void intel_dp_reset_link_params(struct intel_dp=
 *intel_dp)
>> >  	intel_dp->link.seq_train_failures =3D 0;
>> >  }
>> >=20=20
>> > +/*
>> > + * Reset link params during the next connector detect.
>> > + * Return %true if a new reset was queued.
>> > + */
>> > +bool intel_dp_reset_link_params_defer(struct intel_dp *intel_dp)
>>=20
>> I find the intel_dp_reset_link_params_defer() vs.
>> intel_dp_reset_link_params_force() naming rather confusing.
>>=20
>> Can't immediately think of a really good name for
>> intel_dp_reset_link_params_defer() so maybe it's better to not
>> have a function for it at all (ie. just drop this patch)?
>
> The idea was to have an interface to reset the link params directly or
> in a deferred way, instead of a direct access of the flag.
>
> The names are not great yes. I could use what Jouni suggested instead,
> or if the above argument is not good enough I can also drop this patch.

I suggest intel_dp_reset_link_params() keeps its name, or gets renamed
to intel_dp_link_params_reset(). It just does the thing, no "force".

Then the other two use something like:

- submit/process
- queue/process
- stage/handle

or some combination i.e. something like:

intel_dp_link_params_reset()
intel_dp_link_params_reset_submit()
intel_dp_link_params_reset_process()

BR,
Jani.

>
>> Then you at least see that it's just setting the flag. AFAICS you only
>> have a single place (in the last patch) that uses this return value
>> for anything, so could just do the check+set dance there on the spot.
>
>>=20
>> > +{
>> > +	bool reset_was_pending =3D intel_dp->reset_link_params;
>> > +
>> > +	intel_dp->reset_link_params =3D true;
>> > +
>> > +	return !reset_was_pending;
>> > +}
>> > +
>> > +static void intel_dp_handle_deferred_link_params_reset(struct intel_d=
p *intel_dp)
>> > +{
>> > +	if (!intel_dp->reset_link_params)
>> > +		return;
>> > +
>> > +	intel_dp->reset_link_params =3D false;
>> > +	intel_dp_reset_link_params_force(intel_dp);
>> > +}
>> > +
>> >  /* Enable backlight PWM and backlight PP control. */
>> >  void intel_edp_backlight_on(const struct intel_crtc_state *crtc_state,
>> >  			    const struct drm_connector_state *conn_state)
>> > @@ -4066,7 +4092,7 @@ void intel_dp_sync_state(struct intel_encoder *e=
ncoder,
>> >  	intel_dp_tunnel_resume(intel_dp, crtc_state, dpcd_updated);
>> >=20=20
>> >  	if (crtc_state) {
>> > -		intel_dp_reset_link_params(intel_dp);
>> > +		intel_dp_reset_link_params_force(intel_dp);
>> >  		intel_dp_set_link_params(intel_dp, crtc_state->port_clock, crtc_sta=
te->lane_count);
>> >  		intel_dp->link.active =3D true;
>> >  	}
>> > @@ -6487,10 +6513,7 @@ intel_dp_detect(struct drm_connector *_connecto=
r,
>> >=20=20
>> >  	intel_dp_detect_sdp_caps(intel_dp);
>> >=20=20
>> > -	if (intel_dp->reset_link_params) {
>> > -		intel_dp_reset_link_params(intel_dp);
>> > -		intel_dp->reset_link_params =3D false;
>> > -	}
>> > +	intel_dp_handle_deferred_link_params_reset(intel_dp);
>> >=20=20
>> >  	intel_dp_mst_configure(intel_dp);
>> >=20=20
>> > @@ -6944,7 +6967,7 @@ intel_dp_hpd_pulse(struct intel_digital_port *di=
g_port, bool long_hpd)
>> >=20=20
>> >  		intel_dp_read_dprx_caps(intel_dp, dpcd);
>> >=20=20
>> > -		intel_dp->reset_link_params =3D true;
>> > +		intel_dp_reset_link_params_defer(intel_dp);
>> >  		intel_dp_invalidate_source_oui(intel_dp);
>> >=20=20
>> >  		return IRQ_NONE;
>> > @@ -7252,7 +7275,7 @@ intel_dp_init_connector(struct intel_digital_por=
t *dig_port,
>> >  		     encoder->base.name))
>> >  		return false;
>> >=20=20
>> > -	intel_dp->reset_link_params =3D true;
>> > +	intel_dp_reset_link_params_defer(intel_dp);
>> >=20=20
>> >  	/* Preserve the current hw state. */
>> >  	intel_dp->DP =3D intel_de_read(display, intel_dp->output_reg);
>> > @@ -7317,7 +7340,7 @@ intel_dp_init_connector(struct intel_digital_por=
t *dig_port,
>> >=20=20
>> >  	intel_dp_set_source_rates(intel_dp);
>> >  	intel_dp_set_common_rates(intel_dp);
>> > -	intel_dp_reset_link_params(intel_dp);
>> > +	intel_dp_reset_link_params_force(intel_dp);
>> >=20=20
>> >  	/* init MST on ports that can support it */
>> >  	intel_dp_mst_encoder_init(dig_port, connector->base.base.id);
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm=
/i915/display/intel_dp.h
>> > index f41480d247142..7c24d3dbb6983 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> > @@ -114,7 +114,8 @@ int intel_dp_rate_index(const int *rates, int len,=
 int rate);
>> >  int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_ra=
te, int lane_count);
>> >  void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int=
 *link_rate, int *lane_count);
>> >  void intel_dp_update_sink_caps(struct intel_dp *intel_dp);
>> > -void intel_dp_reset_link_params(struct intel_dp *intel_dp);
>> > +void intel_dp_reset_link_params_force(struct intel_dp *intel_dp);
>> > +bool intel_dp_reset_link_params_defer(struct intel_dp *intel_dp);
>> >=20=20
>> >  void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
>> >  			   u8 *link_bw, u8 *rate_select);
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/d=
rivers/gpu/drm/i915/display/intel_dp_link_training.c
>> > index a26094223f780..b7075060e7bd3 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> > @@ -1935,7 +1935,7 @@ static ssize_t i915_dp_force_link_rate_write(str=
uct file *file,
>> >  	if (err)
>> >  		return err;
>> >=20=20
>> > -	intel_dp_reset_link_params(intel_dp);
>> > +	intel_dp_reset_link_params_force(intel_dp);
>> >  	intel_dp->link.force_rate =3D rate;
>> >=20=20
>> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
>> > @@ -2037,7 +2037,7 @@ static ssize_t i915_dp_force_lane_count_write(st=
ruct file *file,
>> >  	if (err)
>> >  		return err;
>> >=20=20
>> > -	intel_dp_reset_link_params(intel_dp);
>> > +	intel_dp_reset_link_params_force(intel_dp);
>> >  	intel_dp->link.force_lane_count =3D lane_count;
>> >=20=20
>> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
>> > --=20
>> > 2.49.1
>>=20
>> --=20
>> Ville Syrj=C3=A4l=C3=A4
>> Intel

--=20
Jani Nikula, Intel
