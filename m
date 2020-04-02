Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2617119C34C
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 15:55:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8666F6EA91;
	Thu,  2 Apr 2020 13:55:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6EE66EA91
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 13:55:47 +0000 (UTC)
IronPort-SDR: 8TCqlV5n318BdCdEZgd/lCgQNvmmbN+MwbteljYO4my7gyzDtB3txAGsCcui7XDfvpXtso6Q/r
 uU2zPcRonhkw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 06:55:47 -0700
IronPort-SDR: QpRiOmXF7M4p95M5VJ5oKWI7rAnmH/bS+zGN7dIRMX6+QYDK2STssBg59MrJ4r3YYZfPHqj3nT
 7iFb2iNM30Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,335,1580803200"; d="scan'208";a="253000420"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 02 Apr 2020 06:55:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Apr 2020 16:55:44 +0300
Date: Thu, 2 Apr 2020 16:55:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20200402135543.GX13686@intel.com>
References: <20200212161738.28141-1-ville.syrjala@linux.intel.com>
 <20200212161738.28141-2-ville.syrjala@linux.intel.com>
 <87lfp7vgyw.fsf@intel.com> <20200401224825.GA14274@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401224825.GA14274@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 1/8] drm/i915: Parametrize PFIT_PIPE
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

On Wed, Apr 01, 2020 at 03:48:26PM -0700, Manasi Navare wrote:
> On Wed, Feb 12, 2020 at 07:43:51PM +0200, Jani Nikula wrote:
> > On Wed, 12 Feb 2020, Ville Syrjala <ville.syrjala@linux.intel.com> wrot=
e:
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >
> > > Make the PFIT_PIPE stuff less ugly via parametrization.
> > >
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_panel.c | 3 +--
> > >  drivers/gpu/drm/i915/i915_reg.h            | 1 +
> > >  2 files changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu=
/drm/i915/display/intel_panel.c
> > > index cba2f1c2557f..8b0730f4c442 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_panel.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> > > @@ -434,8 +434,7 @@ void intel_gmch_panel_fitting(struct intel_crtc *=
intel_crtc,
> > >  	/* 965+ wants fuzzy fitting */
> > >  	/* FIXME: handle multiple panels by failing gracefully */
> > >  	if (INTEL_GEN(dev_priv) >=3D 4)
> > > -		pfit_control |=3D ((intel_crtc->pipe << PFIT_PIPE_SHIFT) |
> > > -				 PFIT_FILTER_FUZZY);
> > > +		pfit_control |=3D PFIT_PIPE(intel_crtc->pipe) | PFIT_FILTER_FUZZY;
> > >  =

> > >  out:
> > >  	if ((pfit_control & PFIT_ENABLE) =3D=3D 0) {
> > > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i=
915_reg.h
> > > index b09c1d6dc0aa..faf8945a51b0 100644
> > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > @@ -4928,6 +4928,7 @@ enum {
> > >  #define   PFIT_ENABLE		(1 << 31)
> > >  #define   PFIT_PIPE_MASK	(3 << 29)
> > >  #define   PFIT_PIPE_SHIFT	29
> > > +#define   PFIT_PIPE(pipe)	((pipe) << 29)
> > =

> > This is fine, but might have as well defined this in terms of
> > REG_FIELD_PREP. I especially like it for parametrized stuff because it
> > ensures we don't flood the value outside the field.
> > =

> > Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> =

> Was just reviewing this series and noticed that Jani had suggested using
> REG_FIELD_PREP stuff here, are you going to change that Ville?

IIRC I already pushed this.

> =

> Looks good otherwise
> =

> Manasi
> > =

> > >  #define   VERT_INTERP_DISABLE	(0 << 10)
> > >  #define   VERT_INTERP_BILINEAR	(1 << 10)
> > >  #define   VERT_INTERP_MASK	(3 << 10)
> > =

> > -- =

> > Jani Nikula, Intel Open Source Graphics Center
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
