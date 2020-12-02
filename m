Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0ABA2CC9AF
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 23:37:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 675A66EB1C;
	Wed,  2 Dec 2020 22:37:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C4E16EB1C
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Dec 2020 22:37:34 +0000 (UTC)
IronPort-SDR: 5VGUObVp5mYd6KH1XrrqhzqUXbEgsYz2NLK8m4lAz8SHUqPzJcMGSe4xc9kjo5T7a30BNzQ0S3
 /zhvmMB4rXcA==
X-IronPort-AV: E=McAfee;i="6000,8403,9823"; a="237222826"
X-IronPort-AV: E=Sophos;i="5.78,388,1599548400"; d="scan'208";a="237222826"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2020 14:37:33 -0800
IronPort-SDR: NefAELCxyMl+s30A7WVVGAlQ04qNl7xVj1qtapA5u3fpnO0oPxEVERhVx88HY+mg1lnn5tUD2h
 GjLwxRI8ffMQ==
X-IronPort-AV: E=Sophos;i="5.78,388,1599548400"; d="scan'208";a="373664358"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2020 14:37:32 -0800
Date: Wed, 2 Dec 2020 14:40:31 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20201202224030.GB26911@labuser-Z97X-UD5H>
References: <20201022222709.29386-1-manasi.d.navare@intel.com>
 <20201022222709.29386-3-manasi.d.navare@intel.com>
 <87wnytsdgz.fsf@intel.com>
 <20201201222148.GA21862@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201201222148.GA21862@labuser-Z97X-UD5H>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 02/11] drm/i915/display/vrr: Create VRR file
 and add VRR capability check
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

On Tue, Dec 01, 2020 at 02:21:56PM -0800, Navare, Manasi wrote:
> On Tue, Nov 10, 2020 at 12:39:08PM +0200, Jani Nikula wrote:
> > On Thu, 22 Oct 2020, Manasi Navare <manasi.d.navare@intel.com> wrote:
> > > We create a new file for all VRR related helpers.
> > > Also add a function to check vrr capability based on
> > > platform support, DPCD bits and EDID monitor range.
> > >
> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/Makefile            |  1 +
> > >  drivers/gpu/drm/i915/display/intel_vrr.c | 28 ++++++++++++++++++++++=
++
> > >  drivers/gpu/drm/i915/display/intel_vrr.h | 19 ++++++++++++++++
> > >  3 files changed, 48 insertions(+)
> > >  create mode 100644 drivers/gpu/drm/i915/display/intel_vrr.c
> > >  create mode 100644 drivers/gpu/drm/i915/display/intel_vrr.h
> > >
> > > diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Mak=
efile
> > > index e5574e506a5c..3beeaf517191 100644
> > > --- a/drivers/gpu/drm/i915/Makefile
> > > +++ b/drivers/gpu/drm/i915/Makefile
> > > @@ -249,6 +249,7 @@ i915-y +=3D \
> > >  	display/intel_sdvo.o \
> > >  	display/intel_tv.o \
> > >  	display/intel_vdsc.o \
> > > +	display/intel_vrr.o \
> > >  	display/vlv_dsi.o \
> > >  	display/vlv_dsi_pll.o
> > >  =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/d=
rm/i915/display/intel_vrr.c
> > > new file mode 100644
> > > index 000000000000..0c8a91fabb64
> > > --- /dev/null
> > > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > > @@ -0,0 +1,28 @@
> > > +/* SPDX-License-Identifier: MIT */
> > > +/*
> > > + * Copyright =A9 2020 Intel Corporation
> > > + *
> > > + * Author: Manasi Navare <manasi.d.navare@intel.com>
> > =

> > I have increasingly mixed feelings about adding author lines in files in
> > big collaborative projects. They tend to go out of date fairly quickly,
> > and will cease to represent the contributions fairly. And git already
> > gives us this information.
> =

> Thanks Jani, yes will remove the author name then.
> =

> > =

> > > + */
> > > +
> > > +#include "i915_drv.h"
> > > +#include "intel_display_types.h"
> > > +#include "intel_vrr.h"
> > > +
> > > +bool intel_is_vrr_capable(struct drm_connector *connector)
> > =

> > Please prefix with intel_vrr_ consistently.
> =

> Will do, and change this to intel_vrr_is_capable()
> =

> > =

> > > +{
> > > +	struct intel_dp *intel_dp =3D intel_attached_dp(to_intel_connector(=
connector));
> > =

> > I kind of feel like either the function should a) ensure it's okay to do
> > intel_attached_dp() and return false if not, or b) just use struct
> > intel_dp as the parameter.
> > =

> > As it is, passing a non-dp connector to this function will fail either
> > subtly or spectacularly, but not graciously.

Actually after doing some code rewriting, I think it is best to still pass
the drm connector but I am adding the check now for connector type
Only if its eDP or DP now I get the intel_dp.
Future we can add HDMI there as well.

Manasi

> =

> Yes I agree here. I think passing intel_dp is a good idea as anyway this =
function
> is currently only called from intel_dp specific functions and after brain=
storming a bit
> on how this will look for the VRR on native HDMI, it will likely require =
its own helpers.
> So infact I was thinking of even renaming this as intel_vrr_is_capable_dp=
() and send intel_dp to it
> and then intel_vrr_is_capable_hdmi() can be added later.
> What do you think?
> =

> > =

> > > +	const struct drm_display_info *info =3D &connector->display_info;
> > > +	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
> > =

> > Please use i915 over dev_priv in all new code.
> =

> Okay
> =

> > =

> > > +
> > > +	/*
> > > +	 * DP Sink is capable of Variable refresh video timings if
> > > +	 * Ignore MSA bit is set in DPCD.
> > > +	 * EDID monitor range also should be atleast 10 for reasonable
> > > +	 * Adaptive sync/ VRR end user experience.
> > > +	 */
> > =

> > Please fix typos etc.
> =

> Did I miss some typos, I dont see any in the above comment?
> =

> > =

> > > +	return INTEL_GEN(dev_priv) >=3D 12 &&
> > > +		drm_dp_sink_can_do_video_without_timing_msa(intel_dp->dpcd) &&
> > > +		info->monitor_range.max_vfreq - info->monitor_range.min_vfreq > 10;
> > > +}
> > > +
> > > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/d=
rm/i915/display/intel_vrr.h
> > > new file mode 100644
> > > index 000000000000..755746c7525c
> > > --- /dev/null
> > > +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> > > @@ -0,0 +1,19 @@
> > > +/* SPDX-License-Identifier: MIT */
> > > +/*
> > > + * Copyright =A9 2019 Intel Corporation
> > > +*/
> > > +
> > > +#ifndef __INTEL_VRR_H__
> > > +#define __INTEL_VRR_H__
> > > +
> > > +#include <linux/types.h>
> > > +
> > > +struct drm_connector;
> > =

> > All of the below declarations are unnecessary at this commit.
> =

> Yes will add them in the next commits as I add the next functions, got it.
> =

> Regards
> Manasi
> =

> > =

> > BR,
> > Jani.
> > =

> > > +struct drm_i915_private;
> > > +struct intel_crtc_state;
> > > +struct intel_encoder;
> > > +struct intel_dp;
> > > +
> > > +bool intel_is_vrr_capable(struct drm_connector *connector);
> > > +
> > > +#endif /* __INTEL_VRR_H__ */
> > =

> > -- =

> > Jani Nikula, Intel Open Source Graphics Center
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
