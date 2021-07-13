Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5413C7589
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 19:08:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9CC96E101;
	Tue, 13 Jul 2021 17:08:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A2956E101
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 17:08:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="197482503"
X-IronPort-AV: E=Sophos;i="5.84,236,1620716400"; d="scan'208";a="197482503"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 10:08:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,236,1620716400"; d="scan'208";a="413016820"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 13 Jul 2021 10:08:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 13 Jul 2021 10:08:08 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 13 Jul 2021 10:08:07 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2242.010;
 Tue, 13 Jul 2021 10:08:07 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH v2 09/12] drm/i915/rkl: Use revid->stepping tables
Thread-Index: AQHXdTzyD5PK7slfukuTzErbnG022Ks/9UIQgAB31ICAALul0A==
Date: Tue, 13 Jul 2021 17:08:07 +0000
Message-ID: <e694fe15679f46a29b1179f69c77e7bb@intel.com>
References: <20210710033724.2459367-1-matthew.d.roper@intel.com>
 <20210710033724.2459367-10-matthew.d.roper@intel.com>
 <b19ae95f585e4efdab230d9f83be4a8e@intel.com>
 <20210712225611.GE951094@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20210712225611.GE951094@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 09/12] drm/i915/rkl: Use revid->stepping
 tables
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Monday, July 12, 2021 3:56 PM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH v2 09/12] drm/i915/rkl: Use revid->stepping tables
> 
> On Mon, Jul 12, 2021 at 03:51:15PM -0700, Srivatsa, Anusha wrote:
> >
> >
> > > -----Original Message-----
> > > From: Roper, Matthew D <matthew.d.roper@intel.com>
> > > Sent: Friday, July 9, 2021 8:37 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: Srivatsa, Anusha <anusha.srivatsa@intel.com>; Roper, Matthew D
> > > <matthew.d.roper@intel.com>
> > > Subject: [PATCH v2 09/12] drm/i915/rkl: Use revid->stepping tables
> > >
> > > Switch RKL to use a revid->stepping table as we're trying to do on
> > > all platforms going forward.
> > >
> > > Bspec: 44501
> > > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> > > ---
> > >  drivers/gpu/drm/i915/display/intel_psr.c | 4 ++--
> > >  drivers/gpu/drm/i915/i915_drv.h          | 8 ++------
> > >  drivers/gpu/drm/i915/intel_step.c        | 9 +++++++++
> > >  3 files changed, 13 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > > b/drivers/gpu/drm/i915/display/intel_psr.c
> > > index 9643624fe160..74b2aa3c2946 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > @@ -594,7 +594,7 @@ static void hsw_activate_psr2(struct intel_dp
> > > *intel_dp)
> > >  	if (intel_dp->psr.psr2_sel_fetch_enabled) {
> > >  		/* WA 1408330847 */
> > >  		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0) ||
> > > -		    IS_RKL_REVID(dev_priv, RKL_REVID_A0, RKL_REVID_A0))
> > > +		    IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0))
> > >  			intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
> > >  				     DIS_RAM_BYPASS_PSR2_MAN_TRACK,
> > >  				     DIS_RAM_BYPASS_PSR2_MAN_TRACK);
> @@ -1342,7 +1342,7 @@
> > > static void intel_psr_disable_locked(struct intel_dp
> > > *intel_dp)
> > >  	/* WA 1408330847 */
> > >  	if (intel_dp->psr.psr2_sel_fetch_enabled &&
> > >  	    (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0) ||
> > > -	     IS_RKL_REVID(dev_priv, RKL_REVID_A0, RKL_REVID_A0)))
> > > +	     IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0)))
> > >  		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
> > >  			     DIS_RAM_BYPASS_PSR2_MAN_TRACK, 0);
> > >
> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > > b/drivers/gpu/drm/i915/i915_drv.h index b3ce2b73a143..9195131cf90f
> > > 100644
> > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > @@ -1549,12 +1549,8 @@ IS_SUBPLATFORM(const struct
> drm_i915_private
> > > *i915,
> > >  	(IS_TIGERLAKE(__i915) && !(IS_TGL_U(__i915) || IS_TGL_Y(__i915))
> > > && \
> > >  	 IS_GT_STEP(__i915, since, until))
> > >
> > > -#define RKL_REVID_A0		0x0
> > > -#define RKL_REVID_B0		0x1
> > > -#define RKL_REVID_C0		0x4
> > > -
> > > -#define IS_RKL_REVID(p, since, until) \
> > > -	(IS_ROCKETLAKE(p) && IS_REVID(p, since, until))
> > > +#define IS_RKL_DISPLAY_STEP(p, since, until) \
> > > +	(IS_ROCKETLAKE(p) && IS_DISPLAY_STEP(p, since, until))
> > >
> >
> > If a platform has the same gt and display stepping, I wonder if we
> > should stick to using IS_<PLATFORM>_GT_STEP while replacing
> > IS<PLATFORM>_REVID instances. The previous patches have
> > IS_<PLATFORMS>_GT_STEP.
> > Just a thought.
> 
> No, we want to be very explicit about which IP block the stepping belongs to
> to avoid mistakes.  Just because the steppings are equivalent right now
> doesn't mean a new revision won't show up in the future that has different
> GT vs display steppings.  In that case it's easy to update the table, but we
> don't want to have to dig through the rest of the code looking for places
> where we used the wrong macro.  Plus, intentionally using the wrong macro
> on a platform where it doesn't matter is going to lead to copy/paste errors
> when people add additional platforms to a workaround.
> 
> 
> Matt
> 
> >
> > Anusha
> >
> > >  #define DG1_REVID_A0		0x0
> > >  #define DG1_REVID_B0		0x1
> > > diff --git a/drivers/gpu/drm/i915/intel_step.c
> > > b/drivers/gpu/drm/i915/intel_step.c
> > > index 6e1b132ecf38..21211649e6bb 100644
> > > --- a/drivers/gpu/drm/i915/intel_step.c
> > > +++ b/drivers/gpu/drm/i915/intel_step.c
> > > @@ -75,6 +75,12 @@ static const struct intel_step_info tgl_revids[] = {
> > >  	[1] = { .gt_step = STEP_B0, .display_step = STEP_D0 },  };
> > >
> > > +static const struct intel_step_info rkl_revids[] = {
> > > +	[0] = { COMMON_STEPPING(A0) },
> > > +	[1] = { COMMON_STEPPING(B0) },
> > > +	[4] = { COMMON_STEPPING(C0) },
> > > +};
> > > +
> > >  static const struct intel_step_info adls_revids[] = {
> > >  	[0x0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
> > >  	[0x1] = { .gt_step = STEP_A0, .display_step = STEP_A2 }, @@ -103,6
> > > +109,9 @@ void intel_step_init(struct drm_i915_private *i915)
> > >  	} else if (IS_ALDERLAKE_S(i915)) {
> > >  		revids = adls_revids;
> > >  		size = ARRAY_SIZE(adls_revids);
> > > +	} else if (IS_ROCKETLAKE(i915)) {
> > > +		revids = rkl_revids;
> > > +		size = ARRAY_SIZE(rkl_revids);
> > >  	} else if (IS_TGL_U(i915) || IS_TGL_Y(i915)) {
> > >  		revids = tgl_uy_revids;
> > >  		size = ARRAY_SIZE(tgl_uy_revids);
> > > --
> > > 2.25.4
> >
> 
> --
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
