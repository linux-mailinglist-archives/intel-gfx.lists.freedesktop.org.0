Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD34B2011D
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 10:02:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 681A810E39E;
	Mon, 11 Aug 2025 08:02:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XHMlKuB8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49E9110E39E;
 Mon, 11 Aug 2025 08:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754899329; x=1786435329;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=YbmEwRw3rUGj7RexEWU1vqlIAzjPkymeCfiPLSq4+VE=;
 b=XHMlKuB815rIFU8wT1hiV+SMsaSYzeIxeP3lIDywlmIEKoEuL3eU9/SM
 o1rzBsXxKA3Xa/b+frdasyJy7Vf+dDHckD68i39UqCvblfRju6vE/nM7p
 Ogq3XPij+EaRPL3AXWt2P6Nvc2a1hWuPy97YMagnbzVixOvk+Ctezxu5K
 LrfewVcs/yUL92QtkNB/8tqflQdNhcRNqfQ+JjuTDE8UY+2O/ghgqvjle
 N7fBGldDQ3Jhvu3/N1oBvc5wnT2f78c9sA4cpOX1xp2Hw8lMoFN7j2u57
 nmm9JymR2JgZmTmTitasLK3PG29K3DP7s+qoG9RgPddvGvO63+KcGcFzT Q==;
X-CSE-ConnectionGUID: kw2zWYdnTp6m8jAHcK6Dpg==
X-CSE-MsgGUID: qAW0/l6BR+yQiif00a2rcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="44730346"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="44730346"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 01:02:09 -0700
X-CSE-ConnectionGUID: BIqFOtOFRFixRC0x/8aevQ==
X-CSE-MsgGUID: HBkMoJnxSK2B6hVhAM3HvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="165060280"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 01:02:08 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 01:02:08 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 11 Aug 2025 01:02:08 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.60) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 01:02:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n6MTkUNx0vLkMPAMeYooSMuPt5SwXQzRF2ZXP6TQZ7F1nDDXrQ+/ZJOsMEPvHDNj/OdDuFoNBnFEjpLczwFWNnxGDllWEgpiVD5gie8+Ka5kKaMXx/qk3UWQW8WqsMbeSh0atnZRSrr40/lpshn5bxHTw+6nDlpCpR8O5hL20D90b2lSYKFgaMEu07AbjNjCusCApdCbbTsdatY5kgBBYc80gjeJHCG0jcuUxVMPvaeX6sseTm6k1QWvdLX3QKmiiN67wTqRgZkE83zNYUMW33pLnh1SiwaQgk/Gf7wwKCDs3SKQZr/6XwlAp/PH7vVmjOg4ZMcszrFvrYhc/3HKHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A6eHYkep4vQxKGXAc76LV0pJNuAUJ6FI3kNyQXTzY0Q=;
 b=Jyut5SQYrT1X2a5bXeIfQyThjhCC7V8QBKkY1vvHcLsLf0aqhjr7ybZDEFXn3vR/JHBQgNxnzeGooJVxJKbEor7eRKuQNcKZCAZBWfAVx7tphshByd1RxDMzRuoDf8aai/1UjCw6z7JktsW+cdCCjaDTzqIk9Xj4msnQYwnjl3jtUYrHk0lh8KgcGrxRNkOKMJ8PY2lDKCl5tXXIKr6kLGpUE4u1HVdCrN6OGUc4fSD7ZnMx334G1/WaE5Tji3fSDLY5WRHqlNL1s6GKpzfPh/fJBqxu4/ID37IhDzLvaG7kE1BxVLVu1rRaF51yyw95XyNrhNIRqXNTzWzkFQKqhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SN7PR11MB6557.namprd11.prod.outlook.com (2603:10b6:806:26f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.21; Mon, 11 Aug
 2025 08:02:06 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.018; Mon, 11 Aug 2025
 08:02:06 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <stable@vger.kernel.org>, Charlton Lin <charlton.lin@intel.com>, "Khaled
 Almahallawy" <khaled.almahallawy@intel.com>, Mika Kahola
 <mika.kahola@intel.com>
Subject: [CI 4/5] drm/i915/lnl+/tc: Use the cached max lane count value
Date: Mon, 11 Aug 2025 11:01:51 +0300
Message-ID: <20250811080152.906216-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250811080152.906216-1-imre.deak@intel.com>
References: <20250811080152.906216-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DUZPR01CA0223.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b4::10) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SN7PR11MB6557:EE_
X-MS-Office365-Filtering-Correlation-Id: b6752d41-1df2-4e32-a8f3-08ddd8ad5d24
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|366016|10070799003|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?q9theqfdfyDePvabmfiQ7AF/uNq3OwA/V577da/KfMNvyqwTxqC2XktiJuTW?=
 =?us-ascii?Q?VkDLEQpsNafkDFyuOCVUYGsfPwCNbhDyLUMZGHjAgJ8J1gACd5Bv5OerWxwj?=
 =?us-ascii?Q?wFMVOlQAVtSgFNr0/6fvxpDBGJQ1t981Wtav0RWUNx9MZUN9z+MuFFPYilMh?=
 =?us-ascii?Q?ooKlOhdt2XWg7Hh0oc6faMBj2Prip33hzyYBqmVEExjajeWhOxd90NcqZDUV?=
 =?us-ascii?Q?/KkCG0zSFIbOxyrJza37JCHcSuj+F4VnUEjEcmVW98ItyYLnn4bo3yMhWjH6?=
 =?us-ascii?Q?t4E8D4B9gSjXyFhYTKkDSTKsPwMCukHnoU2gXI41T1AIcZNUktGTPI5GmSmt?=
 =?us-ascii?Q?qd9YaxYEXuAn84mHNJgmf+mCz9NiOVc7B0op3LYFwdjfEymMGT8ZJVQCn6av?=
 =?us-ascii?Q?spLCv2787KgCMwbP+7oEnZCGtktekEr2VEglR6KttrEVHcehddkYoHFmnZS+?=
 =?us-ascii?Q?ParpsrIwQ/CEphs/cVTATinme2JccHwVFGU/OzSMszgVwEwNprGpV9VzfbXG?=
 =?us-ascii?Q?4YjT4yCRE0jm6wrGXkZs8sQnaoVtCx+E7X87DLimz3+tAKnJav6j9zy0+MeQ?=
 =?us-ascii?Q?u+geTPVDWEk6sRKcDN6nR108KVrJ4MHA/a81aDDqnEwMrjmjBws7I3lvH8ny?=
 =?us-ascii?Q?MAMQA96yCoPoFhzfGKAkIj7vKHDxcp3O5POR7PS2lJHLgC5B19WzUhtb2CVg?=
 =?us-ascii?Q?b/ZAG9HQwh3t8tpafykn97+A6tHoEtSjhmSKaHf9upOApik2K6FhQanrVkYT?=
 =?us-ascii?Q?rCFDdE27Cwx+VfkmWBATEhrdZb+PI6Tymq3U2KUWLIsfWuejhMBp4GKovqqg?=
 =?us-ascii?Q?LJV7petjfA2InDVO41fh6h+E0gdzBYeeyz/sNWQ5J4xqvn6l8lwgfbzQNsoF?=
 =?us-ascii?Q?rSKY8FzGJ7g/gKACGjsJq44Nu+0o2kzh+pU9hoofJnBXY88ztc61NkS7d/5j?=
 =?us-ascii?Q?n8paVo1gJEr6aNwL4tPCCpPefQNJcyV68Gc0J/f0X+3NkUMgIfC/GGvbn3jl?=
 =?us-ascii?Q?lAildbjXoCP0aW+0u0/sKqUdtq9o/0TYnH4vRzrVYdMK7Wkmi40Nwfgsjw61?=
 =?us-ascii?Q?HKHFI6YXsrNahJpkGUTbWUz60fvXMIAKjcYR2xZttBXYl793FOmNm4ai43Ui?=
 =?us-ascii?Q?odxrGQ6bmPy31CpyTFsDE5IdkuuHeIEUW949GrWCZWkpFM0BuM/xkRuRvchd?=
 =?us-ascii?Q?bTozYPKS9r85woUeGshiQGmU/Mg3A4FTsICueAyQK1v+d7O5gfk3YHfMiT97?=
 =?us-ascii?Q?Mkb0iVJuKalyl0IBoxusH2qv6tndmHTx45jQUPf3tlOv6IcxBb8NqWBGGjIO?=
 =?us-ascii?Q?lvDOpjjv0PIiqoGFNU7ooacQJUM5FjJghxCdDGiCZZqYh3xHjiH7gXndPPUy?=
 =?us-ascii?Q?vV+0NImhaA2UA5RIpwN12Bqr5lei/UL0tFZ8vjpxbwfX35gZt1Mzn9r6sBHj?=
 =?us-ascii?Q?xoJWINeV0rM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?spuM/HOwF0FXl0xsHq7zwmPfeZpJa/Afxrpknb4R88GJE6Z7KWsknCriJxlo?=
 =?us-ascii?Q?g3ILbnfYz8moQKMyWT6uaIn2QF0TFC3g6rJuMkO87GNuBO9G6eJMdAHwyP/O?=
 =?us-ascii?Q?wsG2uZ5bR0Q2DJ97NwAbn3+YhoLduw8c7zDNacepzTZpR6svnesVxh4pC12r?=
 =?us-ascii?Q?QmXNZjCjn6OvPyfnl88YdQUdKjgzC9Pn637U0u/6+07UUALjJ43MDzu4ivk4?=
 =?us-ascii?Q?YQAg/PM++H+P+yhenm0z2KwHoja6QaKi2kVzzSX6aESTZN7EUGVBHT+oVY/I?=
 =?us-ascii?Q?Fsv1dK41NVyMJKQJU+ut/XGdAG59hxW0VT3/W2lva+IhZCRnme4b3lr9oEk3?=
 =?us-ascii?Q?xk3y/xtmbgWNM0JCRGxahw3SYw32erHFf38xIiq1FD04thj/7sh+cfLpYwhW?=
 =?us-ascii?Q?Fb/nhziOsi6UDobcC1q16YH9wpZWdAiBJMEb0yTkyRvZNMpIeULYZVi36fXd?=
 =?us-ascii?Q?0T3Mo535/rUip5LMPtM0RAnB6FDkcbmw+0AMqlg2MuOqlJWqGzCR7+4aDV5s?=
 =?us-ascii?Q?a2QoII3py5ENljqZex/d1kz/pS6+GchbuO9/Yqtkn8zgRYaFMIy8pu08p4gP?=
 =?us-ascii?Q?X3/VKDxG/jZIVlAutiStDYzddsdRfETwsmbrh17if/jsHZZfoFPagXzx5v13?=
 =?us-ascii?Q?sVnMCOzzznpQpXhqqEvw2SGem+7QIM/dOLR0JNu+iw54bVXYaeoyusYWq7aD?=
 =?us-ascii?Q?z1Hmd0mlGpJU64H1g4apXDxopS1weRSsBK1QhDiRx/ogGtjc7z1LpypbXeHg?=
 =?us-ascii?Q?LJGLQgtY8Gup5Km0Nk+w1l5vOWR4NUBdfDl3dA/g4zB5UEAitVt8v8yVCpkP?=
 =?us-ascii?Q?IKccFU/0W0rhAxVVUHGVbJk0rUwVGcUF6u6LkbX5WjccrigqfYbxMtJFCihM?=
 =?us-ascii?Q?5ZrE6XMCNQVsLz8NKi9OY6KED6ykBlj6jZDm+axlw+l/L57R0umQnFaaFyTt?=
 =?us-ascii?Q?/1BgwBzOaN83+/F/+fAFxsvhILoS11REWMbdJovLkjeT96j+VtABGPFirCsT?=
 =?us-ascii?Q?0OdRc+m1fjz6gMoB8OcyOdEOpEqzdGCmLitmnEGrFtuR2mHVLXWu8pgf1+2p?=
 =?us-ascii?Q?G01yV6JZAxBPEuJcJlptpZDWtcm62mOsJiXP6lvlbqkBKcm5UfLptSYXvoOl?=
 =?us-ascii?Q?A/2YbPnD8aqJU6j3fvmQ42zXgx/jvWzhZEN/5TiQtO+v/YOSPbmT02awuvW4?=
 =?us-ascii?Q?+g1e03yKJU7ailL6XKT98SdAcsEwzd4LVW27XJn13yAfB3gGe3HdWUZ4cVH0?=
 =?us-ascii?Q?hzltWI6lj5p2ERBWkoTCfrbaBQzNvuwTF5HPwTW8Fn17bYLiB180H2CmwLXq?=
 =?us-ascii?Q?OnOsAJ0NfMTL3eT3s8YEmRVmB4ANMprVi1+6WuaY+BZKHE4ICIVNdYLDrfxK?=
 =?us-ascii?Q?wUS2hUNHY6x11rVj9a6zQhIrdTtqbAKlpIbw7zKw7sGlSszaD33xULtrSbjA?=
 =?us-ascii?Q?Fk7/IMBPK3oaJEch43Q80EBsMwq6DPy5tyVKfcwM/ooGU06S5e3xyXm+Qw+u?=
 =?us-ascii?Q?lrP5qenXE+QnFP84c/jiiIJCBty+pPIzJZZbL4y6/RFsNZiJlLuLMBi+nW+Z?=
 =?us-ascii?Q?eomWMQ1XK24d2ecwVEuCjkD7x4K95Y3tluKrGdgYBe50bi3KZMiFaNkafZR2?=
 =?us-ascii?Q?PkB1aAZuKM7N6dJdLelAuZT4vI24dobnkYdBDzr/LgzX?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b6752d41-1df2-4e32-a8f3-08ddd8ad5d24
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Aug 2025 08:02:06.5627 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1Kf/pkLYBMBVpskq/M3+A6SShPdezIO+yFW9Wa3UjQs5qINATvWBz8cRh9k3PuE90gNyqIKAG/xIurLC4+5Anw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6557
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

Use the cached max lane count value on LNL+, to account for scenarios
where this value is queried after the HW cleared the corresponding pin
assignment value in the TCSS_DDI_STATUS register after the sink got
disconnected.

For consistency, follow-up changes will use the cached max lane count
value on other platforms as well and will also cache the pin assignment
value in a similar way.

Cc: stable@vger.kernel.org # v6.8+
Reported-by: Charlton Lin <charlton.lin@intel.com>
Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index b0edbce2060ff..8b6826fc06855 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -395,12 +395,16 @@ static void read_pin_configuration(struct intel_tc_port *tc)
 
 int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port)
 {
+	struct intel_display *display = to_intel_display(dig_port);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
 
 	if (!intel_encoder_is_tc(&dig_port->base))
 		return 4;
 
-	return get_max_lane_count(tc);
+	if (DISPLAY_VER(display) < 20)
+		return get_max_lane_count(tc);
+
+	return tc->max_lane_count;
 }
 
 void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
-- 
2.49.1

