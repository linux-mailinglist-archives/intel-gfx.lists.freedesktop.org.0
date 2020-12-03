Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9291D2CDEFA
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Dec 2020 20:30:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FF096EBFD;
	Thu,  3 Dec 2020 19:30:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AA206EB95
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Dec 2020 19:30:24 +0000 (UTC)
IronPort-SDR: ct6rRJGsfQnLG14e9HFez8EdyRG9zuSMHc3KXhevoQbTtgMVVYNEbZsD/7mq8bRMqhUUwLnStW
 52HmtDbesXUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="257970390"
X-IronPort-AV: E=Sophos;i="5.78,390,1599548400"; d="scan'208";a="257970390"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 11:30:22 -0800
IronPort-SDR: BR4fBSczqC99VyOxLzLutWHbF8wKun4SYoqEt+r0JxqqahZO2mMyqpOeZXDdFZCvGAuDttxKx8
 eBAiqgLGeWpg==
X-IronPort-AV: E=Sophos;i="5.78,390,1599548400"; d="scan'208";a="336077987"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 11:30:22 -0800
Date: Thu, 3 Dec 2020 11:33:21 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20201203193321.GA2130@labuser-Z97X-UD5H>
References: <20201022222709.29386-1-manasi.d.navare@intel.com>
 <20201022222709.29386-11-manasi.d.navare@intel.com>
 <20201201225905.GE22644@labuser-Z97X-UD5H>
 <87im9ibzs8.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87im9ibzs8.fsf@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 10/11] drm/i915/display/vrr: Set
 IGNORE_MSA_PAR state in DP Sink
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

On Thu, Dec 03, 2020 at 06:49:27PM +0200, Jani Nikula wrote:
> On Tue, 01 Dec 2020, "Navare, Manasi" <manasi.d.navare@intel.com> wrote:
> > @Jani could you review this as well?
> =

> Okay, I'm going to cop out here and say that, while I don't see anything
> wrong here, I also didn't go through all the specs and verify this is
> the right place to do this stuff. Let's see the updated version first.

Actually the spec just says that before the link is up, source needs to set
this bit in DPCD so that the sink is ready to get the VRR timings and it kn=
ows
that the MSA timing can be ignored.

But yes will send out the updated rev today addressinga ll other review com=
ments.
Thanks again for all your feedback so far!

Manasi
> =

> BR,
> Jani.
> =

> >
> > Manasi
> >
> >
> > On Thu, Oct 22, 2020 at 03:27:08PM -0700, Manasi Navare wrote:
> >> If VRR is enabled, the sink should ignore MSA parameters
> >> and regenerate incoming video stream without depending
> >> on these parameters. Hence set the MSA_TIMING_PAR_IGNORE_EN
> >> bit if VRR is enabled.
> >> Reset this bit on VRR disable.
> >> =

> >> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> >> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_ddi.c | 25 ++++++++++++++++++++++++
> >>  1 file changed, 25 insertions(+)
> >> =

> >> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/dr=
m/i915/display/intel_ddi.c
> >> index 565155af3fb9..195449dfec1e 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> >> @@ -3322,6 +3322,22 @@ i915_reg_t dp_tp_status_reg(struct intel_encode=
r *encoder,
> >>  		return DP_TP_STATUS(encoder->port);
> >>  }
> >>  =

> >> +static void intel_dp_sink_set_msa_timing_par_ignore_state(struct inte=
l_dp *intel_dp,
> >> +							  const struct intel_crtc_state *crtc_state,
> >> +							  bool enable)
> >> +{
> >> +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> >> +
> >> +	if (!crtc_state->vrr.enable)
> >> +		return;
> >> +
> >> +	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DOWNSPREAD_CTRL,
> >> +			       enable ? DP_MSA_TIMING_PAR_IGNORE_EN : 0) <=3D 0)
> >> +		drm_dbg_kms(&i915->drm,
> >> +			    "Failed to set MSA_TIMING_PAR_IGNORE %s in the sink\n",
> >> +			    enable ? "enable" : "disable");
> >> +}
> >> +
> >>  static void intel_dp_sink_set_fec_ready(struct intel_dp *intel_dp,
> >>  					const struct intel_crtc_state *crtc_state)
> >>  {
> >> @@ -3493,6 +3509,12 @@ static void tgl_ddi_pre_enable_dp(struct intel_=
atomic_state *state,
> >>  	 */
> >>  	intel_dp_sink_set_fec_ready(intel_dp, crtc_state);
> >>  =

> >> +	/*
> >> +	 * Sink device should ignore MSA parameters and regenerate
> >> +	 * incoming video stream in case of VRR/Adaptive Sync
> >> +	 */
> >> +	intel_dp_sink_set_msa_timing_par_ignore_state(intel_dp, crtc_state, =
true);
> >> +
> >>  	/*
> >>  	 * 7.i Follow DisplayPort specification training sequence (see notes=
 for
> >>  	 *     failure handling)
> >> @@ -4089,6 +4111,9 @@ static void intel_disable_ddi_dp(struct intel_at=
omic_state *state,
> >>  	/* Disable the decompression in DP Sink */
> >>  	intel_dp_sink_set_decompression_state(intel_dp, old_crtc_state,
> >>  					      false);
> >> +	/* Disable Ignore_MSA bit in DP Sink */
> >> +	intel_dp_sink_set_msa_timing_par_ignore_state(intel_dp, old_crtc_sta=
te,
> >> +						      false);
> >>  }
> >>  =

> >>  static void intel_disable_ddi_hdmi(struct intel_atomic_state *state,
> >> -- =

> >> 2.19.1
> >> =

> =

> -- =

> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
