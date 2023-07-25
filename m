Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6FB7761DF9
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 18:04:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D69210E152;
	Tue, 25 Jul 2023 16:04:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C0DC10E152
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 16:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690301064; x=1721837064;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=6X5PC9gm8KxI5i9t7UEU7wWEb5DFNr/mECybWUF/CDk=;
 b=LM6XS4uV5KiTH3qltUhfrH9kMX8PAk2x51+gMFH10ji93O75novwBLys
 bLMPdwxLB0C0bNYrvX5WsxMNleKdrjk9Q8NerJk0HwVFgH+oiYlxyzpWs
 Isf5a7iAXqL/scP3ALNbn3sEYqwPxCsZMshq23BwJx9vIw6Y1Y1yUTvl7
 82THPk/7rveLlIYph3dWCYD+VGtoX7sLmfY7ONOlxE4qx7v4PP38IQSBg
 WMVzUKhzz7UYoKjgJ/7LgwJJ4Talz8lZGbhJnhgbUmPk8pqaWbL5Ihr2m
 +cFrRte4LVetfA63AWWLnzOJHbdZT/1q2wWBycx11SyYrr90i+lRhlLRE Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="398688579"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="398688579"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 09:02:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="791448193"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="791448193"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 25 Jul 2023 09:02:43 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 09:02:43 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 09:02:43 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 25 Jul 2023 09:02:43 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 25 Jul 2023 09:02:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RV80G9/22yDtMlGqNYDcnAIKP0GMvaGxvFF0ofiVghmA+FjcVbGAnEr39Ec7vVhWs+NeNa9qs6TwkF6qu2lgCtmrg8rYAeKDzPGpEae8HNlDAEatUd1e8ixoLdPjlclqgMQEP63ucWtnggKVCAlshwaw7yjDZdmpqwjzyYaovd+LeW4F366C1M+CsUqby9n/jRxr7QVgGXP+hm2L7OCmOc/gR9KyHe7WTW0T1R174+b+tkjuYVHB6a7jwwj2B/LhSdHB/ygNXeiMhLB64O304gORYrJ/MWSAClxGKcm2PUc64kgZ+68qY/gJ+FnsN3lrGYgFz+07H6JQg0vxFKwgGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XgEIRn1zNYwYyvVUcWslRir6BlpeGuPdQzAYq7h/Qd0=;
 b=e5DmIV9e5wa0DAAv2pDrBpcvM4Ke0gUn05psdUSklWD3yVD0c6EI2zw/SdUtcmXSGx+1SnQ+FGk/1hDld+DkR5dGPGlm9ajzQ0xC7lMFQf8U+ZRO3PdMJ1SW43FQNOxSCQvTUAwjp/hfyjDnIDcOt1vdzdR3EbmQDXGbXDDtW6e+93aJOrFCeJnTGbkjncG/KgJyFzkn7NyGmo4h7r7xsfG3+MN6aUsyi1uEiOJjPxp1pqgLJVe9v9+DEfs1GssFC2LL304vCugr56GRkLu+4SZaKgjarh40wvctdgHUKVZhSmumqVt8Ve+xqO+68xhFLfEKoSJBoi7eO+g6FNi7fQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DS7PR11MB5968.namprd11.prod.outlook.com (2603:10b6:8:73::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6609.32; Tue, 25 Jul 2023 16:02:40 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6609.032; Tue, 25 Jul 2023
 16:02:40 +0000
Date: Tue, 25 Jul 2023 09:02:36 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20230725160236.GJ138014@mdroper-desk1.amr.corp.intel.com>
References: <20230725001312.1907319-11-matthew.d.roper@intel.com>
 <20230725001312.1907319-14-matthew.d.roper@intel.com>
 <7992e114-d00f-c32c-8fd2-0d5b28806a1c@linux.intel.com>
 <20230725153541.GG138014@mdroper-desk1.amr.corp.intel.com>
 <a2a1a2ab-9bd9-8d58-eab0-b45b2d564890@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <a2a1a2ab-9bd9-8d58-eab0-b45b2d564890@linux.intel.com>
X-ClientProxiedBy: SJ0PR05CA0006.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::11) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DS7PR11MB5968:EE_
X-MS-Office365-Filtering-Correlation-Id: f134ceeb-06f9-4642-df10-08db8d28925d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9iZn1xSGdgSJXr1DsMvMt5nPonQLh0Z4Zfu+fPSRamW502ssqwpb+ZZ4FR6wsfZ5O4RXK3YJ4bLrx5sfVZyXNdnHs+vb+Bkp5b7foQCnw64yFK7OGXs2+zJFX/MifPTNxjvpgAx4yUSl5XfWcXfbHjQ7x8bt2PpDdVBHCkTKfHZSAq5P2R7rXAb3m/flbhzT1DbkUgZApOR0TeDNeFRlOerCXcEnbFGf7H74W2FBDwUJF9mdj5l+NC0U4YcWNsPQ1qK8Ym9T85lVcHAcPPI88HHm+il+LIK5RaX2rwXo80dth06e1LCSDZMKQBqFfshoseEXPhMDV99eiFSFLOZPm39ybX3QI+1XAPXp4cDzaWMuaBEI0p6/PgUflg9Ir3HUdYhdSh9ET8VPD5IcCqjd+PImEI5tnpfHqS9sGNBcDeL7BI7r08+n+kho7n1xw6mENY+/X5tOhb2LTuV+2ppsk62uahACrIWALxFBGWyjZCrUn5OvnQ244hOw4VDJxCOF5rwTFBKCJBVnMJ3UOzfWcT8J5S3mRme0+4DZuliGPNqld7+3dBLSfKLW6vEnwmPA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(366004)(346002)(39860400002)(376002)(451199021)(33656002)(6506007)(6512007)(6486002)(6666004)(53546011)(1076003)(26005)(186003)(478600001)(2906002)(83380400001)(30864003)(6916009)(66476007)(41300700001)(66946007)(66556008)(5660300002)(8676002)(8936002)(38100700002)(86362001)(4326008)(316002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7jmkcSiyRc8R3b3NjffBy/Wl2uz1Cz9ObpPPECv4oTFNeWVuCkfZWM7CKjTU?=
 =?us-ascii?Q?HzolDN/ce2xpmP3alUfTiuMEoFpF/PLZrIS7+x6F7FKNCOhNk6pcMYMHoQ9I?=
 =?us-ascii?Q?qa1Du3oRZtC/LUOCQsHR9yIX5J1e66v+Ew2/eLb3fyONimRkImijSaLrj8mO?=
 =?us-ascii?Q?tEC3002zckzINgMbTDwT83qBA+X42FSDASHnulh7gbZRuTZJ0RkP51SPc92F?=
 =?us-ascii?Q?xxshIrP8d3hSjn8A12n4L58oHXksYbiijboSggiy/k2M7uJGovy2x1JJUiuV?=
 =?us-ascii?Q?xGzDAmlX7dmEacrl+LCCQ2YhZIV644OSJXJKfeXi7owaCMzH2JBtIknPf23O?=
 =?us-ascii?Q?bePpX1tsBXq+4oM/LeXR76ryLL44BvUlqtzmE2owhe/o2VQhtdkirskJZT37?=
 =?us-ascii?Q?8wGN6NwA6xObKhZ/NL2xK+6w5d5i9RU0G0JUNrS3ft3tZFD84Q/2h8kVpfoX?=
 =?us-ascii?Q?dbg4Z6ezyl6oIroEdancZrNvzJdbKv2uesRATUzB8NXWqoCqYw+0640pDbQr?=
 =?us-ascii?Q?svklRlD9MmURoBM2j9ZPiOLabnYmJMXgwFFKa2mwtSDBHzOhmNkasYF2KWsV?=
 =?us-ascii?Q?nMAtAzXNfIlgKkcLH7F3p7SVHTw3hFI0sNk2uztpGs9HyDAB/pKpo86hGz3Z?=
 =?us-ascii?Q?u/CL+v7PAKfbXI+DWBMJ+K4nUyeOSfwW/w07JjuV2kLs15eRfmVlvF1/1F9i?=
 =?us-ascii?Q?9uv4gGSBzGB39YoiBRmrEPPDQoKPO86M6K2+jMY8IyOSHwHQadyM9zvPHReD?=
 =?us-ascii?Q?ts5xCNf7yIZ/AUzbBursGondTGuB37uB3p7/WMg3gBUkBNioaorCHIdAELZi?=
 =?us-ascii?Q?zxp9ll32GYaMEHiPvKmhpbc7UsWjjbArpAg5Ljtj5XrFKLB73tZhI/1F5mVz?=
 =?us-ascii?Q?b9NVfNI9j1gTK90CT7fuOOQze+hF19/l3u2uSdonjKRiSZy+jaeThujfO9mu?=
 =?us-ascii?Q?/8R6QPA/o5SMEJCrKxiVKBZ+xuFphAFmylUnZHou98Td+eBYOk+rvqcR/40n?=
 =?us-ascii?Q?TDOQxNk496AiPxBjm6J7rlwBvVJxKUwvPcKTXPhh7oYg6ED0aTaQek7M9ukc?=
 =?us-ascii?Q?MAguAj5mtnKL8Q+vjkbC6fmiF6OJEVFmNUXoSomVELaQcjtBNNsdxLYDOhGG?=
 =?us-ascii?Q?R5SMIaEvFLN0hPf6btUT8F6+JuhOPN1g7rwQkIDksVdOcQyqlFGeoub8RlUS?=
 =?us-ascii?Q?78YLhkfDfmMEB7I9z4csrY/foqqC+FfYGzP6f9nCZvq1AvIzp5JoeYPWyYZj?=
 =?us-ascii?Q?m4g5asi6nGrg48Fus/eliOe/d9v2X9uqeMEkfby3jmQ8Ezupb0YFJ9r10qa9?=
 =?us-ascii?Q?iSoWEhn/iJPFl2HnpfZHAMc5c+JoIgPsXG7r5VQxbehqiEocwpIavktktcgb?=
 =?us-ascii?Q?DD3DgkZoh/XtebAf5B67D4qGoyq4c0aDxD3kUnCV2KkJdOY9jSPZ794CDRiS?=
 =?us-ascii?Q?DQwFNPd2ziV05TiuKY4VrcoT2ss1ExLFMdLeFNg/j7bBJM+bU10Gkb3fTSqG?=
 =?us-ascii?Q?ev7eCobt//KfJp9e7RM1iNvPhKuid71gxBG6GEO3imAd/h++oY5a5ATBw9cE?=
 =?us-ascii?Q?4SuAjaq29URX2ym2lXSAGpfBBhKA4fGmMTBk3kjDem2Bg9qljMy+edRkS4+6?=
 =?us-ascii?Q?gQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f134ceeb-06f9-4642-df10-08db8d28925d
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2023 16:02:39.8054 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2gwHgLWJO/5Vp5dfvHMnAoSWq6qVs+qJr+g4tCNraqPkmIehnqVd9ZWJwVrc4WWKX2pAPhl41vFBLxqclao8QP/5l5/sDFKKluM7Sn4ddd4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5968
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

On Tue, Jul 25, 2023 at 04:52:07PM +0100, Tvrtko Ursulin wrote:
> 
> On 25/07/2023 16:35, Matt Roper wrote:
> > On Tue, Jul 25, 2023 at 01:02:54PM +0100, Tvrtko Ursulin wrote:
> > > 
> > > On 25/07/2023 01:13, Matt Roper wrote:
> > > > Although some of our Xe_LPG workarounds were already being applied based
> > > > on IP version correctly, others were matching on MTL as a base platform,
> > > > which is incorrect.  Although MTL is the only platform right now that
> > > > uses Xe_LPG IP, this may not always be the case.  If a future platform
> > > > re-uses this graphics IP, the same workarounds should be applied, even
> > > > if it isn't a "MTL" platform.
> > > > 
> > > > We were also incorrectly applying Xe_LPG workarounds/tuning to the
> > > > Xe_LPM+ media IP in one or two places; we should make sure that we don't
> > > > try to apply graphics workarounds to the media GT and vice versa where
> > > > they don't belong.  A new helper macro IS_GT_IP_RANGE() is added to help
> > > > ensure this is handled properly -- it checks that the GT matches the IP
> > > > type being tested as well as the IP version falling in the proper range.
> > > > 
> > > > Note that many of the stepping-based workarounds are still incorrectly
> > > > checking for a MTL base platform; that will be remedied in a later
> > > > patch.
> > > > 
> > > > v2:
> > > >    - Rework macro into a slightly more generic IS_GT_IP_RANGE() that can
> > > >      be used for either GFX or MEDIA checks.
> > > > 
> > > > Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> > > > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > > > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > > > ---
> > > >    drivers/gpu/drm/i915/gt/intel_workarounds.c | 38 +++++++++++----------
> > > >    drivers/gpu/drm/i915/i915_drv.h             | 23 +++++++++++++
> > > >    2 files changed, 43 insertions(+), 18 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > index d8a1eaa44e69..c4663541c5dd 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > @@ -805,8 +805,8 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
> > > >    	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
> > > >    }
> > > > -static void mtl_ctx_gt_tuning_init(struct intel_engine_cs *engine,
> > > > -				   struct i915_wa_list *wal)
> > > > +static void xelpg_ctx_gt_tuning_init(struct intel_engine_cs *engine,
> > > > +				     struct i915_wa_list *wal)
> > > >    {
> > > >    	struct drm_i915_private *i915 = engine->i915;
> > > > @@ -817,12 +817,12 @@ static void mtl_ctx_gt_tuning_init(struct intel_engine_cs *engine,
> > > >    		wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0, false);
> > > >    }
> > > > -static void mtl_ctx_workarounds_init(struct intel_engine_cs *engine,
> > > > -				     struct i915_wa_list *wal)
> > > > +static void xelpg_ctx_workarounds_init(struct intel_engine_cs *engine,
> > > > +				       struct i915_wa_list *wal)
> > > >    {
> > > >    	struct drm_i915_private *i915 = engine->i915;
> > > > -	mtl_ctx_gt_tuning_init(engine, wal);
> > > > +	xelpg_ctx_gt_tuning_init(engine, wal);
> > > >    	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > > >    	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> > > > @@ -931,8 +931,8 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
> > > >    	if (engine->class != RENDER_CLASS)
> > > >    		goto done;
> > > > -	if (IS_METEORLAKE(i915))
> > > > -		mtl_ctx_workarounds_init(engine, wal);
> > > > +	if (IS_GT_IP_RANGE(GFX, engine->gt, IP_VER(12, 70), IP_VER(12, 71)))
> > > > +		xelpg_ctx_workarounds_init(engine, wal);
> > > >    	else if (IS_PONTEVECCHIO(i915))
> > > >    		; /* noop; none at this time */
> > > >    	else if (IS_DG2(i915))
> > > > @@ -1790,10 +1790,8 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> > > >     */
> > > >    static void gt_tuning_settings(struct intel_gt *gt, struct i915_wa_list *wal)
> > > >    {
> > > > -	if (IS_METEORLAKE(gt->i915)) {
> > > > -		if (gt->type != GT_MEDIA)
> > > > -			wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
> > > > -
> > > > +	if (IS_GT_IP_RANGE(GFX, gt, IP_VER(12, 70), IP_VER(12, 71))) {
> > > > +		wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
> > > >    		wa_mcr_write_or(wal, XEHP_SQCM, EN_32B_ACCESS);
> > > >    	}
> > > > @@ -1825,7 +1823,7 @@ gt_init_workarounds(struct intel_gt *gt, struct i915_wa_list *wal)
> > > >    		return;
> > > >    	}
> > > > -	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
> > > > +	if (IS_GT_IP_RANGE(GFX, gt, IP_VER(12, 70), IP_VER(12, 71)))
> > > >    		xelpg_gt_workarounds_init(gt, wal);
> > > >    	else if (IS_PONTEVECCHIO(i915))
> > > >    		pvc_gt_workarounds_init(gt, wal);
> > > > @@ -2293,7 +2291,7 @@ static void pvc_whitelist_build(struct intel_engine_cs *engine)
> > > >    	blacklist_trtt(engine);
> > > >    }
> > > > -static void mtl_whitelist_build(struct intel_engine_cs *engine)
> > > > +static void xelpg_whitelist_build(struct intel_engine_cs *engine)
> > > >    {
> > > >    	struct i915_wa_list *w = &engine->whitelist;
> > > > @@ -2315,8 +2313,10 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
> > > >    	wa_init_start(w, engine->gt, "whitelist", engine->name);
> > > > -	if (IS_METEORLAKE(i915))
> > > > -		mtl_whitelist_build(engine);
> > > > +	if (engine->gt->type == GT_MEDIA)
> > > > +		; /* none yet */
> > > > +	else if (IS_GT_IP_RANGE(GFX, engine->gt, IP_VER(12, 70), IP_VER(12, 71)))
> > > > +		xelpg_whitelist_build(engine);
> > > >    	else if (IS_PONTEVECCHIO(i915))
> > > >    		pvc_whitelist_build(engine);
> > > >    	else if (IS_DG2(i915))
> > > > @@ -2974,10 +2974,12 @@ ccs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> > > >     * function invoked by __intel_engine_init_ctx_wa().
> > > >     */
> > > >    static void
> > > > -add_render_compute_tuning_settings(struct drm_i915_private *i915,
> > > > +add_render_compute_tuning_settings(struct intel_gt *gt,
> > > >    				   struct i915_wa_list *wal)
> > > >    {
> > > > -	if (IS_METEORLAKE(i915) || IS_DG2(i915))
> > > > +	struct drm_i915_private *i915 = gt->i915;
> > > > +
> > > > +	if (IS_GT_IP_RANGE(GFX, gt, IP_VER(12, 70), IP_VER(12, 71)) || IS_DG2(i915))
> > > >    		wa_mcr_write_clr_set(wal, RT_CTRL, STACKID_CTRL, STACKID_CTRL_512);
> > > >    	/*
> > > > @@ -3007,7 +3009,7 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> > > >    {
> > > >    	struct drm_i915_private *i915 = engine->i915;
> > > > -	add_render_compute_tuning_settings(i915, wal);
> > > > +	add_render_compute_tuning_settings(engine->gt, wal);
> > > >    	if (GRAPHICS_VER(i915) >= 11) {
> > > >    		/* This is not a Wa (although referred to as
> > > > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > > > index 682ef2b5c7d5..6bb825d40451 100644
> > > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > > @@ -431,6 +431,29 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
> > > >    #define IS_GRAPHICS_VER(i915, from, until) \
> > > >    	(GRAPHICS_VER(i915) >= (from) && GRAPHICS_VER(i915) <= (until))
> > > > +#define __IS_MEDIA_GT(gt) ((gt)->type == GT_MEDIA)
> > > > +#define __IS_GFX_GT(gt) (!__IS_MEDIA_GT(gt))
> > > > +#define __GT_VER_FULL(gt) (__IS_MEDIA_GT(gt) ? \
> > > > +			   MEDIA_VER_FULL((gt)->i915) : \
> > > > +			   GRAPHICS_VER_FULL((gt)->i915))
> > > > +
> > > > +/*
> > > > + * Check that a GT contains IP of the specified type and within the specified
> > > > + * IP range.  E.g.,
> > > > + *
> > > > + *    IS_GT_IP_RANGE(GFX, IP_VER(12, 70), IP_VER(12, 71))
> > > > + *    IS_GT_IP_RANGE(MEDIA, IP_VER(13, 00), IP_VER(18, 02))
> > > 
> > > I think without the magic GFX/MEDIA first argument would be better and more
> > > readable. That is simply IS_GT_IP_RANGE(gt, IP_VER(), IP_VER). GT type
> > > checks feel would be more readable on the outside, and some of them will
> > > even probably come from a level above. Even when split out on the same line
> > > it reads more readable to me, like:
> > > 
> > >    if (IS_MEDIA_GT(gt) && IS_GT_IP_RANGE(gt, IP_VER(), IP_VER())
> > > 
> > 
> > Hmm, that's the kind of logic I was kind of hoping we could eliminate
> > with this macro.  With hardware going forward, any IS_GT_IP_RANGE
> > without an associated GT check is going to be a bug so I was really
> > hoping to make it non-optional and ensure that there's always context
> > directly associated with the version numbers (since the numbers are
> > meaningless on their own without being tied to a specific IP type).
> > While keeping the check separate means you might be able to move the
> > type check to a higher layer of the code, it also means you're going to
> > be left with a bunch of stuff like
> > 
> >          if (IS_GT_IP_RANGE(gt, IP_VER(17, 0), IP_VER(18, 2)))
> > 
> > and it may not be as clear what IP(s) this is supposed to match on.
> 
> I see.. how about IS_MEDIA_GT_IP_RANGE then? Or would that be going full
> circle by any chance? Just because I somehow find IS_GT_IP_RANGE(*GFX*, ..
> hard to parse. If this is not in a hurry perhaps wait for Jani to come back
> and provide a second opinion or another alternative.

That's sort of going back to the design I had in v1 with
GT_GRAPHICS_RANGE() and GT_MEDIA_RANGE().

But yeah, there's no urgent rush on this, so I'm fine tabling this until
Jani gets back.


Matt

> 
> Regards,
> 
> Tvrtko
> 
> 
> > 
> > Matt
> > 
> > > Regards,
> > > 
> > > Tvrtko
> > > 
> > > > + *
> > > > + * Note that media version checks with this macro will only work on platforms
> > > > + * with standalone media design (i.e., media version 13 and higher).
> > > > + */
> > > > +#define IS_GT_IP_RANGE(type, gt, from, until) ( \
> > > > +	BUILD_BUG_ON_ZERO(from < IP_VER(2, 0)) + \
> > > > +	BUILD_BUG_ON_ZERO(until < from) + \
> > > > +	(__IS_##type##_GT(gt) && \
> > > > +	 __GT_VER_FULL(gt) >= (from) && \
> > > > +	 __GT_VER_FULL(gt) <= (until)))
> > > > +
> > > >    #define MEDIA_VER(i915)			(RUNTIME_INFO(i915)->media.ip.ver)
> > > >    #define MEDIA_VER_FULL(i915)		IP_VER(RUNTIME_INFO(i915)->media.ip.ver, \
> > > >    					       RUNTIME_INFO(i915)->media.ip.rel)
> > 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
