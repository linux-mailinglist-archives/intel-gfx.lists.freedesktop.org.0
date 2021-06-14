Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6AE3A6BE2
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jun 2021 18:33:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3702E891A1;
	Mon, 14 Jun 2021 16:33:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A5B9891A1
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Jun 2021 16:33:33 +0000 (UTC)
IronPort-SDR: KU5/gCdn/28doqrL9Wb9qubEQdaO2rnPQM4g4DpUz1CBVeZvpAycuIf/xEzQiioe4VPupNmz4A
 Ei/TaVI/zxfA==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="202814177"
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="202814177"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 09:33:31 -0700
IronPort-SDR: oM5Db6Apj5F6pB26PaquVq+xNcIu6i1C/gp/deRKzinQ9Z7x+0Og1E87LGmlY8TsBSRHdajS2x
 do0Y0rflI2zg==
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="639390695"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 09:33:31 -0700
Date: Mon, 14 Jun 2021 09:33:30 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Surendrakumar Upadhyay,
 TejaskumarX" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Message-ID: <20210614163330.GJ951094@mdroper-desk1.amr.corp.intel.com>
References: <20210611143409.827727-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <YMOmDyjjhbiIIuZ5@intel.com>
 <SN6PR11MB342111E20D74739A5DE71CA9DF339@SN6PR11MB3421.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR11MB342111E20D74739A5DE71CA9DF339@SN6PR11MB3421.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen11: use ffs for minconfig
 slice/subslice
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

On Sat, Jun 12, 2021 at 09:55:02AM +0000, Surendrakumar Upadhyay, Tejaskuma=
rX wrote:
> =

> =

> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Sent: 11 June 2021 23:36
> > To: Surendrakumar Upadhyay, TejaskumarX
> > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen11: use ffs for minconfig
> > slice/subslice
> > =

> > On Fri, Jun 11, 2021 at 08:04:09PM +0530, Tejas Upadhyay wrote:
> > > w/a on gen11 platforms not working as expected and causing more harm
> > > on the RC6 flow. Because of subslice steering disturbance w/a read is
> > > failing. By using ffs we can default steering of slice/sublice to
> > > minconfig hence w/a will pass and any warns will go away.
> > >
> > > Fixes: fb899dd8ea9c ("drm/i915: Apply Wa_1406680159:icl,ehl as an
> > > engine workaround")
> > > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > Signed-off-by: Tejas Upadhyay
> > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 14 +++++++++++---
> > >  drivers/gpu/drm/i915/intel_pm.c             | 10 +++++++---
> > >  2 files changed, 18 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > index b62d1e31a645..68b14141088a 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > @@ -991,13 +991,21 @@ wa_init_mcr(struct drm_i915_private *i915,
> > struct i915_wa_list *wal)
> > >  		l3_en =3D ~0;
> > >  	}
> > >
> > > -	slice =3D fls(sseu->slice_mask) - 1;
> > > -	subslice =3D fls(l3_en & intel_sseu_get_subslices(sseu, slice));
> > > +	if (GRAPHICS_VER(i915) =3D=3D 11) {
> > > +		slice =3D ffs(sseu->slice_mask) - 1;
> > > +		subslice =3D ffs(l3_en & intel_sseu_get_subslices(sseu, slice));
> > > +	} else {
> > > +		slice =3D fls(sseu->slice_mask) - 1;
> > > +		subslice =3D fls(l3_en & intel_sseu_get_subslices(sseu, slice));
> > > +	}
> > >  	if (!subslice) {
> > >  		drm_warn(&i915->drm,
> > >  			 "No common index found between subslice mask %x
> > and L3 bank mask %x!\n",
> > >  			 intel_sseu_get_subslices(sseu, slice), l3_en);
> > > -		subslice =3D fls(l3_en);
> > > +		if (GRAPHICS_VER(i915) =3D=3D 11)
> > > +			subslice =3D ffs(l3_en);
> > > +		else
> > > +			subslice =3D fls(l3_en);
> > >  		drm_WARN_ON(&i915->drm, !subslice);
> > >  	}
> > >  	subslice--;
> > > diff --git a/drivers/gpu/drm/i915/intel_pm.c
> > > b/drivers/gpu/drm/i915/intel_pm.c index 45fefa0ed160..d1352ec3546a
> > > 100644
> > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > @@ -4049,9 +4049,13 @@ skl_ddb_entry_for_slices(struct
> > drm_i915_private *dev_priv, u8 slice_mask,
> > >  		ddb->end =3D 0;
> > >  		return;
> > >  	}
> > > -
> > > -	ddb->start =3D (ffs(slice_mask) - 1) * slice_size;
> > > -	ddb->end =3D fls(slice_mask) * slice_size;
> > > +	if (GRAPHICS_VER(dev_priv) =3D=3D 11) {
> > > +		ddb->start =3D (fls(slice_mask) - 1) * slice_size;
> > > +		ddb->end =3D ffs(slice_mask) * slice_size;
> > > +	} else {
> > > +		ddb->start =3D (ffs(slice_mask) - 1) * slice_size;
> > > +		ddb->end =3D fls(slice_mask) * slice_size;
> > > +	}
> > =

> > This code has nothing to do with GT slices.
> =

> Without this change we are observing "gem_exec_suspend (basic-s0)
> Starting subtest: basic-S0" test hangs and crash eventually. Thus
> change identified and added. Would you please help reviewing?
> =

> Also I am seeing ICL igt@kms_frontbuffer_tracking@fbc-suspend is
> seeing workaround(0x9524) lost warning after this patch while EHL and
> JSL are working fine. does someone has insight why that should be
>  the case? =


See the patch I sent last week:

        https://patchwork.freedesktop.org/series/91367/

and my response to the CI results here that explains the ICL behavior:

        https://lists.freedesktop.org/archives/intel-gfx/2021-June/269097.h=
tml

Basically the fact that we're trying to combine subslice steering and
l3bank steering into a single value prevents us from using the
minconfig, even after switching to ffs().  ICL has been broken all along
too and we just didn't notice because we were getting "lucky" and
reading back random garbage that happened to have a '1' in the relevant
bit.

The next platform that we're getting ready to start upstreaming soon
adds a bunch more types of multicast steering, so the right approach is
to extract some of the refactoring from that platform and apply it to
gen11+ l3bank ranges too.  Something along the lines of this series that
I sent to trybot:

        https://patchwork.freedesktop.org/series/91421/

although it looks like I've still got some bugs that need to be hammered
out before its ready.


Matt

> =

> Thanks,
> Tejas
> > =

> > >
> > >  	WARN_ON(ddb->start >=3D ddb->end);
> > >  	WARN_ON(ddb->end > INTEL_INFO(dev_priv)->dbuf.size);
> > > --
> > > 2.31.1
> > >
> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > =

> > --
> > Ville Syrj=E4l=E4
> > Intel
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

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
