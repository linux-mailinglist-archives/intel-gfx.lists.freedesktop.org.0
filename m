Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1367F3F822E
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 07:59:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A65D06E4F1;
	Thu, 26 Aug 2021 05:59:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEA3F6E4F1
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Aug 2021 05:59:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="239867092"
X-IronPort-AV: E=Sophos;i="5.84,352,1620716400"; d="scan'208";a="239867092"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 22:59:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,352,1620716400"; d="scan'208";a="598371283"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by fmsmga001.fm.intel.com with ESMTP; 25 Aug 2021 22:59:44 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 26 Aug 2021 06:59:43 +0100
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.010;
 Thu, 26 Aug 2021 11:29:42 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v2] drm/i915/dsi/xelpd: Add WA to program LP to HS wakeup
 guardband
Thread-Index: AQHXl9i3dqRtpcRWPkicLvm9xUF+YauD6XMAgAFlwwA=
Date: Thu, 26 Aug 2021 05:59:41 +0000
Message-ID: <dc4ddc0899954b76852d7308f617fb2c@intel.com>
References: <20210823032136.2564-2-vandita.kulkarni@intel.com>
 <20210823043837.24517-1-vandita.kulkarni@intel.com>
 <87ilztehwl.fsf@intel.com>
In-Reply-To: <87ilztehwl.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v2] drm/i915/dsi/xelpd: Add WA to program LP to HS
 wakeup guardband
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

Thanks for the review. Have fixed in the latest version, will merge once CI=
 is green.
> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Wednesday, August 25, 2021 7:38 PM
> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> Subject: Re: [v2] drm/i915/dsi/xelpd: Add WA to program LP to HS wakeup
> guardband
>=20
> On Mon, 23 Aug 2021, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
> > Wa_16012360555 SW will have to program the "LP to HS Wakeup
> Guardband"
> > field to account for the repeaters on the HS Request/Ready PPI
> > signaling between the Display engine and the DPHY.
> >
> > v2: Fix build issue.
> >
> > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/icl_dsi.c | 25
> +++++++++++++++++++++++++
> >  drivers/gpu/drm/i915/i915_reg.h        |  8 ++++++++
> >  2 files changed, 33 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index 43ec7fcd3f5d..b075defb88bb 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -1270,6 +1270,28 @@ static void icl_apply_kvmr_pipe_a_wa(struct
> intel_encoder *encoder,
> >  			     IGNORE_KVMR_PIPE_A,
> >  			     enable ? IGNORE_KVMR_PIPE_A : 0);  }
> > +
> > +/*
> > + * Wa_16012360555:ADLP
>=20
> It should be adl-p, i.e. lower case and with a hyphen.
>=20
> > + * SW will have to program the "LP to HS Wakeup Guardband"
> > + * field (bits 15:12) of register offset 0x6B0C0 (DSI0)
> > + * and 0x6B8C0 (DSI1) to a value of 4 to account for the repeaters
> > + * on the HS Request/Ready PPI signaling between
> > + * the Display engine and the DPHY.
> > + */
>=20
> I think that's a bit verbose for the comment. In particular the register
> addresses and bits and values are redundant with the code.
>=20
> > +static void adlp_set_lp_hs_wakeup_gb(struct intel_encoder *encoder) {
> > +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>=20
> i915 variable name is preferred for all new code.
>=20
> > +	struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
> > +	enum port port;
> > +
> > +	if (DISPLAY_VER(dev_priv) =3D=3D 13) {
> > +		for_each_dsi_port(port, intel_dsi->ports)
> > +			intel_de_rmw(dev_priv, TGL_DSI_CHKN_REG(port),
> > +				     TGL_DSI_CHKN_LSHS_GB, 0x4);
> > +	}
> > +}
> > +
> >  static void gen11_dsi_enable(struct intel_atomic_state *state,
> >  			     struct intel_encoder *encoder,
> >  			     const struct intel_crtc_state *crtc_state, @@ -
> 1283,6 +1305,9
> > @@ static void gen11_dsi_enable(struct intel_atomic_state *state,
> >  	/* Wa_1409054076:icl,jsl,ehl */
> >  	icl_apply_kvmr_pipe_a_wa(encoder, crtc->pipe, true);
> >
> > +	/* Wa_16012360555: adlp */
>=20
> No space after : and adl-p.
>=20
> > +	adlp_set_lp_hs_wakeup_gb(encoder);
> > +
> >  	/* step6d: enable dsi transcoder */
> >  	gen11_dsi_enable_transcoder(encoder);
> >
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index 72dd3a6d205d..4c90d45343d6
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -11614,6 +11614,14 @@ enum skl_power_gate {
> >  						    _ICL_DSI_IO_MODECTL_1)
> >  #define  COMBO_PHY_MODE_DSI				(1 << 0)
> >
> > +/* TGL DSI Chicken register */
> > +#define _TGL_DSI_CHKN_REG_0			0x6B0C0
> > +#define _TGL_DSI_CHKN_REG_1			0x6B8C0
> > +#define TGL_DSI_CHKN_REG(port)		_MMIO_PORT(port,	\
> > +						    _TGL_DSI_CHKN_REG_0, \
> > +						    _TGL_DSI_CHKN_REG_1)
> > +#define TGL_DSI_CHKN_LSHS_GB			(0xF << 12)
>=20
> Please use REG_GENMASK(15, 12)
>=20
> With the issues fixed,
>=20
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>=20
>=20
> > +
> >  /* Display Stream Splitter Control */
> >  #define DSS_CTL1				_MMIO(0x67400)
> >  #define  SPLITTER_ENABLE			(1 << 31)
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
