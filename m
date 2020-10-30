Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 450AC2A0BA4
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 17:48:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98B1D6E9D3;
	Fri, 30 Oct 2020 16:48:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB25A6E9D3
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 16:48:18 +0000 (UTC)
IronPort-SDR: o2Ky03QEPJWTwVDZM9nPldOuD2tVgGtdA/jNJ6TwEQBCHFsRNWBZoLkCrakjuavDUJbpfEyJTi
 H5mK/T6+o+FA==
X-IronPort-AV: E=McAfee;i="6000,8403,9790"; a="253341711"
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="253341711"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 09:48:18 -0700
IronPort-SDR: 2YsNEcPc1oBUhfeogGql0GQ0/1Xv9rrO6KL1Gy+no9nmdtihDBfQkBVSRMIPtdJVg2C49e2JVw
 kOVW9Gffvx5A==
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="537123814"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 09:48:17 -0700
Date: Fri, 30 Oct 2020 18:48:12 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20201030164812.GC3811545@ideak-desk.fi.intel.com>
References: <20201028210712.66475-1-jose.souza@intel.com>
 <20201029161234.GA3795323@ideak-desk.fi.intel.com>
 <30dad4e376cecc8ba49cd3edd4045f192c83e79a.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <30dad4e376cecc8ba49cd3edd4045f192c83e79a.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Force initial atomic check in all
 eDP panels
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

On Fri, Oct 30, 2020 at 06:26:06PM +0200, Souza, Jose wrote:
> On Thu, 2020-10-29 at 18:12 +0200, Imre Deak wrote:
> > On Wed, Oct 28, 2020 at 02:07:12PM -0700, Jos=E9 Roberto de Souza wrote:
> > > After commit 00e5deb5c4f5 ("drm/i915: Fix encoder lookup during PSR
> > > atomic check") dig_port was not being used but while fixing it I
> > > realized that would be better to mark all CRTCs that has a eDP
> > > connector as needing to have their state computed.
> > > The principal reason is that in future we will support PSR in
> > > multiple panels.
> > > And this is only forcing the state compute if no register change is
> > > need our atomic handling will just ignore this CRTC + connector
> > > during the atomic commit phase.
> > > =

> > > Cc: Imre Deak <imre.deak@intel.com>
> > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > ---
> > > =A0drivers/gpu/drm/i915/display/intel_psr.c | 10 ++--------
> > > =A01 file changed, 2 insertions(+), 8 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/d=
rm/i915/display/intel_psr.c
> > > index 1576c3722d0b..b5441f0b5b58 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > @@ -1875,17 +1875,11 @@ void intel_psr_atomic_check(struct drm_connec=
tor *connector,
> > > =A0			    struct drm_connector_state *new_state)
> > > =A0{
> > > =A0	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
> > > -	struct intel_connector *intel_connector;
> > =

> > Arg, compiler didn't warn for this.
> > =

> > > -	struct intel_digital_port *dig_port;
> > > =A0	struct drm_crtc_state *crtc_state;
> > > =A0
> > > =

> > > =

> > > =

> > > =A0	if (!CAN_PSR(dev_priv) || !new_state->crtc ||
> > > -	    !dev_priv->psr.force_mode_changed)
> > > -		return;
> > > -
> > > -	intel_connector =3D to_intel_connector(connector);
> > > -	dig_port =3D enc_to_dig_port(to_intel_encoder(new_state->best_encod=
er));
> > > -	if (dev_priv->psr.dp !=3D &dig_port->dp)
> > > +	    !dev_priv->psr.force_mode_changed ||
> > > +	    connector->connector_type !=3D DRM_MODE_CONNECTOR_eDP)
> > > =A0		return;
> > =

> > Can't you simplify even more by an is_edp && CAN_PSR check in
> > intel_dp_initial_fastset_check() instead of the psr.force_mode_changed
> > logic?
> =

> In the past we ha problems forcing a modeset from the initial commit
> but with this new callback I guess it was fixed. =


Ok. Note that now a forced initial modeset can anyway happen due to
other reasons (DSC, wrong DP link rate). Also imo the only way to
guarantee enabling PSR (the purpose of psr.force_mode_changed afaiu) is
to do it in the initial modeset, (no subsequent modeset is guaranteed).

> I sent a test to try-bot, if that work we simply and remove some more
> code around it.

Ok.

> thanks for the headsup.

The fastset hook was just recently added, so thought it's better to have
all similar modeset forcing at one place. Btw, if
intel_pipe_config_compare() wouldn't show a mismatch for the PSR state
(I suppose it doesn't) then intel_crtc_check_fastset() will reset
mode_changed, so probably better to use connectors_changed.

--Imre
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
