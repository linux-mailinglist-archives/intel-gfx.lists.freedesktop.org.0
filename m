Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E89BB1AF69
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 09:37:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5056010E619;
	Tue,  5 Aug 2025 07:37:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KdqrFivV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96FAE10E610;
 Tue,  5 Aug 2025 07:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754379457; x=1785915457;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=IQNQ5IJVZfog53nKcoqjHbhttMVyEKo9pWGjkJ7fj9o=;
 b=KdqrFivVcgKCJM5Bwl5MGNdtnT4r6WQcoerzJ+y76acXAloSXrvgWdge
 djRPpt3DZV0F+gdpqk7xzzzO5q/m1ZN3sYKqdJdA8d9e6SqVwo6Cfy8Ce
 8ACw5n8oh2+X7qL/hv40nd53KNTgQ/X5gJ8AKm4FMWcdwRq89U8YML/dy
 hToYFezgODkel4Bq3C8q5v8pBU3FOe63Qb2z0Z2yL1HWw+eyQ6/GcAf1H
 /O6wRziRN6LCVpBS2VWc9Helm4o1sy9GjAgLAPFXnXw+BfikpLYjunMI/
 285A4gX8mezAzps+AFAXMKi5Jy7zRP2th4/4ro0ddXIHUOu0G0YZi9XTj Q==;
X-CSE-ConnectionGUID: oZFHNKtwS7uWVsteENASUA==
X-CSE-MsgGUID: OjPCkZurRJqhxvNr2K8unA==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="60469708"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="60469708"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:37 -0700
X-CSE-ConnectionGUID: 2qyd1uW4SJy3Dv+QyKGhfw==
X-CSE-MsgGUID: xd97W+cZQLSNaZY4SjuUzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="188080170"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:37 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:36 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 00:37:36 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.41)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lqrC+fCnMGTaKjx5LvrUI26qKqE9H9ttqtLvx3YQ8aXZdgEXAMoSCAfhxYN428maFClA48ALFwavyWev5PVL0uPCRa+Cdjix7jyd04V3l/fHOYVVxRhCS28st4ePlWPKTMCcu4KCoJ1wU0BmUA66FlbSIaU4Uiwhay19sbMryyXK+pj7vla7PfUTitoqdHN6vE4/7nb5P9ruTHMcMWY8qEQyxv6k7+5L5n4AWXkU0Tv9ZTqqT6vSCzZhT1qfz2D9AKzf6ShoZHyUlUQC/w/BHgp3EYp5HIanuwTvwICExucOt8TG1BIMKGkeczUJcv3fqmT4KZXPozddB6G+b5c/TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4bQqa5FPoiZwCqfyzplIcDAVwQBzAA01F71BoZhaNPc=;
 b=mlPB/qUSMeRK+tjEEheAk0GpaP6TVDpFMHmsJgqhBfvtXbJWdLhwLYzZVpcM+Qj31VX16y8FhidH6zHAatYa54Jk2L6RaK4jqXxiK2E4CRJqyL6Hi0Q/X+gLaMSKv3cgYpETgb69ccRvtWopjJUeZu99S9Olf+buwX4nP5CFpNHqZ2A/VEh8RXvY3Y+KqsOyMeLs8JPV5wbS6qBAQaZJ0C7O5drSQADz/TmR+LAmr7ZKiDI4D4KOgtNpt/kTbN3ws2I13JZ6Rxa5pCQOgxC95gtAIqOMesiBwupILJhkGEWevBz2/1ZDuXh+RMe/mHRqYabPl8hITOheUosrJ1Fh/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8161.namprd11.prod.outlook.com (2603:10b6:8:164::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Tue, 5 Aug
 2025 07:37:33 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.013; Tue, 5 Aug 2025
 07:37:33 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 14/19] drm/i915/tc: Unify the way to get the max lane count
 value on MTL+
Date: Tue, 5 Aug 2025 10:36:55 +0300
Message-ID: <20250805073700.642107-15-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250805073700.642107-1-imre.deak@intel.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DUZP191CA0024.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4f9::21) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8161:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ea0660d-c72f-4571-4eb1-08ddd3f2f095
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?5blyb0/DXuVy0u2/EHt9W9HA/Ly3II6KR+VJ9C4kZ8UxlV1i1liTtpQLKbNG?=
 =?us-ascii?Q?yGWfScXlNHACv/hO5xDqc/ciYeEkQkWf5IEm2mAc2cUgxYY5nWiifZNx5A5Y?=
 =?us-ascii?Q?SQXh9QlZQQwEclAV3cUPZIL1bhBCp/QTHAFpsPqMJbPdsSmaHlp3ejwJUUe8?=
 =?us-ascii?Q?RfCOVCIxWRXTdud84R48Kn8zqdVFyhC8UF35rHT+J3aoCuDnGsBk+b4v6DgN?=
 =?us-ascii?Q?uWZVRxBB/3B47BVy3QY6LZVJQgK94V4HjNcFpjN7sedjx17J2qeuBOBWD0Lo?=
 =?us-ascii?Q?3gV4zkxIvzrU8cuvOAXh37Ij3NS1FhkcO+EdbRzmOtKwlaHHryvd4ujiFGcu?=
 =?us-ascii?Q?XW/weWO+lmJxzjgp06/xYenXaHJs3UxUJejJE9kPkkBAtK6YoppRShRJt740?=
 =?us-ascii?Q?LPwLo8n3VS7nHwSYqQAFnE6HmSlmX2FVr/70LaFKdF1/i1eFCGCnpsP36KsG?=
 =?us-ascii?Q?aPeT9vTOwRJW6cUKX9X9jlwqoFHa3bFAVMCffBm7xe9g8jrO8ok+i60PmuHZ?=
 =?us-ascii?Q?t3ToCIUVTe+aSqsSE5fLtyyQ2uzWsHMvCbDfS61kgcLE2g/8hy1SGEgy5Akt?=
 =?us-ascii?Q?G45JOiOjMLL06fgUOoF4bt4D7F1rUEJII7ONDOVKsgHZfaDuuDQ8QJlBtTbv?=
 =?us-ascii?Q?cPNgGZItXiLRkBvEBGBJiv3rOPlNsu7O6aNJ0ZhQN627GS0h3b/Js6u8Nlbl?=
 =?us-ascii?Q?3WxQ46J+c7IuRIxSTco1KQBC1PWYH1bWaY3bbG8h7vsq2PWyxI9ZnGjBMdLh?=
 =?us-ascii?Q?+p2fJkQgvGJrt+NyQ1TtFdkkKQMkIqfIEO3ePsp2pzzuck1ZxritenbXnj+V?=
 =?us-ascii?Q?lR5AvaEJP5R7lJUx7ykns9w/+J66IJlDz5R86fwme2ZYwD8oZMeqX4UocAG5?=
 =?us-ascii?Q?4v0bUWQmYw1Q9MLgWbpPLEI+TDfUJ2KcMrZnmcoXdNcFfW1yv2AlSm11jGU3?=
 =?us-ascii?Q?r0U0uKDEb3SJvSOvCvZaxZRR8w64VipQvxWRY7VDdYoiXxEFppouS7edY2iL?=
 =?us-ascii?Q?o6+qHCa/1RWzes3KTYrYsa4G0BWy2cOZO8J+n8O8IS5aMuwWGdx8xwhE4H1j?=
 =?us-ascii?Q?uebo8Xy3s5h/uJP7lQuL03FlpQTSz9NuUIrGdl66DzjxKg4978/JBEEv0A8G?=
 =?us-ascii?Q?L47MNqpUSnzoQgAhlyZSlogTJceDYXm4tOl/KsGq3vEuqIuW2waPJWTtJd70?=
 =?us-ascii?Q?7RukQRgrsVm8rwgp+aqygzQ+h/vAyf5QP4GyXdrfibwhWj6YxxFGWEXfPiQg?=
 =?us-ascii?Q?qrgTLJ2LD/AHm44G47W0CeYXMlhXsj2/7qyV1FxCMR84nwm0ifrbWmsLgPLI?=
 =?us-ascii?Q?uA8xNxDaWAp64Bn3+FabZUzKKnemHkMI8PHYNInAju4Fa/UVHjieuvrdtwhj?=
 =?us-ascii?Q?2axsdAH6YOezP9n8+lKV0NoTWVeVydcjDw9zPaL63kDOmwQG20GpncFJ0OPc?=
 =?us-ascii?Q?1dsh9G//XmA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WkihzCb3UfxSh/PDlUtOh5T4ACteihs6KlWmKW37wUvQui1PQrAjKLTLqctI?=
 =?us-ascii?Q?xFt7x2nEIgACNZM8LCC8Rl9phVdc3m8Ex/fy0Iv/SdrpVqYgBJUBJhnB9MEb?=
 =?us-ascii?Q?PLBw0Wm7o08E4qDxXSX5pGRppJQqEN2rmZJ+eDchcf+BGFVJwTZCfR3GS8z/?=
 =?us-ascii?Q?aoUg4lyi+wJnTxgUzrpntvbGfBpZxYaEpRsxY8G48VIbQpW3G85Y+1God12D?=
 =?us-ascii?Q?IGH32UhXOXvNektvypv9OoANYxViR2gr1Tteyt1C1isreZfDvhBCtRyUSiCQ?=
 =?us-ascii?Q?eKKbzlfIZoLXdbfQ4mQRK1o/bZoWwCUSzwLitEB0CtQyUthQapV0nZJNYz8g?=
 =?us-ascii?Q?w6bWU4Jzk7dinuu/whrLcAj+1/L8o8inDMdAbNNawTvMrE+f/hlo0DJUMx6+?=
 =?us-ascii?Q?HaFdy4d1FueSoXImnE26W6fp2c5yB6xkOhDqAFJDsf5UkqF2NA9O3oCQJoPM?=
 =?us-ascii?Q?KRlNaaxFEyi19hzLtKiKGMrEI0i0Ir1+i2M0XVbnySX6i1GdxMJHd8fwiFbp?=
 =?us-ascii?Q?jIUK+O1h3rm5V6DAW6+xEFrVklu71tAidfka5CmyyDGzv8WV9wFB8UA4z3+W?=
 =?us-ascii?Q?psmWgOYVRVDcZfkh2xx9y5xW5hwumWzhuk4jv10W7Ri0LliyjwjERjkIJQlj?=
 =?us-ascii?Q?HT+SZD2YKQ/5NPB7xLY4Qe22piefZJ8ylukWeGqLbNvpKTMD4l4h1cz0cEnh?=
 =?us-ascii?Q?XsUu3pJ4nnETbOdG82ovPeAAzCAqviHSvPczqhV7XFrWLKXbt5bzOBaXjNHv?=
 =?us-ascii?Q?KBiVX1Yj8MGcZhH87n4rXhiD6Ltp4okf3DgjpipaNXOUxrTsjz1BcZ9sevF/?=
 =?us-ascii?Q?2hNRaYS7+7Eu+rmhwSA92XHsMINv16z4VnA6EbD10AhdMOqA38nSXumj1I8d?=
 =?us-ascii?Q?GEulZjjUZ/r/UnogL4gw2/LIbLslTHUpGTkA5osv6rPoZ0u9yPKzaFItyvw/?=
 =?us-ascii?Q?oT3wvCoeiZ43y5NTxZXbTP1pZ+QpDYpkeCLezYx3usVTj5TaaItHfuuvzqR4?=
 =?us-ascii?Q?ae5byDcO4EVKXr6odjnfxiZc8czt+D3jkkiCJKCAgIbNX0LtAhiJytRcpSJ7?=
 =?us-ascii?Q?6hc6F9LS4rc8CD2mnoGaLGj2IJkIY65uu3jPa2nxi9JC8aqey666BFhdgja2?=
 =?us-ascii?Q?AxRYESAnv2UfuI8gp4d+mw5OKQYBXcKtZQOL0m50q/l1d4a0UibkEUFmJjie?=
 =?us-ascii?Q?mdAwBSU3mE4JiCZpO7P52GCJyeXzRnjyFkt/ik4iBmXNTuXlCEux0xLJy9W0?=
 =?us-ascii?Q?SQ19Flwa4bW0lhZ/aERoD0U5Pc6+SpO/Pso3JQL4rYdYZ2ZBB9U57gwc+XML?=
 =?us-ascii?Q?GBKTp77W1lZiFW14pZA9D6D7BDe3LXaIv9Vua85vJsGJRBzz2ViAVEuyMWXW?=
 =?us-ascii?Q?HKsPrPvV8lOPZD5aYG5wTURDCqlh9+xn4vMNNiheJlo9c6FXVduVW0r8Y5UK?=
 =?us-ascii?Q?8AZ+YK7fQ25Pdil+cW16BQzISiSSo57Ci9DV0xUwYJORGbVbMZzJtSaGQQbN?=
 =?us-ascii?Q?DrO7wgrlXm9pM4cj3WtWZK6RMLNqgV6lmgNlwe0Tvk8dqJ5JhrBbn1dy/UOD?=
 =?us-ascii?Q?PkfgPR1nwPRleQz5aE8stUJJSc13CbMWXJy0w3OkqheDn4OIo7ururZz4Qk/?=
 =?us-ascii?Q?SF6AGnzHSM/NKhZ8Mh41ZiRnJUy8wcYWLH3ZtjYmAjeR?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ea0660d-c72f-4571-4eb1-08ddd3f2f095
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 07:37:33.1085 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ym8lk2RvnMYDo0o/QDsKHKceF66trrBj5Ej5Q6n4oj7DvgcEqRHFXsicya2lWlybu7rEfaG7xPYhH59oE8+7eg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8161
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

Unify the way to get the max lane count value on all MTL+ platforms,
reducing the code duplication.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 24 ------------------------
 1 file changed, 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 5b044ece815df..77c5a37450a26 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -322,27 +322,6 @@ get_pin_assignment(struct intel_tc_port *tc)
 	return pin_assignment;
 }
 
-static int lnl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
-{
-	struct intel_tc_port *tc = to_tc_port(dig_port);
-	enum intel_tc_pin_assignment pin_assignment;
-
-	pin_assignment = get_pin_assignment(tc);
-
-	switch (pin_assignment) {
-	case INTEL_TC_PIN_ASSIGNMENT_NONE:
-		return 0;
-	default:
-		MISSING_CASE(pin_assignment);
-		fallthrough;
-	case INTEL_TC_PIN_ASSIGNMENT_D:
-		return 2;
-	case INTEL_TC_PIN_ASSIGNMENT_C:
-	case INTEL_TC_PIN_ASSIGNMENT_E:
-		return 4;
-	}
-}
-
 static int mtl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 {
 	struct intel_tc_port *tc = to_tc_port(dig_port);
@@ -395,9 +374,6 @@ static int get_max_lane_count(struct intel_tc_port *tc)
 	if (tc->mode != TC_PORT_DP_ALT)
 		return 4;
 
-	if (DISPLAY_VER(display) >= 20)
-		return lnl_tc_port_get_max_lane_count(dig_port);
-
 	if (DISPLAY_VER(display) >= 14)
 		return mtl_tc_port_get_max_lane_count(dig_port);
 
-- 
2.49.1

