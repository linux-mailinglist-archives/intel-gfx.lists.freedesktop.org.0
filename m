Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEBA3BDD4D
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jul 2021 20:34:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9335E6E584;
	Tue,  6 Jul 2021 18:34:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B081C6E584
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jul 2021 18:33:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="209217248"
X-IronPort-AV: E=Sophos;i="5.83,329,1616482800"; d="scan'208";a="209217248"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 11:33:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,329,1616482800"; d="scan'208";a="497212736"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga002.fm.intel.com with ESMTP; 06 Jul 2021 11:33:55 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 6 Jul 2021 11:33:54 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 6 Jul 2021 11:33:54 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2242.010;
 Tue, 6 Jul 2021 11:33:54 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/dmc: Use RUNTIME_INFO->step for
 DMC
Thread-Index: AQHXbq+qpq7V2ckifEGiHk6jsPz8gas0oVoAgAGrhlA=
Date: Tue, 6 Jul 2021 18:33:54 +0000
Message-ID: <92ea39893db5435a9ad0126a91299a12@intel.com>
References: <20210701193114.17531-1-anusha.srivatsa@intel.com>
 <20210701193114.17531-2-anusha.srivatsa@intel.com> <87a6n19j11.fsf@intel.com>
In-Reply-To: <87a6n19j11.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dmc: Use RUNTIME_INFO->step
 for DMC
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, July 5, 2021 3:01 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: De Marchi, Lucas <lucas.demarchi@intel.com>
> Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dmc: Use RUNTIME_INFO-
> >step for DMC
> 
> On Thu, 01 Jul 2021, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> > On the dmc side,we maintain a lookup table with different display
> > stepping-substepping combinations.
> >
> > Instead of adding new table for every new platform, lets ues the
> > stepping info from RUNTIME_INFO(dev_priv)->step
> >
> > v2: Add stepping table for older platforms in intel_step.c (Lucas)
> >
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dmc.c | 117
> > +++++++++++++++--------
> 
> The changes here...
> 
> >  drivers/gpu/drm/i915/intel_step.c        |  41 ++++++++
> >  drivers/gpu/drm/i915/intel_step.h        |   7 ++
> 
> ...should be separate from, and depend on, the changes here. Please don't
> try to do too much in one patch. Smaller is better.
> 
> >  3 files changed, 126 insertions(+), 39 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> > b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index f8789d4543bf..df888a3d086e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -247,50 +247,89 @@ bool intel_dmc_has_payload(struct
> drm_i915_private *i915)
> >  	return i915->dmc.dmc_info[DMC_FW_MAIN].payload;
> >  }
> >
> > -static const struct stepping_info skl_stepping_info[] = {
> > -	{'A', '0'}, {'B', '0'}, {'C', '0'},
> > -	{'D', '0'}, {'E', '0'}, {'F', '0'},
> > -	{'G', '0'}, {'H', '0'}, {'I', '0'},
> > -	{'J', '0'}, {'K', '0'}
> > -};
> > -
> > -static const struct stepping_info bxt_stepping_info[] = {
> > -	{'A', '0'}, {'A', '1'}, {'A', '2'},
> > -	{'B', '0'}, {'B', '1'}, {'B', '2'}
> > -};
> > -
> > -static const struct stepping_info icl_stepping_info[] = {
> > -	{'A', '0'}, {'A', '1'}, {'A', '2'},
> > -	{'B', '0'}, {'B', '2'},
> > -	{'C', '0'}
> > -};
> > -
> >  static const struct stepping_info no_stepping_info = { '*', '*' };
> > +struct stepping_info *display_step;
> >
> > -static const struct stepping_info *
> > +static struct stepping_info *
> >  intel_get_stepping_info(struct drm_i915_private *dev_priv)  {
> > -	const struct stepping_info *si;
> > -	unsigned int size;
> > -
> > -	if (IS_ICELAKE(dev_priv)) {
> > -		size = ARRAY_SIZE(icl_stepping_info);
> > -		si = icl_stepping_info;
> > -	} else if (IS_SKYLAKE(dev_priv)) {
> > -		size = ARRAY_SIZE(skl_stepping_info);
> > -		si = skl_stepping_info;
> > -	} else if (IS_BROXTON(dev_priv)) {
> > -		size = ARRAY_SIZE(bxt_stepping_info);
> > -		si = bxt_stepping_info;
> > -	} else {
> > -		size = 0;
> > -		si = NULL;
> > +	struct intel_step_info step = RUNTIME_INFO(dev_priv)->step;
> > +
> > +	switch (step.display_step) {
> > +	case STEP_A0:
> > +		display_step->stepping = 'A';
> > +		display_step->substepping = '0';
> > +		break;
> > +	case STEP_A1:
> > +		display_step->stepping = 'A';
> > +		display_step->substepping = '1';
> > +		break;
> > +	case STEP_A2:
> > +		display_step->stepping = 'A';
> > +		display_step->substepping = '2';
> > +		break;
> > +	case STEP_B0:
> > +		display_step->stepping = 'B';
> > +		display_step->substepping = '0';
> > +		break;
> > +	case STEP_B1:
> > +		display_step->stepping = 'B';
> > +		display_step->substepping = '1';
> > +		break;
> > +	case STEP_B2:
> > +		display_step->stepping = 'B';
> > +		display_step->substepping = '2';
> > +		break;
> > +	case STEP_C0:
> > +		display_step->stepping = 'C';
> > +		display_step->substepping = '0';
> > +		break;
> > +	case STEP_C1:
> > +		display_step->stepping = 'C';
> > +		display_step->substepping = '1';
> > +		break;
> > +	case STEP_D0:
> > +		display_step->stepping = 'D';
> > +		display_step->substepping = '0';
> > +		break;
> > +	case STEP_D1:
> > +		display_step->stepping = 'D';
> > +		display_step->substepping = '1';
> > +		break;
> > +	case STEP_E0:
> > +		display_step->stepping = 'E';
> > +		display_step->substepping = '0';
> > +		break;
> > +	case STEP_F0:
> > +		display_step->stepping = 'F';
> > +		display_step->substepping = '0';
> > +		break;
> > +	case STEP_G0:
> > +		display_step->stepping = 'G';
> > +		display_step->substepping = '0';
> > +		break;
> > +	case STEP_H0:
> > +		display_step->stepping = 'H';
> > +		display_step->substepping = '0';
> > +		break;
> > +	case STEP_I0:
> > +		display_step->stepping = 'I';
> > +		display_step->substepping = '0';
> > +		break;
> > +	case STEP_J0:
> > +		display_step->stepping = 'J';
> > +		display_step->substepping = '0';
> > +		break;
> > +	case STEP_K0:
> > +		display_step->stepping = 'K';
> > +		display_step->substepping = '0';
> > +		break;
> > +	default:
> > +		display_step->stepping = '*';
> > +		display_step->substepping = '*';
> > +		break;
> >  	}
> > -
> > -	if (INTEL_REVID(dev_priv) < size)
> > -		return si + INTEL_REVID(dev_priv);
> > -
> > -	return &no_stepping_info;
> > +	return display_step;
> >  }
> >
> >  static void gen9_set_dc_state_debugmask(struct drm_i915_private
> > *dev_priv) diff --git a/drivers/gpu/drm/i915/intel_step.c
> > b/drivers/gpu/drm/i915/intel_step.c
> > index ba9479a67521..c8542161c5d0 100644
> > --- a/drivers/gpu/drm/i915/intel_step.c
> > +++ b/drivers/gpu/drm/i915/intel_step.c
> > @@ -15,6 +15,38 @@
> >
> >
> >  /* FIXME: what about REVID_E0 */
> 
> So that comment was next to kbl_revids, and this makes it meaningless.
> 
> > +static const struct intel_step_info bxt_revid_step_tbl[] = {
> 
> Please just call them "bxt_revids" or "bxt_steps" or something simple. I
> meant to clean up all the other names too, they're a bit excessive.
>
I ll send the patch to change the names.

> > +	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
> > +	[1] = { .gt_step = STEP_A1, .display_step = STEP_A1 },
> > +	[2] = { .gt_step = STEP_A2, .display_step = STEP_A2 },
> > +	[6] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
> > +	[7] = { .gt_step = STEP_B1, .display_step = STEP_B1 },
> > +	[8] = { .gt_step = STEP_B2, .display_step = STEP_B2 }, };
> 
> We might want to add something like this:
> 
> @@ -112,5 +112,8 @@ void intel_step_init(struct drm_i915_private *i915)
>  	if (drm_WARN_ON(&i915->drm, step.gt_step == STEP_NONE))
>  		return;
> 
> +	if (step.display_step == STEP_NONE)
> +		step.display_step = step.gt_step;
> +
>  	RUNTIME_INFO(i915)->step = step;
>  }
> 
> So that we could just initialize .gt_step when the .display_step matches the
> .gt_step, and we could avoid the repetition. This wasn't useful for the
> platforms currently added, because they actually have the differences.
> 
> This can also be left for future cleanup.

Makes sense. I ll be changing this now. Thanks for feedback.

> > +
> > +
> 
> Superfluous newline.
> 
> > +static const struct intel_step_info skl_revid_step_tbl[] = {
> > +	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
> > +	[1] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
> > +	[2] = { .gt_step = STEP_C0, .display_step = STEP_C0 },
> > +	[3] = { .gt_step = STEP_D0, .display_step = STEP_D0 },
> > +	[4] = { .gt_step = STEP_E0, .display_step = STEP_E0 },
> > +	[5] = { .gt_step = STEP_F0, .display_step = STEP_F0 },
> > +	[6] = { .gt_step = STEP_G0, .display_step = STEP_G0 },
> > +	[7] = { .gt_step = STEP_H0, .display_step = STEP_H0 },
> > +	[8] = { .gt_step = STEP_I0, .display_step = STEP_I0 },
> > +	[9] = { .gt_step = STEP_J0, .display_step = STEP_J0 },
> 
> skl_stepping_info in intel_dmc.c has K0, this one doesn't.
>
> > +};
> > +
> > +static const struct intel_step_info icl_revid_step_tbl[] = {
> > +	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
> > +	[3] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
> > +	[4] = { .gt_step = STEP_B2, .display_step = STEP_B2 },
> > +	[5] = { .gt_step = STEP_C0, .display_step = STEP_C0 },
> > +	[6] = { .gt_step = STEP_C1, .display_step = STEP_C1 },
> > +	[7] = { .gt_step = STEP_D0, .display_step = STEP_D0 },
> 
> icl_stepping_info in intel_dmc.c has A1 and A2, this one doesn't. This one has
> C1 and D0, the one in intel_dmc.c doesn't.
> 
> > +};
> > +
> >  static const struct intel_step_info kbl_revids[] = {
> >  	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
> >  	[1] = { .gt_step = STEP_B0, .display_step = STEP_B0 }, @@ -76,6
> > +108,15 @@ void intel_step_init(struct drm_i915_private *i915)
> >  	} else if (IS_KABYLAKE(i915)) {
> >  		revids = kbl_revids;
> >  		size = ARRAY_SIZE(kbl_revids);
> > +	} else if (IS_ICELAKE(i915)) {
> > +		revids = icl_revid_step_tbl;
> > +		size = ARRAY_SIZE(icl_revid_step_tbl);
> > +	} else if (IS_SKYLAKE(i915)) {
> > +		revids = skl_revid_step_tbl;
> > +		size = ARRAY_SIZE(skl_revid_step_tbl);
> > +	} else if (IS_BROXTON(i915)) {
> > +		revids = bxt_revid_step_tbl;
> > +		size = ARRAY_SIZE(bxt_revid_step_tbl);
> 
> Doing this should be accompanied by:
> 
> * Removing *all* ICL_REVID_*, SKL_REVID_* and BXT_REVID_* macros from
>   i915_drv.h.
> 
> * Converting IS_ICL_REVID(), IS_SKL_REVID(), and IS_BXT_REVID() to
>   IS_{ICL,SKL,KBL}_{GT,DISPLAY}_STEP().
> 
> * And making their references use the generic STEP_* macros.
> 
> These changes should probably be done on a platform by platform basis, just
> in case we hit any issues. This needs to be trivial to bisect and backtrack as
> needed.
> 
> We currently have two schemes just for transition; we do not want to have
> two schemes for a single platform effective at the same time.
> 

Thanks for feedback. Taking care of these changes.

Anusha 
 
> BR,
> Jani.
> 
> >  	}
> >
> >  	/* Not using the stepping scheme for the platform yet. */ diff --git
> > a/drivers/gpu/drm/i915/intel_step.h
> > b/drivers/gpu/drm/i915/intel_step.h
> > index 958a8bb5d677..1bffa41f2660 100644
> > --- a/drivers/gpu/drm/i915/intel_step.h
> > +++ b/drivers/gpu/drm/i915/intel_step.h
> > @@ -22,15 +22,22 @@ struct intel_step_info {  enum intel_step {
> >  	STEP_NONE = 0,
> >  	STEP_A0,
> > +	STEP_A1,
> >  	STEP_A2,
> >  	STEP_B0,
> >  	STEP_B1,
> > +	STEP_B2,
> >  	STEP_C0,
> > +	STEP_C1,
> >  	STEP_D0,
> >  	STEP_D1,
> >  	STEP_E0,
> >  	STEP_F0,
> >  	STEP_G0,
> > +	STEP_H0,
> > +	STEP_I0,
> > +	STEP_J0,
> > +	STEP_K0,
> >  	STEP_FUTURE,
> >  	STEP_FOREVER,
> >  };
> 
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
