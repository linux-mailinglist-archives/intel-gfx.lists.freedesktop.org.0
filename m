Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 033D273914F
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 23:11:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1561910E35C;
	Wed, 21 Jun 2023 21:11:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9004110E356
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 21:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687381872; x=1718917872;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=LSaDTh1TZmmYRyRA7ehiCAaLHMXPfkrIjW3Oev+eVHM=;
 b=IdfQYRWsN0Y9tkwqinRYdn/DI2MrPX1YCx7gdmOIvBYpRd+mcuGCYGc0
 v5SlNRV3ewLQ57Ng40mpyWs77rPi2iVpCFtdrN7ZL3gOAHfDRyVKtoq2T
 rPzG8FXuyl5siz/j44+DzCSkoI1zkChbdpdPYNmu242Hr47iZAnmjtvH5
 g/X9rBRNkkeUnlLR68IgZgpFSduKzfOnCHZ+f/fs5OidomVxkuWkSwOTn
 MbtEm+78/QyrkiW8kaZt0hxbuF3qGmN92qLCI1JNw5skMgEfTl88c7l1f
 dOMh6SonK/kSouAoKwDNQiH6UIdVigJe1ksXpbmrPuP6/bwfN8wcffvO2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="360322251"
X-IronPort-AV: E=Sophos;i="6.00,261,1681196400"; d="scan'208";a="360322251"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 14:11:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="784662596"
X-IronPort-AV: E=Sophos;i="6.00,261,1681196400"; d="scan'208";a="784662596"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 21 Jun 2023 14:11:11 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 14:11:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 21 Jun 2023 14:11:10 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 21 Jun 2023 14:11:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SyNSa4ZcajKGB0dlN+EnW+1AW6TEp2zwOm+dq+kq5hMtf/QNOPoRHhSnrcWm4afya737opEgd/REi6ZKg8HZdPbCnY3s2Vvrrj8Yvz6geU6wBkv4w+9vmtbk07bRCKnv4mm1WuAhIxbZozXj+ZT0kWiDdF/V6cckkry/p2O6BeBK/qWMZIhD16UJOBjFHB4NslUTjuJPL7XthH4fZm9kVHc2LLtpY5DN96pHqzO+iHYqg6yf7ikcQaRM53KZigXMdl9L4KOUTvc0I1ypy8W5/d2NnMV0wuV2p3p89PzS8XsQz8vyeEXaCDk0KQE+ZAbeDWOEZAghO8pbFj4IkH/cjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HzTwadQBNfg170R2EIAfE+TmrAicoWYCrYXOlWtA5as=;
 b=FwH2p38NVKJb+DE9EZcwppz9sATfcKx32CchW8BoFNUNZZnTRqjWMd77u9DyOvevUA3w97hLATEBGh+BPXzhdhywJNbZfPIBdeSPV5Kg73Myl942yW/d1opuDboyXg4r71m4nshosxYLS0jEbRo9lIm8YuTeZeLDelgmdDL3u4oCwTzCkuZVTiHX2epdGXzz1cHHh5U/WWP3wrWL0GXX0kClWygrF4fADTNYIlVfyM0EYf+WH+rQUacmC+jLNXve0FAyVfy1EAPgs13Re2JJ+KyaPJouyn4Xl884XYU6EWUL5C+UZJoNxUUo/WEP5qVhI8cKe6x7TVM/Xe0zfqDxFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CH0PR11MB8167.namprd11.prod.outlook.com (2603:10b6:610:192::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6521.23; Wed, 21 Jun 2023 21:11:07 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%7]) with mapi id 15.20.6500.036; Wed, 21 Jun 2023
 21:11:07 +0000
Date: Wed, 21 Jun 2023 14:11:04 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20230621211104.GE5433@mdroper-desk1.amr.corp.intel.com>
References: <20230615095421.3135415-1-dnyaneshwar.bhadane@intel.com>
 <20230616114200.3228284-1-dnyaneshwar.bhadane@intel.com>
 <20230616114200.3228284-12-dnyaneshwar.bhadane@intel.com>
 <a2a59852-d13a-50e8-7491-fd2f95709419@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <a2a59852-d13a-50e8-7491-fd2f95709419@linux.intel.com>
X-ClientProxiedBy: SJ0PR05CA0193.namprd05.prod.outlook.com
 (2603:10b6:a03:330::18) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CH0PR11MB8167:EE_
X-MS-Office365-Filtering-Correlation-Id: 94c338fa-f7ca-410a-7cca-08db729c0791
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ToGcnC0vPeuXFUQNrVrfNXCs+icFm8IG2aR7drsVgWqfe7Yib78FlDXX+rJFgmwuSFUZgfb/2D2edMley7fnPft2OhQe5mZv2VYicOgn/Q9gb55ikHwqC9jexgYVq6ZBT1qHv5IHJ/VW/vxxCS2AH6/P8sqzKVCaBSIes5O884uiw5eVHLNa0H4qDiFZuH5ejFhT9ubr5TBYRTso986WZYuUZwm5zv8vAjJeOLe9rulfNPfVnV31PQLr3JKTzt0PuLrB76FLy0jfXd0L/nvEZWxEbBtHNeqjXvCM5xRzSLG4nrgI0ERgQZVk8nZkxXUehPv9TRdtyTMeKfaAIRoyVb3YO3nhfB6FjkKh1FMGhimV82HUHvPqRTv6oHdh58zd39qhgz6sUyxbWvsz8PqwKmaHbP1q8ts5lkYurx2eOT8OI8DOi2SszaW9EJqTHsyfvnINnfRCf2e9SqaRQTjDYMi7093cmpB96n7xoqmRv1uGnvMMocXyCg3Sm16QToDD7XcE7o3eBrCAu5HvYZjD7EAlCc1KsLmIiq80YoOJj3ECKNI7+C4OGGlkl4/HoOk9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(366004)(346002)(376002)(136003)(451199021)(38100700002)(82960400001)(53546011)(83380400001)(6506007)(186003)(6486002)(26005)(30864003)(5660300002)(1076003)(8936002)(8676002)(41300700001)(2906002)(4326008)(6666004)(33656002)(478600001)(66946007)(66556008)(66476007)(6916009)(316002)(6512007)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wgGky4al0NW43+qeCuiL0iQowEVxqhlcfyfyfpRuNvlkHRyj6HZgl6uW9E5+?=
 =?us-ascii?Q?AQvuIbDQe0M8Fpf1tDC+t7F0bMCTjJldVRVNzfxy1VexjJAEbvqtep4QD0eU?=
 =?us-ascii?Q?OtUbGLV2wJM2ES3KZJ723GmhmNq577HzLnct4k2GP/+CPdjpjxrqgSHz8xlr?=
 =?us-ascii?Q?drfOjqJBSdzauBpEGDMtDprQaZS5hrimh1rKxlWEEm960Av73IiJTrjq7LqZ?=
 =?us-ascii?Q?AaUX651aYOsrQM+2kcStQpLovm/kNAPos4/CEEuruqUO+TQ8VerjGtKCG6Xv?=
 =?us-ascii?Q?zdqDAeGPi2bYAsXqfHXbF37DD96v+GbaJJ5mGbRW8VM8bUEVqdGnI6Yqy/YG?=
 =?us-ascii?Q?YdbeEdb2RfTOo2k7jlq0YtTRUQuHige/r1/nSIBja0E2ZCIEAL3u6Pacu/vB?=
 =?us-ascii?Q?oXJWdccl463Dgcp04XMPoQq0J2ROK0EDblxpSmyFRdtzkeBq32jc7augA70X?=
 =?us-ascii?Q?4LY8Wla6NGJZHdTpQo+PRCdNLT2aVmVrmY+7KYB/j27t3YMUnX8jEEXJZNqs?=
 =?us-ascii?Q?E5AIbtq2BZ5Y+Qjkbs9t/UdgNKjMjrmFY58qIwZWw3HhJTp770di7Pan8Z4a?=
 =?us-ascii?Q?ntqsey7fgBQ3abMweyUCMWmU0MugFIhdRalEQKY4DjYwFaKEmDBkNuEntoY4?=
 =?us-ascii?Q?6T9drf03id8nGyGK/cgKiIMAutxvqGYkqowh1grYUIq9XKwmARNaNfzm4A/x?=
 =?us-ascii?Q?rbRo7L+1SMQrkCF69P56eocL63hjxj4jj+64/qqZcJ2rts1devECYa+/Za/O?=
 =?us-ascii?Q?JcZJMQotySHe6jED4izgCKOUoIOBterBrsSy6ylgWNQFD9aZ5jr/b0oFCuwH?=
 =?us-ascii?Q?t+h5hsByMNb8xjve1gOmo7wFTYW1L4HsP0ND+Mv9h5D6S+Kwgu2OAhHzsSTD?=
 =?us-ascii?Q?HV8BjHcv1rEzDMDKXbTrgLBlS04zIYM8mq4ZLsnvwXE1Cw8+AJ4CCozgy5X0?=
 =?us-ascii?Q?W4FohX8G/Gz5RKU90zuPNwulKqKAFewylxTGrMeneFSFTBPqZcn7Xg9K/Qyf?=
 =?us-ascii?Q?BhW+cAc9mW9uTAC0saZ+DQjfbCa/eOcKcVnNE7RlWckYvFFcSMwKNs5zi5zz?=
 =?us-ascii?Q?zTvuyfQyvM/GfccdjeJWx4ipQoMIy1aUM9KJNoxlc3Vd4rcXLfwwtwLPwwr5?=
 =?us-ascii?Q?T03A9Om+xUyVw4MB0tB+pDENknsq5dVSI5QVSadDocv4N9nwvv5xUcqUgz8z?=
 =?us-ascii?Q?HOSwck7CeLX7TLLtCxbd3KT60NnkcjsADfObJuWf3QZPOhwlwYcHYF2qtiTW?=
 =?us-ascii?Q?8r7QeC23CGSaNKOjVSsyPAJ8ezsKL0r64HbRzbJ+fEIPmsZ4nv47D76nGjkZ?=
 =?us-ascii?Q?XLF6bpjignxyFoKdStqG+te2VXZ/BbmR9xUvj1BCERIW7yjVXmGjJE9n4iyD?=
 =?us-ascii?Q?/vkiq/6LB/dmE032tfghmHqEoWBll0uVFgI/pA+5FqPMRcTOG8rSTygz7TPJ?=
 =?us-ascii?Q?xiCgLIQ6dURm5ENQ/eTxDfpxdnIlhfJxLuv4gud7lJeYdTzVc7521nVh5u2W?=
 =?us-ascii?Q?Lj9o33mHunuqsCWhth+OanpBB2t9kH4TsoZR0Ujs+oa9zoJxx3qkPcKKligj?=
 =?us-ascii?Q?fyqGl+VDUQLgmpLAm5/kQoBCNBWCSS8yXNpJ4kPVAwlAEe0pvByaBT8zFuDG?=
 =?us-ascii?Q?Kw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 94c338fa-f7ca-410a-7cca-08db729c0791
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jun 2023 21:11:07.3949 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N2q9lIwrXENBvowDRPHb9ILwR/5vq4P+3bCT3BCEKu6xO3oBNCmdno38zJyDeSQOjBmP4RynjQJ7FyHrdlUaWkAPkAABOUObCf0datxs7dk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8167
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 11/11] drm/i915/mtl: s/MTL/METEORLAKE for
 platform/subplatform defines
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
Cc: intel-gfx@lists.freedesktop.org,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 16, 2023 at 01:05:08PM +0100, Tvrtko Ursulin wrote:
> 
> On 16/06/2023 12:42, Dnyaneshwar Bhadane wrote:
> > Follow consistent naming convention. Replace MTL with
> > METEORLAKE
> > 
> > Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
> >   drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
> >   drivers/gpu/drm/i915/display/intel_psr.c      | 10 ++---
> >   .../drm/i915/display/skl_universal_plane.c    |  4 +-
> >   drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |  8 ++--
> >   drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
> >   .../drm/i915/gt/intel_execlists_submission.c  |  2 +-
> >   drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  4 +-
> >   drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 +-
> >   drivers/gpu/drm/i915/gt/intel_rc6.c           |  2 +-
> >   drivers/gpu/drm/i915/gt/intel_workarounds.c   | 44 +++++++++----------
> >   drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  4 +-
> >   .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  4 +-
> >   drivers/gpu/drm/i915/i915_drv.h               |  6 +--
> >   drivers/gpu/drm/i915/i915_perf.c              |  4 +-
> >   15 files changed, 51 insertions(+), 51 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index 7f8b2d7713c7..6358a8b26172 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -1093,7 +1093,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
> >   	/* Wa_14016291713 */
> >   	if ((IS_DISPLAY_VER(i915, 12, 13) ||
> > -	     IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0)) &&
> > +	     IS_METEORLAKE_DISPLAY_STEP(i915, STEP_A0, STEP_C0)) &&
> >   	    crtc_state->has_psr) {
> >   		plane_state->no_fbc_reason = "PSR1 enabled (Wa_14016291713)";
> >   		return 0;
> > diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> > index f7608d363634..8c3158b188ef 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> > @@ -92,7 +92,7 @@ int intel_pmdemand_init(struct drm_i915_private *i915)
> >   				     &pmdemand_state->base,
> >   				     &intel_pmdemand_funcs);
> > -	if (IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
> > +	if (IS_METEORLAKE_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
> >   		/* Wa_14016740474 */
> >   		intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TIMEOUT_DISABLE);
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> > index cf82cc295319..00c98c2b4324 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -1247,7 +1247,7 @@ static void wm_optimization_wa(struct intel_dp *intel_dp,
> >   	bool set_wa_bit = false;
> >   	/* Wa_14015648006 */
> > -	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> > +	if (IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> >   	    IS_DISPLAY_VER(dev_priv, 11, 13))
> >   		set_wa_bit |= crtc_state->wm_level_disabled;
> > @@ -1320,7 +1320,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
> >   		 * All supported adlp panels have 1-based X granularity, this may
> >   		 * cause issues if non-supported panels are used.
> >   		 */
> > -		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > +		if (IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> >   			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(cpu_transcoder), 0,
> >   				     ADLP_1_BASED_X_GRANULARITY);
> >   		else if (IS_ALDERLAKE_P(dev_priv))
> > @@ -1328,7 +1328,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
> >   				     ADLP_1_BASED_X_GRANULARITY);
> >   		/* Wa_16012604467:adlp,mtl[a0,b0] */
> > -		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > +		if (IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> >   			intel_de_rmw(dev_priv,
> >   				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder), 0,
> >   				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS);
> > @@ -1489,7 +1489,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
> >   	if (intel_dp->psr.psr2_enabled) {
> >   		/* Wa_16012604467:adlp,mtl[a0,b0] */
> > -		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > +		if (IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> >   			intel_de_rmw(dev_priv,
> >   				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder),
> >   				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
> > @@ -1963,7 +1963,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
> >   		goto skip_sel_fetch_set_loop;
> >   	/* Wa_14014971492 */
> > -	if ((IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> > +	if ((IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> >   	     IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv)) &&
> >   	    crtc_state->splitter.enable)
> >   		pipe_clip.y1 = 0;
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 636a88827a8f..2458a9ea25ba 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -2169,8 +2169,8 @@ static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
> >   				 enum pipe pipe, enum plane_id plane_id)
> >   {
> >   	/* Wa_14017240301 */
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +	if (IS_METEORLAKE_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_METEORLAKE_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> 
> Reading this casually, the amount of the checks exactly like the above
> smells like we could easily add a "is mtl graphics step" helper which does
> not care about the subplatform variant and make the source and binary more
> compact. Might as well while churning the codebase.
> 
> Something like:
> 
> #define IS_ANY_MTL_GRAPHICS_STEP(__i915, since, until) \
> 	(IS_METEORLAKE(__i915) && \
> 	 IS_GRAPHICS_STEP(__i915, since, until))
> 
> ?
> 
> MTL_ANY, ANY_MTL, or a 3rd option I don't know.

I'm not sure I agree with this; the hardware design forked, meaning that
even though some workarounds will be common between both branches of the
hardware design, each branch is also expected to have its own unique
workarounds as well.  The steppings for the "common" workarounds may or
may not be the same between branches (it's mostly luck that they happen
to align for the A steppings of these two variants).  This is basically
the same situation as DG2's G10/G11/G12 variants, although for MTL is
seems the timing for the forks made it more common for the stepping
bounds to wind up being the same; there's no real expectation that that
will continue to hold true for future workarounds, or for future
variants of this IP that might show up in the future.

Actually what we really need to do is disassociate workaround like this
from the platform ("MTL") entirely and tie them solely to the IP's
version/stepping.  Given how graphics, media, and display IP have been
separated in a more fundamental manner at the hardware level, it's very
possible that some future platform could directly re-use one of the IP
versions we currently associate with "MTL," but provide different IP
versions for the other IP blocks.  Ultimately we want workarounds for
GMDID-based platforms something more along the lines of

   if (IS_GMDID_GRAPHICS_STEP(IP_VER(12, 71), STEP_B0, STEP_D0))
           ...

That way if a platform has graphics version 12.71 hardware in the listed
stepping range, then the workaround applies.  It doesn't matter whether
the platform containing that IP version is one of today's Meteor Lake
platforms, or some future "FooBar Lake" that happens to re-use the same
chiplet in an otherwise new design.

Of course changes to workaround bound handling is probably something for
a separate patch series; it's a bit beyond the scope of the direct
renaming that Dnyaneshwar's series is focused on.


Matt

> 
> Regards,
> 
> Tvrtko
> 
> >   		return false;
> >   	/* Wa_22011186057 */
> > diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > index 3173e811463d..ec0771dc662a 100644
> > --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > @@ -180,8 +180,8 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u32 *cs, const i915_reg_t inv
> >   static int mtl_dummy_pipe_control(struct i915_request *rq)
> >   {
> >   	/* Wa_14016712196 */
> > -	if (IS_MTL_GRAPHICS_STEP(rq->engine->i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(rq->engine->i915, P, STEP_A0, STEP_B0)) {
> > +	if (IS_METEORLAKE_GRAPHICS_STEP(rq->engine->i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_METEORLAKE_GRAPHICS_STEP(rq->engine->i915, P, STEP_A0, STEP_B0)) {
> >   		u32 *cs;
> >   		/* dummy PIPE_CONTROL + depth flush */
> > @@ -765,8 +765,8 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
> >   		     PIPE_CONTROL_FLUSH_ENABLE);
> >   	/* Wa_14016712196 */
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +	if (IS_METEORLAKE_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_METEORLAKE_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> >   		/* dummy PIPE_CONTROL + depth flush */
> >   		cs = gen12_emit_pipe_control(cs, 0,
> >   					     PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0);
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > index 0aff5bb13c53..f9af6b1a7c01 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > @@ -1616,7 +1616,7 @@ static int __intel_engine_stop_cs(struct intel_engine_cs *engine,
> >   	 * Wa_22011802037: Prior to doing a reset, ensure CS is
> >   	 * stopped, set ring stop bit and prefetch disable bit to halt CS
> >   	 */
> > -	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> > +	if (IS_METEORLAKE_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> >   	    (GRAPHICS_VER(engine->i915) >= 11 &&
> >   	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
> >   		intel_uncore_write_fw(uncore, RING_MODE_GEN7(engine->mmio_base),
> > diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > index 2ebd937f3b4c..901ecd59afbc 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > @@ -3001,7 +3001,7 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
> >   	 * Wa_22011802037: In addition to stopping the cs, we need
> >   	 * to wait for any pending mi force wakeups
> >   	 */
> > -	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> > +	if (IS_METEORLAKE_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> >   	    (GRAPHICS_VER(engine->i915) >= 11 &&
> >   	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
> >   		intel_engine_wait_for_pending_mi_fw(engine);
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > index 0b414eae1683..1dc7180eeb27 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > @@ -166,8 +166,8 @@ void intel_gt_mcr_init(struct intel_gt *gt)
> >   		gt->steering_table[OADDRM] = xelpmp_oaddrm_steering_table;
> >   	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70)) {
> >   		/* Wa_14016747170 */
> > -		if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -		    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +		if (IS_METEORLAKE_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > +		    IS_METEORLAKE_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> >   			fuse = REG_FIELD_GET(MTL_GT_L3_EXC_MASK,
> >   					     intel_uncore_read(gt->uncore,
> >   							       MTL_GT_ACTIVITY_FACTOR));
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index a4ec20aaafe2..cd9a76f048f3 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -1370,8 +1370,8 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
> >   					      cs, GEN12_GFX_CCS_AUX_NV);
> >   	/* Wa_16014892111 */
> > -	if (IS_MTL_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(ce->engine->i915, P, STEP_A0, STEP_B0) ||
> > +	if (IS_METEORLAKE_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_METEORLAKE_GRAPHICS_STEP(ce->engine->i915, P, STEP_A0, STEP_B0) ||
> >   	    IS_DG2(ce->engine->i915))
> >   		cs = dg2_emit_draw_watermark_setting(cs);
> > diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> > index 58bb1c55294c..cc8b09b8a7fa 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> > @@ -526,7 +526,7 @@ static bool rc6_supported(struct intel_rc6 *rc6)
> >   		return false;
> >   	}
> > -	if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
> > +	if (IS_METEORLAKE_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
> >   	    gt->type == GT_MEDIA) {
> >   		drm_notice(&i915->drm,
> >   			   "Media RC6 disabled on A step\n");
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 2337bc52d9f1..10a4e0fc23ec 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -819,8 +819,8 @@ static void mtl_ctx_gt_tuning_init(struct intel_engine_cs *engine,
> >   	dg2_ctx_gt_tuning_init(engine, wal);
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
> > +	if (IS_METEORLAKE_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
> > +	    IS_METEORLAKE_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
> >   		wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0, false);
> >   }
> > @@ -831,8 +831,8 @@ static void mtl_ctx_workarounds_init(struct intel_engine_cs *engine,
> >   	mtl_ctx_gt_tuning_init(engine, wal);
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> > +	if (IS_METEORLAKE_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_METEORLAKE_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> >   		/* Wa_14014947963 */
> >   		wa_masked_field_set(wal, VF_PREEMPTION,
> >   				    PREEMPTION_VERTEX_COUNT, 0x4000);
> > @@ -1716,8 +1716,8 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> >   	/* Wa_22016670082 */
> >   	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
> > -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
> > +	if (IS_METEORLAKE_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_METEORLAKE_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
> >   		/* Wa_14014830051 */
> >   		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
> > @@ -2413,15 +2413,15 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >   {
> >   	struct drm_i915_private *i915 = engine->i915;
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> > +	if (IS_METEORLAKE_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_METEORLAKE_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> >   		/* Wa_22014600077 */
> >   		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
> >   				 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
> >   	}
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	if (IS_METEORLAKE_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_METEORLAKE_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> >   	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> >   	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> >   		/* Wa_1509727124 */
> > @@ -2431,7 +2431,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >   	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> >   	    IS_DG2_G11(i915) || IS_DG2_G12(i915) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0)) {
> > +	    IS_METEORLAKE_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0)) {
> >   		/* Wa_22012856258 */
> >   		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
> >   				 GEN12_DISABLE_READ_SUPPRESSION);
> > @@ -3016,13 +3016,13 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> >   				 GEN11_INDIRECT_STATE_BASE_ADDR_OVERRIDE);
> >   	}
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
> > +	if (IS_METEORLAKE_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
> > +	    IS_METEORLAKE_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
> >   		/* Wa_14017856879 */
> >   		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN3, MTL_DISABLE_FIX_FOR_EOT_FLUSH);
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +	if (IS_METEORLAKE_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_METEORLAKE_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> >   		/*
> >   		 * Wa_14017066071
> >   		 * Wa_14017654203
> > @@ -3030,13 +3030,13 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> >   		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
> >   				 MTL_DISABLE_SAMPLER_SC_OOO);
> > -	if (IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +	if (IS_METEORLAKE_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> >   		/* Wa_22015279794 */
> >   		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
> >   				 DISABLE_PREFETCH_INTO_IC);
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	if (IS_METEORLAKE_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_METEORLAKE_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> >   	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> >   	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> >   		/* Wa_22013037850 */
> > @@ -3044,16 +3044,16 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> >   				DISABLE_128B_EVICTION_COMMAND_UDW);
> >   	}
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	if (IS_METEORLAKE_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_METEORLAKE_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> >   	    IS_PONTEVECCHIO(i915) ||
> >   	    IS_DG2(i915)) {
> >   		/* Wa_22014226127 */
> >   		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
> >   	}
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	if (IS_METEORLAKE_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_METEORLAKE_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> >   	    IS_DG2(i915)) {
> >   		/* Wa_18017747507 */
> >   		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > index 2eb891b270ae..3af0fcd7dd57 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > @@ -277,7 +277,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
> >   		flags |= GUC_WA_GAM_CREDITS;
> >   	/* Wa_14014475959 */
> > -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> > +	if (IS_METEORLAKE_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> >   	    IS_DG2(gt->i915))
> >   		flags |= GUC_WA_HOLD_CCS_SWITCHOUT;
> > @@ -292,7 +292,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
> >   		flags |= GUC_WA_DUAL_QUEUE;
> >   	/* Wa_22011802037: graphics version 11/12 */
> > -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> > +	if (IS_METEORLAKE_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> >   	    (GRAPHICS_VER(gt->i915) >= 11 &&
> >   	    GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 70)))
> >   		flags |= GUC_WA_PRE_PARSER;
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > index a0e3ef1c65d2..5914c7348aba 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > @@ -1658,7 +1658,7 @@ static void guc_engine_reset_prepare(struct intel_engine_cs *engine)
> >   	 * Wa_22011802037: In addition to stopping the cs, we need
> >   	 * to wait for any pending mi force wakeups
> >   	 */
> > -	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> > +	if (IS_METEORLAKE_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> >   	    (GRAPHICS_VER(engine->i915) >= 11 &&
> >   	     GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70))) {
> >   		intel_engine_stop_cs(engine);
> > @@ -4267,7 +4267,7 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
> >   	/* Wa_14014475959:dg2 */
> >   	if (engine->class == COMPUTE_CLASS)
> > -		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> > +		if (IS_METEORLAKE_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> >   		    IS_DG2(engine->i915))
> >   			engine->flags |= I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > index ef828e7de2ec..c6ad78381dd1 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -688,15 +688,15 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> >   #define IS_XEHPSDV_GRAPHICS_STEP(__i915, since, until) \
> >   	(IS_XEHPSDV(__i915) && IS_GRAPHICS_STEP(__i915, since, until))
> > -#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
> > +#define IS_METEORLAKE_GRAPHICS_STEP(__i915, variant, since, until) \
> >   	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
> >   	 IS_GRAPHICS_STEP(__i915, since, until))
> > -#define IS_MTL_DISPLAY_STEP(__i915, since, until) \
> > +#define IS_METEORLAKE_DISPLAY_STEP(__i915, since, until) \
> >   	(IS_METEORLAKE(__i915) && \
> >   	 IS_DISPLAY_STEP(__i915, since, until))
> > -#define IS_MTL_MEDIA_STEP(__i915, since, until) \
> > +#define IS_METEORLAKE_MEDIA_STEP(__i915, since, until) \
> >   	(IS_METEORLAKE(__i915) && \
> >   	 IS_MEDIA_STEP(__i915, since, until))
> > diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> > index 0a111b281578..e943ffbaecbc 100644
> > --- a/drivers/gpu/drm/i915/i915_perf.c
> > +++ b/drivers/gpu/drm/i915/i915_perf.c
> > @@ -4214,7 +4214,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
> >   	 * C6 disable in BIOS. Fail if Media C6 is enabled on steppings where OAM
> >   	 * does not work as expected.
> >   	 */
> > -	if (IS_MTL_MEDIA_STEP(props->engine->i915, STEP_A0, STEP_C0) &&
> > +	if (IS_METEORLAKE_MEDIA_STEP(props->engine->i915, STEP_A0, STEP_C0) &&
> >   	    props->engine->oa_group->type == TYPE_OAM &&
> >   	    intel_check_bios_c6_setup(&props->engine->gt->rc6)) {
> >   		drm_dbg(&perf->i915->drm,
> > @@ -5322,7 +5322,7 @@ int i915_perf_ioctl_version(struct drm_i915_private *i915)
> >   	 * C6 disable in BIOS. If Media C6 is enabled in BIOS, return version 6
> >   	 * to indicate that OA media is not supported.
> >   	 */
> > -	if (IS_MTL_MEDIA_STEP(i915, STEP_A0, STEP_C0)) {
> > +	if (IS_METEORLAKE_MEDIA_STEP(i915, STEP_A0, STEP_C0)) {
> >   		struct intel_gt *gt;
> >   		int i;

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
