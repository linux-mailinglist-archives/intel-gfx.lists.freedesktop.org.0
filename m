Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24BAD63F618
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 18:23:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5FC010E657;
	Thu,  1 Dec 2022 17:23:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 851BB10E657
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 17:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669915406; x=1701451406;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=sujWbIezS8aX1MrfO0XPffocGW+0AQlxGYm96yCkOeQ=;
 b=lnEnJ7CPsWMoqfBR8nbsppTkq0jnd9fZN/fiE97MCkDt5Lr8J74il8vm
 NiuhtEjYuDV93Puxnnz1M5aOlSOJ/lPK1WR3UYiYq4FTl0BKEjZe3L2cH
 OmVa4N4vXqH6cGxSJ2QednVmrL9XytSCt5fHExF88If4nj3WJytBw1N86
 PjIFvH3FNyXh4F7ea1hPtruAxIpmZvMw2RKdBLHERn3ZKiirNSvV4zN5f
 KdkF9ohRNe0h+wdKh+hrGJP7CN5/13Z0KS+TKp+BIR0T4Mqrm8T72mZWQ
 Awzr08cYNicdvEQzYzHTIvd+UXVuszy3ZJ39lNtyOgWBdFOQuYi8zd486 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="313380289"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="313380289"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 09:23:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="708154186"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="708154186"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 01 Dec 2022 09:23:13 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 09:23:12 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 1 Dec 2022 09:23:12 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 1 Dec 2022 09:23:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YU6uI1Vb1KbWySWxLsDwFsLDqeM69XKgLfYVUU9qMI8PPycwm+/uhdA4WbWMWlLR/tybRSvya9asTX10eJBycZONnCMS4AXYhiX0jLy/NlDCSCCRdyB6Kxs5yErea761gPXvSmBmPW91eypGdVfFRWISQC9Ofa4u8nOkmdCHo/NbPaukgqaUmaFXaf/Cg6L5tC/x/IEX5MuY40op7TvE82QuW0eAh22yUcBgqgMFODIY8X1V2lnmn0pyfhjs0vfNOcKVA8KBULl1xzZPedpSuGRfmSS083MoBtU1KckxhIVV+xl9jkCGOW+kBf5KkelSTZ7WWvze1Vff8PfJTmnr3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V6mYVpKDuRqq90gv6pdZhWAtFC+GHUAgxKavT1esS6A=;
 b=YkLokZhKXkGGiLJ2sIVYRZr6aTEiKDCzsuu0XtBxkrrZ+mMtX110GBa0/9JUd3n6YWHHfeY8fNXWMuIpkANxSD7cjlx3OG4QCXCwhdP42KJB0ZG5wkUjT/gToju/PRdw3sYqajTqI+Pq9QNsW+bOkDnX7afHkLoveYFrtnwFqvh8eEgCNPh/SdmhctUJtrzl7sqFMYQkpNi7mC3PepNBWt2ld43QbIXGCecXKLHenbgtm5IHjJqVteHvtkwXn0nA2JBktyYEZrh391HQUCv/ZtkDk51fttkCyW7Co0og2IjyMg5kmYVzNG2nP+bPR8TnHKjLLfiFNCD/Xuw4jkXWdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MW4PR11MB7125.namprd11.prod.outlook.com (2603:10b6:303:219::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.8; Thu, 1 Dec
 2022 17:23:10 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3%3]) with mapi id 15.20.5857.023; Thu, 1 Dec 2022
 17:23:10 +0000
Date: Thu, 1 Dec 2022 09:23:07 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20221201172307.u5z2vcg2ce4344iv@ldmartin-desk2.lan>
References: <20221130231709.4870-1-matthew.s.atwood@intel.com>
 <20221130231709.4870-2-matthew.s.atwood@intel.com>
 <d4adadc3-6426-ff25-d6ac-79662414ccbb@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <d4adadc3-6426-ff25-d6ac-79662414ccbb@linux.intel.com>
X-ClientProxiedBy: SJ0P220CA0026.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::30) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MW4PR11MB7125:EE_
X-MS-Office365-Filtering-Correlation-Id: 29f0fd3a-6a3a-4cae-2255-08dad3c0b7fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uwTxN7k1OiL/kQlOBf8E0obRABgKbRz/8WcZKogXWkBcIMckAx5e10tXErzRn0DXwuqkuswl44hZfR7doI/bGUc3m62nPVAQAIbfIWRBWfmz9KZhZuC+rQrQ89OvmDzvnDL9kblYNT/pkEFBhgnvF+iG7+1i12Y3esBrb8aDLldmiJRGN+kZ2QhuQkjQHNFmvPIZYjMJTkjLNrKXEy7tnw7NZNrqD9DYrUPsUbkbii5W4AWw6kJdw3lpECPsRa0xTeNOIs9zK7wdMSifwr1uT8M749+6q3jZPr5NQlAS65RLJNZGRa5OF61cJgicuSNAtCipBoHCRnkAK3W8ZSGsqb0KDvo5iWSYr5q02HVafrnp/2lJ30JKZNmNyb56826Z9PHkND3zy9qsUjrnK/no0w6ngJun9j3HT7jr64WSRCWkDFlz1bkI05VzI7141dWL5BwR9y3kMO1LYIokyfvnQIslGxeNhQYwKLgRXUUXYaP2OoJt8L0U0pyoVBUjlIJ3itpzwSmLYBAX1mBCw+Bve6Lc6ruNFrX8cnrLdr+xweJe4rY00Ry8aWz9xhxIO53VAM6/8dg7X3y4X6Mw1V34Xapa5HP84ekslMSbE1HAMX+dsCCAGHv5CVzU33qhD7Gi4JE5LPUArQQVCIrGGUtNWA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(366004)(396003)(136003)(346002)(451199015)(83380400001)(2906002)(1076003)(186003)(41300700001)(36756003)(86362001)(66556008)(38100700002)(82960400001)(6916009)(6512007)(26005)(9686003)(8936002)(5660300002)(4326008)(8676002)(66476007)(66946007)(30864003)(6486002)(478600001)(316002)(6666004)(6506007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gRr8XlOvwXDZmHJ1rB8JnvUe6FVpy7Qqcv+yhY+TA0bksjkJ3X1mThEodwyR?=
 =?us-ascii?Q?V5WEF3K8CU07efeGK9zsiY25j5q4KsmI/JvdVLoTzOdrKinFJgLL3ZJJB5t0?=
 =?us-ascii?Q?VhNG11hopbyaFZ7saow/1Du9hAoT8y2vPKLQd5UYJ63Ii7DNSGoKv5eCplur?=
 =?us-ascii?Q?JgftWq5+DLr2Li6rN837F5f5CSBhZkKCtJv9rfV60114pR84N34tETUT2AYv?=
 =?us-ascii?Q?2laGJXA24bcsHlPpfw0lLd9SCKRD8yQEhCl51MiYnlu0Xyz0j9kdyKidIsxP?=
 =?us-ascii?Q?ZUV0z3SIn31x+Oeg5EpnclCv/lCMqKj2TqC386ZPgYaRTJvkcx+KO8vc4uR0?=
 =?us-ascii?Q?kaU4GJKOk8OFySJ5wkFMnbU1ps8EzkmZbH8jEbzhjI/SwWIKO6drm6DhwPE9?=
 =?us-ascii?Q?BhxdNcP4MvWOK44RjCCAqBgcV0eJ0sLWNAhrTARgFLfZmFGziC2zB95Q6pHi?=
 =?us-ascii?Q?X/96GV19PXAm4oqhUHjVUMlqFoo5vlDLWBSnhJWIt8STShT2e+FhLX8QKcN+?=
 =?us-ascii?Q?QQFG7ZvFIuMJYMi5EFn3dhrfU5j3y1Bo08fHKnF0syTIjgUQJfsUX6ttw+WW?=
 =?us-ascii?Q?YcfiV8VI8aoU1JrsLTzpzphfou0fFia6yTfqHTdx6Q1GGldGT6jomxYrrPgv?=
 =?us-ascii?Q?skBB776LLEA67+8PxfBKKJl6iszSJ74oXPPYNepynBVJbgftRIiuTYV54gm+?=
 =?us-ascii?Q?lUg6JchqMQzT1RVL7e8ZDuEUv/YGEN+9x9aIzRhMCN3yzK9zYyi+xNwSOnSE?=
 =?us-ascii?Q?oKpXSHo2PDnIf9Mk2UZxhVmeVm/Jac14Uo5BYPB8jDjVVWVzPVOUktpYySBY?=
 =?us-ascii?Q?XYgX0EjN5ht8rKt1x9wU9KNfDhVv/GY8oAbnoV+gebX8tDiLWVnbYka20uSN?=
 =?us-ascii?Q?5uvxOjbDUuVSv1go4MP6ZVcxrbDjo5MgFq7/U3kBhyvTGrz8mTmYCESrP8wd?=
 =?us-ascii?Q?3WG3c7bsKtXrHylU/iRzDc9ndNl8rsUytzdR0M/DgRh/DBAJRUz870sn2N7M?=
 =?us-ascii?Q?4SoDfpSuXsHc9rANrqu5pj4Ndogr6qcNfdzL9/iFSqMYNnD/tvCsVi5QV+6/?=
 =?us-ascii?Q?UATHSxRZA1V31AbCrjhY9VWV+nRfV2LfDI9bJpz0L/UctQu/ltDMrDBtQ1zE?=
 =?us-ascii?Q?WSqKMzF0pORyZB6aeC9A8uX0vzHDXQYvnZPpai75lL/6a17EXKQ9t/XCQPaS?=
 =?us-ascii?Q?qoT3aBcKbC3tzDDYYwvJd5ct+GF6ktk8YclkUsMdm64KzTcb50xM7+Q4Xcbt?=
 =?us-ascii?Q?8kdYtJ6Wu0bAlilz5QjHGk3VJDv/AE+aSCEauZUN+CazRCBpRQb26Lff8Wik?=
 =?us-ascii?Q?iROMt6Gp/cOygqVZYRtAqMyvwrCNlR8LNIO8yKdmttgromTlsHS/y65L67+k?=
 =?us-ascii?Q?yWeEKbxiFNu3hDjo6Vwjg21wzxY7zZJ4CIeJ8IyGAhWFdqXOUekeEjsdtbOA?=
 =?us-ascii?Q?adsdwq31U1u/uTczAcnhpoozaFr5xkwTtbxB/znf9XyrhT/hgb63FE/qlwn4?=
 =?us-ascii?Q?+jQ7WeiY+EFpuPON2DwLYzQ7r1r1kPy8AVNQEsOrvaopMU7P45yy5IF0aWL/?=
 =?us-ascii?Q?H+tKpuWIEvsIxz7+1YONWSQ5luayGKwQUNOFaPjn2UCfqWedGXNqGqGhx9wS?=
 =?us-ascii?Q?Fw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 29f0fd3a-6a3a-4cae-2255-08dad3c0b7fa
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 17:23:10.2026 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JK4XBMeeO6/LpdIE3rWYbT0AG/ZaXRFBvu99aKjioBcP4sqNRhl1SpCtCy7kNhDDJVb36jDKyeBIZJXDB+ZKoqr7iY5Kn3edN1/BUWghIUw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7125
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Add initial gt workarounds
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

On Thu, Dec 01, 2022 at 01:15:35PM +0000, Tvrtko Ursulin wrote:
>
>On 30/11/2022 23:17, Matt Atwood wrote:
>>From: Matt Roper <matthew.d.roper@intel.com>
>>
>>This patch introduces initial workarounds for mtl platform
>>
>>Bspec:66622
>>
>>Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>>---
>>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   4 +-
>>  .../drm/i915/gt/intel_execlists_submission.c  |   4 +-
>>  drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  11 +-
>>  drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   5 +
>>  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 105 +++++++++++++-----
>>  drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   9 +-
>>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  10 +-
>>  drivers/gpu/drm/i915/i915_drv.h               |   4 +
>>  drivers/gpu/drm/i915/intel_device_info.c      |   6 +
>>  9 files changed, 121 insertions(+), 37 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>>index c33e0d72d670..af88d8ab61c1 100644
>>--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>>+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>>@@ -1479,7 +1479,9 @@ static int __intel_engine_stop_cs(struct intel_engine_cs *engine,
>>  	 * Wa_22011802037 : gen11, gen12, Prior to doing a reset, ensure CS is
>>  	 * stopped, set ring stop bit and prefetch disable bit to halt CS
>>  	 */
>>-	if (IS_GRAPHICS_VER(engine->i915, 11, 12))
>>+	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
>>+	    (GRAPHICS_VER(engine->i915) >= 11 &&
>>+	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
>
>Does comment need updating to reflect the workaround applicability? 
>Elsewhere as well. Some are left as dg2 only. Some gen11,gen12 only.
>
>Then there's a few of this same change logic throught the patch, so I 
>assume a general situation of workarounds applying to only early MTL.
>
> if ((IS_GRAPHICS_VER(engine->i915, 11, 12)) &&
>     !IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_B1, STEP_FOREVER)
>
>Would this be correct and simpler? Not sure about STEP_B1 for start of 

should be STEP_B0 if doing this. The stepping check is inclusive on the
left, exclusive on the right, i.e:  [STEP_A0, STEP_B0).

But even if the check is simpler, I'd avoid doing a negative check to
maintain consistency.

Lucas De Marchi


>range, if it is possible to define it. Don't know.. One could perhaps 
>even suggest a new macro to avoid repeated whatever patterna lot.
>
>>  		intel_uncore_write_fw(uncore, RING_MODE_GEN7(engine->mmio_base),
>>  				      _MASKED_BIT_ENABLE(GEN12_GFX_PREFETCH_DISABLE));
>>diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>>index 49a8f10d76c7..a91c912e35d6 100644
>>--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>>+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>>@@ -2992,7 +2992,9 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
>>  	 * Wa_22011802037:gen11/gen12: In addition to stopping the cs, we need
>>  	 * to wait for any pending mi force wakeups
>>  	 */
>>-	if (IS_GRAPHICS_VER(engine->i915, 11, 12))
>>+	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
>>+	    (GRAPHICS_VER(engine->i915) >= 11 &&
>>+	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
>>  		intel_engine_wait_for_pending_mi_fw(engine);
>>  	engine->execlists.reset_ccid = active_ccid(engine);
>>diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
>>index aa070ae57f11..0e90a8f86b27 100644
>>--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
>>+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
>>@@ -164,8 +164,15 @@ void intel_gt_mcr_init(struct intel_gt *gt)
>>  	if (MEDIA_VER(i915) >= 13 && gt->type == GT_MEDIA) {
>>  		gt->steering_table[OADDRM] = xelpmp_oaddrm_steering_table;
>>  	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70)) {
>>-		fuse = REG_FIELD_GET(GT_L3_EXC_MASK,
>>-				     intel_uncore_read(gt->uncore, XEHP_FUSE4));
>>+		/* Wa_14016747170:mtl-m[a0], mtl-p[a0] */
>>+		if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>>+		    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>>+			fuse = REG_FIELD_GET(MTL_GT_L3_EXC_MASK,
>>+					     intel_uncore_read(gt->uncore,
>>+							       MTL_GT_ACTIVITY_FACTOR));
>>+		else
>>+			fuse = REG_FIELD_GET(GT_L3_EXC_MASK,
>>+					     intel_uncore_read(gt->uncore, XEHP_FUSE4));
>>  		/*
>>  		 * Despite the register field being named "exclude mask" the
>>diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>>index 784152548472..c2c03b02f200 100644
>>--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>>+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>>@@ -413,6 +413,7 @@
>>  #define   TBIMR_FAST_CLIP			REG_BIT(5)
>>  #define VFLSKPD					MCR_REG(0x62a8)
>>+#define   VF_PREFETCH_TLB_DIS			REG_BIT(5)
>>  #define   DIS_OVER_FETCH_CACHE			REG_BIT(1)
>>  #define   DIS_MULT_MISS_RD_SQUASH		REG_BIT(0)
>>@@ -1532,6 +1533,10 @@
>>  #define MTL_MEDIA_MC6				_MMIO(0x138048)
>>+/* Wa_14016747170:mtl-p[a0], mtl-m[a0] */
>>+#define MTL_GT_ACTIVITY_FACTOR			_MMIO(0x138010)
>>+#define   MTL_GT_L3_EXC_MASK			REG_GENMASK(5, 3)
>>+
>>  #define GEN6_GT_THREAD_STATUS_REG		_MMIO(0x13805c)
>>  #define   GEN6_GT_THREAD_STATUS_CORE_MASK	0x7
>>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>index 3e35facac2b4..2e3d5de0c522 100644
>>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>@@ -786,6 +786,32 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
>>  	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
>>  }
>>+static void mtl_ctx_workarounds_init(struct intel_engine_cs *engine,
>>+				     struct i915_wa_list *wal)
>>+{
>>+	struct drm_i915_private *i915 = engine->i915;
>>+
>>+	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>>+	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
>>+		/* Wa_14014947963:mtl */
>>+		wa_masked_field_set(wal, VF_PREEMPTION,
>>+				    PREEMPTION_VERTEX_COUNT, 0x4000);
>>+
>>+		/* Wa_16013271637:mtl */
>>+		wa_mcr_masked_en(wal, XEHP_SLICE_COMMON_ECO_CHICKEN1,
>>+				 MSC_MSAA_REODER_BUF_BYPASS_DISABLE);
>>+
>>+		/* Wa_18019627453:mtl */
>>+		wa_mcr_masked_en(wal, VFLSKPD, VF_PREFETCH_TLB_DIS);
>>+
>>+		/* Wa_18018764978:mtl */
>>+		wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
>>+	}
>>+
>>+	/* Wa_18019271663:mtl */
>>+	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
>>+}
>>+
>>  static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
>>  					 struct i915_wa_list *wal)
>>  {
>>@@ -872,7 +898,9 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
>>  	if (engine->class != RENDER_CLASS)
>>  		goto done;
>>-	if (IS_PONTEVECCHIO(i915))
>>+	if (IS_METEORLAKE(i915))
>>+		mtl_ctx_workarounds_init(engine, wal);
>>+	else if (IS_PONTEVECCHIO(i915))
>>  		; /* noop; none at this time */
>>  	else if (IS_DG2(i915))
>>  		dg2_ctx_workarounds_init(engine, wal);
>>@@ -1628,7 +1656,10 @@ pvc_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>>  static void
>>  xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>>  {
>>-	/* FIXME: Actual workarounds will be added in future patch(es) */
>>+	/* Wa_14014830051:mtl */
>>+	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
>>+	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0))
>>+		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
>>  	/*
>>  	 * Unlike older platforms, we no longer setup implicit steering here;
>>@@ -2168,7 +2199,9 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
>>  	wa_init_start(w, engine->gt, "whitelist", engine->name);
>>-	if (IS_PONTEVECCHIO(i915))
>>+	if (IS_METEORLAKE(i915))
>>+		; /* noop; none at this time */
>>+	else if (IS_PONTEVECCHIO(i915))
>>  		pvc_whitelist_build(engine);
>>  	else if (IS_DG2(i915))
>>  		dg2_whitelist_build(engine);
>>@@ -2278,6 +2311,34 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>>  {
>>  	struct drm_i915_private *i915 = engine->i915;
>>+	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>>+	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
>>+		/* Wa_22014600077:mtl */
>>+		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
>>+				 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
>>+	}
>>+
>>+	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>>+	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>>+	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
>>+	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
>>+		/* Wa_1509727124:dg2,mtl */
>>+		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
>>+				 SC_DISABLE_POWER_OPTIMIZATION_EBB);
>>+
>>+		/* Wa_22013037850:dg2,mtl */
>>+		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
>>+				DISABLE_128B_EVICTION_COMMAND_UDW);
>>+	}
>>+
>>+	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
>>+	    IS_DG2_G11(i915) || IS_DG2_G12(i915) ||
>>+	    IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0)) {
>>+		/* Wa_22012856258:dg2,mtl */
>>+		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
>>+				 GEN12_DISABLE_READ_SUPPRESSION);
>>+	}
>>+
>>  	if (IS_DG2(i915)) {
>>  		/* Wa_1509235366:dg2 */
>>  		wa_write_or(wal, GEN12_GAMCNTRL_CTRL, INVALIDATION_BROADCAST_MODE_DIS |
>>@@ -2289,13 +2350,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>>  		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2, GEN12_ENABLE_LARGE_GRF_MODE);
>>  	}
>>-	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
>>-	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
>>-		/* Wa_1509727124:dg2 */
>>-		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
>>-				 SC_DISABLE_POWER_OPTIMIZATION_EBB);
>>-	}
>>-
>>  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0) ||
>>  	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0)) {
>>  		/* Wa_14012419201:dg2 */
>>@@ -2327,14 +2381,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>>  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
>>  	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
>>-		/* Wa_22013037850:dg2 */
>>-		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
>>-				DISABLE_128B_EVICTION_COMMAND_UDW);
>>-
>>-		/* Wa_22012856258:dg2 */
>>-		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
>>-				 GEN12_DISABLE_READ_SUPPRESSION);
>>-
>>  		/*
>>  		 * Wa_22010960976:dg2
>>  		 * Wa_14013347512:dg2
>>@@ -2954,6 +3000,20 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>>  	add_render_compute_tuning_settings(i915, wal);
>>+	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>>+	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>>+	    IS_PONTEVECCHIO(i915) ||
>>+	    IS_DG2(i915)) {
>>+		/* Wa_18018781329:dg2,pvc,mtl */
>>+		wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
>>+		wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
>>+		wa_mcr_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
>>+		wa_mcr_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
>>+
>>+		/* Wa_22014226127:dg2,pvc,mtl */
>>+		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
>>+	}
>>+
>>  	if (IS_PONTEVECCHIO(i915)) {
>>  		/* Wa_16016694945 */
>>  		wa_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_OVRLSCCC);
>>@@ -2995,17 +3055,8 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>>  		/* Wa_14015227452:dg2,pvc */
>>  		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, XEHP_DIS_BBL_SYSPIPE);
>>-		/* Wa_22014226127:dg2,pvc */
>>-		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
>>-
>>  		/* Wa_16015675438:dg2,pvc */
>>  		wa_masked_en(wal, FF_SLICE_CS_CHICKEN2, GEN12_PERF_FIX_BALANCING_CFE_DISABLE);
>>-
>>-		/* Wa_18018781329:dg2,pvc */
>>-		wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
>>-		wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
>>-		wa_mcr_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
>>-		wa_mcr_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
>>  	}
>>  	if (IS_DG2(i915)) {
>>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>>index 52aede324788..5ec74a167df9 100644
>>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>>@@ -274,8 +274,9 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>>  	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_B0))
>>  		flags |= GUC_WA_GAM_CREDITS;
>>-	/* Wa_14014475959:dg2 */
>>-	if (IS_DG2(gt->i915))
>>+	/* Wa_14014475959:dg2,mtl */
>>+	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
>>+	    IS_DG2(gt->i915))
>>  		flags |= GUC_WA_HOLD_CCS_SWITCHOUT;
>>  	/*
>>@@ -289,7 +290,9 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>>  		flags |= GUC_WA_DUAL_QUEUE;
>>  	/* Wa_22011802037: graphics version 11/12 */
>>-	if (IS_GRAPHICS_VER(gt->i915, 11, 12))
>>+	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
>>+	    (GRAPHICS_VER(gt->i915) >= 11 &&
>>+	    GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 70)))
>>  		flags |= GUC_WA_PRE_PARSER;
>>  	/* Wa_16011777198:dg2 */
>>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>index 0a42f1807f52..f148d2f88d40 100644
>>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>@@ -1615,7 +1615,9 @@ static void guc_reset_state(struct intel_context *ce, u32 head, bool scrub)
>>  static void guc_engine_reset_prepare(struct intel_engine_cs *engine)
>>  {
>>-	if (!IS_GRAPHICS_VER(engine->i915, 11, 12))
>>+	if (!(IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
>>+	      (GRAPHICS_VER(engine->i915) >= 11 &&
>>+	      GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70))))
>>  		return;
>
>The situation in this function looks bad.
>
>It is not documented at all why calling intel_engine_stop_cs is only 
>applicable on gen 11-12.
>
>The workaround comment only comes after that call so one should assume 
>it is not part of workaround.
>
>Could you strong arm someone to put a comment in here explaining the 
>situaion?
>
>Regards,
>
>Tvrtko
>
>>  	intel_engine_stop_cs(engine);
>>@@ -4202,8 +4204,10 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
>>  	engine->flags |= I915_ENGINE_HAS_TIMESLICES;
>>  	/* Wa_14014475959:dg2 */
>>-	if (IS_DG2(engine->i915) && engine->class == COMPUTE_CLASS)
>>-		engine->flags |= I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
>>+	if (engine->class == COMPUTE_CLASS)
>>+		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
>>+		    IS_DG2(engine->i915))
>>+			engine->flags |= I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
>>  	/*
>>  	 * TODO: GuC supports timeslicing and semaphores as well, but they're
>>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>>index ecb027626a21..2f18bc123438 100644
>>--- a/drivers/gpu/drm/i915/i915_drv.h
>>+++ b/drivers/gpu/drm/i915/i915_drv.h
>>@@ -731,6 +731,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>  	(DISPLAY_VER(__i915) == 14 && \
>>  	 IS_DISPLAY_STEP(__i915, since, until))
>>+#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
>>+	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
>>+	 IS_GRAPHICS_STEP(__i915, since, until))
>>+
>>  /*
>>   * DG2 hardware steppings are a bit unusual.  The hardware design was forked to
>>   * create three variants (G10, G11, and G12) which each have distinct
>>diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
>>index 849baf6c3b3c..7add88dde79e 100644
>>--- a/drivers/gpu/drm/i915/intel_device_info.c
>>+++ b/drivers/gpu/drm/i915/intel_device_info.c
>>@@ -343,6 +343,12 @@ static void intel_ipver_early_init(struct drm_i915_private *i915)
>>  	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_GRAPHICS),
>>  		    &runtime->graphics.ip);
>>+	/* Wa_22012778468:mtl */
>>+	if (runtime->graphics.ip.ver == 0x0 &&
>>+	    INTEL_INFO(i915)->platform == INTEL_METEORLAKE) {
>>+		RUNTIME_INFO(i915)->graphics.ip.ver = 12;
>>+		RUNTIME_INFO(i915)->graphics.ip.rel = 70;
>>+	}
>>  	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_DISPLAY),
>>  		    &runtime->display.ip);
>>  	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_MEDIA),
