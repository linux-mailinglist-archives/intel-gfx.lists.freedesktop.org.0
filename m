Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D39355942D4
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 00:43:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E954D346E;
	Mon, 15 Aug 2022 22:43:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1B56D6570
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Aug 2022 22:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660603383; x=1692139383;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=MevUEwxvRObZA0pf9jUtaVuJ2faHkg+F6T6wBzm6hgE=;
 b=msVf+be1ozih7XQ45Fa7YaRvtJ9Mo6TbkvcmJfE6An+N5OQrLm0Ot26y
 illIf09j98WkYBYnLgdUKJ/KS0Y4sYSmThIkFSReRyecsnEvimFatUHSw
 KNF4Fti+q6mIvL4rqihJTxESyL9UYuSSZ6+5HZBzD6kL1z+k3C38RtsRx
 jRGkenVFPKi674MEEuxbihfzfOws9FmPM5RV4S+1u4JXJ1tRaFZYgnMvv
 fv0sDT2VsJoL5neWTt3LpEwX36QIVRkpZVYTEDc6dxqdvUbP/IkMR0HZT
 K55SpbxIPPVE7FtdSjsPJIpH3W5ZR+iWFVr+hbo1TNGLGGqKBfk0GY/7Q A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="275126619"
X-IronPort-AV: E=Sophos;i="5.93,239,1654585200"; d="scan'208";a="275126619"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2022 15:43:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,239,1654585200"; d="scan'208";a="852432794"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 15 Aug 2022 15:43:01 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 15:43:01 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 15:43:00 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 15 Aug 2022 15:43:00 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 15 Aug 2022 15:43:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DOFhHaLB8O85YdbTK//Cc5CyNoaqMSZmCg+aKv1Ql60Yi5qtGIjYM42k09iHz6rHoGsFRnZ+Xb/CFk6J0iq4tncmNmgRLF5uvHlwgr01jYAyUWg+mySFsIL7t4cq8vetYvikVRbXA/taYkqKK7J1hYjU9Fdd6R8VHi+uauSFPzC8idW4ftYYn3CbbC9LALLhvrEwV5YKeqyUxakVZr3SfqBWgbohR2hVbbTv/COT2jnJvll91AluanMFIrwDdbey639kMSNG6/Jib+8r2HqBMMe4xkJ1PXymY9+oDObwA6jmQmQevHPgkyQGVoayQhMo2qmZTEt1Zb+4RVEuaXfOiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UyMXsLPPmbkh5hmwq3vzNURiwqNUgeIM4BDsBznJrKc=;
 b=B6AYaDQdrR+nzavZbgv2phAUOP8PZPGIS5SXfTR1V3YRw4KvvLfbzzDiBthr3vSXqGUVA6CZsYj9TMPczWiFCHBVNLF19kWkbBZpWq8Ad8iaE9guzrZJ2aFpa163YqBmzFT+d++tW4lVEnnXs1q56MNG5I1QktPCE+uvezZb+lgiEcTeRczpZdF1MsqcY0iZmif4wmxbg7tcATWSsYwmaDN6D8aMtT9SF/20SrFDeARYpZSnrH/8s/NRC1T0tvUOmNt/Db+29Nj6VTlMlgK4U0VXCfxaS3SmMM6lJc0lFt81FVXyugc4BmPC04RDQO1lYPrPG4201aXI513yQjhzlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM6PR11MB3179.namprd11.prod.outlook.com (2603:10b6:5:5e::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.23; Mon, 15 Aug
 2022 22:42:59 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513%7]) with mapi id 15.20.5525.011; Mon, 15 Aug 2022
 22:42:59 +0000
Date: Mon, 15 Aug 2022 15:42:57 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20220815224257.gaqujr324en5jygf@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20220812202240.542124-1-matthew.d.roper@intel.com>
 <20220812202240.542124-2-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20220812202240.542124-2-matthew.d.roper@intel.com>
X-ClientProxiedBy: SJ0PR13CA0006.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::11) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e3eb4590-e716-4aca-4fcb-08da7f0f80c0
X-MS-TrafficTypeDiagnostic: DM6PR11MB3179:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jdpx5G6wuYxcSTB4FFwaQGHV3cGyAknUmJTsOYbnJBM6sxUHOLFQ/R2Eo2WvXRAVeYIqsLM2BeQuTGrbc2xDLESrBOBms5HGrwQ5JJBiwsQG9+lqCXPzmDB6fmA6MXzk0JFqhMnBfvI2ucgP0PJhAmjdoZ5cjltAmkndqmUevSyqGia9tVt/V0pANk8qqzQIYkg0ZzfbHDaPqeEwvh1d9BdwDAq5VOcU6VEr66iBINKfeiTvXNhK0fDe85gB0JW+CmElkxjInYjAFFMzFsKS1eeykaBuMwC+ONq+90ol6s2qvCiV0FWAJcymfatZWkndxW9/oWZXjST378PK2y6hACCTUEASo0nBlU3t7uxZDaIqb+AC4eldICiSnqY0WiXG1TXXZBDpgFy9YShj1B4Kyf8PSKSSIhc5XR0TiNzVHC8xSQiS7uOJoyRqzvq2u0AvA/yCTv9SWTRy05poZmfBUHKm6ZGj+8BmVZmGVZjnCgOXsrFGMx9Bv/YDln20N5Omz0wEDf0k8jTpfe6gO+Gfjefb2zQf1qSQO2OmwZI3EzS/sJAp3olXAATs0fSVbgz+vi6OC9MRccbdeWaauhwnEqY8e1KkMR8EuCkG6P2dITKdjG9tJzXyJ4Sz39/oEXteU6jXpsqwiyEot0DvGf0SDAOT86pU9mSoxuVwK/eaPdhuPFkhbicO/Kakusigpiyo6QU7JvWjAWtlVFFaSefpg63alttEyBn6AcIVLouDEgmcD/BnyHCXVAo0GjYgO6Up
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(39860400002)(346002)(136003)(396003)(366004)(2906002)(66556008)(4326008)(8676002)(66476007)(8936002)(478600001)(36756003)(66946007)(6512007)(6506007)(316002)(6486002)(26005)(9686003)(6636002)(41300700001)(82960400001)(1076003)(186003)(86362001)(5660300002)(83380400001)(6862004)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Kq0UQ2JYGnm7Yjr6LWJnKey2bEYJqotsDIjNJuXxi8R8+ptlvS7IhjUG4hAH?=
 =?us-ascii?Q?EB0TTH94TRl1jbb8zDDV3vNwrE1ozQ9dy0VejiuG+LkZtjDsitPJpcyCs5Dp?=
 =?us-ascii?Q?r+vJ5vyiZaOYlVvctrXCBUJ4Xrjt8XipX2UlZHaIcFo9i1F5Me1H/U13COq9?=
 =?us-ascii?Q?SFHyc9ME5oNXOZaI4/DoEraBgUx7TLKOM4+EAc0bI6kw2WL6FVArmYC74tnK?=
 =?us-ascii?Q?ZhJtrmf6M2Nnzu5wQqZOpF/nzA0Z1geARkalrMyH2oqxrhykUWko5KTwRaaS?=
 =?us-ascii?Q?qDERXSC5vrNgd0LJHq3eDatu1EcZQluVImobmQuynP3gKobsqB0iZ6mIAc3z?=
 =?us-ascii?Q?EkIi/vdgQwrPgX2dxrzcY9exKpa6iUD3j7B8YsyOohMvHILz/kp7XIoe30z+?=
 =?us-ascii?Q?mJVc5/7af6VXaaKuuacz/oHuESw7ndXMyztQNyG5AhkjvW2NFQVlQopFwTeX?=
 =?us-ascii?Q?WdFQ00nvA+ycuI/2D937vW7ZY21YRXyCQPwk/3sT6KaT9un2egrdR5Avz2Ce?=
 =?us-ascii?Q?lYrn/GpjmI4QVYg82l5AJaM0kDhxE+cHhJ9fUTYIgrmplRiTs2gzNOyx36QD?=
 =?us-ascii?Q?cjhWzmHstk/y2UeNF747Gu9zNm3AcUIg8BenQGhd3H7mZjvqKrHVhPobJvS1?=
 =?us-ascii?Q?eDDsEesIPX6DTnjZv7TQq5OsyKHQM3tyVrhGA5aI3gldl9n6GOl6QqL7FL+4?=
 =?us-ascii?Q?0/HPTuVFvuhOBdIoi4FYO3H/XCaVLiDgEJB6noAX2GVoSXUI3tdoGAB8jDlZ?=
 =?us-ascii?Q?eJAx4YFG3BfsifAsJwv3aQTQoi53VBpDqEovCPxAEE5FcdgjGyli/kIcbOAa?=
 =?us-ascii?Q?hZthGHGSGmuVcATvt2h69ouVGwu/r1ZoidEsjqnYjA3dSdFvVIVGIsdldk0v?=
 =?us-ascii?Q?dZwPvDBUCVP72mHLepFlQhacErNAuWk56Zuf+fApB+VqdZOBAAlf9ezj5T4+?=
 =?us-ascii?Q?hQqZ9lPIX3HdgabS9cE7QGxoHMKwuOT58+PFgFmrFMvV0sm8l95r14u/pxDE?=
 =?us-ascii?Q?sqNqo5szBYwLuwQT4WlstmGFgqdOto3US/SXsjKzTO1X+Y1FOeACzJjDBcZs?=
 =?us-ascii?Q?NEkggaw8vQl0coNtRXS0JYRjDAAK0SrKTmUi2Xiz0sCXqz5QajtIJNRrG1nW?=
 =?us-ascii?Q?Ya8o/V8e1xpjIV1W/xyhaMmGImU1YYhewJ+1Ynx20b5XaGTaaseoGSf8t8TQ?=
 =?us-ascii?Q?S0RvKosvaVNk1D4QfxP9KTLecqx/mwYhSZJCx0LKOmap/epYIVmOAe1Ws8Es?=
 =?us-ascii?Q?MuR/ZnVQH8jdLV237j8lNk7aqrRqI4nu2SbydSKqi4b3+GLrMuTBaHl77tLK?=
 =?us-ascii?Q?A5kMDDyHvfOWyXTTkPhKRfk/BwbzGusaWMKpbzCfVoMeJoIYbGbwhArGFdVo?=
 =?us-ascii?Q?hpH8LZYhQUZlTW576I7zm+DdLzMVyjfOmpvC/QYHvNCY+WQPM7r8WZpIxP1f?=
 =?us-ascii?Q?qUjmlilTjVipM2YZQI77E018jhkLn03m8k/OhxGluJLu+xG0bv9refqHjSRM?=
 =?us-ascii?Q?CJov85qhd4U9d+j0o+xkexujB/2RBeJTEBYbrzBCvP0L9LDiWkynfObM3Gpm?=
 =?us-ascii?Q?kCeDd9Nay/t6CG+bgMShX8mfN18cgHagb0pOiWeDW/cp87Biuuy/KC2Yq7pV?=
 =?us-ascii?Q?zQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e3eb4590-e716-4aca-4fcb-08da7f0f80c0
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2022 22:42:58.9545 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vPoT5l1Q1KNpvNQJlbLL3+KQ8/K6ymnkZeIeZhdw5pJbjpL4czN5gtdYmv6wWjPAGwXP4q8fTdQNby0+X5TA171JWSrMaTAJUGPfPhbOuTg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3179
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dg2: Add additional tuning
 settings
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

On Fri, Aug 12, 2022 at 01:22:40PM -0700, Matt Roper wrote:
>Some additional MMIO tuning settings have appeared in the bspec's
>performance tuning guide section.
>
>One of the tuning settings here is also documented as formal workaround
>Wa_22012654132 for some steppings of DG2.  However the tuning setting
>applies to all DG2 variants and steppings, making it a superset of the
>workaround.
>
>Bspec: 68331
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_gt_regs.h     |  8 ++++++
> drivers/gpu/drm/i915/gt/intel_workarounds.c | 27 ++++++++++++++-------
> 2 files changed, 26 insertions(+), 9 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>index b3b49f6d6d1c..f64fafe28f72 100644
>--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>@@ -259,6 +259,9 @@
> #define   GEN9_PREEMPT_GPGPU_COMMAND_LEVEL	GEN9_PREEMPT_GPGPU_LEVEL(1, 0)
> #define   GEN9_PREEMPT_GPGPU_LEVEL_MASK		GEN9_PREEMPT_GPGPU_LEVEL(1, 1)
>
>+#define DRAW_WATERMARK				_MMIO(0x26c0)
>+#define   VERT_WM_VAL				REG_GENMASK(9, 0)
>+
> #define GEN12_GLOBAL_MOCS(i)			_MMIO(0x4000 + (i) * 4) /* Global MOCS regs */
>
> #define RENDER_HWS_PGA_GEN7			_MMIO(0x4080)
>@@ -374,6 +377,9 @@
> #define CHICKEN_RASTER_1			_MMIO(0x6204)
> #define   DIS_SF_ROUND_NEAREST_EVEN		REG_BIT(8)
>
>+#define CHICKEN_RASTER_2			_MMIO(0x6208)
>+#define   TBIMR_FAST_CLIP			REG_BIT(5)
>+
> #define VFLSKPD					_MMIO(0x62a8)
> #define   DIS_OVER_FETCH_CACHE			REG_BIT(1)
> #define   DIS_MULT_MISS_RD_SQUASH		REG_BIT(0)
>@@ -1124,6 +1130,8 @@
>
> #define RT_CTRL					_MMIO(0xe530)
> #define   DIS_NULL_QUERY			REG_BIT(10)
>+#define   STACKID_CTRL				REG_GENMASK(6, 5)
>+#define   STACKID_CTRL_512			REG_FIELD_PREP(STACKID_CTRL, 0x2)
>
> #define EU_PERF_CNTL1				_MMIO(0xe558)
> #define EU_PERF_CNTL5				_MMIO(0xe55c)
>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>index a68d279b01f0..2db7f7dc3c8c 100644
>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>@@ -568,6 +568,9 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
> static void dg2_ctx_gt_tuning_init(struct intel_engine_cs *engine,
> 				   struct i915_wa_list *wal)
> {
>+	wa_write_or(wal, CHICKEN_RASTER_2, TBIMR_FAST_CLIP);

this is a masked register

>+	wa_write_clr_set(wal, DRAW_WATERMARK, VERT_WM_VAL,
>+			 REG_FIELD_PREP(VERT_WM_VAL, 0x3FF));

I don't see 26C0 in the context image... should this be
in engine_fake_wa_init() ?

Lucas De Marchi

> 	wa_write_clr_set(wal, GEN11_L3SQCREG5, L3_PWM_TIMER_INIT_VAL_MASK,
> 			 REG_FIELD_PREP(L3_PWM_TIMER_INIT_VAL_MASK, 0x7f));
> 	wa_add(wal,
>@@ -2195,15 +2198,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> 		wa_write_or(wal, XEHP_L3NODEARBCFG, XEHP_LNESPARE);
> 	}
>
>-	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_C0) ||
>-	    IS_DG2_G11(i915)) {
>-		/* Wa_22012654132:dg2 */
>-		wa_add(wal, GEN10_CACHE_MODE_SS, 0,
>-		       _MASKED_BIT_ENABLE(ENABLE_PREFETCH_INTO_IC),
>-		       0 /* write-only, so skip validation */,
>-		       true);
>-	}
>-
> 	/* Wa_14013202645:dg2 */
> 	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) ||
> 	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0))
>@@ -2692,6 +2686,21 @@ add_render_compute_tuning_settings(struct drm_i915_private *i915,
>
> 	if (IS_DG2(i915)) {
> 		wa_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
>+		wa_write_clr_set(wal, RT_CTRL, STACKID_CTRL, STACKID_CTRL_512);
>+
>+		/*
>+		 * This is also listed as Wa_22012654132 for certain DG2
>+		 * steppings, but the tuning setting programming is a superset
>+		 * since it applies to all DG2 variants and steppings.
>+		 *
>+		 * Note that register 0xE420 is write-only and cannot be read
>+		 * back for verification on DG2 (due to Wa_14012342262), so
>+		 * we need to explicitly skip the readback.
>+		 */
>+		wa_add(wal, GEN10_CACHE_MODE_SS, 0,
>+		       _MASKED_BIT_ENABLE(ENABLE_PREFETCH_INTO_IC),
>+		       0 /* write-only, so skip validation */,
>+		       true);
> 	}
> }
>
>-- 
>2.37.1
>
