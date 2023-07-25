Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0504761DC5
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 17:55:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C46310E3E2;
	Tue, 25 Jul 2023 15:55:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4419B10E3E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 15:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690300540; x=1721836540;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=KRJjQqhGgQsFcs1kfuPK5D4D+gWq10FmfxruqCPDTFc=;
 b=gTDXIBTf4SYgtzFlSGtHEZSbvWp9co8o6cB/q006AEVOqnbRHF+UDdsa
 QAYLlxp7MHsYz/mlQ1YD4QXirzgEqdPcscaW2S0APx4BF3yNDHxE9zn/l
 eqKyzGquO7IZU3+zhiv/IJGB0BPLID2TgK2jZ/fYPkiiB6n8jkhBS7vVU
 aeyH4JJfnh1OquiD92MszebbC95Qmji+kCJYLIk+oiVk5oV+9WYgvlxUn
 UNPuX90cidD6+yDegcunP70ECNYGyqObJ4Z1xLlijiImOxYeSaDtgTiVo
 5e5nM7pStn69t2rW4TOYTn52JlzE5/CfyIW5/VaJXH8AnTFpRZnNxgK1H w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="431574815"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="431574815"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 08:55:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="972743887"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="972743887"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 25 Jul 2023 08:55:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 08:55:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 25 Jul 2023 08:55:38 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 25 Jul 2023 08:55:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e/4qu26JjcaKxGxUleKAK5UyygQJ/W63utzSjG5DqjSX+th3ayQQwX4+U/qD0Vag8Y7W6Wv8bdzaUuuHVGB7ttHx1JoukCBZA9ytrZy9EjQqJHaZiDEsLQXO0JlkdKpA72q724O++VZ2La7eZV79puPIql7GQQpqxK+TKFgkOzQOlgfPXiikl0IS40YtkpuQ5mCkSbznCzR2TXkw9KG+iW/Nr6BC/ybErVrYkGfi1h7HX/BOoj3naBNDHeIJCdA3Le/iyzQeq9AyeD3Q45kAROJfzWp9NiUEc6yJV3JU6ZGjB9LaYGPLEgp0Q2JzAZSbABNuvL4Qku7UW9AW6F9e1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G7YnTCMQd7fbdlIdxcriWueZoaGNWTbc4Xb0B7AfoG8=;
 b=ik0Rc8kakfPWnxd546o/htHm+/ydlaGr5FDai4nU8shbmnxl/K5Bx7NKxWVEARkl7eHPxwVbiZPblY/a94rTiBVbnc/730c2mJZ7Q+xNbTIEZsb0etRpqC41X5t4RZBYpNDg2pJEdrjzgRfp3JsprYLLEg8GonY/qxBIbHX/SYlSUQqTRzPjBhrwLJnbFoZxBh1dZhGv9Xv3Mw5X0kcFir/cW5c9TSGWLXhwP+ZjRngdb+zF31UXoit8dnqIb3Dylr6mM/ry/0lotUwlx+0hWESERuYbt66m/IP8RG203yaWBWeGyxWW+LgfG8LzcScw8oRMwGOzSxY0RLEnW4LGsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 IA1PR11MB6492.namprd11.prod.outlook.com (2603:10b6:208:3a4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.33; Tue, 25 Jul
 2023 15:55:36 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6609.032; Tue, 25 Jul 2023
 15:55:36 +0000
Date: Tue, 25 Jul 2023 08:55:33 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20230725155533.GI138014@mdroper-desk1.amr.corp.intel.com>
References: <20230725001312.1907319-11-matthew.d.roper@intel.com>
 <20230725001312.1907319-15-matthew.d.roper@intel.com>
 <9d72ffa7-4668-caec-e341-ba67d3971e9b@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <9d72ffa7-4668-caec-e341-ba67d3971e9b@linux.intel.com>
X-ClientProxiedBy: BYAPR08CA0004.namprd08.prod.outlook.com
 (2603:10b6:a03:100::17) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|IA1PR11MB6492:EE_
X-MS-Office365-Filtering-Correlation-Id: 19745947-32ff-49d0-8e3e-08db8d2795c6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zYvh7l++aG1L9zCBMASyB4HWUGHy06FTMOoMrCMgl0thNP7w6/45oMoctpcepcb3IILafWHLtGjV9mlFvQ0ibspSMtRXfWb9b5AVTqMKt7noVr1+ixJgFBCz7jJACFIsKaQoIQfchUpNIVpTU4LtNaWziRA93wce9KjdN3Ch9gZ1//9YbfYFbRJIS6aeRsNiXxVMye37Me52ZLA+fofG2M7WP2YT+jOFeTC4u1EWbbDae519iDHiFcPSZbjn2Cl7Y7bifER96AprFuvgV+lc1O0XzeIt8X/HjbnfodmvD2zUod3WTukxxeReGn/of88ZPOctHQMZ0Wrf9criP5Xp8qk+rRoso7j1pfShuQWlZxXv6eVIpWeeHfsqgBD+F7hhKaU99SHR8KyiRJ9FokWVIZt7BmosnbgwllY3Brez8CKI3nJUCaADopec3XTRVVQwr20PuazfDS3l7d2TMaenYGP1n998GaKpQEgNh1NCEVPiipaVZEckPH47tKzEyo8EvHtlgdZUj1vg2aHqOFHfBZn+NM61nnMCjo3N0jdv1fWPNas0lD9n7xbPXzy8GfJL
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(376002)(136003)(346002)(39860400002)(451199021)(6486002)(6666004)(478600001)(82960400001)(83380400001)(8936002)(53546011)(1076003)(6506007)(26005)(6512007)(66946007)(38100700002)(66476007)(4326008)(66556008)(6916009)(186003)(8676002)(5660300002)(2906002)(30864003)(316002)(41300700001)(86362001)(33656002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LaA+yLkIIUy0/C3uvnM0mZQRxr3/Qi0EEHY/CY4p/kS7T6LqH+lL6y9DKWPT?=
 =?us-ascii?Q?vPuW1B2RJf1LZH88C0+oLl7WjU0nHDykQzyXlQDxe8HR1HuT2FFefnrHeSDf?=
 =?us-ascii?Q?IP8dM0hoc0/x47YeEOAQZr1KOeslUSLAgJS0l3GtwFyhIIBe3aeiuq7O9Z+i?=
 =?us-ascii?Q?Ma/Ic/Php63PnGCeNu5/4wZ8BXeFionP1JvowgOvAkLryJ0u3YeugjvebZuh?=
 =?us-ascii?Q?3SsaZ3LlFe6YOHj9A9pIQCgqscW19KQUjci6QeRCXdxlpkVVUWPMlXhxsX3N?=
 =?us-ascii?Q?D9gTXaTzQpC2P8Hwgjd1B2m86WgDaHgUwesf3h/qaJ7s7ggMu2hoYfBerI4L?=
 =?us-ascii?Q?AoKu8ZcRR0lrQzmwW0r6sM266QhUo9V1VBrDfmZOzqo6O00KawGMLpbVvn5O?=
 =?us-ascii?Q?w1QIpdidJqqes8OJX2BYS6ojQNh1BIa+qhZ6qak6ALxgFQ4QqamhzkyxNH5L?=
 =?us-ascii?Q?UvcGPjvlecaomDC6+9u27ImJEktV4bwuSbcjk8Gm6NsLtL21mEjQRmX85ouK?=
 =?us-ascii?Q?RQ3KyVUywW3Hz0vq1Asd/1i9mUeu0WmdhcsVR22ErDmo2mdVO0XgGg+pHDy3?=
 =?us-ascii?Q?kZL95z08dKeI8Ioes0K4mZ5AUfE3PRr651EhcE9wbCjOHT8rmv9/Sqs2myKk?=
 =?us-ascii?Q?kH0Zl0qoQbXj/zePwynNKRch7JJCFtZ/B8N+BrZ3EVHLfyPo1NZteWE1LEgP?=
 =?us-ascii?Q?93t3SerVQhtmpGWmBDEKira3hbIzjUNoO28N+QU2qLKzYr9zscQTBt3N7za0?=
 =?us-ascii?Q?pWp7mDLrUUVuJX73wsiU9YpCHJ+IL/w/CvuxgyFyRBBIUHTbhhlBmmJi7HJH?=
 =?us-ascii?Q?OkZYjm/JvjP6z1jwPrvWPwcaOElt8BoRsGJeMP8/qmRmwoPEI1edPaYmUMBi?=
 =?us-ascii?Q?OGFZaEBGbNg2tjZaRJ8SMbWe6r4rZyk44FixNMlkWwgOzYVTipOHZZQxplsL?=
 =?us-ascii?Q?vPPi9yWywAJ0qs6xkr6vLnyf+ZeHk6XuTh+yilWgEpSrurS8kzAFQnXoHhdl?=
 =?us-ascii?Q?lHOfqhz4PNHXtzU7gwcf+cvr9LMHKSHsKKMED9V80/rSno6ydYA470nSA030?=
 =?us-ascii?Q?NtYpvLWxPqXcnvvLjUzxKokd3kiYC01uU5t/fb28XYEtOVFSiBXGCIKpbx0V?=
 =?us-ascii?Q?7dEv9HbN/Y/iGupzSTlszWoBjCEtzanqoQpo5DlaBQl5kHrNHPkCAhikul9P?=
 =?us-ascii?Q?Yo0vUVIQ5Qw3qQ9d1IjDSLS/80FAWhHKRJyWJXrXHZOnkli+Vr5m/iscn9Vw?=
 =?us-ascii?Q?VGSqI1M4wUQJW4LHhI6qoXui891e1K1UaMQ0R8R/loGYzQUx9wXDb/+sL1Qb?=
 =?us-ascii?Q?hzln+OSWWPufl3AOeXQIr8h5Y16zSer6D0yR+hEUjD7IKST1tEIDc48rgvc2?=
 =?us-ascii?Q?A3RO5uyajr4SqUmHPXLcMsytUVoWNesMtZGm2xpz1xr0b3wOjd+FgU0pbDP2?=
 =?us-ascii?Q?iDuJwk3bWGEZA4KoI+4jzhy19w00TXY/X1Qfgu1hV3iPIgJBGJoVqGn5SFVK?=
 =?us-ascii?Q?gWng/OYo81nlAW8zh20/VZ9kysQasfKwOYDVBNGZ2c434Zm+epkQ0sVzXCAy?=
 =?us-ascii?Q?hf8N5wCuHOtf/Sq7f7Vf07goSKXs0+CTEXswYa+M3q9lgwwtpO5ouSSc9A2M?=
 =?us-ascii?Q?lQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 19745947-32ff-49d0-8e3e-08db8d2795c6
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2023 15:55:36.0831 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NwOxNyPep1VmOMieFXrYk84u2bnAoI1C+4R5oxnZembyvSeVyhkamzy82D6t9LFjwZQLqI2NUF9Iq9+VYM1BAy4vlN56qY9MWrpxNG2CRaU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6492
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 4/9] drm/i915: Eliminate
 IS_MTL_GRAPHICS_STEP
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 25, 2023 at 01:10:24PM +0100, Tvrtko Ursulin wrote:
> 
> On 25/07/2023 01:13, Matt Roper wrote:
> > Several workarounds are guarded by IS_MTL_GRAPHICS_STEP.  However none
> > of these workarounds are actually tied to MTL as a platform; they only
> > relate to the Xe_LPG graphics IP, regardless of what platform it appears
> > in.  At the moment MTL is the only platform that uses Xe_LPG with IP
> > versions 12.70 and 12.71, but we can't count on this being true in the
> > future.  Switch these to use a new IS_GT_IP_STEP() macro instead that is
> > purely based on IP version.  IS_GT_IP_STEP() is also GT-based rather
> > than device-based, which will help prevent mistakes where we
> > accidentally try to apply Xe_LPG graphics workarounds to the Xe_LPM+
> > media GT and vice-versa.
> > 
> > v2:
> >   - Switch to a more generic and shorter IS_GT_IP_STEP macro that can be
> >     used for both graphics and media IP (and any other kind of GTs that
> >     show up in the future).
> > 
> > Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >   .../drm/i915/display/skl_universal_plane.c    |  4 +-
> >   drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |  9 ++--
> >   drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  4 +-
> >   drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 +-
> >   drivers/gpu/drm/i915/gt/intel_reset.c         |  2 +-
> >   drivers/gpu/drm/i915/gt/intel_workarounds.c   | 52 ++++++++++---------
> >   drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  2 +-
> >   .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  2 +-
> >   drivers/gpu/drm/i915/i915_drv.h               | 30 +++++++++--
> >   9 files changed, 67 insertions(+), 42 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 6b01a0b68b97..5fd8a42b3ec1 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -2169,8 +2169,8 @@ static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
> >   				 enum pipe pipe, enum plane_id plane_id)
> >   {
> >   	/* Wa_14017240301 */
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +	if (IS_GT_IP_STEP(GFX, to_gt(i915), IP_VER(12, 70), A0, B0) ||
> > +	    IS_GT_IP_STEP(GFX, to_gt(i915), IP_VER(12, 71), A0, B0))
> >   		return false;
> >   	/* Wa_22011186057 */
> > diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > index 3ba20ea030e8..9d04591f3b4a 100644
> > --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > @@ -180,8 +180,8 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u32 *cs, const i915_reg_t inv
> >   static int mtl_dummy_pipe_control(struct i915_request *rq)
> >   {
> >   	/* Wa_14016712196 */
> > -	if (IS_MTL_GRAPHICS_STEP(rq->i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(rq->i915, P, STEP_A0, STEP_B0)) {
> > +	if (IS_GT_IP_STEP(GFX, rq->engine->gt, IP_VER(12, 70), A0, B0) ||
> > +	    IS_GT_IP_STEP(GFX, rq->engine->gt, IP_VER(12, 71), A0, B0)) {
> >   		u32 *cs;
> >   		/* dummy PIPE_CONTROL + depth flush */
> > @@ -755,6 +755,7 @@ u32 *gen12_emit_fini_breadcrumb_xcs(struct i915_request *rq, u32 *cs)
> >   u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
> >   {
> >   	struct drm_i915_private *i915 = rq->i915;
> > +	struct intel_gt *gt = rq->engine->gt;
> >   	u32 flags = (PIPE_CONTROL_CS_STALL |
> >   		     PIPE_CONTROL_TLB_INVALIDATE |
> >   		     PIPE_CONTROL_TILE_CACHE_FLUSH |
> > @@ -765,8 +766,8 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
> >   		     PIPE_CONTROL_FLUSH_ENABLE);
> >   	/* Wa_14016712196 */
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +	if (IS_GT_IP_STEP(GFX, gt, IP_VER(12, 70), A0, B0) ||
> > +	    IS_GT_IP_STEP(GFX, gt, IP_VER(12, 71), A0, B0))
> >   		/* dummy PIPE_CONTROL + depth flush */
> >   		cs = gen12_emit_pipe_control(cs, 0,
> >   					     PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0);
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > index 0b414eae1683..c66373176f6c 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > @@ -166,8 +166,8 @@ void intel_gt_mcr_init(struct intel_gt *gt)
> >   		gt->steering_table[OADDRM] = xelpmp_oaddrm_steering_table;
> >   	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70)) {
> >   		/* Wa_14016747170 */
> > -		if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -		    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +		if (IS_GT_IP_STEP(GFX, gt, IP_VER(12, 70), A0, B0) ||
> > +		    IS_GT_IP_STEP(GFX, gt, IP_VER(12, 71), A0, B0))
> >   			fuse = REG_FIELD_GET(MTL_GT_L3_EXC_MASK,
> >   					     intel_uncore_read(gt->uncore,
> >   							       MTL_GT_ACTIVITY_FACTOR));
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index 1b710102390b..8057cc5800b3 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -1377,8 +1377,8 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
> >   					      cs, GEN12_GFX_CCS_AUX_NV);
> >   	/* Wa_16014892111 */
> > -	if (IS_MTL_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(ce->engine->i915, P, STEP_A0, STEP_B0) ||
> > +	if (IS_GT_IP_STEP(GFX, ce->engine->gt, IP_VER(12, 70), A0, B0) ||
> > +	    IS_GT_IP_STEP(GFX, ce->engine->gt, IP_VER(12, 71), A0, B0) ||
> >   	    IS_DG2(ce->engine->i915))
> >   		cs = dg2_emit_draw_watermark_setting(cs);
> > diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> > index 1ff7b42521c9..efe83157ef78 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> > @@ -1641,7 +1641,7 @@ bool intel_engine_reset_needs_wa_22011802037(struct intel_gt *gt)
> >   	if (GRAPHICS_VER(gt->i915) < 11)
> >   		return false;
> > -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0))
> > +	if (IS_GT_IP_STEP(GFX, gt, IP_VER(12, 70), A0, B0))
> >   		return true;
> >   	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index c4663541c5dd..b7cf1790c827 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -808,24 +808,24 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
> >   static void xelpg_ctx_gt_tuning_init(struct intel_engine_cs *engine,
> >   				     struct i915_wa_list *wal)
> >   {
> > -	struct drm_i915_private *i915 = engine->i915;
> > +	struct intel_gt *gt = engine->gt;
> >   	dg2_ctx_gt_tuning_init(engine, wal);
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
> > +	if (IS_GT_IP_STEP(GFX, gt, IP_VER(12, 70), B0, FOREVER) ||
> > +	    IS_GT_IP_STEP(GFX, gt, IP_VER(12, 71), B0, FOREVER))
> >   		wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0, false);
> >   }
> >   static void xelpg_ctx_workarounds_init(struct intel_engine_cs *engine,
> >   				       struct i915_wa_list *wal)
> >   {
> > -	struct drm_i915_private *i915 = engine->i915;
> > +	struct intel_gt *gt = engine->gt;
> >   	xelpg_ctx_gt_tuning_init(engine, wal);
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> > +	if (IS_GT_IP_STEP(GFX, gt, IP_VER(12, 70), A0, B0) ||
> > +	    IS_GT_IP_STEP(GFX, gt, IP_VER(12, 71), A0, B0)) {
> >   		/* Wa_14014947963 */
> >   		wa_masked_field_set(wal, VF_PREEMPTION,
> >   				    PREEMPTION_VERTEX_COUNT, 0x4000);
> > @@ -1746,8 +1746,8 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> >   	/* Wa_22016670082 */
> >   	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
> > -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
> > +	if (IS_GT_IP_STEP(GFX, gt, IP_VER(12, 70), A0, B0) ||
> > +	    IS_GT_IP_STEP(GFX, gt, IP_VER(12, 71), A0, B0)) {
> >   		/* Wa_14014830051 */
> >   		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
> > @@ -2424,16 +2424,17 @@ static void
> >   rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >   {
> >   	struct drm_i915_private *i915 = engine->i915;
> > +	struct intel_gt *gt = engine->gt;
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> > +	if (IS_GT_IP_STEP(GFX, gt, IP_VER(12, 70), A0, B0) ||
> > +	    IS_GT_IP_STEP(GFX, gt, IP_VER(12, 71), A0, B0)) {
> >   		/* Wa_22014600077 */
> >   		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
> >   				 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
> >   	}
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	if (IS_GT_IP_STEP(GFX, gt, IP_VER(12, 70), A0, B0) ||
> > +	    IS_GT_IP_STEP(GFX, gt, IP_VER(12, 71), A0, B0) ||
> >   	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> >   	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> >   		/* Wa_1509727124 */
> > @@ -2443,7 +2444,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >   	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> >   	    IS_DG2_G11(i915) || IS_DG2_G12(i915) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0)) {
> > +	    IS_GT_IP_STEP(GFX, gt, IP_VER(12, 70), A0, B0)) {
> >   		/* Wa_22012856258 */
> >   		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
> >   				 GEN12_DISABLE_READ_SUPPRESSION);
> > @@ -3008,8 +3009,9 @@ static void
> >   general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >   {
> >   	struct drm_i915_private *i915 = engine->i915;
> > +	struct intel_gt *gt = engine->gt;
> > -	add_render_compute_tuning_settings(engine->gt, wal);
> > +	add_render_compute_tuning_settings(gt, wal);
> >   	if (GRAPHICS_VER(i915) >= 11) {
> >   		/* This is not a Wa (although referred to as
> > @@ -3030,13 +3032,13 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> >   				 GEN11_INDIRECT_STATE_BASE_ADDR_OVERRIDE);
> >   	}
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
> > +	if (IS_GT_IP_STEP(GFX, gt, IP_VER(12, 70), B0, FOREVER) ||
> > +	    IS_GT_IP_STEP(GFX, gt, IP_VER(12, 71), B0, FOREVER))
> >   		/* Wa_14017856879 */
> >   		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN3, MTL_DISABLE_FIX_FOR_EOT_FLUSH);
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +	if (IS_GT_IP_STEP(GFX, gt, IP_VER(12, 70), A0, B0) ||
> > +	    IS_GT_IP_STEP(GFX, gt, IP_VER(12, 71), A0, B0))
> >   		/*
> >   		 * Wa_14017066071
> >   		 * Wa_14017654203
> > @@ -3044,13 +3046,13 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> >   		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
> >   				 MTL_DISABLE_SAMPLER_SC_OOO);
> > -	if (IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +	if (IS_GT_IP_STEP(GFX, gt, IP_VER(12, 71), A0, B0))
> >   		/* Wa_22015279794 */
> >   		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
> >   				 DISABLE_PREFETCH_INTO_IC);
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	if (IS_GT_IP_STEP(GFX, gt, IP_VER(12, 70), A0, B0) ||
> > +	    IS_GT_IP_STEP(GFX, gt, IP_VER(12, 71), A0, B0) ||
> >   	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> >   	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> >   		/* Wa_22013037850 */
> > @@ -3058,16 +3060,16 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> >   				DISABLE_128B_EVICTION_COMMAND_UDW);
> >   	}
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	if (IS_GT_IP_STEP(GFX, gt, IP_VER(12, 70), A0, B0) ||
> > +	    IS_GT_IP_STEP(GFX, gt, IP_VER(12, 71), A0, B0) ||
> >   	    IS_PONTEVECCHIO(i915) ||
> >   	    IS_DG2(i915)) {
> >   		/* Wa_22014226127 */
> >   		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
> >   	}
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	if (IS_GT_IP_STEP(GFX, gt, IP_VER(12, 70), A0, B0) ||
> > +	    IS_GT_IP_STEP(GFX, gt, IP_VER(12, 71), A0, B0) ||
> >   	    IS_DG2(i915)) {
> >   		/* Wa_18017747507 */
> >   		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > index 1e532981f74e..c733d43816f4 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > @@ -277,7 +277,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
> >   		flags |= GUC_WA_GAM_CREDITS;
> >   	/* Wa_14014475959 */
> > -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> > +	if (IS_GT_IP_STEP(GFX, gt, IP_VER(12, 70), A0, B0) ||
> >   	    IS_DG2(gt->i915))
> >   		flags |= GUC_WA_HOLD_CCS_SWITCHOUT;
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > index 1bd5d8f7c40b..01d6534dc7e8 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > @@ -4265,7 +4265,7 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
> >   	/* Wa_14014475959:dg2 */
> >   	if (engine->class == COMPUTE_CLASS)
> > -		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> > +		if (IS_GT_IP_STEP(GFX, engine->gt, IP_VER(12, 70), A0, B0) ||
> >   		    IS_DG2(engine->i915))
> >   			engine->flags |= I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > index 6bb825d40451..687745550355 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -436,6 +436,9 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
> >   #define __GT_VER_FULL(gt) (__IS_MEDIA_GT(gt) ? \
> >   			   MEDIA_VER_FULL((gt)->i915) : \
> >   			   GRAPHICS_VER_FULL((gt)->i915))
> > +#define __GT_STEP(gt) (__IS_MEDIA_GT(gt) ? \
> > +		       INTEL_MEDIA_STEP((gt)->i915) : \
> > +		       INTEL_GRAPHICS_STEP((gt)->i915))
> >   /*
> >    * Check that a GT contains IP of the specified type and within the specified
> > @@ -454,6 +457,29 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
> >   	 __GT_VER_FULL(gt) >= (from) && \
> >   	 __GT_VER_FULL(gt) <= (until)))
> > +/*
> > + * Check whether a GT contains the specific IP version and a stepping within
> > + * the specified range [from, until).  The lower stepping bound is inclusive,
> > + * the upper bound is exclusive (corresponding to the first hardware stepping
> > + * at when the workaround is no longer needed).  E.g.,
> > + *
> > + *    IS_GT_IP_STEP(GFX, IP_VER(12, 70), A0, B0)
> > + *    IS_GT_IP_STEP(MEDIA, IP_VER(13, 00), B1, D0)
> > + *    IS_GT_IP_STEP(GFX, IP_VER(12, 71), B1, FOREVER)
> 
> Same as previous patch, I'd really like that we have the GT type split out
> from the macro.
> 
> Btw I found a way to implement optional macro arguments on Stack Overflow
> and we could have that too, with default stepping [FOREVER, FOREVER] if we
> wanted.

Presumably we'd want [0, FOREVER) rather than [FOREVER, FOREVER],
otherwise we'd never match anything.

But I'm still questioning whether that would really help clarify
anything.  If we've lost the GT type check, then I don't see what
benefit a somewhat ambiguous IS_GT_IP() would provide over a more direct
"GRAPHICS_VER_FULL() == IP_VER()" that makes it clear what kind of
version we're checking for.  And we'd still need to handle version
ranges independently from stepping ranges since those need different
semantics.


Matt

> 
> That way we could only have IS_GT_IP and call it as either IS_GT_IP(gt,
> IP_VER()) or IS_GT_IP(gt, IP_VER(), A0, B0).
> 
> But I think *only* if the compiler ends up smart enough not to pollute the
> code with impossible default forever-forever checks.
> 
> Possibly a step too far.
> 
> Regards,
> 
> Tvrtko
> 
> > + *
> > + * "FOREVER" can be passed as the upper stepping bound for workarounds that
> > + * have no upper bound on steppings of the specified IP version.
> > + *
> > + * Note that media version checks with this macro will only work on platforms
> > + * with standalone media design (i.e., media version 13 and higher).
> > + */
> > +#define IS_GT_IP_STEP(type, gt, ipver, since, until) \
> > +	(BUILD_BUG_ON_ZERO(ipver < IP_VER(2, 0)) + \
> > +	 (__IS_##type##_GT(gt) && \
> > +	  __GT_VER_FULL(gt) == ipver && \
> > +	  __GT_STEP(gt) >= STEP_##since && \
> > +	  __GT_STEP(gt) <= STEP_##until))
> > +
> >   #define MEDIA_VER(i915)			(RUNTIME_INFO(i915)->media.ip.ver)
> >   #define MEDIA_VER_FULL(i915)		IP_VER(RUNTIME_INFO(i915)->media.ip.ver, \
> >   					       RUNTIME_INFO(i915)->media.ip.rel)
> > @@ -710,10 +736,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> >   #define IS_XEHPSDV_GRAPHICS_STEP(__i915, since, until) \
> >   	(IS_XEHPSDV(__i915) && IS_GRAPHICS_STEP(__i915, since, until))
> > -#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
> > -	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
> > -	 IS_GRAPHICS_STEP(__i915, since, until))
> > -
> >   #define IS_MTL_DISPLAY_STEP(__i915, since, until) \
> >   	(IS_METEORLAKE(__i915) && \
> >   	 IS_DISPLAY_STEP(__i915, since, until))

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
