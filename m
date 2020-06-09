Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D66BE1F44D4
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jun 2020 20:09:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 427E66E2E8;
	Tue,  9 Jun 2020 18:09:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F7D66E2E8
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jun 2020 18:09:02 +0000 (UTC)
IronPort-SDR: +oh6erHFs4OdhzZ0YeWOU+HBUAOYsywINfbXAKkOepo/O3Rw61WEUgLFq7UZrBVDIeIN9XPzsr
 plZp+NhHGGjQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2020 11:09:01 -0700
IronPort-SDR: ZkmWtFsbCvlbwrieHKVQpe/Bin7flDKmYHceOvvyE7CMOp4DYaqOZt93t6KERZn5keTVC4SYUZ
 UOlKQv1MtxaA==
X-IronPort-AV: E=Sophos;i="5.73,492,1583222400"; d="scan'208";a="270967724"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2020 11:09:00 -0700
Date: Tue, 9 Jun 2020 21:08:52 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200609180852.GI22647@ideak-desk.fi.intel.com>
References: <20200608181023.11503-1-imre.deak@intel.com>
 <20200609150525.GP6112@intel.com>
 <20200609174035.GG22647@ideak-desk.fi.intel.com>
 <20200609175923.GU6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609175923.GU6112@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix the i915_dsc_fec_support
 debugfs file for DP MST connectors
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 09, 2020 at 08:59:23PM +0300, Ville Syrj=E4l=E4 wrote:
> On Tue, Jun 09, 2020 at 08:40:35PM +0300, Imre Deak wrote:
> > On Tue, Jun 09, 2020 at 06:05:25PM +0300, Ville Syrj=E4l=E4 wrote:
> > > On Mon, Jun 08, 2020 at 09:10:23PM +0300, Imre Deak wrote:
> > > > DSC is not supported on DP MST streams so just return -EINVAL when
> > > > reading/writing the i915_dsc_fec_support debugfs file for such
> > > > connectors.
> > > > =

> > > > This also fixes an OOPS, caused by the encoder->digport cast, which=
 is
> > > > not valid for MST encoders.
> > > > =

> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >  .../drm/i915/display/intel_display_debugfs.c  | 36 +++++++++++++++=
----
> > > >  1 file changed, 29 insertions(+), 7 deletions(-)
> > > > =

> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b=
/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > > index 2b640d8ab9d2..ebca8e488d03 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > > @@ -2094,6 +2094,8 @@ static int i915_dsc_fec_support_show(struct s=
eq_file *m, void *data)
> > > >  	drm_modeset_acquire_init(&ctx, DRM_MODESET_ACQUIRE_INTERRUPTIBLE);
> > > >  =

> > > >  	do {
> > > > +		struct intel_encoder *encoder;
> > > > +
> > > >  		try_again =3D false;
> > > >  		ret =3D drm_modeset_lock(&dev->mode_config.connection_mutex,
> > > >  				       &ctx);
> > > > @@ -2120,8 +2122,17 @@ static int i915_dsc_fec_support_show(struct =
seq_file *m, void *data)
> > > >  		} else if (ret) {
> > > >  			break;
> > > >  		}
> > > > -		intel_dp =3D intel_attached_dp(to_intel_connector(connector));
> > > > +
> > > > +		encoder =3D intel_attached_encoder(to_intel_connector(connector)=
);
> > > > +		/* TODO: Add DSC support for MST streams */
> > > > +		if (encoder->type =3D=3D INTEL_OUTPUT_DP_MST) {
> > > > +			ret =3D -EINVAL;
> > > > +			break;
> > > > +		}
> > > > +
> > > > +		intel_dp =3D &enc_to_dig_port(encoder)->dp;
> > > >  		crtc_state =3D to_intel_crtc_state(crtc->state);
> > > > +
> > > >  		seq_printf(m, "DSC_Enabled: %s\n",
> > > >  			   yesno(crtc_state->dsc.compression_enable));
> > > >  		seq_printf(m, "DSC_Sink_Support: %s\n",
> > > > @@ -2147,9 +2158,8 @@ static ssize_t i915_dsc_fec_support_write(str=
uct file *file,
> > > >  	int ret;
> > > >  	struct drm_connector *connector =3D
> > > >  		((struct seq_file *)file->private_data)->private;
> > > > -	struct intel_encoder *encoder =3D intel_attached_encoder(to_intel=
_connector(connector));
> > > > -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> > > > -	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> > > > +	struct drm_i915_private *i915 =3D to_i915(connector->dev);
> > > > +	struct intel_encoder *encoder;
> > > >  =

> > > >  	if (len =3D=3D 0)
> > > >  		return 0;
> > > > @@ -2163,10 +2173,22 @@ static ssize_t i915_dsc_fec_support_write(s=
truct file *file,
> > > >  =

> > > >  	drm_dbg(&i915->drm, "Got %s for DSC Enable\n",
> > > >  		(dsc_enable) ? "true" : "false");
> > > > -	intel_dp->force_dsc_en =3D dsc_enable;
> > > >  =

> > > > -	*offp +=3D len;
> > > > -	return len;
> > > > +	drm_modeset_lock(&i915->drm.mode_config.connection_mutex, NULL);
> > > > +
> > > > +	encoder =3D intel_attached_encoder(to_intel_connector(connector));
> > > > +	/* TODO: Add DSC support for MST streams */
> > > > +	if (encoder->type =3D=3D INTEL_OUTPUT_DP_MST) {
> > > =

> > > The attached encoder can be NULL for MST.
> > =

> > Yes, I also sent v2 with that fixed.
> > =

> > > Can't we just not add this debugfs file for MST connectors?
> > =

> > Won't we have per MST connector DSC at one point? In that case we'd need
> > something like this anyway.
> =

> The problem is that it doesn't work until the encoder has been attached.
> So the behaviour of the interface would be rather inconsistent when
> applied to MST connectors. No idea what current tests are doing with
> this stuff so can't say whether it would be a problem in practice.

It's used to force DSC by writing to it before commit, so yes then it
wouldn't work anyway.

> > If this is never needed then yes, better not
> > to add it. I can't use connector_type which is the same for MST and SST
> > connectors so is it ok to differentiate based on a
> > intel_attached_encoder() =3D=3D NULL check?
> =

> IIRC some other places use connector.mst_port to tell the two
> apart.

Ok, will use that.

> =

> > =

> > > =

> > > > +		ret =3D -EINVAL;
> > > > +	} else {
> > > > +		enc_to_intel_dp(encoder)->force_dsc_en =3D dsc_enable;
> > > > +		*offp +=3D len;
> > > > +		ret =3D len;
> > > > +	}
> > > > +
> > > > +	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
> > > > +
> > > > +	return ret;
> > > >  }
> > > >  =

> > > >  static int i915_dsc_fec_support_open(struct inode *inode,
> > > > -- =

> > > > 2.23.1
> > > > =

> > > > _______________________________________________
> > > > Intel-gfx mailing list
> > > > Intel-gfx@lists.freedesktop.org
> > > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > > =

> > > -- =

> > > Ville Syrj=E4l=E4
> > > Intel
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
