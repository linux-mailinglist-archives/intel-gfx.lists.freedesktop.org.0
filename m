Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFAC1FBBF9
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 18:42:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8AEB6E90B;
	Tue, 16 Jun 2020 16:42:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 442C86E90B
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 16:42:20 +0000 (UTC)
IronPort-SDR: Mt17zLsUJrW73qyybrLcau6WRyHBVGHiYyTPHIscoD6jpLr/9M7wApEsyv57Yx/Hyla3YOzhUI
 WPSz82p4E7jQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 09:42:19 -0700
IronPort-SDR: FXdRiY5/UEj7aRq6momWif1yB/JQXVIqADOtFocqhvy/PedUMbrd7sgXE9SUXv/gKKKCSu6BYM
 oTtymYzCizFQ==
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="449904153"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 09:42:18 -0700
Date: Tue, 16 Jun 2020 19:42:09 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200616164209.GD21389@ideak-desk.fi.intel.com>
References: <20200616141855.746-1-imre.deak@intel.com>
 <4c40d13cfdb9cfe4d59eb04f27828b597949c54e.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4c40d13cfdb9cfe4d59eb04f27828b597949c54e.camel@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/tgl+: Use the correct DP_TP_*
 register instances in MST encoders
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
Reply-To: imre.deak@intel.com
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 16, 2020 at 07:32:46PM +0300, Souza, Jose wrote:
> On Tue, 2020-06-16 at 17:18 +0300, Imre Deak wrote:
> > MST encoders must use the master MST transcoder's DP_TP_STATUS and
> > DP_TP_CONTROL registers. Atm, during the HW readout of a slave
> > transcoder's CRTC state we reset these register addresses in
> > intel_dp::regs.dp_tp_* to the slave transcoder's DP_TP_* register
> > addresses incorrectly; fix this.
> > =

> > This issue led at least to
> > 'Timed out waiting for ACT sent when disabling'
> > errors during output disabling in a multiple MST stream config.
> =

> Can you point to place where dp_tp_ctl is used and cause this?  All
> the MST code paths uses the dp_tp_ctl of the main intel_dp(the one
> that is not a mst connector).

During a slave stream disabling when waiting for the ACT sent flag for
that stream.

> =

> > =

> > This change replaces
> > https://patchwork.freedesktop.org/patch/369577/?series=3D78193&rev=3D1
> > which just papered over the problem.
> > =

> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 15 ++++++++++-----
> >  1 file changed, 10 insertions(+), 5 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm=
/i915/display/intel_ddi.c
> > index ca7bb2294d2b..73d6cc29291a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -4193,11 +4193,6 @@ void intel_ddi_get_config(struct intel_encoder *=
encoder,
> >  	if (drm_WARN_ON(&dev_priv->drm, transcoder_is_dsi(cpu_transcoder)))
> >  		return;
> >  =

> > -	if (INTEL_GEN(dev_priv) >=3D 12) {
> > -		intel_dp->regs.dp_tp_ctl =3D TGL_DP_TP_CTL(cpu_transcoder);
> > -		intel_dp->regs.dp_tp_status =3D TGL_DP_TP_STATUS(cpu_transcoder);
> > -	}
> > -
> >  	intel_dsc_get_config(encoder, pipe_config);
> >  =

> >  	temp =3D intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
> > @@ -4299,6 +4294,16 @@ void intel_ddi_get_config(struct intel_encoder *=
encoder,
> >  		break;
> >  	}
> >  =

> > +	if (INTEL_GEN(dev_priv) >=3D 12) {
> > +		enum transcoder transcoder =3D
> > +			intel_dp_mst_is_slave_trans(pipe_config) ?
> > +			pipe_config->mst_master_transcoder :
> > +			pipe_config->cpu_transcoder;
> > +
> > +		intel_dp->regs.dp_tp_ctl =3D TGL_DP_TP_CTL(transcoder);
> > +		intel_dp->regs.dp_tp_status =3D TGL_DP_TP_STATUS(transcoder);
> > +	}
> =

> Also not sure how change only in the config readout would fix the issue, =


After a modeset we'll verify the HW state. The readout for a slave
stream CRTC (get_pipe_config) running after the master CRTC's readout
will overwrite the dp_tp reg addresses. The other instance of dp_tp
register address init (in tgl_ddi_pre_enable_dp()) is correct.

> IFWI don't enable MST so when i915 takes over a full modeset will
> happen to enable MST and only dp_tp_ctl of the main intel_dp(the one
> that is not a mst connector) will be set, check
> tgl_ddi_pre_enable_dp().
> =

> > +
> >  	pipe_config->has_audio =3D
> >  		intel_ddi_is_audio_enabled(dev_priv, cpu_transcoder);
> >  =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
