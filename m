Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 235F8140DC2
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 16:23:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ED966F5E2;
	Fri, 17 Jan 2020 15:23:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 028736F5E2
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 15:23:50 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 07:23:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,330,1574150400"; d="scan'208";a="262640887"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 17 Jan 2020 07:23:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Jan 2020 17:23:48 +0200
Date: Fri, 17 Jan 2020 17:23:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200117152348.GS13686@intel.com>
References: <cover.1579270868.git.jani.nikula@intel.com>
 <4338a29e4ed49e69f859dff1490fd85f6ae6177e.1579270868.git.jani.nikula@intel.com>
 <20200117151238.GP13686@intel.com>
 <20200117151325.GQ13686@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117151325.GQ13686@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 8/9] drm/i915/bios: check port presence
 based on child device
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

On Fri, Jan 17, 2020 at 05:13:25PM +0200, Ville Syrj=E4l=E4 wrote:
> On Fri, Jan 17, 2020 at 05:12:38PM +0200, Ville Syrj=E4l=E4 wrote:
> > On Fri, Jan 17, 2020 at 04:29:28PM +0200, Jani Nikula wrote:
> > > Affects only two calls in output setup, and ddi init will check the
> > > features in more fine grained way.
> > > =

> > > This will make future changes easier.
> > > =

> > > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_bios.c | 4 +---
> > >  1 file changed, 1 insertion(+), 3 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/=
drm/i915/display/intel_bios.c
> > > index 4c69253739ec..70fb87e7afb6 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > > @@ -2236,9 +2236,7 @@ bool intel_bios_is_port_present(struct drm_i915=
_private *dev_priv, enum port por
> > >  		const struct ddi_vbt_port_info *port_info =3D
> > >  			&dev_priv->vbt.ddi_port_info[port];
> > >  =

> > > -		return port_info->supports_dp ||
> > > -		       port_info->supports_dvi ||
> > > -		       port_info->supports_hdmi;
> > > +		return port_info->child;
> > =

> > Pondering what happens if there's a non-DP/DVI/HDMI port declared in the
> > VBT... I guess those should not have their dvo port set to anything we
> > accept?
> =

> Umm, no. We accept DVO_PORT_CRT as PORT_E.

Maybe it doesn't matter though. Hopefully no VBT has that on skl+,
and on hsw/bdw the current CRT init code doesn't seem to care
what this says.

> =

> > =

> > >  	}
> > >  =

> > >  	/* FIXME maybe deal with port A as well? */
> > > -- =

> > > 2.20.1
> > > =

> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > =

> > -- =

> > Ville Syrj=E4l=E4
> > Intel
> =

> -- =

> Ville Syrj=E4l=E4
> Intel

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
