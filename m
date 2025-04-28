Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A552AA9F262
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 15:31:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A3DB10E4E9;
	Mon, 28 Apr 2025 13:31:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DLzHwjuy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89F5210E4E9;
 Mon, 28 Apr 2025 13:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745847105; x=1777383105;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=1P1Rp5EQ3LsY1WWCUcZZ/YwCdndz3HG1bWSzQ4O2llI=;
 b=DLzHwjuyZJ4bF9pYiHffKaQwMgdXn8CFNa8BNawOTvwE9REdnD5HYqhs
 1iSosubu1YmjJhU7MWGGQgfAfANRRqeggHakCKs/8mSCpb+qk/SA5KTef
 lQH1YVr6Rc8i14CIXAiD/awt0Xy++BhshGVCCTrbnokwuJ1EXgfKCuUAN
 klaJi88s2yslAp5wBIXp0LNYYW0v0wT+CzKJLgiX5SYZkJMGRLoVcd/o/
 KuWPuydlVEjPUVyMTfVCZa0igMzsG1wv4VI1TAWXRAirf3PhdDZpr2PnU
 S0NxTl1ZdvAEBpb3ZY7y+NxVZOIcdWSGNDhpdcYvc8DVDsuKXqefdzPN8 A==;
X-CSE-ConnectionGUID: GwA7yx2iSl+Mabb0vMYJNA==
X-CSE-MsgGUID: b+1xckA6RcCpkuroLomKLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51256697"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="51256697"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:31:45 -0700
X-CSE-ConnectionGUID: XTW5hULJQXWcW36tBXWJAw==
X-CSE-MsgGUID: G+PjfSh+T+W0XSyEK1gyew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="133418795"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:31:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 06:31:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 06:31:44 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 06:31:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BagwJEjtUurKO6/qPutcPNWYFXCBaxtG7KrcETaCZDM6Dp/hf6lYGYrKMpj7LQvC2M7wZFezB52TzrGt9PlfuGyETB9Wegk0e+0yYfVC5EUgnVLhvNcNXqo4C1723TOwSbVpSoLQ7Hda7HtGgiJ7wr+EqzSxoQMQPKGbgMekgm/2fW3iQDHkpRv6XgsYqhuexDAJZt+5js8P8ydBbw6EXhBeaO4y8XyiykRMUJZnS7DZeiRB5TpCVSLBuBbmZF8FG0bH6fHzKfved4WavLCrBlDc639viprMIlkrNYnId4IFKrKwC7rvPnUDYU+wIIbqjZFjLVOMpmcnQ687tNvsMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8p0Z8rodsWBce+8x5wC4V4w6/BuKH97B44hoJndhKcI=;
 b=oG+uMrfBuHKmCfJkCMgZ9mIAnpW/tkSVGejaiKeycWIGcWcT++4EcQQCVXrtrryyBu6OtRx6FVFf65mYC7I7UCDgvsaLvXV70/7jVNXH7OrDwB9/XoH8V735Z79iyT9K5XU+rtoOb+m9e39APF+bijhFa72P9GXDCQ+hGCvwbvCQwi4E+C3TMttnFXcNHTB1fTLnG1imhrNLg3NUnc4dp521oWhMC0Jh5uvpl37KWH9JAMIfPjRkkk0eIsv5DkPUE7H3m+tMhswDNLdrvM3F4fD+8I8VKmnmp0BDkxYeRFAJ3pbMVViyxx/w+QcBhDF886k8+ROyH1N6NNF+Ddfz4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW5PR11MB5882.namprd11.prod.outlook.com (2603:10b6:303:19e::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.29; Mon, 28 Apr
 2025 13:31:33 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8678.028; Mon, 28 Apr 2025
 13:31:33 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 02/12] drm/i915/dp_mst: Simplify handling the single-bpp
 case during state computation
Date: Mon, 28 Apr 2025 16:31:13 +0300
Message-ID: <20250428133135.3396080-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250428133135.3396080-1-imre.deak@intel.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0067.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:153::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW5PR11MB5882:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b47e895-6e90-4eb3-e23b-08dd8658fd92
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?8VEfj2boohhtqIuPNZf+7E59/gkMRXV6ZNihaT9cCEFFcmAxOu6FKP0APLNl?=
 =?us-ascii?Q?Z8EG2iOy8G09THeUPv92N8GN5MbnS265KsJ8BD35HvveDYHHomvIDBfvRoOG?=
 =?us-ascii?Q?wXQq1wXONz7U9Zfjd9af+YgnjVe5aFOtBDMzZxx5KD2LJvl/UV2ge1bUmP8a?=
 =?us-ascii?Q?TLsu+NpVILn01cJSRRunNDh0ydqxiR9hq2LIX3wc3jXPD5BjAJ/kGwTDKk/f?=
 =?us-ascii?Q?atscAKES6V7p0Ct3mb0Ll6RzBbnNyuCH6iX+PGC7r66sNecIstyWHer1Cx4r?=
 =?us-ascii?Q?6MFXyD4zYQs0DmWGoEWYvG+/2F3wzUo3i58AfvQZQ8UYZGsomnNcfWAdgqXn?=
 =?us-ascii?Q?213V/HoKlLrkxAVNU/oa5DJPkoAmwEaTOAFTL1iYD3Uq300PXf0iUGsg0sCN?=
 =?us-ascii?Q?2FhwYAflQzntA7+nHh75EW/hhzPPwMmgv4O6AX7MKXn7Ba00OgJQWioFkMO9?=
 =?us-ascii?Q?6AlAIqvVib35/J78IcmePI0ZYaeCKmiswSHUBrT+BRB30aHXK4+zBhYjyp6Q?=
 =?us-ascii?Q?9gEXKndyyhz44FfiVJOEZq57y3JxFiUhbKB7omt8MZFUANUDoDXKHMOx250r?=
 =?us-ascii?Q?9sa3w9c8CI3iWcHi+QPAsCs5/UdUgPWqRJvRpepKVu9jtkI38Zo3Ny7zklg2?=
 =?us-ascii?Q?VjB2omQZMxU93kmRcJq7EtBELZcW0nwxIsEUeHLZlbnAEJdIIy+HdLjCPqFt?=
 =?us-ascii?Q?mjWh3YRs9f7nqGdr6yaKGGBn4XUYLVrO/c24KcWKqsGdHAvRfwscfSZE07Pw?=
 =?us-ascii?Q?tOD4qlL855A8K61gsDrPurSr9FK0/G0mg5K8pWqa+/F4jYno0Z26ZgACQitf?=
 =?us-ascii?Q?SXZjscO7GhF/M6dqVLsQekgo+4P4mgcVTXWgL/GcaT8mqm1gAa9JHfv/tHDG?=
 =?us-ascii?Q?k3B9lEXbbxYmjV3R5NZqTDPPvt/rE9eJB/AmFe9kuvLO489JiXzYXMoJy8HS?=
 =?us-ascii?Q?qGFozWOr2XOY3fQjlG9QbWZkaDuBeshXSrVPk5BBfi0f4M2VXB2PKLsGKVnQ?=
 =?us-ascii?Q?pAuYRA7/Wk2gCsMjwe5vSaLRFKdxQ7gz391alD6X0hf0eVtxBHhJ2JEnqCPc?=
 =?us-ascii?Q?V2H6xSbesw333F8YQ9z+rEKUhlLE1AzPT+uT4/RzDkoeooGWG/DgO0xUi/85?=
 =?us-ascii?Q?TfqsZj2uFg62913A0aA96BG9dwGVsMFmsnAPQcy8LTI4ubGg9tJop64Pz5AR?=
 =?us-ascii?Q?Ad471GT/apOc4VquBD5VmbxHY9jLaBazUl5hyUnLFuoNtD4+6cSIQrzAaF4l?=
 =?us-ascii?Q?xo5oFKhZv/Au3hzAVYyFHiEAbEGCOfW2myLc5QSZTxD/szBF0KdjNeV4kWT3?=
 =?us-ascii?Q?6cfuk+ml1/HPgt8mqBJi4lGHKFXM6iy86xtFt0MXkLTnmNkSW0L9aOe5ZSoO?=
 =?us-ascii?Q?eJwSPXV6J9GeeAjgw21MxRAj4JPDgno8Zt+CHeu5Nw9ClOXRasDbbWSy/tMM?=
 =?us-ascii?Q?SPYo89FI0Zc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aiUz5W3/r9mP5TRVn7QPNvjAwh+H+OQIjMrfJl2zKgubJGOF2RZgBWXgSR+F?=
 =?us-ascii?Q?dAsNzziYAovMuzzBlAuEkgGU02aJXkYn7gk2nd3IJ4ikhgv0gc2gz2OgpDL5?=
 =?us-ascii?Q?9d8hZH/DqsxEKEiGE0RrrgLNosvCmTLUjvLmNZDjk7lkcCZYW4Ec+2+29j1h?=
 =?us-ascii?Q?gkaV64PcbT54rrBGXIdsaNVPQ9wR+D1mGaBjzyjHTU1vpmYQWAEpg5T5ft4j?=
 =?us-ascii?Q?akQocuqlvww+h86ajHE+C9HdZoJHL0sxdhpnvZ1wsNl0oUOxljGwkchfkd5Z?=
 =?us-ascii?Q?Ml/XJaeMMub4CgXF7brzvJcUgxqw4kbNkeVvqcbbk0s4NSiesWRCNMewhzPW?=
 =?us-ascii?Q?HBRs835JkJNlvZW2g9St5XlElipN942xb+rIi/M/tfMPqSVKxcBYAx8Daq0q?=
 =?us-ascii?Q?RAqyJSHZ9dlqqY1taazxPJBYBcovUho/gRYINQ0ZE7lqvyJWkxbaGiT8Kl65?=
 =?us-ascii?Q?psX7neF+enpeDLCRH33e7a5oMqNdO1XFzgv+U9oSLutjZjMgJGZd/Y81fk28?=
 =?us-ascii?Q?jL3wFzPdR8xBDQ8V+4GsP6pNt9UTNmKx43b9MKxDmHX3jyLVARKdXVmSy6r5?=
 =?us-ascii?Q?QvrsWTzQMJ9NepGkTo1t2O/om1h2jVKtJaRKV18vuPPGdgHM7ZLALzXF97U4?=
 =?us-ascii?Q?yxSNWVn+pXsW7QLShiNkwVAUrbKvtyDQrpWk44577d/0upcqxBe7dQx3xKrE?=
 =?us-ascii?Q?/4AveNHWWNrWjHZzn0x3s4U9buT1DuzZrUs2gyyWmYntSqi2zUcYaavA53sr?=
 =?us-ascii?Q?1zCsiZK4wNYsMp/Vjq6M5Dj87IBtbc5Tjkxgv/speLun95OV4yjwDgrzen3w?=
 =?us-ascii?Q?yLHe2bIaExiKQgIU9kmq/PFPZd0ziwEIYCdciAw8ihW/mXb1wD8nlNReeHue?=
 =?us-ascii?Q?NhoAEQpBhnNR5yzQgEFyM0nq2MXOhDzYbeQBEhqMkDexXL1D88c1zF3CpFWb?=
 =?us-ascii?Q?bkHp2szRx67bq4NgHIk2b+o2HT+1PGj5cDLxAfvEFIOLd0z5G6BrqWEv9j85?=
 =?us-ascii?Q?C9jdXsKPPWb6rr+ABGh2FLRj3Ju41CKJ/RsI/Q13ebwIaz6L5H1ZRm8qK+OX?=
 =?us-ascii?Q?ltZ3+KyM1KAAGzUIzPrOpq2OgQwkDq0g7SnMKgp6VRja9QIy+FrQdw8tRN/H?=
 =?us-ascii?Q?2R9+e5vPA70MSHO8mcYfiVHrkolbBXUqHlS4uaBtdkYBpsAFz2pfLtlOgHPJ?=
 =?us-ascii?Q?ad9ha8EbUzjK4MYJshb68v4pJ4MKDyIuSUAWWbOXS04T6ao4za3TdORjPAas?=
 =?us-ascii?Q?LiHgUJOtOSEr2HtcvtMobVz8V4rCbnoU7MDXkC6+FsRzagxgqcRFYMrQU6SC?=
 =?us-ascii?Q?JnmYXs/ICn5cacfnFimY3MBgnXHWeXOuSrx0qqYDITmTvtMSWzHkZkBQfiYb?=
 =?us-ascii?Q?uNyB7XPhPfssJSeFG1RTe2OY5RBgNKfL2AY/DGot/Lvcw8jIpQvwltcgytro?=
 =?us-ascii?Q?VohH451IBObH+A3fY2xSfFb+fOlj+/nCSZ3yfd7vBYLNO3VteaXiLJNuvTGo?=
 =?us-ascii?Q?s2fs3U4BT1Y/B5FKBrYWopR2+GIJ0emwv3v++U4UELEKGoZI+phwE/a1wlBQ?=
 =?us-ascii?Q?53o4MdvkK+y7r9PE0fcRrJZro6haLjW457YWb6Hu?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b47e895-6e90-4eb3-e23b-08dd8658fd92
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2025 13:31:32.9120 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wmVW55L/b88xo5p3WHPzPlLX38NZZVHmebWKF+a7Lsa3jmX6UfNp/BjQhn38cWrAZ3iu9DCq+XsMIyL32/OqDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5882
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

A follow-up change wants to skip invalid bpps in the bpp select loop of
a stream state computation. To allow for that, using the usual
'continue' statement in the loop, change the way the sinlge-bpp range is
handled.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 49b836cd8816c..d8033e55dc093 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -283,6 +283,12 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 					   fxp_q4_to_frac(max_bpp_x16) ||
 					   fxp_q4_to_frac(bpp_step_x16)));
 
+	if (!bpp_step_x16) {
+		/* Allow using zero step only to indicate single try for a given bpp. */
+		drm_WARN_ON(display->drm, min_bpp_x16 != max_bpp_x16);
+		bpp_step_x16 = 1;
+	}
+
 	if (is_mst) {
 		mst_state = drm_atomic_get_mst_topology_state(state, &intel_dp->mst.mgr);
 		if (IS_ERR(mst_state))
@@ -408,10 +414,6 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 
 			break;
 		}
-
-		/* Allow using zero step to indicate one try */
-		if (!bpp_step_x16)
-			break;
 	}
 
 	if (slots < 0) {
-- 
2.44.2

