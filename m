Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNBHB0Cu8GkfXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B97B1485545
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41F2910EC77;
	Tue, 28 Apr 2026 12:55:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="idV0xeRT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFCA110EC7C;
 Tue, 28 Apr 2026 12:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380924; x=1808916924;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=pDZiS57STuoHYYHvhZF5w7ecGFeTx3dg6mcrprh2Z8Q=;
 b=idV0xeRTJ+ZLvq0JJh3NwJPeVhxGCWLNvbBMsQvci3Dfazt1DQVKcVSw
 Npq0gODbuSgQgOEqYrxpO04Ylmyjh6F5ZaB/anoyoETdji+rQEgEBldRj
 W0tvKr/cGzYDreDLhvGeBGdP5d9SLYRsxlINDr7efbNmtmfTdHbYlUdDg
 PzT+UHhgZacrsFlAmlUy8qo+52zFmTlwRoKYnd4ONqjvMmzyNghq2IbPi
 glHcgMeyWZIFXfF27ZY1hhdgmiabx62ilYN2syBhX7XylROCA/AvQL4XW
 SzdAiwvj8519vUi7ZXfnGkSInhRfThTTxxoVAwoHnBGrhKPcIEkR+JeFw A==;
X-CSE-ConnectionGUID: 4dEXzYNsTPqSh+jG8EwuxQ==
X-CSE-MsgGUID: FYaiaDTxQceXM9NASRf1+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203312"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203312"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:21 -0700
X-CSE-ConnectionGUID: ROjLd2XSQr+azGEX1an6Hw==
X-CSE-MsgGUID: YkdQ9xJWTsmtbvjO5+i4uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234244826"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:22 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:21 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:21 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.51)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y2cC843w69moCjN5ekeestrtlftizYM5kE++kKcOkpbCkop8gO0efHx/VGy8zqMbv9VsTt2WCVJejv7iapluGKMAGIzYku3WyP3F4mEDvxExuhaR0UPkxxTaAf92eq72Cev12TYMMuno045cfQmQwzLvI+8eUc5RN2TBAF910QxIN8vQc826nHH6gRsCCojqzV7ZcVQt6M/nXEai53C9Z+/tYyVIWW03QrSqpRz0p24OMT31yeoovYERvyO48jaBijxJhh7INaTo2GGP7oZvDL+T77N+szmO5eDwTk1r327N2h62fbLFWqM9awSRiGqk1TQIKHisTWa1hZNhLoNKaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=41nYUlPxt9oiapzx29xXu2YoKCnOeXsbZR/VocSS3CI=;
 b=IJNfUzkYY2q7GztUQ62RKqqfMHJXGO+6zlkcoGZVdObLlNYwruERLX36qyxd9s2nvh0Twh4Rb/okLpHQHxgT6JBUklQRSPowsgfY4iX9GoxzFe6wxQU3Gm9XbFtPPKygV2LETx5pP4VEacnIOwm2HL+LQVW3OIXjmK1zJLP5yoltwTuAylTuI2yq72qRNTRXBfht2x1SZuKBxzYPzUSIwuTaitEfM+RUhQRrdkBbmzeVuaCJURgiLyGUeGRtUszTTynPRPG9aSt89bEdbCA8J9hq3TSWzz1G0lnrIoBBEBRyyYuHiTsbznNTirOCvAXT0lKNW5VbTQoLI96EiTK7HQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA3PR11MB9063.namprd11.prod.outlook.com (2603:10b6:208:57d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:55:17 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:17 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 081/108] drm/i915/dp_link_caps: Simplify idx->link rate/lane
 count lookup
Date: Tue, 28 Apr 2026 15:52:02 +0300
Message-ID: <20260428125233.1664668-82-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260428125233.1664668-1-imre.deak@intel.com>
References: <20260428125233.1664668-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F6E8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ee) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA3PR11MB9063:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c64562c-7610-428b-8236-08dea5255755
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: Blt80iwtMinZ4pOFQ+JfBOY1UJ1v0xjKBIuDuBPwUyfo+ncgz2XJ+7znI2D0LwiE0uwLPhsmQSZ6/ESDeRv+Gnbs1qiSKkgwEAwkWvoSdDlrqWufDj+Iw76Bz93sDB2CGZ9AUrAsYTQM0OJ+9q046sKONLrKvF5doW+mw2eBAgbPHCQPJtHvyLHrmcp1OFFFxshw3SruGCEljPUplSDBf8LdsrU6ySxx8zrZNgW0DYnMlyrYWAU3aX5It6tzxA7TA5CJqUTGP4L7DVr1SmlPomcW0fu7jrmM4OcI3LuWvDswuhVQbK2nuFb31RcNgVocRxJj+hH7cM4ebuCf/1qpHN6p8huklgF4DnuCtMzJobbCjteoJWsQsDDx9QVMsANQkKW9Jz+ujLQmCKAJpLhEYZM21jumaZCfqtgkz46hEef3VK7KJAtN6C3a2amHP03SdBelnqNA0Q1quJX4UPt+ulPnzv7l1GWBAo4BZI9DCZmrC64F7fpYzIYSO8Y9bejZvib/WTgqA7hQHZ9rfJXVwAQSo2CPa+oocR3ZsEWDBdiXokWVVtGxlY/iXaMoKyhOH73YcrQJDig7z6fy/lMmyYtVoPmZTZV7KubKb4S6lQCXiJpbdkhpGPBe2fXI8XzbT69wQ9zx1p1CP7wj/SG+6NmEn8lxiIQtGEkMXxyuoRMI+ZfGBxq/Munx1gp7k1AGEN9X9mcsdaOPvV9pppzB9669kMDy9ZxeOZV8teFJUxE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?z1cGBDwA1/MSO5qmpA6iNJPd2tec2q6D6mQz1vxe6ucXxcSI6PCTgIADCcD0?=
 =?us-ascii?Q?+NCNkopThAuq3rllbKoRbVcDW3ge/yrWS9E5Fzm2bu/ZWVbIIUGqVH6fxtod?=
 =?us-ascii?Q?4H6onszX/Fth0uK9hO4o1ZxVNJIE6JVmGMC/fiROE47Sw/D3ylo00fLXp6rh?=
 =?us-ascii?Q?L3LDo0tcohBc4N4kpMKfhl5jWGR5Yt5/S4BvbRouNQpySab/jWy0Q6jtobDf?=
 =?us-ascii?Q?GNReQct64VymeN6rOGfdLWfyEbmSzhE49birYTmsozah/TMuiyRT62v5B3Iy?=
 =?us-ascii?Q?qm4coxbU7HFlWFxOVkcsomEzm4bNPEzr4AGXsLRhxEXwRdi1YVRJk/Gnx8bI?=
 =?us-ascii?Q?19STNlLTaxX2KJdfKAkYBXWywZPW+Z/LVG53BApM7RTuCo/cN0t64msD0r+d?=
 =?us-ascii?Q?i7whFrnZkIQ3ThiU+yWOzvk2/TRlfPTp9uFer0lB8yD5XaDSR+dHxQ99zqT7?=
 =?us-ascii?Q?pUd3UKS/PEmdrMF/IszxTy9iTf0/Bo3eGyQl2bsJOlF72yCHLCqcQji1NiGd?=
 =?us-ascii?Q?DDk5iqmTCNr0Gx0sof6U3pANaVX9AshTPH4PkSfljFhRiLYsvhL9gZiGo7Jt?=
 =?us-ascii?Q?/GPq00w7VpgS6NV5glTuINhNhcSHwX4+UK3GtBGX6fLmDHfVdRs7mi7czibA?=
 =?us-ascii?Q?kmxHpPDTmfm28oMjquNgrHmEK+8rUrTLGlzXT2UdrJlJatjTZMuOocz836CE?=
 =?us-ascii?Q?Q62n9ZVQHP5/EIVCduA8x7UDz7k8scwgzBodd4zpLwJLj9gk2HEf72G8XxjF?=
 =?us-ascii?Q?IMCQBnwmLc+eJ/tRDaeMO7aRtX3CP88TudX76pMEXgLEi8tJisQmVxVU/hE3?=
 =?us-ascii?Q?ZJ9zpeNbELYlm+25nUaHkUmdJFzkUonK4w8mBoDxTlk4ZYzYrJxDY2t6wktz?=
 =?us-ascii?Q?yDtsr069FyciVLcRWVSKUt5Mw1TjjgN8h9CC1P7j3bX+5Ok1oSXjUBrzklWR?=
 =?us-ascii?Q?Cmnuq91xK9lGz0nHQugNTECN5wNkRa95hm09B6G7vuSvUN79BCYJ1s+qvgqs?=
 =?us-ascii?Q?LrzSEDNPlRm9YXP1p9NqG7aFS7L7C8kznTXQGlvOyFOLCvH1S1D9zAEwl5VF?=
 =?us-ascii?Q?7nY8Qx+5YnbUGpC5eDFkgjg9b+BYegnlvl2Vbx4xmiR+5rbX8d2aVY7jxhp5?=
 =?us-ascii?Q?yPwbZwDSkEbWMI19rpw24bxHpyRmNJwcvdqDtsh2lJrELf9BPFA+LIVWNWib?=
 =?us-ascii?Q?PEyDWn3ITipvKP6S0y5yxhZoZG5oJvI3WpPeR8CY2c6K0d8JdNrRb8twLTo9?=
 =?us-ascii?Q?gDhq+0dhP/p9oSd0hPdbCo4Zd3OOs2d8KYjLDeLGwrWz049TgN+jdHy7ssF9?=
 =?us-ascii?Q?7583DY2ppqZfh9A1w27CXIv8AmX+E+dX7O+eRXUomaUmgo3oV/5OmqgBqIyW?=
 =?us-ascii?Q?gNN1okgHCCQhaBy+YkHTqu6TfSqpm5jD2dDlpen3thqysdhSLl09QSO/Umo0?=
 =?us-ascii?Q?rLH/KuFbYPLBkmTeRwL0gQz+MONymXYiBeBW6FWOuD/EB/Jo5Ig1azNbwS5n?=
 =?us-ascii?Q?gGOtdTN+Haa0eQr9ji/lQuBBT6k6zzQJ4b9LABj3HMt17x3C0WMjG6F8TLWh?=
 =?us-ascii?Q?VcWN6bQB+Y8GhmsY1NCzCSJqYhut0xLIcWrn6T76mmJk/nV6vTy4En10+fgM?=
 =?us-ascii?Q?TzsXkBFrWB5XxWxWkJ0myKiUk1KmJ3mLS4rDLO1RAQbAqS0zfqEMK8MC5cte?=
 =?us-ascii?Q?yD3BVcUDydh2YaeFszkWwTtP1JKLO/720tCm2gg99KGE/kzqd5ePwTDCIW0r?=
 =?us-ascii?Q?AeJsCUUZpQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: WzZ3MgFsjy9LuNfnHg6ekBjbHmOUgntyTifJpsWRywePJlHvkDt4by/H2kuECAbuP8MBQ1H4+Luj+4+eOnRBCnb59xpCnRJMPW46xx9V/KYO87o3pHVBIk1YRAjZfduZrICTn39ZrCHUtFjvLpm+4FHVaWfZjjkWKIejG7Cz9Is2FXHXUd9x9o62+5byvrQYX1SlOA69GbCPs7fiPROfUIqXlvPS5jcdMMwT9GdxyhyeUA28+tU5IUj4XFUobHTI7hSTFXWFNK3rIGthPGeg+nKb135PAmTxJmfRl1rOP6xsoACGdKmk21t6tFJljdN8sdN4oPA+q4mXbPXmnNomuQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c64562c-7610-428b-8236-08dea5255755
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:53.2894 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xi4zLyw/lqzZ1RkFMH6wnXtX+zoCFHUIP6y0RuubWIILUmrO0+RIDpb+05btOxXHEro/MGquaEElF5IT7uY/ZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9063
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
X-Rspamd-Queue-Id: B97B1485545
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Compute the rate and lane count for a configuration directly from its
table index, removing indirection via the thin wrapper functions.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 32 +++++--------------
 1 file changed, 8 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 0d828ad9f93a7..345419e7c0c29 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -313,31 +313,15 @@ static int link_config_idx_to_lane_count_exp(int config_idx)
 	return config_idx % INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS;
 }
 
-static int intel_dp_link_config_rate(const struct intel_dp_link_caps_config_table *table,
-				     const struct intel_dp_link_config_entry *lc)
-{
-	return lookup_rate(table, link_config_idx_to_rate_idx(lc->config_idx));
-}
-
-static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_entry *lc)
-{
-	return 1 << link_config_idx_to_lane_count_exp(lc->config_idx);
-}
-
 static int link_config_idx_to_rate(const struct intel_dp_link_caps_config_table *table,
 				   int config_idx)
 {
-	const struct intel_dp_link_config_entry *lc = &table->configs[config_idx];
-
-	return intel_dp_link_config_rate(table, lc);
+	return lookup_rate(table, link_config_idx_to_rate_idx(config_idx));
 }
 
-static int link_config_idx_to_lane_count(const struct intel_dp_link_caps_config_table *table,
-					 int config_idx)
+static int link_config_idx_to_lane_count(int config_idx)
 {
-	const struct intel_dp_link_config_entry *lc = &table->configs[config_idx];
-
-	return intel_dp_link_config_lane_count(lc);
+	return 1 << link_config_idx_to_lane_count_exp(config_idx);
 }
 
 /*
@@ -372,7 +356,7 @@ to_intel_dp_link_config(const struct intel_dp_link_caps_config_table *table,
 			int config_idx, struct intel_dp_link_config *config)
 {
 	config->rate = link_config_idx_to_rate(table, config_idx);
-	config->lane_count = link_config_idx_to_lane_count(table, config_idx);
+	config->lane_count = link_config_idx_to_lane_count(config_idx);
 }
 
 static bool
@@ -798,8 +782,8 @@ void intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps *link_caps)
 static int intel_dp_link_config_bw(const struct intel_dp_link_caps_config_table *table,
 				   const struct intel_dp_link_config_entry *lc)
 {
-	return drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(table, lc),
-					 intel_dp_link_config_lane_count(lc));
+	return drm_dp_max_dprx_data_rate(link_config_idx_to_rate(table, lc->config_idx),
+					 link_config_idx_to_lane_count(lc->config_idx));
 }
 
 static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
@@ -813,8 +797,8 @@ static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 	if (bw_a != bw_b)
 		return bw_a - bw_b;
 
-	return intel_dp_link_config_rate(table, lc_a) -
-	       intel_dp_link_config_rate(table, lc_b);
+	return link_config_idx_to_rate(table, lc_a->config_idx) -
+	       link_config_idx_to_rate(table, lc_b->config_idx);
 }
 
 static bool config_tables_match(const struct intel_dp_link_caps_config_table *table_a,
-- 
2.49.1

