Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F92AE980B
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 10:21:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8FDD10E83D;
	Thu, 26 Jun 2025 08:21:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YgrLpTCy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C337B10E83D;
 Thu, 26 Jun 2025 08:21:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750926074; x=1782462074;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=4mt8dp6ZldPBrmfLYsQD2R04RtpZxHp5i7MfEjQBUcg=;
 b=YgrLpTCyuK/WYKQCoc1oZztovrx1v//m3fykh0uQL0DpAawDzd/jOW3M
 QK22LRpdC22iOAFOQsZY2c4i5g/aqFcG2S+9W3SzIbOexadx4bWoyEQgj
 yyWOMxticAZ+E9uTOJ58qvpFeG0qCOGR+PI1xvo6cIdUndSZsqxoB0dQH
 xx2DtujnnTdlUSVyseEkgdB0aSDFDI02JVOckGxgB8e15W/zaOswJ1Z+N
 RH2FWB2QtFus2DqHOORC1ghbX7JA45IXxuXFWIVX3GiesiOczLPycEfrV
 f7OkwYdGDCzCJl+f7Nz1qDcAHssVr9rwtIuTPPrdBVAyMCS4zPBf6NqTF g==;
X-CSE-ConnectionGUID: wjUMivdSTiCuZobAo4nKzA==
X-CSE-MsgGUID: E/HCLUGBTJi5KViyL970IA==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="57019341"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="57019341"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:14 -0700
X-CSE-ConnectionGUID: fZUtRYTjTS6uDDQyiavC1Q==
X-CSE-MsgGUID: TjNBDzZ0TQaOL9bkfYq2Vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="152069940"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:14 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:13 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 01:21:13 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.54)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bVLWF8jf6U4pzVtVeMcCJxcTn3yWJeVardkG39idbNDRJ4RLiqqsKqHbOlNIkUIRzQ222NOviPGkjkaPQzc2tg5KQ+o1fCY6namF25npBo8a8YjjlSRTnzgtZbJuG+GFIdpIl2ZsTRak2aJJg4YfJPx+tGb3S/YisvABx7/zyFuYUAT6A9srHvRRxnqc5OpXl9c75Umf4lyyLoRt9qyGoTsuPSNa00MYtejMgk16jPRcDQ77GanReHrLE88QCGDeXm7gtBiWVM6FIq8VL+uO7PuJqtWZnOBEaO8Pl2+hakA3IM/4w3Otak6ecezs3+hWOuMNUE0sru9xnV3YIi4/cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=omyVDf6XOPo5FlrPxITVlkOdqBX7vBa4vcoIF9n5Joc=;
 b=ilK1GnVXHsYcgw6QjiCmh5XSiXeJBYRPmvsl3nuerYmvRLAAs9++IQ3oUwKfqxRFpf5YvZy5Vb8werWDjiBmHKrCSVFmO0QamlvM9ssGCoDiphGOmYjMWv40bCHo8NEaUTAtU9Uxw4VGg1IhfPiNATuv4bZI7vuYtoqt8hb4SXqih2ypEWvVGagt5w2ILdrCC8myKUm7CKiaL5hI2EcDdRAQ75lhkFKDXndTbeG3ApHDs9TvRw6eIzi77sHhWCDTSpKbL1XXC1Oejb/l7QVcANx9/pMPaVb1R//86xF8YBDg0frT/u/xYFATbEbTK3MmG+gv9BcEWRixDWXEwpGlWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ5PPF8EC896901.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::844) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Thu, 26 Jun
 2025 08:21:10 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.021; Thu, 26 Jun 2025
 08:21:10 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH 07/20] drm/i915/dp: Don't clobber the encoder state in the HPD
 IRQ handler
Date: Thu, 26 Jun 2025 11:20:40 +0300
Message-ID: <20250626082053.219514-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250626082053.219514-1-imre.deak@intel.com>
References: <20250626082053.219514-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P302CA0020.GBRP302.PROD.OUTLOOK.COM
 (2603:10a6:600:2c1::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ5PPF8EC896901:EE_
X-MS-Office365-Filtering-Correlation-Id: 515cbe3e-6228-45fd-bd3e-08ddb48a67c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?h0uV0NM0/Tciyb1qC6TLJiP/AKixE3aunSRuiPFoZdS+9NoUr8SJErLZNnXi?=
 =?us-ascii?Q?wN6AEWw8O/Xl6Oml05+M8WX8G0BpiIsnxpnEH65rPZCUUYGXPGAdnJeYrImd?=
 =?us-ascii?Q?NzqAsgMLTZiaJiPdYPT9e5ayJhgvy+q/f3FulhTn38NZDe2bGRl7K0QwZq9L?=
 =?us-ascii?Q?ZfozuckcT8waJLC6XmurTBfhT07E32+16LywwZ5zp83cYSlvVDEClGExximK?=
 =?us-ascii?Q?OTHwY/f2mGkO6I41BQFdhOTdoc7JjACpCtWL+r2MJ9jsg5qn61fPu+g7O3fS?=
 =?us-ascii?Q?5Y9Mqpw7qSCFpgGRW5zrcjnZYhfFHzERgHuHOg6xC/8+7goBVzfuHZl61pt6?=
 =?us-ascii?Q?Q7dFYI2+vHhyLCFc0iemNnBGpvUgegegh+OA6nyzJ1QWBuLP4JLEB6Q/Pqx9?=
 =?us-ascii?Q?99eNb7k+rfR7v3qCgFcIvRsma4GViEJqy1bcs25bu957pM+jx1ly0BLzoHeR?=
 =?us-ascii?Q?9rKw2nsB+0ySQbEWYXIW7X/Gy4TTW0eqg+kqrNx9k+In9BwBSfSm4GGoDlSw?=
 =?us-ascii?Q?QJcIMGOXYIOR2PwJ2LR9HJtHmuyfqfUkpE2mzfqYThyTfP1qwh1q3e+6XTDY?=
 =?us-ascii?Q?Px0B4momEfIiNMJaHYFA1g0xwaqoTCtGgWJj7LnP/C6vkMjWoqTnGObUk296?=
 =?us-ascii?Q?i1F1P2yRpXxu/ev5kJehTDWyDo46C+FsNsOV0VTUHS6G4P0MW5y9Qr5tT/4R?=
 =?us-ascii?Q?sU1287I8bNjnXAU6rBl3BjQWLAIlCS2yE1GaAo5ewBYprXqgHap2S5CB2uwK?=
 =?us-ascii?Q?BTgEfelxJJrFBUsA9s9NuOwbCN+yLwaMUxwKorReo/p1M7UcFfh38Cdm1K8R?=
 =?us-ascii?Q?P47jHbyvl04GGs9NjPlNLvNPv1f/8KDe37LAAuIaXxoXLZydOGU1iM2QTBeC?=
 =?us-ascii?Q?vDdhsa0ncTFxc+z9fQhvbtjROCAj1d7ElUVG0H/EiU9QWJ2j6iSmz01Qzt3B?=
 =?us-ascii?Q?oZiXgjejLI2vjeJUBlsLucBCk9MXE8+Ex90hpC6Qk/JKirT4bDUSts/q+FJe?=
 =?us-ascii?Q?f0wXfzyTYu7U3W5qA2ugiGHem+mIMvyMb7XoA5keeGHN7nU7RoPwhTBnWBlX?=
 =?us-ascii?Q?OY3/xXTv+czLSrsNsVjUj/I7v1qUdmCCoNE/POD3LdXXs9gqBpcMkZdz3Z1t?=
 =?us-ascii?Q?j6JMxm3ftK6Pgf0rMVxPA7bpgBCl35nMkIehLwVDL48NKqLloDrNWDPWNMgo?=
 =?us-ascii?Q?mfT1MgW5iJeA/nIXi7jgTiKnsUirivNH9EpJay6ihsrddzggVDAsBTki+gKS?=
 =?us-ascii?Q?/bI3BfyUm3FWzLkRM3AzoD5eJqDsvHXDOZ/i7Z7HSzdTcTUVWPKhsKTrMShn?=
 =?us-ascii?Q?jEbRrh3lyrlEkpI+qLceLCJetk+hCFUAy7yUsIy7tNoTNID8cBtIMk4oa6Ii?=
 =?us-ascii?Q?G3lI8wmHPOhxR+Rp8o67rn3jy7fqSvI+VeNMirfQ1KiYQDBNHGjni0/eF+Mb?=
 =?us-ascii?Q?p8BIOijbsiU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oOc5+f21OwtQ8RrBTizjKe46nwL7ps6bmysrdxGgL2tKCYNBvIpVrRLTYD6F?=
 =?us-ascii?Q?gB6DlgX6C5KjWuDHBtNADrtQFrUFyCIk2VV8gI/0QAijdLwRsXii2zuPrQlG?=
 =?us-ascii?Q?J+E4rb+Zo+3ZEUUq3q7HGwMnfTmtYAjlRWZhxsUi1iAZGrOT3vnTa0WGkJ+J?=
 =?us-ascii?Q?GzIgkikPoN0fLaEyVtXyC+JQHAuGG3einl7trMlLIAZdZhzYgNQG3lLMdCCc?=
 =?us-ascii?Q?fLP7amy2CY3bsESCQovCjrjn1Ct4rGE53LgkPKkRXnzeUDT8K2yuUVbGtT8B?=
 =?us-ascii?Q?V0IZybYOzhGL+NdnFd2gWQMQ1IEOI3PgznuuSz56eB+GJzdq5cmtnSH7On0Q?=
 =?us-ascii?Q?WNa3l2o3F9NWNNN/KfPKqygqE+nsu+YyuDo1f6wlT08X2SrEZrHFFFgopSqf?=
 =?us-ascii?Q?fk3M642shVL50DLUK1gEnZPIjx455O1B2xdfsTsoucpi2QtfZHM5fOrS1Yo/?=
 =?us-ascii?Q?VF2ls0V1XpInZ4m5ur9+L3gEdUrKDaKboWhFoszp6VnDxCQgjn0iPmAsSU7T?=
 =?us-ascii?Q?BRmiP5yqd5e6M/t9QpUxY6tuQ/7cXIdlWlRvSlXaxM9ZSMhyJ+66rYImVjeD?=
 =?us-ascii?Q?1lMzFcDlvHzk3SRZy8F5aLu5DQ6x5JvBBKM4/3MEpejdo9LIdtvte3EgBLsY?=
 =?us-ascii?Q?jkbCVWZnlJS5OflqduaFg2IjGHxFjEbUAGfOpP0B9PUuMrFtH5HSV9S3Pq78?=
 =?us-ascii?Q?1CR1H02M+mApXdCK0g/WZy37wlZBXg1vGpl3mVsGkkfTpBHFs3pfAWX0J1p+?=
 =?us-ascii?Q?y1quGFiz3WMDBG+v7OEbrRe5eImt3IGQXLSxr6PveXibZL6aBhu9hrDvqWCI?=
 =?us-ascii?Q?ftvPOaQKcH9543jFU7gZ6jpyawdtK37I5nGKTCY53iS/N69MA2WSPjTfXsai?=
 =?us-ascii?Q?pFjlOIVb8ys3V7m5gThi8jhTKuNjbnQtoZc38GxbK4jB68YY7X5r/zzV5rwH?=
 =?us-ascii?Q?XVMSZLVhJfJeVq3M9WqR6ehMn1tZB5uNUdYKzoIMCyJZ7jajD++Y4Rieofme?=
 =?us-ascii?Q?VWUp68OGDnxDreymW6mnFpg5OdqTnxEmRQAARcBK7NA2jzFEEKa2s8Hy0L6h?=
 =?us-ascii?Q?iJVZ7r0OTriF/uHSDRA2I+oIl/BPR1pmUp2ER13vJ0T7nB9vJVy/oR+dbLb7?=
 =?us-ascii?Q?w2T/3jX/ulzFM/DyQ1Cil5hUxZmXXBpKw2JdGlI/T7I1jxnhNKjwF5PlRCog?=
 =?us-ascii?Q?JOhkwaY4wv1g7/Ewl9KBLchLnY07s+G9ien8JJ6a4D4yqLMZ5krD3aBpkiNh?=
 =?us-ascii?Q?rR6Bc+61ErojzqPqsQpie2Maic9sMcJgDdWg14r4yh+6DuxgaSQWtign3gG3?=
 =?us-ascii?Q?hRI5G0YRtwAZPa/DO19c8VMLcm8ajy+hi4FWvyc3hqxkf7At5TnpDtb4M/YY?=
 =?us-ascii?Q?wba/3hjtOjmlJg+hYfVPmQqC67uvNiRfcIzSlo9gEaaSBS6BHhEVnnSElhRm?=
 =?us-ascii?Q?3/wPNXRbtQyRabhTuq8RTKohzOPnLLZEk1wXtbIXrp94Xcf7X+8o5nSLvDgp?=
 =?us-ascii?Q?pHMk/JyGkGvGxDSGnxuxeOSV5hcxIhMzL7nluuAgvGOm3ZjkRNVAxq8Ud0CU?=
 =?us-ascii?Q?wgkEh01FAfFURJ6AMX8I8nnE2usYQ1CuKC9t0aKK?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 515cbe3e-6228-45fd-bd3e-08ddb48a67c3
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 08:21:09.7755 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5lwqsQXYAAuNXa6cckaydTPF4tWvhuGM0sRQOiZRoBDsUSgvBs/DdZt3ey6FeMJIYj6qqyj8RJhvsDftYt6+UA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF8EC896901
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

From: Imre Deak <imre.deak@gmail.com>

The intel_dp_get_dpcd() function called from an HPD IRQ handler reads
out the DPRX capabilities from the sink and updates these in the
intel_dp encoder state. Since the IRQ handler can run in parallel with
the encoder/connector detection (intel_dp_detect()) which also calls
intel_dp_get_dpcd(), the encoder state can get corrupted, since the two
updates happen in a racy way.

Fix the above by checking only for any change in the sink count value in
the HPD IRQ handler, without updating the encoder state.

Note that any state change in the sink requiring an update of the
encoder state is handled via the sink's SINK_COUNT change,
RX_CAPS_CHANGED, DOWNSTREAM_PORT_STATUS_CHANGED signaling, which all
should result in a full connector detection.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7d8421649be0d..2592afb96ab58 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5464,9 +5464,7 @@ static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
 static bool
 intel_dp_short_pulse(struct intel_dp *intel_dp)
 {
-	u8 old_sink_count = intel_dp->sink_count;
 	bool reprobe_needed = false;
-	bool ret;
 
 	intel_dp_test_reset(intel_dp);
 
@@ -5476,12 +5474,10 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 	 * the value that was stored earlier or dpcd read failed
 	 * we need to do full detection
 	 */
-	ret = intel_dp_get_dpcd(intel_dp);
-
-	if ((old_sink_count != intel_dp->sink_count) || !ret) {
+	if (intel_dp_has_sink_count(intel_dp) &&
+	    drm_dp_read_sink_count(&intel_dp->aux) != intel_dp->sink_count)
 		/* No need to proceed if we are going to do full detect */
 		return false;
-	}
 
 	intel_dp_check_device_service_irq(intel_dp);
 	reprobe_needed = intel_dp_check_link_service_irq(intel_dp);
-- 
2.44.2

