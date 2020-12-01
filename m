Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F712CB058
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 23:44:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 066A46E932;
	Tue,  1 Dec 2020 22:44:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E4246E932
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 22:44:03 +0000 (UTC)
IronPort-SDR: uPqUW+a7weY9anEeREgElq38bYEZn0I1LUqwi8qVI4MkVKozP7SJMTSh0xnM00hTiE8NyClxNa
 ck8HXZBXvA8g==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="237048606"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="237048606"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 14:44:02 -0800
IronPort-SDR: jtzsaUnaW90+vsVMCBT/aIkOBACOrutOY5/MSy+hr/Lkt6jDST7/FX29MoUEyKuqY2mcRcRJPx
 62mT8KgWev0A==
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="335291040"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 14:44:02 -0800
Date: Tue, 1 Dec 2020 14:46:59 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20201201224652.GB22608@labuser-Z97X-UD5H>
References: <20201022222709.29386-1-manasi.d.navare@intel.com>
 <20201022222709.29386-4-manasi.d.navare@intel.com>
 <87tutxsddo.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87tutxsddo.fsf@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 03/11] drm/i915/display/dp: Attach and set
 drm connector VRR property
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

On Tue, Nov 10, 2020 at 12:41:07PM +0200, Jani Nikula wrote:
> On Thu, 22 Oct 2020, Manasi Navare <manasi.d.navare@intel.com> wrote:
> > From: Aditya Swarup <aditya.swarup@intel.com>
> >
> > This function sets the VRR property for connector based
> > on the platform support, EDID monitor range and DP sink
> > DPCD capability of outputing video without msa
> > timing information.
> >
> > v7:
> > * Move the helper to separate file (Manasi)
> > v6:
> > * Remove unset of prop
> > v5:
> > * Fix the vrr prop not being set in kernel (Manasi)
> > * Unset the prop on connector disconnect (Manasi)
> > v4:
> > * Rebase (Mansi)
> > v3:
> > * intel_dp_is_vrr_capable can be used for debugfs, make it
> > non static (Manasi)
> > v2:
> > * Just set this in intel_dp_get_modes instead of new hook (Jani)
> >
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++++
> >  drivers/gpu/drm/i915/display/intel_dp.h | 1 +
> >  2 files changed, 9 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/=
i915/display/intel_dp.c
> > index 818daab252f3..3794b8f35edc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -62,6 +62,7 @@
> >  #include "intel_sideband.h"
> >  #include "intel_tc.h"
> >  #include "intel_vdsc.h"
> > +#include "intel_vrr.h"
> >  =

> >  #define DP_DPRX_ESI_LEN 14
> >  =

> > @@ -6622,6 +6623,10 @@ static int intel_dp_get_modes(struct drm_connect=
or *connector)
> >  	edid =3D intel_connector->detect_edid;
> >  	if (edid) {
> >  		int ret =3D intel_connector_update_modes(connector, edid);
> > +
> > +		if (intel_is_vrr_capable(connector))
> > +			drm_connector_set_vrr_capable_property(connector,
> > +							       true);
> >  		if (ret)
> >  			return ret;
> >  	}
> > @@ -7080,6 +7085,9 @@ intel_dp_add_properties(struct intel_dp *intel_dp=
, struct drm_connector *connect
> >  		connector->state->scaling_mode =3D DRM_MODE_SCALE_ASPECT;
> >  =

> >  	}
> > +
> > +	if (INTEL_GEN(dev_priv) >=3D 12)
> =

> I wonder if we should just add a wrapper
> =

> #define HAS_VRR(i915) (INTEL_GEN(i915) >=3D 12)
> =

> to be more descriptive. And use it in the previous patch too.

Yea I like the idea of adding this wrapper in intel_vrr.c and have the plat=
form check in that
and then use that in intel_vrr_is_capable() ?

> =

> > +		drm_connector_attach_vrr_capable_property(connector);
> >  }
> >  =

> >  static void intel_dp_init_panel_power_timestamps(struct intel_dp *inte=
l_dp)
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/=
i915/display/intel_dp.h
> > index 3f862b4fd34f..aaf0a41582d7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > @@ -15,6 +15,7 @@ enum pipe;
> >  enum port;
> >  struct drm_connector_state;
> >  struct drm_encoder;
> > +struct drm_connector;
> =

> Unrelated change.

Yea I dont rem now why I added that here probably unrelated will remove

Manasi

> =

> >  struct drm_i915_private;
> >  struct drm_modeset_acquire_ctx;
> >  struct drm_dp_vsc_sdp;
> =

> -- =

> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
