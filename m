Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E51152053
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 19:19:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 388106E8B3;
	Tue,  4 Feb 2020 18:19:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D85B6E8B3
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 18:19:13 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 10:19:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,402,1574150400"; d="scan'208";a="279136124"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 04 Feb 2020 10:19:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Feb 2020 20:19:10 +0200
Date: Tue, 4 Feb 2020 20:19:10 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200204181910.GD13686@intel.com>
References: <20200203225549.152301-1-jose.souza@intel.com>
 <20200204133505.GJ13686@intel.com>
 <0abaa6b7a8051e14e676f3c30343b14b3d315f65.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0abaa6b7a8051e14e676f3c30343b14b3d315f65.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Set
 TRANS_DDI_MODE_SELECT to default value when clearing DDI select
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 04, 2020 at 05:48:24PM +0000, Souza, Jose wrote:
> On Tue, 2020-02-04 at 15:35 +0200, Ville Syrj=E4l=E4 wrote:
> > On Mon, Feb 03, 2020 at 02:55:49PM -0800, Jos=E9 Roberto de Souza
> > wrote:
> > > TGL is suffering of timeouts and fifo underruns when disabling
> > > transcoder in MST mode, this is fixed by set TRANS_DDI_MODE_SELECT
> > > to
> > > 0(HDMI mode) when clearing DDI select.
> > > =

> > > Although BSpec disable sequence don't require this step, it is a
> > > harmless change and it is also done by Windows driver.
> > > Anyhow HW team was notified about that but it can take some time to
> > > documentation to be updated.
> > > =

> > > A case that always lead to those issues is:
> > > - do a modeset enabling pipe A and pipe B in the same MST stream
> > > leaving A as master
> > > - disable pipe A, promote B as master doing a full modeset in A
> > > - enable pipe A, changing the master transcoder back to A(doing a
> > > full modeset in B)
> > > - Pow: underruns and timeouts
> > > =

> > > The transcoders involved will only work again when complete
> > > disabled
> > > and their power wells turned off causing a reset in their
> > > registers.
> > > =

> > > v2: Setting TRANS_DDI_MODE_SELECT to default when clearing DDI
> > > select
> > > not anymore when disabling TRANS_DDI, both work but this one looks
> > > more safe. (Ville comment)
> > =

> > I presume this still fixes the issue?
> =

> It does.
> =

> > =

> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_ddi.c | 7 +++++--
> > >  1 file changed, 5 insertions(+), 2 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > index aa066fb9eb00..45082e71262c 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > @@ -1988,10 +1988,12 @@ void
> > > intel_ddi_disable_transcoder_func(const struct intel_crtc_state
> > > *crtc_state
> > >  	val &=3D ~TRANS_DDI_FUNC_ENABLE;
> > >  =

> > >  	if (INTEL_GEN(dev_priv) >=3D 12) {
> > > -		if (!intel_dp_mst_is_master_trans(crtc_state))
> > > +		if (!intel_dp_mst_is_master_trans(crtc_state)) {
> > >  			val &=3D ~TGL_TRANS_DDI_PORT_MASK;
> > > +			val &=3D ~TRANS_DDI_MODE_SELECT_MASK;
> > =

> > Two separate statements.
> > =

> > > +		}
> > >  	} else {
> > > -		val &=3D ~TRANS_DDI_PORT_MASK;
> > > +		val &=3D ~(TRANS_DDI_PORT_MASK |
> > > TRANS_DDI_MODE_SELECT_MASK);
> > =

> > One statement.
> =

> Here was the only place that fitted in 80 cols.

'\n' is a thing.

val &=3D ~(A |
         B);

> =

> > =

> > >  	}
> > >  	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder),
> > > val);
> > >  =

> > > @@ -3729,6 +3731,7 @@ static void intel_ddi_post_disable_dp(struct
> > > intel_encoder *encoder,
> > >  			val =3D intel_de_read(dev_priv,
> > >  					    TRANS_DDI_FUNC_CTL(cpu_tran
> > > scoder));
> > >  			val &=3D ~TGL_TRANS_DDI_PORT_MASK;
> > > +			val &=3D ~TRANS_DDI_MODE_SELECT_MASK;
> > =

> > Two again.
> > =

> > A bit inconsistent, otherwise lgtm.
> > =

> > Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Thanks
> =

> > =

> > >  			intel_de_write(dev_priv,
> > >  				       TRANS_DDI_FUNC_CTL(cpu_transcode
> > > r),
> > >  				       val);
> > > -- =

> > > 2.25.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
