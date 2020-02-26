Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF5D170C55
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 00:10:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C11666E288;
	Wed, 26 Feb 2020 23:10:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF72B6E288
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 23:10:11 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 15:10:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,489,1574150400"; d="scan'208";a="230586946"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga007.fm.intel.com with ESMTP; 26 Feb 2020 15:10:11 -0800
Date: Wed, 26 Feb 2020 15:10:11 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200226231011.GE3936367@mdroper-desk1.amr.corp.intel.com>
References: <20200201082834.10163-1-matthew.s.atwood@intel.com>
 <20200224223651.3801646-1-matthew.d.roper@intel.com>
 <4dbedbcb4202dc473038367129de1a5b1e5e9e17.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4dbedbcb4202dc473038367129de1a5b1e5e9e17.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/tgl: Add Wa_1606054188:tgl
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

On Wed, Feb 26, 2020 at 02:47:24PM -0800, Souza, Jose wrote:
> On Mon, 2020-02-24 at 14:36 -0800, Matt Roper wrote:
> > From: Matt Atwood <matthew.s.atwood@intel.com>
> > =

> > On Tiger Lake we do not support source keying in the pixel formats
> > P010,
> > P012, P016.
> > =

> > v2: Move WA to end of function. Create helper function for format
> > check. Less verbose debugging messaging.
> > =

> > v3: whitespace
> > =

> > v4(MattR):
> >  - Actually return EINVAL to reject this combination.
> >  - Pass format parameter as u32.
> >  - Make test TGL-specific for now.
> >  - Switch to per-device logging.
> >  - Shorten/simplify comment.
> =

> Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Applied to dinq.  Thanks for the review.


Matt

> =

> > =

> > Bspec: 52890
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_sprite.c | 21
> > +++++++++++++++++++++
> >  1 file changed, 21 insertions(+)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c
> > b/drivers/gpu/drm/i915/display/intel_sprite.c
> > index 7abeefe8dce5..dc7d3f3f4eb3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > @@ -2077,6 +2077,18 @@ vlv_sprite_check(struct intel_crtc_state
> > *crtc_state,
> >  	return 0;
> >  }
> >  =

> > +static bool intel_format_is_p01x(u32 format)
> > +{
> > +	switch (format) {
> > +	case DRM_FORMAT_P010:
> > +	case DRM_FORMAT_P012:
> > +	case DRM_FORMAT_P016:
> > +		return true;
> > +	default:
> > +		return false;
> > +	}
> > +}
> > +
> >  static int skl_plane_check_fb(const struct intel_crtc_state
> > *crtc_state,
> >  			      const struct intel_plane_state
> > *plane_state)
> >  {
> > @@ -2155,6 +2167,15 @@ static int skl_plane_check_fb(const struct
> > intel_crtc_state *crtc_state,
> >  		return -EINVAL;
> >  	}
> >  =

> > +	/* Wa_1606054188:tgl */
> > +	if (IS_TIGERLAKE(dev_priv) &&
> > +	    plane_state->ckey.flags & I915_SET_COLORKEY_SOURCE &&
> > +	    intel_format_is_p01x(fb->format->format)) {
> > +		drm_dbg_kms(&dev_priv->drm,
> > +			    "Source color keying not supported with
> > P01x formats\n");
> > +		return -EINVAL;
> > +	}
> > +
> >  	return 0;
> >  }
> >  =


-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
