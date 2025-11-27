Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70494C8FC8A
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:51:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BB1710E87F;
	Thu, 27 Nov 2025 17:51:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BOxd2awV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A100710E880;
 Thu, 27 Nov 2025 17:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265884; x=1795801884;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=OgSXcKGtHAnqlnL504CbOkypcBn/8128thYMKdGqnuI=;
 b=BOxd2awVBDdfy05SGq+rlKFAy5AFL0/HWMLTgqqzMdaxKeCSTeM1pXr1
 YBcKqykF7i9YSCc0LJirE/N78JAj5dY6XStIyB4seSiDn0rTL8O9J3F5c
 N3wNmmKvtB6dnPdjCUvosk4zHbJ+k9NH5IBrmr/1Hyu8ihpfq+MlsMbKe
 P5plZSP7CNGtavYpXORqkC8GrjNppnfSHHr7bTQNys5HkpFWJOLnKAZhs
 AhKURYo016TNXjyBb/ddkJ0BYhDCz5Y2qK6pd+QwN+OmSlT9fghoLOiiL
 9cD+6LXSRumK2fq88TiM1VXB2M0P6UBMDKezvIpvFiliasfH2yg8YFYBO A==;
X-CSE-ConnectionGUID: cNJj1gM2QJK0eRfLgOuALg==
X-CSE-MsgGUID: Y7kH2WZJQXC7x/gq7zqnpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77002977"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="77002977"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:23 -0800
X-CSE-ConnectionGUID: cymlamjiQXOnzy7xPdU2sQ==
X-CSE-MsgGUID: s+JxvCdSS9qSE5yP+zKQxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="197453612"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:23 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:20 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:51:20 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.16) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jh7x0Q/4GqcNICPWm0BeNeYKGMNKH36GpNVd1lynY7nSzi+bTSikYK3eNaTQ/5fu8y1GxuerF5CbaDf7uHRdJmtIz0rWW470uTNHy0IVWPH60WYCWKzoivdDhrCZ+Rul/u8tHoenGssOCE1K8YwcYWzu3sQT7b5k0PK6dF7B4TUm20zY6O/QlXChmA71GMtpMju/YCcBV8nVGu2JZCOoV22H72gpxI53jgjGQtD5rRw0r4oimoVfCXrU1lh1qQwWMkVBKCglvfHqogT0x05J6FvjOF2rkrUj3olFLFrjspbOhH/DwaNKGNXlH8bbFeix0c5HCn11PvfUpqQqJW8IrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dNdPV1iXRhJVg5uB+aNK0TudzXUpwjS9N/v5e/fogwE=;
 b=noWby3fVa5Q/iZpu9I5jtJnvSWFfVmD46mcVGyuzZz6Gek4Vglr9SQt9D8BP50tNU20MpGtfXpMxX9WoqJzaaJ4ljgQCC1JpMP4sCIWXHuG+dcxPaWW7wAbrzUrlXplyyZHIeFGjG3Vw3qAIoazIIF633h0pLdcmPIsXIZ5e21xEA8J8fl68r5pXH1ltPZZeER0pkMLong4FvHA1MZnHFhpNYh/Hq7Aqp5HWsz0QA8z4VfbCCcfbSNmI5fIX3+msAFlZr66oTb4b98r6gD78SqXeB0A733axVPK5zKD/qiTee1JceCD4tKRMcFKQaGIXp5To42W+alG16yujHJskwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7842.namprd11.prod.outlook.com (2603:10b6:610:128::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Thu, 27 Nov
 2025 17:51:17 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:17 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 22/50] drm/i915/dp: Drop intel_dp parameter from
 intel_dp_compute_config_link_bpp_limits()
Date: Thu, 27 Nov 2025 19:49:55 +0200
Message-ID: <20251127175023.1522538-23-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251127175023.1522538-1-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0255.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:37c::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB7842:EE_
X-MS-Office365-Filtering-Correlation-Id: abf19bc5-65be-452f-d332-08de2ddd90b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?PJ51n/bbA3Ax1bgsP/oY+iTaMV6GFUimWg6mhAd5JLhMEXXr9fhdlpbHWsiB?=
 =?us-ascii?Q?jfrvMTgSOCpduXHCYi2/9ul5FlwPKO0koDHZKDA4mhgbJMnWp9g8UU9VD36O?=
 =?us-ascii?Q?skgpruty45ylVusxu5tyOVoFLbE4ObGTshSlVuotHsC+hfg2Y/99ot3JasrT?=
 =?us-ascii?Q?iU3c/quNdErEWQsvwspRzr7JGAkYpYOtJZQVdYe8/aj6M7da8BE2+SF7I/kF?=
 =?us-ascii?Q?MWXeUr+jPskpJ5OdmgcmXK1exBtLQ8cWrTe24ZwEU9sNliHpdMt3kzGY6Y7/?=
 =?us-ascii?Q?RPiy+8MKd/yiz0Ki6Kp50cllZBoMw6ZHlebmlncia3YDwF56InqOdj5el+eQ?=
 =?us-ascii?Q?PiNs0yNVQnqqXaUIu4QnYyJnh1tbP/2rBZjxd5bAkEwl2GSSdJohK+HAHSxF?=
 =?us-ascii?Q?UFq95lyjeb4bnkDTDn5Fex38p4rxQlr759Ihnbr20vXzGAH0wqaJ4h6vw2E6?=
 =?us-ascii?Q?EERU/avs9NSlTWLFw30dM6qJ96+AxpqZnsoGJ+7YQloWZzxmv9z93xOMCNvf?=
 =?us-ascii?Q?ZBWSGZSs4swOIbIcFAp+TTRuaUdgYi5dGNWGw6pz4TnwR2mT9SCeCKr+hqSn?=
 =?us-ascii?Q?4Rq8TcPdXhGgOJY/kRzQPyT9Kpup0oI9NeDXa2YY4mL0Y9CNIIzCHwbYmPVn?=
 =?us-ascii?Q?Om5EKhkK/zbGAMZlO+SnVESh7ewNH+d8KMP8kDTVXSO8l+AZ25BNRn7Vj/vJ?=
 =?us-ascii?Q?7L3Kp+DRqEeVqulo3Ul6hV///WeTUOMmx88IPJNjINvuygNkRc/8FfxOUzqi?=
 =?us-ascii?Q?IEY9g++1YzN1pD6B72Ry0GY/L3RWNVcbUe7wEp10HAUjV7Kt3agzt1pignEu?=
 =?us-ascii?Q?HPEq3FjTfY8Tyg5HGwxOkI1XCeT0fWZHXITo5e3dJKn9rVVHJRbubN+TbUAH?=
 =?us-ascii?Q?X2Uc/mUavnLfZlJQ9WTdYtloKo0xfTOXXSvdtlpAC/uxdvzDLfRClFvCuKXH?=
 =?us-ascii?Q?MPFII4ls/bOg32+69iap9gOuGPTKSl0TEwjYJgmGApqTrAhuDyGUXVLfVbrx?=
 =?us-ascii?Q?w+cGvHM9+JnXgQzChMxIlUIfpNytaGitbsspx39DdF5ZFQpwxw03dqkP9Vg3?=
 =?us-ascii?Q?4za1T3yiOsFJzLYLPP+JotmQoEWamc2IXoabMeXYy/9BAFmEmoZBG88/riJA?=
 =?us-ascii?Q?oH/1PHengwlCFAxxfUmMGoWItDZOXU9t17d96Y/cLcMX/8g4YEjzbLfaUATS?=
 =?us-ascii?Q?lHeNYhC9qU1pViRttMbsKkAu7M8hnOdZFv2gZZ4C1p9e6Ur6AYUfOOHDtKfV?=
 =?us-ascii?Q?278mWNX/F+AiCKKlUQNgw/m0G0KmnHCweB89R4YyMXyRt+C3jGZj3FxQnKmX?=
 =?us-ascii?Q?tghlc7aGvPlS3W8ZMEtDR/kuhcBASxFPmrWZtJq+ajLoaHAC+Fkg5IXjzB4E?=
 =?us-ascii?Q?Fo1XbftrJI9+67EwLSlq1/nCqcbTnkxcn/9dmDONAF4Rjml0BPTx4fVYAmzb?=
 =?us-ascii?Q?bcyp52i0LPF4JTg92E6QyBzpRb0kcMir?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?H1SBx9vzjJnUxK3hWrWlIx53QQDpj/MDCakD03RZNI0Kgw0W2yZu3jHVTn8+?=
 =?us-ascii?Q?BTAVLpp23bCadCkUh34VSoXeOU2vVofzc/lq8CD7TQxbxw5m3IUAYMZkZoe6?=
 =?us-ascii?Q?6is5ZRWonAd/aiWQhysjIB0F7Y3j2kWS+p4Qf1uFrrJuovPKbfF+Pxe+oMkd?=
 =?us-ascii?Q?+oXcw9GfV+auycAGFMXE0dq6ZED5UD5+y41IWkNee2GxmFFSE5V1YMThRMA8?=
 =?us-ascii?Q?8r/+DXpK3dfQV9SHIQ0ZAGkQ9b8KCoema0aDHdVKbWIHZwbJUG93lP6S6u+r?=
 =?us-ascii?Q?V50uxKBkaAQGIXGkITPl0bLpystdI0JhIwmAVffVNMk+Bld5Z0k62iZ9vVEy?=
 =?us-ascii?Q?Zun2qrNPNotqjD9NzmQdfYk3hL4zPJmb8CBqZdkSDoc16NH4HvQLRpXLoEOB?=
 =?us-ascii?Q?kIPwFppPg1QEodfMsJu5e50rX4JpOdT2yW3SW3XCumYMWlekIOEnSxRouRBK?=
 =?us-ascii?Q?2wRYVRLGeabmXkFsa9kx99dVDOKm8ZvmRo5pO0J7GpkR3QnACOVmxHgb1kwF?=
 =?us-ascii?Q?X0u5KuRrBMg9K+iK6ZNdffOgyNSN41SztVHrQf6bgCQtYHJIjcBsLV/mhAag?=
 =?us-ascii?Q?NU3EPBzN9yyRL56B1XSb8wMyAVX9xOQNKRX5U/3xuL3wLzCnzSmz7fOZf0pn?=
 =?us-ascii?Q?yEHAzcjlogKW1AiGlkaZBCFzJXz2r1rVUlDTbIgN9meF3kPyM5K69T/r8S6j?=
 =?us-ascii?Q?/YHovwIkArSe9K43YeBrTXZaTbJAHhwlLI/Det9w0QBvux5NQzJoUGNbX5Mo?=
 =?us-ascii?Q?6d2N2AZMwmsIaesDpU4ZSg1lzcBHjzzFcXMNh5m5ZnwC+O5a6m3MTOKJX/5b?=
 =?us-ascii?Q?b7PAozRK5/SVm+FiB017ps8BMS6WkPWU+JYcPf/E7SW8rSdQRyMYKMzVKjY9?=
 =?us-ascii?Q?G/RCT/rY5bfHjJV5gWRF25SFChIjvHZdw34xanOT5G5I5UldpnKAmJuJb69N?=
 =?us-ascii?Q?id9Ek5c3YCYBeUSjZ3iJ/z0+B6MsAIbU1JK6tiERb4FQY2ggJClp+v+I1bwB?=
 =?us-ascii?Q?VB4yvhsg8Wno13fPJzSpfw3AFew0gdQohmikXm/GRYcnxKI5LJ7qkRnPdYLM?=
 =?us-ascii?Q?xEo/Dd8J6bd58MEMk/gwnijt85d/Pomi8CQhZ/kJEQqumjqz5nqh4qHpFuYo?=
 =?us-ascii?Q?/xuLEQC77hYeJL5ngP/RreOYs6JiasMXOjatzvB1FaaSjiUW0Pq1TPtSg78l?=
 =?us-ascii?Q?19T/FciwBpINQswHE0bTWtYW5ok42G5bqZrYqwPhDo2MGnjvxyrYMdfQRSMj?=
 =?us-ascii?Q?QJwCC9S2wSZJ6uh9eAhPiMHXnmPEyGDqbpewkgwDmuIj53Srzp3kbP1UDC/S?=
 =?us-ascii?Q?Yry9fyQysDXoW1WvhkATKm4QzxN6GhoGqPg0QZdVjIeoiIyEl61SKC9IoPV1?=
 =?us-ascii?Q?CJmvCFZdOlUZ1tO0K/nP/vPCm1tggJFceaNHHjQYkH1tx1KCIfUHoz12nBFD?=
 =?us-ascii?Q?0dfhgNqX/ll53Panag/tiD/6uqfxTS6t2uHOTI1KvxgCvyQ8l1uN9draUJTC?=
 =?us-ascii?Q?k4L2e5yVkSyxg93w1iffiEPT7jxviTr5r8TjMh4yRjONFVvZu0INYhfYdvZQ?=
 =?us-ascii?Q?tWshQx3lhPLc7qAuIo2zeAr3+jwIBaaLdQs52Y/DE5OTCVfwObWFB3GZ+aKM?=
 =?us-ascii?Q?pfV8Xl0Cz318BgkMr4+c7tIKpWi4AZFzM850qJ0ziwep?=
X-MS-Exchange-CrossTenant-Network-Message-Id: abf19bc5-65be-452f-d332-08de2ddd90b4
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:17.2894 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Tb09otMo1fvg8reZwk8p2r85SY01QIV8tkSaPbzO3gKnBduCjYG2i+aWCtvXXjGdrGutZaIbeongBLHlcs2Gcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7842
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

The intel_dp pointer can be deducted from the connector pointer, so it's
enough to pass only connector to
intel_dp_compute_config_link_bpp_limits(), do so.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 801e8fd6b229e..5ad71e697e585 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2653,13 +2653,13 @@ dsc_throughput_quirk_max_bpp_x16(const struct intel_connector *connector,
  * range, crtc_state and dsc mode. Return true on success.
  */
 static bool
-intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
-					const struct intel_connector *connector,
+intel_dp_compute_config_link_bpp_limits(struct intel_connector *connector,
 					const struct intel_crtc_state *crtc_state,
 					bool dsc,
 					struct link_config_limits *limits)
 {
-	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -2831,8 +2831,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 
 	intel_dp_test_compute_config(intel_dp, crtc_state, limits);
 
-	return intel_dp_compute_config_link_bpp_limits(intel_dp,
-						       connector,
+	return intel_dp_compute_config_link_bpp_limits(connector,
 						       crtc_state,
 						       dsc,
 						       limits);
-- 
2.49.1

