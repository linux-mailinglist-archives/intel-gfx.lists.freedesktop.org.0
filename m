Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D141DA0940D
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2025 15:47:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A92110F0EA;
	Fri, 10 Jan 2025 14:47:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X3t/vdD4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 779B310F0EA
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2025 14:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736520421; x=1768056421;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=pWo//I1vsyxXauPUpKptzZSS81dF1WyS3pKtZGEceNM=;
 b=X3t/vdD4d89qoMAw0rLZONKaavl31XQ1FMGTYmqYpjesVxhTBfAgOeRL
 bF+Jy20fCSlBz6Hky0/07EHAAEnieq6DzJDntpPHfPevnMKchCZdkRv58
 KyEEXxFkpacZZwY5i8RJUk/Ribg/KgARB3B4j0NfTm2W081kzzyzzSlVh
 o0356z5Fr48kyp6A3X0uYjoJfp29fP9aa++nddrQlXI4XMUAtYYTtDM07
 UzEy4vk+Z9pdTifozpnaXL4MTYU+hLfx0dPCG2ZooDtqYrxwspA+ztKjo
 P4j6giIjQ3I1KM4iycmSYiZCb3ntn3S8LHRT7d3wruuwtaaalxsdFzmX8 A==;
X-CSE-ConnectionGUID: U585Dk4kT+G24zhtOlDJyA==
X-CSE-MsgGUID: yg8KVHRrSZCZ5cmUJI7Zww==
X-IronPort-AV: E=McAfee;i="6700,10204,11311"; a="36101746"
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="36101746"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2025 06:47:01 -0800
X-CSE-ConnectionGUID: d+SeKXdbSGaMiXNq9dRE1g==
X-CSE-MsgGUID: wHdy4PekQkuPRINS6v/8jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="134587187"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jan 2025 06:47:01 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 10 Jan 2025 06:47:00 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 10 Jan 2025 06:47:00 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 10 Jan 2025 06:47:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FCLDwAYNNaPt8joH/6spPhsUJkQPL2jnApCWAWc918Z12nvMfls7y8LPHjPwcVvD3y5/Zr5qtnsqTnV1QNocRYG6XIcAB47jv3JDBnMH2rDyjWu4HVb94gREYLfwOizRC8RbK4/jn10EAKFtMXRIUy2+DBob1X4g+ZI6qMllsyL61XhLBT8p4jGsEnMiBaHyHhwI4x9v50dwSDz97cYDve7/HX6rRCdlxR3BjNGdlgtD4wtWVjzvdU59TQKa2TNg4gV2AlO3Ukg1vDEhyvecjHdKuETSg1cNtD0dU8pl7k47pSZthO03iran7X4uSOpKfComm7oLJ5X+0R0bK3BzwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u9APfsjtfs8wP3tHGAd7j0PNyqdVpO7yqQxEoOCWp/I=;
 b=ycn8u8xlO5AeR9olT36iXi8GwHJierDWamgvKlGATgekCgVTF0UG90jpzongbekSrdF9NuFl2qzEZXrIzP6OjmHRrEhrfvKRbYdLM7N9ugfnLlGQp5UvFtQOtLVT6zeMG5VWwAtOrUmNGjqn3T3db4kDOpeTAcjMyqeRH2W4/zhtDep8bkqusD5RogxJ7b11P9T5kaQ/h19JSemjCBaTI+H7TzoLv2msRKdJyZ5mthJtJu+4lVXSvAmTS+aQX2HFg3rw7CmlDdx/7CA7l86r7cBlKzI9XPhWMGpsti3QtwIgQTPL+DU5JdPZL0eNFFnAV65kVWMxFVqn6xEuQanM7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11)
 by BL1PR11MB5271.namprd11.prod.outlook.com (2603:10b6:208:31a::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.13; Fri, 10 Jan
 2025 14:46:45 +0000
Received: from SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72]) by SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72%5]) with mapi id 15.20.8335.011; Fri, 10 Jan 2025
 14:46:44 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Vinay Belgaumkar
 <vinay.belgaumkar@intel.com>
Subject: [PATCH 1/2] drm/i915/guc/slpc: Allow GuC SLPC default strategies on
 MTL+
Date: Fri, 10 Jan 2025 09:46:39 -0500
Message-ID: <20250110144640.1032250-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0113.namprd03.prod.outlook.com
 (2603:10b6:303:b7::28) To SN7PR11MB8282.namprd11.prod.outlook.com
 (2603:10b6:806:269::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB8282:EE_|BL1PR11MB5271:EE_
X-MS-Office365-Filtering-Correlation-Id: a942b864-6dbc-4102-3331-08dd31859a5d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?wKWbXtJY2hFMxv1NvrWTW4AjI+kWlGhSxBELnF5pkErEG0kljO2CtDjmQkhM?=
 =?us-ascii?Q?lRjqhzcGddgy13SlfBfoy+kksvJv0SSLshAgOQSSZV5ch2bXB/H6ebYOYDbP?=
 =?us-ascii?Q?+b6jKMST1AFoZEPLB0KGqIl+TIF6I+XUJbsP1q8abVphumPhEBa/v4Liwoi5?=
 =?us-ascii?Q?GE7nMK4PHQgstsMYa+C/LAnE5pbyvPPVJ0956AcATZ25TzNosYVq8r3TcDuA?=
 =?us-ascii?Q?ck+GmCIjoMV8YKECBqE1/HHcFxLE/r2jQSmuvFGqfOGoCx9lnqb3dAc52HoN?=
 =?us-ascii?Q?ZM/ZmgHwvUrokLiK004NytJWyr+II58HSfGcj5FEhXdVTmF81tff1NOyEH6m?=
 =?us-ascii?Q?eQpLKm6OPwagMTQUugYzZ98SfwADcr7kj+RRLcsH8EfDLqUChH/gxQBiP9fE?=
 =?us-ascii?Q?8F8ML5OpcngHCnRfmWkDJpucyYZYOIvvhmYFjJpWAgmgL+NdGFZAx3gb0dyo?=
 =?us-ascii?Q?PP9eAfxT16iul8vgKwexxtI7jGTsahi+E4iUpUan1sktw9SB/t9Edevz3Yl6?=
 =?us-ascii?Q?JGniO5FhabsyDLd8guoLvfthg3NTNVtb+upYr1Udi+zy/XpCWTPB6HIa/y0/?=
 =?us-ascii?Q?bIlc/AjPcp6BZVU5ClAy8FdLnKKmbtLGImeYadsBWDWrAzn3Fh0m2GgxIojf?=
 =?us-ascii?Q?AcdNrMeToK3dsbDUNjtkdIOEPMUZUo4M1A76v2J8RveD6UtHlQYeogIi7a9r?=
 =?us-ascii?Q?Uz+mv6bRQnsq4Z0Zqx1jUQMY1jfa905Z+lhsOpfHPjL4tMYf4we49d+L3H0g?=
 =?us-ascii?Q?azfcuvtxe6mIXOcejXuBt7rhtz8EQZa3SAo5p4eeihh1D+ctN9CPkH+179p+?=
 =?us-ascii?Q?NyzeAWPo64XB1ZihgOTB7Ee88TUnqYgNKG31AYH4zBmCkL3boJoOYqHClN5Z?=
 =?us-ascii?Q?n+Q5oOlm9X3G7Di2vDKkl+PuvAbdzdG2CP7RT8jucCpG9rPofIGvB4d94n2/?=
 =?us-ascii?Q?H7apc4srHIpLVUCFHHiyg/6nwd9UcKGuX0Od7KbWMFZ/x2NMRUKCAhvJTMej?=
 =?us-ascii?Q?5404ReVpMd1S78vSHB8LYg6cOUIGwT9LVyfpTjZp8QmA1I1Md3CMOLdBNc57?=
 =?us-ascii?Q?pkcWrsF7jQTKhCu2HLvFergd4OAfmzTB3OleO1Hj5iAGQiys4BIyeKGk21gM?=
 =?us-ascii?Q?EKIxlC3izLbvU1cPkbky//FrOkCvXcbmxuBCczj2++RVZtILECj/monTEqBC?=
 =?us-ascii?Q?RR3p8THpKHfS104mhx4aiJmkve3NeyQIT1U7RsdXu9/82kORxz9lt2/KH273?=
 =?us-ascii?Q?Hi3LiTv5auXx5Dg0c8lnrGE+AuGkR26vt9kyg1SDZj1osupo3s15vW4+RPKM?=
 =?us-ascii?Q?IlMl2ce+4yw8MaCgIVymw1kKVmUXvkkGu17ExkmllHou5WZx0TeSD0WOWG+8?=
 =?us-ascii?Q?YObOHRBfl2Wco9QOanqZkHqzYiFt?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qdJksgBL8/nJNtBjx2nqyS0R/jg0ISihvEazCx0/WHShqD38MlQ+xLvErU6+?=
 =?us-ascii?Q?MDFNkoP2NNrj24HYMi9jbBvcSIMuwABWw6Avjo9LdgVaYfNEDdIVw5GPaKyc?=
 =?us-ascii?Q?gXVDfWyXuh+5qxi6Fk/XVNrU9++VCfYiZZGYxya3M0WgcXmWVwU+mhBPU87k?=
 =?us-ascii?Q?67v2EkGP1UG+KhtOxg4xFDiO+vwnhUlwhXO42xfkJlX1ie/3Y110DjGnnMAB?=
 =?us-ascii?Q?RfYlTcvF1MPPYBTsZ+LiYhkVRveJTbjKYZj/cIo+vNPHiMJ1EIXo5hICHCLC?=
 =?us-ascii?Q?1/6bxrVvZ3wrxpoKqaHx5weRN3O7vYvpimAkuz2CQevHfecZRki+McocWX8Z?=
 =?us-ascii?Q?B1FC3yVRK9BRsGzdg/BLS4SexxM0a+5wy1n/OFMWlAaYNZmQcxXVyveZsXAo?=
 =?us-ascii?Q?FHexaSzYwI0aDSn3bz2QKl3PmN8pUWJMhSCUjBecOUc9u6cIjRWQLRn/OOGJ?=
 =?us-ascii?Q?vYHpOsHBI1KnIkC3WE4kUf9wpWfuUvolTfZRZR0NkTSbJZ7LMI78BKftvun3?=
 =?us-ascii?Q?6smYiHRLt9V1XvMr9ehNL2Lp8+8BJDH1n47YZz6330vQgtvOvpy3epF9EzYl?=
 =?us-ascii?Q?Z77/YyEKAgr/r9tY970EFmJ+2gbwSTul3P0Ku/hMaBH4UhZSmV3cMCXJI4so?=
 =?us-ascii?Q?EFLVO80PHukfucQy9YHYt6XoJbHMxDtgLoq/+mYEl7cKEk7JKS+yHsv0BYC9?=
 =?us-ascii?Q?kyb6sL46gsDneWTLIDko6EZseEkwc6KFCXqznxkJtqsJYilPexC/nTWf/gg2?=
 =?us-ascii?Q?xUwa7q5TuNQDeaWb967l67ciMWF01XUgJNcEphMZEiNQlfvkPhoHIbnxTzKW?=
 =?us-ascii?Q?4352ZY5cw99J6KQYVPKAB8siP2sfIdyMAiOg+uQIxDN8NPP103UH4Dy3jb1c?=
 =?us-ascii?Q?/WEmdKO06sBQw223Q8xceGUv5wZKFdLEy0RAfUTyH/uR/qUFQxe3XiAuEy/O?=
 =?us-ascii?Q?OCqCzRDTEK6ew9Qrd64dmjqNbdEneybI/J2nbePZy+jn8usqMR5R0MZWUn0E?=
 =?us-ascii?Q?Jgorlpf1u00YJuiJOuI90xs1/EaWD9iuWUU+6gMDnlyH36kCr6MZ3oD+dYQ1?=
 =?us-ascii?Q?2XU4e9xFWGuhI43OA6Xelx5rqMFhQbqb8OEc57Q+6oxOKdS7yGnBIWgvnvHn?=
 =?us-ascii?Q?IRuP+hMVUy/tmvlDhP0qrdRnwM6vnfzur63wC8K7Ji2qs0xeSDjnWunkJ46y?=
 =?us-ascii?Q?nqWihOdiNhRMJ+ncM66bk0FkpzOuCMU50psFGKmdmBH4t8e88vBI8DzK9PFb?=
 =?us-ascii?Q?W0WcIJSaICW5ajrmWYKFbvgidgdC7MR7BCBPuXSrEhzAvArSW7uHumwYc/nZ?=
 =?us-ascii?Q?We+Pr9A3AteET2BsMNnu3qvBdRd9p8UVn9DdDxAwX0IOGRt5bNX5xAbtwrlF?=
 =?us-ascii?Q?GEsUk+aODs+CmNgYaeMXl933KuxDnGEygJ+3u7QsGU07F0mIp+GAS66M9Cgp?=
 =?us-ascii?Q?/U1+onMNdHD7AG4RCv//ePQEbl5o7rp2yr1AFnFPoc+K1rCjF/NCVPNxC5vD?=
 =?us-ascii?Q?R+vPkyd3c0zgulFVa5fCp/+MvqnmkAfy0i5imZAXYk8Dw9bYm457VL8agk2G?=
 =?us-ascii?Q?35jsC+mVhnDnzW1Ekjd/hgYPgDa7EdIOUhlBb9fNa/BwAsrhlezR4/Ca9p0T?=
 =?us-ascii?Q?MA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a942b864-6dbc-4102-3331-08dd31859a5d
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2025 14:46:44.9319 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xd6DwkbRPoAyC9Tvw23b1BcrBixDOkhz04DovnQfyc0HdT03gyJ/yj6hH6An/nJdu9BGw1es4dLz79qfQt7lsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5271
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

The Balancer and DCC strategies were left off on a fear that
these strategies would conflict with the i915's waitboost.

However, on MTL and Beyond these strategies are only active in
certain conditions where the system is TDP limited.
So, they don't conflict, but help the
waitboost by guaranteeing a bit more of GT frequency.

Without these strategies we were likely leaving some performance
behind on some scenarios.

With this change in place, the enabling/disabling of DCC and Balancer
will now be chosen by GuC, on a platform/GT basis.

v2: - Fix typos and be clear on GuC decision on platform basis (Vinay)
    - Limit change to MTL and beyond, where GuC started to take
      TDP limit into consideration.
v3: Fix compilation. Actually amend the changes...

Reviewed-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com> #v1
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 22 ++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 706fffca698b..1f8e6f7c2c67 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -357,21 +357,29 @@ static u32 slpc_decode_max_freq(struct intel_guc_slpc *slpc)
 				  GT_FREQUENCY_MULTIPLIER, GEN9_FREQ_SCALER);
 }
 
-static void slpc_shared_data_reset(struct slpc_shared_data *data)
+static void slpc_shared_data_reset(struct intel_guc_slpc *slpc)
 {
-	memset(data, 0, sizeof(struct slpc_shared_data));
+	struct drm_i915_private *i915 = slpc_to_i915(slpc);
+	struct slpc_shared_data *data = slpc->vaddr;
 
+	memset(data, 0, sizeof(struct slpc_shared_data));
 	data->header.size = sizeof(struct slpc_shared_data);
 
 	/* Enable only GTPERF task, disable others */
 	slpc_mem_set_enabled(data, SLPC_PARAM_TASK_ENABLE_GTPERF,
 			     SLPC_PARAM_TASK_DISABLE_GTPERF);
 
-	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_BALANCER,
-			      SLPC_PARAM_TASK_DISABLE_BALANCER);
+	/*
+	 * Don't allow balancer related algorithms on platforms before
+	 * Xe_LPG, where GuC started to restrict it to TDP limited scenarios.
+	 */
+	if (GRAPHICS_VER_FULL(i915) < IP_VER(12, 70)) {
+		slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_BALANCER,
+				      SLPC_PARAM_TASK_DISABLE_BALANCER);
 
-	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_DCC,
-			      SLPC_PARAM_TASK_DISABLE_DCC);
+		slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_DCC,
+				      SLPC_PARAM_TASK_DISABLE_DCC);
+	}
 }
 
 /**
@@ -686,7 +694,7 @@ int intel_guc_slpc_enable(struct intel_guc_slpc *slpc)
 
 	GEM_BUG_ON(!slpc->vma);
 
-	slpc_shared_data_reset(slpc->vaddr);
+	slpc_shared_data_reset(slpc);
 
 	ret = slpc_reset(slpc);
 	if (unlikely(ret < 0)) {
-- 
2.47.1

