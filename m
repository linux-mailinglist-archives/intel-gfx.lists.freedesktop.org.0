Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CE6890C87
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 22:31:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5490310E647;
	Thu, 28 Mar 2024 21:31:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WuOf29Co";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01AA210E647
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 21:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711661481; x=1743197481;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=m1s/7l25YrlIDSgMxta2m/ujIGCFmwIyO9ZfZivyhjQ=;
 b=WuOf29CokWjY0SgzrwI2oDPlAQzBHvGx/47vZrTlC/tQt1ieGKUFrLP1
 NKqQ0FPwOwwGhmW1Q9hYeL+hKtAmn0I+P46r34QC8eFvmZKlbcEP0WZ/J
 jZxNlkYd5LyFM0qz/VeQMXa/gCKMiKScWc+Ga6CfuswFQCyavzpSqJ5F3
 uvyw1IHY+gHNmRvauqyk4LykUJJ6nmIdWJ+S7MBWqvazKWvDud6J4+4XV
 NLydMlJSM2NRwba5wjledpWwo65mH+9h1UTaIOdM11b2Drou2sNWUL1jm
 jNZjklXP8E5waL04tmAkQonERvZOmII55cOp9dpyyB4dHGP6+QvHtyM8a Q==;
X-CSE-ConnectionGUID: R/bAzMpETmCrNexsWGsH1w==
X-CSE-MsgGUID: YMWtXNpgTo2RSyHZlaFx3Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="7061508"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="7061508"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 14:31:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="21482948"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 14:31:19 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 14:31:18 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 14:31:18 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 14:31:18 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 14:31:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=me5RcDjwYcH3AZYa3LaIYr7XEclRXiId7b4M9McN+/mONNSf3GwFXB6rpk8ceyWxadcdOq8enHCyiv4E14NTirhVzf/b7rcDiRjkT68OrEo3M57W+px6/2kHQT7+8MTnmz5XNQYSB35aCMWfYQxH/fOqnjRqdUjOXscUGnXHyDUIsR/thnagz3q8hQ/wSKc1kuVgjtkwYL5zL0uKBbJMZeWWK/gaWFiVRV6nAcoIygNiQwTf9OdTHQqhzz5Jea/EN0za7Ipa1hXHNL1t3GmqL2hi4StFd/FyvXQt5fsQmJ4amf3Gw6gFq7GmL29pCuFke8ymNkpeYVcQ1IXvf4L3PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B6vtybCm0ZYTchddB+FXV0c3jwfDUyJ+sXZe29vOpsg=;
 b=ZEfJxKwyaf9grtGqcfdxpggLev2dqHuPA6tzWewnWK3aREcW5CvxD7VamBHCgVHR5H9C9kGfLthgLR3jKziHsEINIAkEsYdjs3evuaYrZirLR7MZvQ9kc+CGhNkY/349KGGkfAV90iPHtJIQKTomHakPoinOuKPcrZIP2SGNQinEctZDCR8QwyArI03lZhVa9UajQQbVEsNV2MlpqJa450SaCUSTu7Uh38G6mvw+ZSOQ5LXcxssVBNrnhz/YeyedXN7ZoTzQT8rigmBqLC4bYuQ2Sv331lj4IYHHZTciraAqqQ86QwmDPmKLqc+xag51bG9Oq6uNn8ON+AMIzMwBqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CY8PR11MB7948.namprd11.prod.outlook.com (2603:10b6:930:7f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Thu, 28 Mar
 2024 21:31:13 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 21:31:13 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, kernel test robot <lkp@intel.com>, 
 Dan Carpenter <dan.carpenter@linaro.org>, Vinay Belgaumkar
 <vinay.belgaumkar@intel.com>, John Harrison <John.C.Harrison@Intel.com>
Subject: [PATCH] drm/i915/guc: Remove bogus null check
Date: Thu, 28 Mar 2024 17:31:07 -0400
Message-ID: <20240328213107.90632-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BY3PR10CA0024.namprd10.prod.outlook.com
 (2603:10b6:a03:255::29) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CY8PR11MB7948:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ar4Fe7oSIJQyNhFgOHsOGxG1sUcbMM3JzIHHyo7D947hm9C6btKDtEwl4ceHf1TTt3nT2Ab2yUXx77ML6R1PnrLnv734hgkI5NwcoHA0pmaL1MN7i4sVelE84abr7UBhzfm8+hwJkXFltKyKKVBLpGzfIjGaADCT9Lnj1MRbB5CPJywQrldL0c1lglcbNSFztkKXcG7yf3iTdISL6K+Q465rdRhJnN2LOGn0ywTJ89VElfaQDgpmlXw8gCGezy4L6w/ZDCZFlc/6bvjom5cvnblJsmfZhQ/7YwoxzS+WhtNv4JlG8hD0YuO9sLq0AGKoywDrvpjbdyw1CB/cg6KK6PjTVrmYu1QT/tOZNyAw3/lwZb1cTO8Aa93y45boysv47iiPpTMvbbFDlroJckEIix+zO9kplHVC/c62400pOPSbbYJl+nYhNwomkQMaIs5Un5QEppoRnEOx3+G5wS9Ugg/fr0Qeh/t0Ukd9DAyraFBSZ5ZAytoSk0856TPjXK/m5jEHKMBCl5xRJYtSR9pSIecxt7qT0dKpou8KaZ7+Xx4g2LBxdYElx/8PR1aNe9wYKu1U2LNXeUr68mKPcl1dgx8J+pR/elayyOSj9daZtCQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?y4SqHakEs8u6aBsEeDFdVIll9jyzDe/Krov/psJLk4BplJa/4POX9qelW6f5?=
 =?us-ascii?Q?qub510sYQdHVpe4sDu5/e0DPXM7st5SfCemASPCBC9jADa9Vxr8gq8K2d2u5?=
 =?us-ascii?Q?JUBCPC8hH1ovvrA2ubtj/yzRJBbDcWG1bsq1B8vE4z6WDahdSoU3/S9kwpTD?=
 =?us-ascii?Q?1NqtKbFYyZJJTN9NkdES2ENANtJV6PzNW4NAkNR+EsIopesvtET6KClNWaa1?=
 =?us-ascii?Q?aQ3iZoZQUeR0QmwdKz9amuEPD9Sv8C9uEFLTGAJs3Q2Q00DmKdoGd9VWSvgP?=
 =?us-ascii?Q?xVXEJlGf5ELCaBbeqETFoVkcifDVBANF5jE6PNH4MAhv0lntyCS6o+tmes3l?=
 =?us-ascii?Q?rNHMQXKe7n9UNtMqDK0JTzRq3E3CChLvQS8hq7wvwg6B5UOQzf7vCTQ4Rh2W?=
 =?us-ascii?Q?GGsRWKH7/ejxaaiLey83C5EoqYRQS9N+WDHoCGDstdxLEDIcNxHGssr+4hNE?=
 =?us-ascii?Q?F0hNawtyMhRyuoST4fBwfS7E9qhQXMwMiz8FHVCOvRPwWl6E+XD2LUgsXx6R?=
 =?us-ascii?Q?hdns9EgEZlZTzzFwdp2Y/ueJLnidFKlcCqt9JW/RUaqGFfY071Lt/+usgZCD?=
 =?us-ascii?Q?QOcQjdH24ZodToyZdITsR9ZYJH0St1mhgSs8hI/RjOUaHyEuCBEwV9PGSOt5?=
 =?us-ascii?Q?BAy4mfbtEI+1jbj5PNfvLP7zwBl1ROfSYzMwx9lj52XkMYA2oSrBU/bj6OiQ?=
 =?us-ascii?Q?yFEr95WI1xyIgYDXfDbvN6FgXYemiDfK524LTix8l9kGNcBYxH6SvbxcoIwA?=
 =?us-ascii?Q?j/TR+6H9L888sJIl4XD2N7d+IO4rDie9lPHVEZ8ZnHypHD/y7KV+uBmjyHXA?=
 =?us-ascii?Q?L81O8MZlicXCQo6sPH8Exg55FPVmp+sx33RE+118Cb8538x3IDW7RgCGUNgZ?=
 =?us-ascii?Q?jz3rDh1/MfygemaqttGyL7RP1S8nnz+7UAIVz8se6azPH6qQ7ju921oaOdho?=
 =?us-ascii?Q?c16Qb+PtH1lp9aBB4yEj+roIvh2IZDr/IGYHWA44uP90MJskK3XIZgO6WzH/?=
 =?us-ascii?Q?lx83ieEwsrf5LxDGEabAk5Fc+c5P5PPTDHGQO5yCCGFTA36foaR+96Nz6eAl?=
 =?us-ascii?Q?pHgpPisSlzR8iwk7KgP1vwcJs3esHkWnAyV9DNm3J3Sqni6YQHwIFzVSOGlj?=
 =?us-ascii?Q?Mai6t/0T8rndVMy4gddr2MbnHkpCWMyawIIa3fUGqEFGJ5iYlxWN35A17Od8?=
 =?us-ascii?Q?IyNRcH5y7XkJPft83/5hJKwYXzWQyV7RA8XFw1uDGh2Cr9qMievp7OYUvnf5?=
 =?us-ascii?Q?YILX1CNbdBcrMmy0tfLDwFL5EOFoD5umZsp3rqrJ0OukNX+LqmuCQX3kXmxW?=
 =?us-ascii?Q?W2ce9FVRCs0jSm7PQSFPpuMC2TXi1fIB9VuswAZBIktOZUfBsa6+dbv/3s3d?=
 =?us-ascii?Q?WSXQjx84WConJ7cJsqodTt3bTmrp5DB3nSkp1YRkuqvfmLZmnIjRuyzpnnKZ?=
 =?us-ascii?Q?HkW5w/GCXB90YUy0vHiITZEVxueySBFVPeMoGz7QVQfyUKpSRaEyhxJk1eWI?=
 =?us-ascii?Q?j56CTbvhQJkgcXYZ4Afp+DRl5QHIA+c1H45JgnOG5od4befxvaB6ufR4iJVv?=
 =?us-ascii?Q?kQR+CcBwUvPKfZMNGIDOcuxBYFwznaSg2GGv3UY+sBZXLmDKSMCGvDu4K3C4?=
 =?us-ascii?Q?qQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 83b2e193-6239-4398-6f48-08dc4f6e6464
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2024 21:31:13.1664 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QyN1dWyI1YtropAP/X7Weo9JUZZ3aMByVEYg94hIoa2OpAbpdNOM5V6ypZh2IVff6a67zYQMQsM+aU2LWXz83w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7948
X-OriginatorOrg: intel.com
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This null check is bogus because we are already using 'ce' stuff
in many places before this function is called.

Having this here is useless and confuses static analyzer tools
that can see:

struct intel_engine_cs *engine = ce->engine;

before this check, in the same function.

Fixes: cec82816d0d0 ("drm/i915/guc: Use context hints for GT frequency")
Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Closes: https://lore.kernel.org/r/202403101225.7AheJhZJ-lkp@intel.com/
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 01d0ec1b30f2..24a82616f844 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -2677,7 +2677,7 @@ static int guc_context_policy_init_v70(struct intel_context *ce, bool loop)
 	execution_quantum = engine->props.timeslice_duration_ms * 1000;
 	preemption_timeout = engine->props.preempt_timeout_ms * 1000;
 
-	if (ce && (ce->flags & BIT(CONTEXT_LOW_LATENCY)))
+	if (ce->flags & BIT(CONTEXT_LOW_LATENCY))
 		slpc_ctx_freq_req |= SLPC_CTX_FREQ_REQ_IS_COMPUTE;
 
 	__guc_context_policy_start_klv(&policy, ce->guc_id.id);
-- 
2.44.0

