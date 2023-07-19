Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66140759D4A
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 20:31:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F36A310E116;
	Wed, 19 Jul 2023 18:31:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F20DB10E116
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jul 2023 18:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689791463; x=1721327463;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=9cA46Z1iLUSsWdkGXaburOO+8EAyFp65jBy+d839EKs=;
 b=Jm1LqrkB5UzSUxyez7aP8LUSWC+ljWdVcXqMKfBygCOtV6DBK6azDFea
 5yPo55KDsGKhUEDfs9OYWH7mDJNoR+ZmEAKqQV8o5qhrp9Ode4jDWhAa8
 WB+MYi+jdT5dcg6rMbMqn8bAiepEHF72eWWHRvtylv3R+TspDnsKk77Hf
 4YIo/GhkYc0WXj4aQvD1Frv7x2/Fc5JZdSdSsY8+KpZHb59wjGtj4C5QW
 wyT+PHvEgPdtVrHkIcusUENL5zFsdWOMVaQh9wChC5qqVcSZYj2g30mxl
 71aCpX9OBHWLTZEp/Ar5fNnkL3BxRDNWI3Ir1RXsHOUbMEfnNalsjFxPR w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="397405052"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="397405052"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 11:31:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="701366348"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="701366348"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 19 Jul 2023 11:31:01 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 11:31:01 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 19 Jul 2023 11:31:01 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 19 Jul 2023 11:31:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hu8LlCfgd+o/GfMLD5ccJL2RJxV/lCnbdHKRNuFZHwaYu1k6emlclTYXhSR2NhvVbnJeI05MwjtOo2gBtGlfjucfujsKe1t9v3bVYCnvWxm+M+Eb0a1oJZe3ETmkA+/udEZU17bo/GJ3uKDdoZyJXZwtDnX1C+9Fzytld3quPqOJs6dDqRQftynEQHe2X3Xzxt3af9NYbysGduYJWbGa9escZFKo3qRBzlhj3xQ0lcOXzCxXXC7SN/G7Cw0zrDdPjJ+CHaX51lR7WDaD8EMY+BeV9slzFeE7RFmBm20UajjnZsE9d6Z5HeEdDMDnS8k/3vuh7baFXzBclwgFbmfXuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fKkV/P53oh+IA1GuTNOXX/BcFFqOqIjJFamRnW1Z3QE=;
 b=DRjyKejR9t+IXjXF/sZl+leH7nr93dm2sl1BktjvXcjDh6T7hbhfk64i5Oc0+OBNH96WeqVel4GER0NF4LTaI0I4nPd9mC/HNwUznLGJ7rE7n4R2JLNB+9V9k4X7mPwVS8b3nQ1XgLR/6SuTkoXUEO0JitgNZGMsP1fkGQgbvUngfLWP1BrPeWqqlnP3FnezxZpa8PEF+OFMqinjzNDNX5kOA5XqkUd6MzSRKUMCgESU/5x0IdSyhCdPKTRxrpMoMMmgq/+XuphPWIUP92Sh1zbFe1w1RkuLrrRoesxYgdRisM/QW/SpJkBONPZC/6bi1hoZwYEx4+f1f8ABfcEa3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DS0PR11MB7441.namprd11.prod.outlook.com (2603:10b6:8:141::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Wed, 19 Jul
 2023 18:30:58 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d%7]) with mapi id 15.20.6588.031; Wed, 19 Jul 2023
 18:30:58 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230718222753.1075713-12-matthew.d.roper@intel.com>
References: <20230718222753.1075713-10-matthew.d.roper@intel.com>
 <20230718222753.1075713-12-matthew.d.roper@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Wed, 19 Jul 2023 15:30:54 -0300
Message-ID: <168979145414.1692803.13704866914326365870@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0312.namprd04.prod.outlook.com
 (2603:10b6:303:82::17) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DS0PR11MB7441:EE_
X-MS-Office365-Filtering-Correlation-Id: cc308073-2a45-4a5d-b4b2-08db88864bef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: s+HC0Bu+zjZcCUbHqHNjO7T+DWyTt4GMFQhAFMpV6JnK96et4umahLrM1wOer4MNSLzx9ELLqYHTC+w0CjT8ftwBtCiiZ4+c6JFtoo1sQOm1L0CjKWjR/7j3vQVT1/nrgN9cO88GCv8Ex47nMoe/gdp0zkYNZVT5Tn7nQ3C8V12pCUDST2gLatHYFrfKts7KQbRnLS/S6ERh8PM7U1fwQJYfxCv/CQLyDKAD5bsWmljo0WSljgz1RK09epyFNSr7XIhsJCA4ChM23NessZLkAxfhDUJ5yUfKISknuNJsvtYBwauQXR5zMVOtteD6M5hf6iZ5lTcnrNHhA28AvLrryW7/FYODuM3XtyXBiRn52SlfnvwNvpWUKtzbkBszCiKFeQLMlqzx5evZPdsOsthvLH3jaWzF/I6tE1cx70pcntJzSMk2jha0Kh04jwOI4/VHQh2esbs6FaWUzXDVef1uRLXJ6P9suEo086wtPUkChVZCrJ6EJazJBgmSAxz3MHC0wICtKVze7Lp/BF4xzGNM9MfqmLMew4ljlVg9Wp1BA4sPdcs+1cz1wjyJxeZ0AHor
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(346002)(396003)(136003)(366004)(376002)(39860400002)(451199021)(83380400001)(6486002)(82960400001)(38100700002)(6666004)(8676002)(41300700001)(66476007)(5660300002)(66556008)(66946007)(316002)(4326008)(478600001)(186003)(6512007)(6506007)(9686003)(107886003)(26005)(86362001)(33716001)(44832011)(2906002)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cFpBa3JTVHlTUXY5RG9TaC80TE5qRFRtV0RneXlnN0h6VHFJd21PT2svN0JF?=
 =?utf-8?B?bkxlQ1JOa1I3b29BR09uZzFnZFpUR3Y3V0tYNTRaNTBaRFErWmZ3RVU2UG5l?=
 =?utf-8?B?blMxejJDWFBGcE04R2lSMGFPTjN6bGNIUXJYNVl1QXJVOU9ZMDIwa0dVZmlj?=
 =?utf-8?B?NE9oVWpiM2Zpd0h2bTNKNUlnVFB5cmJhdUVHUmJVRVc5NVdpSTcxWXRualNq?=
 =?utf-8?B?RytaR21Fak1TaVFidnQxT3JwWVc4eDZIcjgxVUVKcUZRRXBXdkpsUkhQdzRM?=
 =?utf-8?B?ZEhSQ2c5YTNaZlZuQzdvcXV6emt5My85SEp5YzlFNzBhNmpyT3ZKcHJXZzBQ?=
 =?utf-8?B?ZHpIb0ZDeWtxS3IrbHZwLzF1Y1dSOS9WVmxuM3UrWkN5Vk1ERytMYkcwdktU?=
 =?utf-8?B?SlNnQkl5UzJrYXNXSWtsQlhvT2tndlE5Z0ZiMkFGVFZEOXIxUXMzK2dacDlP?=
 =?utf-8?B?QVF2VnRsSXRIenlJTnM3RFRzbTJNVW1sOE5LbjJGNXRDNzdFUHFkeXNackFK?=
 =?utf-8?B?RmcxMjhFbmc5aE5MeHNYRGhxaVp5R0pvSnNMblREb1cvR3RwbitPQzRwcEFj?=
 =?utf-8?B?Z1FFQWlwTHRBeERmbHpQOFpCcFZpRGIyb1JmR1h1eTlDWWJOVkFOYkhkNHBk?=
 =?utf-8?B?L1gzN2c1TXBmSlUrblZsL2RmbDQrcnhYbTRRU2RrNXp5QjJCRzBoalo3QmpP?=
 =?utf-8?B?eWk5VUJZZDhpVjByK01IV2tFWUFCY0IxTWpUSitJeTVDOVBVZFdjd0szUUxR?=
 =?utf-8?B?MEM5RU9LbisxZFRQZDgrdklpamhpeG5pOC9TT0VZSUdzaXFOVWcxcXNDK0hR?=
 =?utf-8?B?a0VHRndUUVI1WEIvNVcxOWZTWHVLUUFaYkVpRURJN3hnMmdTYlBnR1AwVWYw?=
 =?utf-8?B?dkh1aDdROGhxdHBWQzRDRnNOOEVEbk53QXVUUmlaTzdpSWNCREJQYzRtb29J?=
 =?utf-8?B?T0VvZ3hHTXVjQklFdVRBWEQrVUFFZDFvQmhLeG1YQmxRZ1hER2VWaUE1WExr?=
 =?utf-8?B?WEd5d09Kei8veHdvRVIrajMrbHBjbGsxc1lQbDU1aXlqUFRrdjBzZWV4UmNL?=
 =?utf-8?B?R2k1bTdoc1laVlJ2NjNqQU0zRTU4NWpvSGo5LzdKaFZhc21WbFZ5QUhwNUc1?=
 =?utf-8?B?VUN1RnFUV3FQbkgzSFNySlhzZGpncXRmeHAvZG84cnQzQTV5TFJOWFJkZkNl?=
 =?utf-8?B?VjlqNXMwNWdsZnhkV2JwRk5RSDNWa00wTi85WElKd0M2dmNjZUJCVGptcHpy?=
 =?utf-8?B?d0crM29KcEkzdzFPL1dMNis3RmtKRmVqL21ja2JNQ3ZaQmwxUVRyYm0yYVIx?=
 =?utf-8?B?emNUbTB5RWhObm1SUzkwcHVHQVdoQzlzaHZDRGQ5cVZoNG55NEJiZ0RYSDdh?=
 =?utf-8?B?czQ0NUFUcW9WMXBEZkNTMXZYZDg3WUx6ekJSbDZhb1RNRk85enR6UHFTakV0?=
 =?utf-8?B?M3FJdEpybW1lb1k1QjlZaHFmZ2cyVWJqYkRQdlhXTjBMems4dk5kMlppcGxS?=
 =?utf-8?B?dEZlUDNVa2NMTXRaNThyQVRUajZUT2pwdVZoL3JZby80TTkrOU1XcGNab3FC?=
 =?utf-8?B?eXNDVWk4M1R0VnRFQVlXaTdCU3h5ZUVkd3F4a3hPUG5xSjlRTythOFMwaXdw?=
 =?utf-8?B?OExVRmNmTTkreUo1TVZnV1ZLbkV4dWhBRXZMdlpwTTNxVzNSMXNOVFlRdEd1?=
 =?utf-8?B?ajBhWFpBemNhajZSdUFXaWxUTzB4SHM4dXVCY1FnelFQbHA0bUc2b3FrOXFl?=
 =?utf-8?B?K2NqVnNkUnRiUkZzeGIxVWpWbG1aM05xcXpDaExjekFrSUI0WGwyV1Vqb1NC?=
 =?utf-8?B?RkVDZmpOb1BicXA4L2JMYlQvTm5kcUJWaWZqMWJUK1J4UTJHenYwNi8zd21N?=
 =?utf-8?B?T04yWXA3TDRsVk5HYitDZEhDTlBlazREMDB3UnU5V2E4QzlEUEpUTldKWG1Q?=
 =?utf-8?B?bUNDb1hXWEp1UFhnd0VoekVieHRXYW91VkcvRDlvVGtKTzd1YTRKNFBiNWVa?=
 =?utf-8?B?Q2pwZkJ0U05uRy9GTGR5dmwvSW5VeUtHc0Y3cUNIT2c1aEJkbEJIMTRJZE55?=
 =?utf-8?B?Mk8zN0lBZVhTVU5PakFWWTRnQmlMdWNUN21ESktuWHRpOGUrK2VtL3orNjd1?=
 =?utf-8?B?N1JhZDAwSzlwZ1Y2WEhsTUpuWVBtaitNeFBCTU4rQ3VzTzYycmM0WVN3WDg4?=
 =?utf-8?B?UFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cc308073-2a45-4a5d-b4b2-08db88864bef
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2023 18:30:58.7604 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nQANavwUJRBB6nJ0Bx9l6EjC0Yjt4kGxWmULA5fiZzSi4TsszlADCwI4dhjkEDOqoCNsHerFviU4Lqn0w1OrcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7441
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915/xelpg: Call Xe_LPG workaround
 functions based on IP version
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matt Roper (2023-07-18 19:27:56-03:00)
>Although some of our Xe_LPG workarounds were already being applied based
>on IP version correctly, others were matching on MTL as a base platform,
>which is incorrect.  Although MTL is the only platform right now that
>uses Xe_LPG IP, this may not always be the case.  If a future platform
>re-uses this graphics IP, the same workarounds should be applied, even
>if it isn't a "MTL" platform.
>
>We were also incorrectly applying Xe_LPG workarounds/tuning to the
>Xe_LPM+ media IP in one or two places; we should make sure that we don't
>try to apply graphics workarounds to the media GT and vice versa where
>they don't belong.  A new helper macro GT_GRAPHICS_RANGE() is added to
>help ensure this is handled properly -- it checks both the graphics
>version range and that the code isn't operating on a media GT.
>
>Note that many of the stepping-based workarounds are still incorrectly
>checking for a MTL base platform; that will be remedied in a later
>patch.
>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_workarounds.c | 40 +++++++++++----------
> drivers/gpu/drm/i915/i915_drv.h             |  5 +++
> 2 files changed, 26 insertions(+), 19 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm=
/i915/gt/intel_workarounds.c
>index b177c588698b..2a5bf50962ad 100644
>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>@@ -805,8 +805,8 @@ static void dg2_ctx_workarounds_init(struct intel_engi=
ne_cs *engine,
>         wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
> }
>=20
>-static void mtl_ctx_gt_tuning_init(struct intel_engine_cs *engine,
>-                                   struct i915_wa_list *wal)
>+static void xelpg_ctx_gt_tuning_init(struct intel_engine_cs *engine,
>+                                     struct i915_wa_list *wal)
> {
>         struct drm_i915_private *i915 =3D engine->i915;
>=20
>@@ -817,12 +817,12 @@ static void mtl_ctx_gt_tuning_init(struct intel_engi=
ne_cs *engine,
>                 wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0, false)=
;
> }
>=20
>-static void mtl_ctx_workarounds_init(struct intel_engine_cs *engine,
>-                                     struct i915_wa_list *wal)
>+static void xelpg_ctx_workarounds_init(struct intel_engine_cs *engine,
>+                                       struct i915_wa_list *wal)
> {
>         struct drm_i915_private *i915 =3D engine->i915;
>=20
>-        mtl_ctx_gt_tuning_init(engine, wal);
>+        xelpg_ctx_gt_tuning_init(engine, wal);
>=20
>         if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>             IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
>@@ -931,8 +931,8 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *eng=
ine,
>         if (engine->class !=3D RENDER_CLASS)
>                 goto done;
>=20
>-        if (IS_METEORLAKE(i915))
>-                mtl_ctx_workarounds_init(engine, wal);
>+        if (GT_GRAPHICS_RANGE(engine->gt, IP_VER(12, 70), IP_VER(12, 71))=
)
>+                xelpg_ctx_workarounds_init(engine, wal);
>         else if (IS_PONTEVECCHIO(i915))
>                 ; /* noop; none at this time */
>         else if (IS_DG2(i915))
>@@ -1790,10 +1790,8 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, str=
uct i915_wa_list *wal)
>  */
> static void gt_tuning_settings(struct intel_gt *gt, struct i915_wa_list *=
wal)
> {
>-        if (IS_METEORLAKE(gt->i915)) {
>-                if (gt->type !=3D GT_MEDIA)
>-                        wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_C=
ACHING_OPT_DIS);
>-
>+        if (GT_GRAPHICS_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71))) {
>+                wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_O=
PT_DIS);
>                 wa_mcr_write_or(wal, XEHP_SQCM, EN_32B_ACCESS);
>         }
>=20
>@@ -1817,7 +1815,7 @@ gt_init_workarounds(struct intel_gt *gt, struct i915=
_wa_list *wal)
>         gt_tuning_settings(gt, wal);
>=20
>         if (gt->type =3D=3D GT_MEDIA) {
>-                if (MEDIA_VER(i915) >=3D 13)
>+                if (MEDIA_VER(i915) =3D=3D 13)

This looks a bit unrelated to the commit message. I would add a short note =
for
this or make it a different patch.

>                         xelpmp_gt_workarounds_init(gt, wal);
>                 else
>                         MISSING_CASE(MEDIA_VER(i915));
>@@ -1825,7 +1823,7 @@ gt_init_workarounds(struct intel_gt *gt, struct i915=
_wa_list *wal)
>                 return;
>         }
>=20
>-        if (GRAPHICS_VER_FULL(i915) >=3D IP_VER(12, 70))
>+        if (GT_GRAPHICS_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)))
>                 xelpg_gt_workarounds_init(gt, wal);
>         else if (IS_PONTEVECCHIO(i915))
>                 pvc_gt_workarounds_init(gt, wal);
>@@ -2293,7 +2291,7 @@ static void pvc_whitelist_build(struct intel_engine_=
cs *engine)
>         blacklist_trtt(engine);
> }
>=20
>-static void mtl_whitelist_build(struct intel_engine_cs *engine)
>+static void xelpg_whitelist_build(struct intel_engine_cs *engine)
> {
>         struct i915_wa_list *w =3D &engine->whitelist;
>=20
>@@ -2315,8 +2313,10 @@ void intel_engine_init_whitelist(struct intel_engin=
e_cs *engine)
>=20
>         wa_init_start(w, engine->gt, "whitelist", engine->name);
>=20
>-        if (IS_METEORLAKE(i915))
>-                mtl_whitelist_build(engine);
>+        if (engine->gt->type =3D=3D GT_MEDIA)
>+                ; /* none yet */
>+        else if (GT_GRAPHICS_RANGE(engine->gt, IP_VER(12, 70), IP_VER(12,=
 71)))
>+                xelpg_whitelist_build(engine);
>         else if (IS_PONTEVECCHIO(i915))
>                 pvc_whitelist_build(engine);
>         else if (IS_DG2(i915))
>@@ -2974,10 +2974,12 @@ ccs_engine_wa_init(struct intel_engine_cs *engine,=
 struct i915_wa_list *wal)
>  * function invoked by __intel_engine_init_ctx_wa().
>  */
> static void
>-add_render_compute_tuning_settings(struct drm_i915_private *i915,
>+add_render_compute_tuning_settings(struct intel_gt *gt,
>                                    struct i915_wa_list *wal)
> {
>-        if (IS_METEORLAKE(i915) || IS_DG2(i915))
>+        struct drm_i915_private *i915 =3D gt->i915;
>+
>+        if (GT_GRAPHICS_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)) || IS_D=
G2(i915))
>                 wa_mcr_write_clr_set(wal, RT_CTRL, STACKID_CTRL, STACKID_=
CTRL_512);
>=20
>         /*
>@@ -3007,7 +3009,7 @@ general_render_compute_wa_init(struct intel_engine_c=
s *engine, struct i915_wa_li
> {
>         struct drm_i915_private *i915 =3D engine->i915;
>=20
>-        add_render_compute_tuning_settings(i915, wal);
>+        add_render_compute_tuning_settings(engine->gt, wal);
>=20
>         if (GRAPHICS_VER(i915) >=3D 11) {
>                 /* This is not a Wa (although referred to as
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_d=
rv.h
>index 682ef2b5c7d5..f38c93d82c56 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -431,6 +431,11 @@ static inline struct intel_gt *to_gt(struct drm_i915_=
private *i915)
> #define IS_GRAPHICS_VER(i915, from, until) \
>         (GRAPHICS_VER(i915) >=3D (from) && GRAPHICS_VER(i915) <=3D (until=
))
>=20
>+#define GT_GRAPHICS_RANGE(gt, from, until) \
>+        (BUILD_BUG_ON_ZERO(from < IP_VER(2, 0)) + \
>+         ((gt)->type !=3D GT_MEDIA && \
>+          (GRAPHICS_VER_FULL((gt)->i915) >=3D (from) && GRAPHICS_VER_FULL=
((gt)->i915) <=3D (until))))
>+

I know the macro's name is already a bit long, but maybe
s/GT_GRAPHICS_RANGE/IS_GT_GRAPHICS_RANGE/ for consistency?

Considering current discussions on disaggregating macros, wouldn't having m=
acros
IS_GRAPHICS_GT() and IS_GRAPHICS_RANGE() macro be more suitable here?

By the way, I also noticed that the proposed macro uses full versions while
others (e.g. IS_MEDIA_VER) use only the major part. I wonder if we could ha=
ve a
single way to specify version boundaries so we could reduce the number of
variants. For example, we could have a single IS_GRAPHICS_RANGE() (or
IS_GFX_RANGE?) instead of another one (i.e. IS_GRAPHICS_VER) for comparing =
only
major ranges. Anyways, this somewhat is out of the scope of this patch, but=
 I
just thought I would mention it.

--
Gustavo Sousa

> #define MEDIA_VER(i915)                        (RUNTIME_INFO(i915)->media=
.ip.ver)
> #define MEDIA_VER_FULL(i915)                IP_VER(RUNTIME_INFO(i915)->me=
dia.ip.ver, \
>                                                RUNTIME_INFO(i915)->media.=
ip.rel)
>--=20
>2.41.0
>
