Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1D843E2B9
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 15:53:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 834BF6E825;
	Thu, 28 Oct 2021 13:53:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B46846E825
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 13:53:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="293866870"
X-IronPort-AV: E=Sophos;i="5.87,190,1631602800"; d="scan'208";a="293866870"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 06:53:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,190,1631602800"; d="scan'208";a="530022710"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 28 Oct 2021 06:53:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 28 Oct 2021 06:53:26 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 28 Oct 2021 06:53:24 -0700
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.012;
 Thu, 28 Oct 2021 19:23:23 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Thread-Topic: [V2 3/4] drm/i915/dsi/xelpd: Disable DC states in Video mode
Thread-Index: AQHXxPv+qLhRm2uVvEqnftkbFXFa4qvfHxGAgAlcU3A=
Date: Thu, 28 Oct 2021 13:53:22 +0000
Message-ID: <def6b5da53104ee595a3d624cf1c6fd7@intel.com>
References: <20211019151435.20477-1-vandita.kulkarni@intel.com>
 <20211019151435.20477-4-vandita.kulkarni@intel.com>
 <20211022202305.GA1980572@ideak-desk.fi.intel.com>
In-Reply-To: <20211022202305.GA1980572@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [V2 3/4] drm/i915/dsi/xelpd: Disable DC states in
 Video mode
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

> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Saturday, October 23, 2021 1:53 AM
> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>=
;
> Roper, Matthew D <matthew.d.roper@intel.com>;
> ville.syrjala@linux.intel.com
> Subject: Re: [V2 3/4] drm/i915/dsi/xelpd: Disable DC states in Video mode
>=20
> On Tue, Oct 19, 2021 at 08:44:34PM +0530, Vandita Kulkarni wrote:
> > MIPI DSI transcoder cannot be in video mode to support any of the
> > display C states.
> >
> > Bspec: 49195 (For DC*co DSI transcoders cannot be in video mode)
> > Bspec: 49193 (Hardware does not support DC5 or DC6 with MIPI DSI
> > enabled)
> > Bspec: 49188 (desc of DSI_DCSTATE_CTL talks about cmd mode PM control
>=20
> So none of the DC states (except DC6v which the driver doesn't support) a=
re
> supported in DSI video mode and DC3co is supported in command mode.
> The selection between video vs. command mode happens using a VBT flag
> and I can't see anything that would prevent using command mode on XELPD.
> If the support for it is missing, should it be disabled explicitly or at =
least a
> notice printed that DC states are not yet supported?

Since we haven't enabled and tried dsi cmd mode on xelpd and in DC3co DMC
Would monitor the idleness of the transcoder, until that is enabled, we can=
 disable
Cmd mode for now.
Will send out a patch to disable cmd mode on xelpd, as it would by default =
depend on
Vbt like you have mentioned above.

Thanks,
Vandita
=20
>=20
> > v2: Align to the power domain ordering (Jani)
> >     Add bspec references (Imre)
> >
> > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_power.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index d88da0d0f05a..b989ddd3d023 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -3106,6 +3106,7 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_MODESET) |			\
> >  	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
> >  	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
> > +	BIT_ULL(POWER_DOMAIN_PORT_DSI) |		\
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> >
> >  #define XELPD_AUX_IO_D_XELPD_POWER_DOMAINS
> 	BIT_ULL(POWER_DOMAIN_AUX_D_XELPD)
> > --
> > 2.32.0
> >
