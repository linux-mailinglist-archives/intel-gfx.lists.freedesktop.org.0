Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BCB761D72
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 17:35:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4615B10E3E2;
	Tue, 25 Jul 2023 15:35:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E115510E3DB
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 15:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690299348; x=1721835348;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=7h7i/rXrMCjonzeC42n35pBcCtasGhc5SKS7i5JFu2M=;
 b=Ou2O7p8j6vYMiTrdCXIz+JZXIwVExfxVEzCAcAEFCh4yvrEyB1xZiZNW
 pO4xwmRDdgIc7vltff+n7sxz/VjqLLAwvvM9BHUIKuQUdzHWwerI/Gopa
 nqFvWdFMPgY8Qrm34mzNyOU3ltkIVqZLiUOHc/RW94g37y9GQ0rLUCq8j
 766j1QHUYH4MsCRXTqc8/WchERrI0Kgr+52l6rtheQVpEAJ3JKlUJ9bhM
 fOsovjH+tS8pxWXDXCqJiHZGs8Z8UCOabtn3XisZ6oTTM/ZviHrwIRAcQ
 ma83cCUoadzfv6TmimPlZ/FNa3iLug5ch6kiqg7z/CzPg8sCmfeC8cG00 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="434016283"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="434016283"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 08:35:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="850071136"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="850071136"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 25 Jul 2023 08:35:47 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 08:35:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 25 Jul 2023 08:35:46 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 25 Jul 2023 08:35:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gui85hy0c4qSZ+e9+PQjaayQpqr+OQMq2EB4S/0rW9kTc6l/KQht2njCriTKDI7fLudy5omkxOhPWP/nu1et97OBQyDqC4jReKANaSojYk0+cII+FllX++8uMD/8FKJ8m5fqEd8Ht9GJ11lvBvClOUG+T2tHBmmVh3Mlu3qBJhgW6lHkAgnVLMt3VMJshdjEXe3Mapv8m3lfxqv/hDOPzY9emiD8COzrr39sIaeBOs1FX5XL4xyFSZjjuubpwlRyFWfcDo1xoXZmIANWd3oa5toQxuXEVHL5Gy0NnPqWIxBAtb1rSBNSSP4PHWWJuF4HPptHWjUzCDxvmb2t/i3avA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TXKR7cC9OK5j+1491rxyGqlpMm2rLkz/8WfOJ9eL+Xg=;
 b=THf+FACN32cDsbNtiS9FeWsg4xDcOf/UmZIa6EmtFBFozyjbmptm0Z+FtPyAMEbKtwsxea+/pKedWTEVxaQM12+wjyu3p+ORv1izkl+JLti/faqvgjxeS9HULS10dRINn5ZZ21YbB5T5P1mMpdP48AOkJAM4CDcjqGXeq6nM8BRmhEfO9T1HRHmX25GkUDMIYG6i57K7M3qPU/IBaJCcjFMfuXUsFgOty6HHzdSSmOkeVp1daeRijV8EpRlfNzsuccOf2yBokre/4k3q5gUrkLAPMlC7eJuoy0od/nKNx5laaJEtGJi9M4/3taTi3RZNbZVRTLpIV/ORpxBN2TMmfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CH3PR11MB8381.namprd11.prod.outlook.com (2603:10b6:610:17b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.32; Tue, 25 Jul
 2023 15:35:44 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6609.032; Tue, 25 Jul 2023
 15:35:44 +0000
Date: Tue, 25 Jul 2023 08:35:41 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20230725153541.GG138014@mdroper-desk1.amr.corp.intel.com>
References: <20230725001312.1907319-11-matthew.d.roper@intel.com>
 <20230725001312.1907319-14-matthew.d.roper@intel.com>
 <7992e114-d00f-c32c-8fd2-0d5b28806a1c@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <7992e114-d00f-c32c-8fd2-0d5b28806a1c@linux.intel.com>
X-ClientProxiedBy: SJ0PR03CA0019.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::24) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CH3PR11MB8381:EE_
X-MS-Office365-Filtering-Correlation-Id: a998ceb0-6328-40aa-f4d3-08db8d24cf4c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /gt/KskgnpDxekLlYsnCvidUwp7cIq5AmdonfuD1wetzOWzGk/7ZLNWi6UTfzlFOp4+uAUmEanyjew81CcKelUH3Se+7rCCvajWaDNScjwhkXHfrZhiYdMVgOO9mx0sUhf5/wLHm5835HkQ2UWODZYF/EljK+MTPfsGS+Dy+0B/WAM4si6W8PDednN5VSl8/QL4DXvpZFkkwfckXWULoeIDr6CQ+ezmB0JGRlgwf8mPh8sVnwWE5yyjqCm5UY0RGbvnAls/1RVI017IhgohuTT4ZO1gLsG98xddKSQAArn1+Xfc2b0aQ75mR+o+ANjeTxk+/0Cb1kxdKkgmPzjDk0YQ99tpmf+F3Ztm/PURrtq8qwOaBYMZ4MAdMWAfQyRKUa5Jgj0gcHnl/MPDy0+XofyT9jaeO4VFR2UgWOxf5qk6SJMvP9adCtkyp7um5kp7Q2Vabpr0V29A1H0J1wLB9B+ze4juhb0v9nWxneK8Gmm4Lg9HhCt68nw5GZr6m/WtJxamU8waAVLRb54U/QGurDMZJlcUcDiJu0oTide6u4FOda8+X8rDqlK43x15bggEv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(376002)(396003)(366004)(39860400002)(451199021)(6486002)(6512007)(478600001)(6666004)(83380400001)(33656002)(86362001)(2906002)(53546011)(1076003)(6506007)(186003)(26005)(82960400001)(38100700002)(8676002)(4326008)(41300700001)(66476007)(8936002)(5660300002)(66556008)(6916009)(66946007)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cQSE8/9kM46gf7j6glRme6+6M6vjl4hivUG7NitUNEjBmIk0/7vIu32XP2qZ?=
 =?us-ascii?Q?ivC1UIprcrZ4wXa2yHJUA3cAt40I9BC+PkdTxA21KELcNYBX4EW6tm+BGx4Q?=
 =?us-ascii?Q?wtljHq16QoPmGpOffDt5roIwDsjSlRkrEyN1/SbgFd7Pma2H0tz3pjtB+tiw?=
 =?us-ascii?Q?AK7IQLNYwPk3WWPc9K6ZfQNEORC/8PAbOdrAOylV2R+rB1UgNFD7hMTAJXX5?=
 =?us-ascii?Q?1oxTCH6Qa61ipjSUpH3UNYFwB8gJ8/1HX2ue/XdCIj24dzHjtisbGXZw2Ggu?=
 =?us-ascii?Q?m5O+idBIGFQq17hPffgAvtw+YH+AAyQg6IRaNJBdOd7fxHmxVrvENLoP53BL?=
 =?us-ascii?Q?wU3zLY0WoVnZm3/fBx3dZYcCTt/AyRhdiRqhJuFdV+Btsbf4oSU/KLxe5c5l?=
 =?us-ascii?Q?H9uXcZLU+2hvkSrmRWxHfAxvuggftILlL6sU1jIB+YTqnmmyt25+7vRwHFbP?=
 =?us-ascii?Q?qA2EOB3Zvvcp2sngRisp915DUAIxXAh52hmFED2hupOSXG6MyJbVyDg8JE75?=
 =?us-ascii?Q?+T3wHvR7jJIuz4m/HCc40p40RGejrWgdhjvtonq/7tUao1f8C0P+EdveHAKm?=
 =?us-ascii?Q?rk733vQodCZ19R5jDFrXLD39TPOwwgtTHvb75qsiCXLkWhQyoD4SC8DhfoLv?=
 =?us-ascii?Q?6tX1hAC+D9V8fflLbTXXihOTcu3lQ0oiy9/07DhIHkgcvi8CMSjFQNUJlpQg?=
 =?us-ascii?Q?p59UrlvVQNvskcSKNk6F/8ufvRroo3o2Q0VWjqzRScbKg9bA1g3HNQ4/jfsz?=
 =?us-ascii?Q?KA3bZ9In8vcIUpFA+whS4v2fOElnHFPt0yYfSPfJ3RF+WVS8ufHBrW4pG643?=
 =?us-ascii?Q?ti8PW3MyYYIe8L+k65Wfbgz9xl5vaL2ojpjvrlnDe1GmXAy14TvNdkY6R/eh?=
 =?us-ascii?Q?evu7vrS7fq0Fs4XIvM47X7K5wkhtTTr8nUt670+hQ8/D9zqBavIdyhQwd7Om?=
 =?us-ascii?Q?v9mO4qvGLiETAcMVKXKcbInxpKbFnN7U3dhCko5SEIg1XLzYqc2trgur48ka?=
 =?us-ascii?Q?Jv5RgCyjBfZj2bLrQ4dogzFnDzIeegHQlnQnGKdgaRza+Qay5MPm4OYszQ+e?=
 =?us-ascii?Q?UiNYHUYnWcQTnQxQ13F/2oFMGPj6Ph6lXW0lQJt6P3qK6VerDcTo8suTmn3H?=
 =?us-ascii?Q?7JU8TvGMUPy9922h6Ou7vdxWfrPMwg6Vh2I9CH+KvSSFeULEd6LjVa39Vct2?=
 =?us-ascii?Q?wOST+vYlUChE81z8EqV/s4VR/kMIDKz9LXE778vbSW6dxiosXqhhfhmNtccy?=
 =?us-ascii?Q?0cWrFyCLuAfkTV++0ZDGVS3iApm+rP10ICSzn332dNhFeTZ9AA4wTMRXWMhR?=
 =?us-ascii?Q?ajy1xuHlB2tVKPcHcOf8j4yPHTRbYO+Itw4znLDtKYiZbrqBfrkYFAdwFekZ?=
 =?us-ascii?Q?LCLoKKPDKOa9Bz5X5x9oPL4m+78u8q32IQj1cO1BT2RvLoWCDLnoHKozMv+A?=
 =?us-ascii?Q?1pHI/lPCC+A8bjC8aetO8xqgTCtbKDcfOEBsVOyP6kFPTBbYILvnTuPjYZtt?=
 =?us-ascii?Q?bVfBZF2zaqI55sKiuFKLC1SLlK5NMCHC4jpIdAR913R8pYmu93iepSTXW8kT?=
 =?us-ascii?Q?kTA+/mDlWAO4qT3cCjqpeODsx80be9LhNqKSFgl8UNJXuIbbKs0+o4Brw5la?=
 =?us-ascii?Q?Ag=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a998ceb0-6328-40aa-f4d3-08db8d24cf4c
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2023 15:35:44.0646 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: URuod3hR8GxqddQuhdo9pEWmeVcx+x2/FYVLHh5y0F2yhDg16qmrgPzSGS3n6FnTpnyOVEIA7s5Xu8FaYAMeuJWgrjr3/INaHe40vHHmthc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8381
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 3/9] drm/i915/xelpg: Call Xe_LPG
 workaround functions based on IP version
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

On Tue, Jul 25, 2023 at 01:02:54PM +0100, Tvrtko Ursulin wrote:
> 
> On 25/07/2023 01:13, Matt Roper wrote:
> > Although some of our Xe_LPG workarounds were already being applied based
> > on IP version correctly, others were matching on MTL as a base platform,
> > which is incorrect.  Although MTL is the only platform right now that
> > uses Xe_LPG IP, this may not always be the case.  If a future platform
> > re-uses this graphics IP, the same workarounds should be applied, even
> > if it isn't a "MTL" platform.
> > 
> > We were also incorrectly applying Xe_LPG workarounds/tuning to the
> > Xe_LPM+ media IP in one or two places; we should make sure that we don't
> > try to apply graphics workarounds to the media GT and vice versa where
> > they don't belong.  A new helper macro IS_GT_IP_RANGE() is added to help
> > ensure this is handled properly -- it checks that the GT matches the IP
> > type being tested as well as the IP version falling in the proper range.
> > 
> > Note that many of the stepping-based workarounds are still incorrectly
> > checking for a MTL base platform; that will be remedied in a later
> > patch.
> > 
> > v2:
> >   - Rework macro into a slightly more generic IS_GT_IP_RANGE() that can
> >     be used for either GFX or MEDIA checks.
> > 
> > Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_workarounds.c | 38 +++++++++++----------
> >   drivers/gpu/drm/i915/i915_drv.h             | 23 +++++++++++++
> >   2 files changed, 43 insertions(+), 18 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index d8a1eaa44e69..c4663541c5dd 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -805,8 +805,8 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
> >   	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
> >   }
> > -static void mtl_ctx_gt_tuning_init(struct intel_engine_cs *engine,
> > -				   struct i915_wa_list *wal)
> > +static void xelpg_ctx_gt_tuning_init(struct intel_engine_cs *engine,
> > +				     struct i915_wa_list *wal)
> >   {
> >   	struct drm_i915_private *i915 = engine->i915;
> > @@ -817,12 +817,12 @@ static void mtl_ctx_gt_tuning_init(struct intel_engine_cs *engine,
> >   		wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0, false);
> >   }
> > -static void mtl_ctx_workarounds_init(struct intel_engine_cs *engine,
> > -				     struct i915_wa_list *wal)
> > +static void xelpg_ctx_workarounds_init(struct intel_engine_cs *engine,
> > +				       struct i915_wa_list *wal)
> >   {
> >   	struct drm_i915_private *i915 = engine->i915;
> > -	mtl_ctx_gt_tuning_init(engine, wal);
> > +	xelpg_ctx_gt_tuning_init(engine, wal);
> >   	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> >   	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> > @@ -931,8 +931,8 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
> >   	if (engine->class != RENDER_CLASS)
> >   		goto done;
> > -	if (IS_METEORLAKE(i915))
> > -		mtl_ctx_workarounds_init(engine, wal);
> > +	if (IS_GT_IP_RANGE(GFX, engine->gt, IP_VER(12, 70), IP_VER(12, 71)))
> > +		xelpg_ctx_workarounds_init(engine, wal);
> >   	else if (IS_PONTEVECCHIO(i915))
> >   		; /* noop; none at this time */
> >   	else if (IS_DG2(i915))
> > @@ -1790,10 +1790,8 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> >    */
> >   static void gt_tuning_settings(struct intel_gt *gt, struct i915_wa_list *wal)
> >   {
> > -	if (IS_METEORLAKE(gt->i915)) {
> > -		if (gt->type != GT_MEDIA)
> > -			wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
> > -
> > +	if (IS_GT_IP_RANGE(GFX, gt, IP_VER(12, 70), IP_VER(12, 71))) {
> > +		wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
> >   		wa_mcr_write_or(wal, XEHP_SQCM, EN_32B_ACCESS);
> >   	}
> > @@ -1825,7 +1823,7 @@ gt_init_workarounds(struct intel_gt *gt, struct i915_wa_list *wal)
> >   		return;
> >   	}
> > -	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
> > +	if (IS_GT_IP_RANGE(GFX, gt, IP_VER(12, 70), IP_VER(12, 71)))
> >   		xelpg_gt_workarounds_init(gt, wal);
> >   	else if (IS_PONTEVECCHIO(i915))
> >   		pvc_gt_workarounds_init(gt, wal);
> > @@ -2293,7 +2291,7 @@ static void pvc_whitelist_build(struct intel_engine_cs *engine)
> >   	blacklist_trtt(engine);
> >   }
> > -static void mtl_whitelist_build(struct intel_engine_cs *engine)
> > +static void xelpg_whitelist_build(struct intel_engine_cs *engine)
> >   {
> >   	struct i915_wa_list *w = &engine->whitelist;
> > @@ -2315,8 +2313,10 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
> >   	wa_init_start(w, engine->gt, "whitelist", engine->name);
> > -	if (IS_METEORLAKE(i915))
> > -		mtl_whitelist_build(engine);
> > +	if (engine->gt->type == GT_MEDIA)
> > +		; /* none yet */
> > +	else if (IS_GT_IP_RANGE(GFX, engine->gt, IP_VER(12, 70), IP_VER(12, 71)))
> > +		xelpg_whitelist_build(engine);
> >   	else if (IS_PONTEVECCHIO(i915))
> >   		pvc_whitelist_build(engine);
> >   	else if (IS_DG2(i915))
> > @@ -2974,10 +2974,12 @@ ccs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >    * function invoked by __intel_engine_init_ctx_wa().
> >    */
> >   static void
> > -add_render_compute_tuning_settings(struct drm_i915_private *i915,
> > +add_render_compute_tuning_settings(struct intel_gt *gt,
> >   				   struct i915_wa_list *wal)
> >   {
> > -	if (IS_METEORLAKE(i915) || IS_DG2(i915))
> > +	struct drm_i915_private *i915 = gt->i915;
> > +
> > +	if (IS_GT_IP_RANGE(GFX, gt, IP_VER(12, 70), IP_VER(12, 71)) || IS_DG2(i915))
> >   		wa_mcr_write_clr_set(wal, RT_CTRL, STACKID_CTRL, STACKID_CTRL_512);
> >   	/*
> > @@ -3007,7 +3009,7 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> >   {
> >   	struct drm_i915_private *i915 = engine->i915;
> > -	add_render_compute_tuning_settings(i915, wal);
> > +	add_render_compute_tuning_settings(engine->gt, wal);
> >   	if (GRAPHICS_VER(i915) >= 11) {
> >   		/* This is not a Wa (although referred to as
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > index 682ef2b5c7d5..6bb825d40451 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -431,6 +431,29 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
> >   #define IS_GRAPHICS_VER(i915, from, until) \
> >   	(GRAPHICS_VER(i915) >= (from) && GRAPHICS_VER(i915) <= (until))
> > +#define __IS_MEDIA_GT(gt) ((gt)->type == GT_MEDIA)
> > +#define __IS_GFX_GT(gt) (!__IS_MEDIA_GT(gt))
> > +#define __GT_VER_FULL(gt) (__IS_MEDIA_GT(gt) ? \
> > +			   MEDIA_VER_FULL((gt)->i915) : \
> > +			   GRAPHICS_VER_FULL((gt)->i915))
> > +
> > +/*
> > + * Check that a GT contains IP of the specified type and within the specified
> > + * IP range.  E.g.,
> > + *
> > + *    IS_GT_IP_RANGE(GFX, IP_VER(12, 70), IP_VER(12, 71))
> > + *    IS_GT_IP_RANGE(MEDIA, IP_VER(13, 00), IP_VER(18, 02))
> 
> I think without the magic GFX/MEDIA first argument would be better and more
> readable. That is simply IS_GT_IP_RANGE(gt, IP_VER(), IP_VER). GT type
> checks feel would be more readable on the outside, and some of them will
> even probably come from a level above. Even when split out on the same line
> it reads more readable to me, like:
> 
>   if (IS_MEDIA_GT(gt) && IS_GT_IP_RANGE(gt, IP_VER(), IP_VER())
> 

Hmm, that's the kind of logic I was kind of hoping we could eliminate
with this macro.  With hardware going forward, any IS_GT_IP_RANGE
without an associated GT check is going to be a bug so I was really
hoping to make it non-optional and ensure that there's always context
directly associated with the version numbers (since the numbers are
meaningless on their own without being tied to a specific IP type).
While keeping the check separate means you might be able to move the
type check to a higher layer of the code, it also means you're going to
be left with a bunch of stuff like

        if (IS_GT_IP_RANGE(gt, IP_VER(17, 0), IP_VER(18, 2)))

and it may not be as clear what IP(s) this is supposed to match on.


Matt

> Regards,
> 
> Tvrtko
> 
> > + *
> > + * Note that media version checks with this macro will only work on platforms
> > + * with standalone media design (i.e., media version 13 and higher).
> > + */
> > +#define IS_GT_IP_RANGE(type, gt, from, until) ( \
> > +	BUILD_BUG_ON_ZERO(from < IP_VER(2, 0)) + \
> > +	BUILD_BUG_ON_ZERO(until < from) + \
> > +	(__IS_##type##_GT(gt) && \
> > +	 __GT_VER_FULL(gt) >= (from) && \
> > +	 __GT_VER_FULL(gt) <= (until)))
> > +
> >   #define MEDIA_VER(i915)			(RUNTIME_INFO(i915)->media.ip.ver)
> >   #define MEDIA_VER_FULL(i915)		IP_VER(RUNTIME_INFO(i915)->media.ip.ver, \
> >   					       RUNTIME_INFO(i915)->media.ip.rel)

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
