Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 080FA337ABD
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 18:25:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52C3F6EAA4;
	Thu, 11 Mar 2021 17:25:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A5AA6EAA4
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 17:25:23 +0000 (UTC)
IronPort-SDR: y+dxdro0VumrLIUx5m/QCObJUbBVKS3o8SvTIU7icIZAH8WVkxrv9J83gMFO3p+tRBA+NHNKul
 ZbTxsE3+knHA==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="168622065"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="168622065"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 09:25:22 -0800
IronPort-SDR: O7uPUrrDykMfKC1lKApLvuPFhFXYAjsEpBLeNvUl+CMQjNIS5DoFYC6W9dEMz4GINowLXaYVS4
 u7+VwjV/gVKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="510079193"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 11 Mar 2021 09:25:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Mar 2021 19:25:19 +0200
Date: Thu, 11 Mar 2021 19:25:19 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YEpSf48yqIGpF03V@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
 <20210310221736.2963264-2-imre.deak@intel.com>
 <YEo/qYrwyIeDx/+H@intel.com>
 <20210311165244.GD2970909@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210311165244.GD2970909@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 01/23] drm/i915: Fix rotation setup during
 plane HW readout
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

On Thu, Mar 11, 2021 at 06:52:44PM +0200, Imre Deak wrote:
> On Thu, Mar 11, 2021 at 06:04:57PM +0200, Ville Syrj=E4l=E4 wrote:
> > On Thu, Mar 11, 2021 at 12:17:14AM +0200, Imre Deak wrote:
> > > The HW plane state is cleared and inited after we store the rotation =
to
> > > it, so store it instead to the uapi state to match what we do with all
> > > other plane state until intel_plane_copy_uapi_to_hw_state() is called.
> > =

> > Feels a bit backwards. Ideally I'd like the readout to go the other way.
> > But given how this code is atm this is consistent with the rest.
> =

> Yes makes sense to read out to an i915 specific state first, if that's
> what you mean.
> =

> > Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Looks like we could also nuke the
> >  intel_state->uapi.src =3D drm_plane_state_src(plane_state);
> >  intel_state->uapi.dst =3D drm_plane_state_dest(plane_state);
> > since intel_plane_copy_uapi_to_hw_state() also does that for us.
> =

> Yes, though the fn name suggests that it only copies from uapi -> hw.

Well, uapi.{src,dst} is really hw.{src,dst} in disguise because we
couldn't convince people to do the proper state split in the core
and we didn't want to duplicate these in the hw state and leave the
ones in the "uapi" state totally unused. It's a mess :(

> =

> > > Rotation for initial FBs is not supported atm, but let's still fix the
> > > plane state setup here.
> > > =

> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
> > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/g=
pu/drm/i915/display/intel_display.c
> > > index 5bfc06c46e28..12b54e032bc1 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -2468,11 +2468,11 @@ intel_find_initial_plane_obj(struct intel_crt=
c *intel_crtc,
> > >  	return;
> > >  =

> > >  valid_fb:
> > > -	intel_state->hw.rotation =3D plane_config->rotation;
> > > +	plane_state->rotation =3D plane_config->rotation;
> > >  	intel_fill_fb_ggtt_view(&intel_state->view, fb,
> > > -				intel_state->hw.rotation);
> > > +				plane_state->rotation);
> > >  	intel_state->color_plane[0].stride =3D
> > > -		intel_fb_pitch(fb, 0, intel_state->hw.rotation);
> > > +		intel_fb_pitch(fb, 0, plane_state->rotation);
> > >  =

> > >  	__i915_vma_pin(vma);
> > >  	intel_state->vma =3D i915_vma_get(vma);
> > > -- =

> > > 2.25.1
> > > =

> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > =

> > -- =

> > Ville Syrj=E4l=E4
> > Intel

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
