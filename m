Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E12FEC75A20
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 18:24:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C6DE10E79D;
	Thu, 20 Nov 2025 17:24:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Oa0nfwWA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AF3110E79A;
 Thu, 20 Nov 2025 17:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763659478; x=1795195478;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=Oq/pRMjTIWWIkRdaQdj5cHyHEaKFkyoJONJwlbr0C/s=;
 b=Oa0nfwWA5pAiGNF/dShzeEI4iJvZ/pYLDixIr/Ju0K6KIdgnPWHqVPXi
 5U3qecqUm1s+rP/0mWzIB32RLUTXjk4HTBZMviNWJxDj96nj93Y2Gm0pN
 axSI6Mxtl0j5sCgjcl4P6jrQaM+Yj4OEv3zJ8m33BVkk8TeXZUmL5Vqo+
 E3DQeT4mY39BH0WWAYK6vtb3Pc/Wb4X7LBMXf00riYMOgFfQfgOGUDVma
 46WmDHRWw9aOR3Ix9GEbOObPy+AAQJtJPOevD0U9dAH7Xp/2DrvjVthXL
 aym5faVzX5ktVrhlLTCrtT1Y3uaMwCm3HioO+7EMVePJyIyeR1k1zcDdG A==;
X-CSE-ConnectionGUID: FdCygyI7REK+TwKAbiLPMw==
X-CSE-MsgGUID: wDixBhBXRMqcNgDztYPj9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65767751"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="65767751"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 09:24:36 -0800
X-CSE-ConnectionGUID: T7cjBjkmT7aPwzMkbiz2RQ==
X-CSE-MsgGUID: 2id5sXgxQpi29MsOOaPIgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="195728074"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 09:24:34 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 09:24:33 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 20 Nov 2025 09:24:33 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.36) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 09:24:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hEVBHv524qulv9ZeTPmmZXfCtEeOnu0Ly6NrBJHl3JVrfZ2NY1qTxG3DHCAlX9WvSjmapnlbHaV3u0EQFRcbwSyxq4i6tcasosUK3GL2Ijk+E7Fm2H+rkRAnlThcplpddcML9wcvh/gPiokGRft26QjojbPDdIQxhDcW7+kRvfR1l38U/br2zr/tp+WCKe6gRWUN4FnJKvq6mi+lw9bVS4mkAQ4Y156alTa6X+lVWZ41bNx1M0eV2WfVP7sHHi/5lGX97W3M8qqJyn7A4hzskfkJkDj6ZEVb0Mt7oxfRjunKMU5QtngZEbllb1+wPy3Qrqw+DPS7TbsIjclPyBnzTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7EP2siYmz/LH+WQE5XZ+Q/YWDi8yzvnu8QH+P60BtUc=;
 b=R9wujTbtodDY6IEsWV4VbUA4GTsF4cbQ/cFfrx9Dlx/RStEkVsEwWoho/lSM0zdV05DPSbpy4jEN4XxuiK4njZbHIjKxZA4LyzUgjfExjaSIEEO0QZS7joA3BVfoXVZXf7Z4mKZZ3cwOxfW8h+HX8ZtkbQ7SIQKWSvgfVVzwnX0ISi/qp19QQ5oSOC+rXtaCk32IK/L2NJue2bb/GZp4W7UkSiI5brihSCji2i9BpkSdjnMcZgHQIIJhnmJglRJURPLA1yMEOjQiymQ99rJke1fTV5Q91tdSXbilN0FL69zOzP6V/ZRLCUTHr4XDi8+feJ6UovSoWMwvPB8ZTAwSrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV4PR11MB9516.namprd11.prod.outlook.com (2603:10b6:408:2dd::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.11; Thu, 20 Nov
 2025 17:24:26 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9343.011; Thu, 20 Nov 2025
 17:24:26 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Suraj Kandpal <suraj.kandpal@intel.com>, Mika Kahola
 <mika.kahola@intel.com>
Subject: [PATCH 2/5] drm/i915/tc: Add separate intel_tc_phy_port_to_tc() for
 TC DDI/PHY ports
Date: Thu, 20 Nov 2025 19:23:55 +0200
Message-ID: <20251120172358.1282765-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251120172358.1282765-1-imre.deak@intel.com>
References: <20251120172358.1282765-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0268.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:194::21) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV4PR11MB9516:EE_
X-MS-Office365-Filtering-Correlation-Id: 98fd3705-707b-4951-c403-08de2859a757
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?HpNAc40cgXrDFk/m5ny7tydRPDSK+tj2D0C3MmdTIBwSMGxHs+chphwoB2tW?=
 =?us-ascii?Q?JRPs4TslaGoZmoKnFyCxyJcb16bxTkS5RuS/zb7PDHYktrpKRvFG1yPJ5eM0?=
 =?us-ascii?Q?+2qh0BuDuJr6qLHy7cwGVOvu3UYEf/eFGvnIOPYmHOrGhFtnXZ0oBWM8x5W3?=
 =?us-ascii?Q?x6lSmxrj5KuwQuBMwUGD09qh/l3vavylYiWIRVZdqGg9bjkRIMVFRSaU9Awm?=
 =?us-ascii?Q?i0//QjGBv0G29OWskEiKEK3yrqNjVy2XAAgwrCNGv0bUInlMaD9nF0c2Tqpf?=
 =?us-ascii?Q?n9FhHGniWkt1PQitMWaEiiGj9DkEEv3rmozPgG0HBxTlF+DeD15CjN8wlZvU?=
 =?us-ascii?Q?NCqCigwUkPI0V6X+4+87FBZmcGS8e0I/dj9Q1J7pg59910kADnmBip1ouKWI?=
 =?us-ascii?Q?XnrwHmZzrMUMNcpWlqQETcVKvVFKnhcLzpugDjeS+y921iKhANWbyY4coCz5?=
 =?us-ascii?Q?rzCHeOd4saHRebw6hvLi7mS6Kbo2WkpEHK5liYkNgi1ym0c/Hx9hX6FfAXpe?=
 =?us-ascii?Q?G1m1WuNrKolwjx06rxpBCcPMDmC0aHFG8zZodcM4fl6vImI7qtAPmt2PGqIH?=
 =?us-ascii?Q?BvX52FD+cJAN5/T6CBN/BDfeT4e3XjiF4kGJZGP7/9XQldImB6jfuDYzLADs?=
 =?us-ascii?Q?NWOn9Eani6safrOduSAZSnju2A2Q6XfKx++7TeLTdeNsazQ5iUcX11W33hhI?=
 =?us-ascii?Q?Xs7ZaHKzbQpX62fLDc6QJa7Mw6F0Rq9HejjoN7lUPVflFoMORUF3CBVMmav1?=
 =?us-ascii?Q?f/XANKjQ25lBw5ZBK90C6rZtYzia6bVn9C386e+piXGI4C2ykseRfsEJ3EqT?=
 =?us-ascii?Q?ZbOVi7Ldy4zzTvSh8ZP8oCg+Mr+UJd/F2YsHOAJIGUFYVKtVrpP7hAZBCpgi?=
 =?us-ascii?Q?pBA21ZNaFELAe30Wh9qoBLLjwBJd4qea+BooBkJeeaUyQ2lI5f0pgNAaCJwa?=
 =?us-ascii?Q?/ggduXHWgW3nB1QanMp9XsxlXdVxkpsnEVFi3pD22Ht5YIeL3GJ+BQOY4cMN?=
 =?us-ascii?Q?V1SSd6fJ/Sx4auqo5EvqONW0R5EeVUArTUjGn3hzR2wJdMQzt6RCisl1JanK?=
 =?us-ascii?Q?Rlc2FEa/zJHs45R3kStqtw9fLwn9yGNBshNoFQxFGxmxw+QkzuA//jp1IJzD?=
 =?us-ascii?Q?nozt3Jxt1yH4LuiIHfreu3tZtgHPGrHNYjUulExy/8+2/d/7pRkPqkRBU6/I?=
 =?us-ascii?Q?nQnyrc5MGqAGrXjE8zClb+jMG4n3aOEZvPWN29x+buaQcFv2mhtbmXX/RXeO?=
 =?us-ascii?Q?upQsUtq/HukktyNTTw27cwF/Ccp2s7e0qjZnGTVIAI/JGytU7zc6g6gVx888?=
 =?us-ascii?Q?3w9fL3SaOFCSwgiNbfT4duaCv056SVk1IRbTMdEUC68umGV/HrnyEkER1lP+?=
 =?us-ascii?Q?5qOewrhXCR9EA8PsvUtiVT8h39S12kiQMQgDPJW0QFaDt/fbCxUOliKvT4rl?=
 =?us-ascii?Q?ZHjdCoBo/SD49zZm1X1BCycegPe1ryHW?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xkMoSsCjQ+5CK0pATyJQbAe911ZxJixvy+CEZV3N5hieTQD8NsxEUk5gg/vF?=
 =?us-ascii?Q?MEAZ9iuyJZxs6rEhD2W/gw6IECpkb0a2YqtEw78gaDQIpRLrcwurFyXqFksH?=
 =?us-ascii?Q?7b8Fh8FEuYfzYM/5abWPuvdfqqYsn9amE9ZkeXj+ax94MaJzUAFt6hRjV7nV?=
 =?us-ascii?Q?NIrpTTAp9rH/c/0htQnztMQuKfvoNbD8f7FXkov1dHjers5v9itVuXTqEOWu?=
 =?us-ascii?Q?/E2zeVgUiH/TysyGNhTB2U2J3CRUkRToQyCNTmTYyVRQpsDfpAbF3E9TXeXt?=
 =?us-ascii?Q?rF2bDLRySIl8Y6g3pJm9uvkx7PLuJHLuNfWkmf8j+866MC2iuDtXBYzvxvkv?=
 =?us-ascii?Q?6oukWkCkjLHxNFHltpp+Nt7+kHbcEtac62/tF2ddwNoLy0OuQ9fr24RY8lyy?=
 =?us-ascii?Q?dXG4KQGfgQ+3vwNJhO8CiDBxIPHIkZ8yKVPVQAFLK4TS9l9jZEGdWv1gBTXY?=
 =?us-ascii?Q?JgR3f9JmnEYJZQa1DTgJDPjVpWvzrRQ7rKQsz5WkOH/t5uumZvTbm3YnSWQ8?=
 =?us-ascii?Q?1779U0mssdkdyriX3AIKIt62//OFxpSBw3uSfHoL/DVvw2Rkaf/v1L8DmCbe?=
 =?us-ascii?Q?r8RYCLHvi1vRFF/8XP9+Xh0wGsYzbVJx9JTQmGAsHw5CDbsP/n8jD3sTfCcE?=
 =?us-ascii?Q?3GMMybHPh8jRXDbufejfOewO9kdf8gyglkeN5QL9BhHI1Msnio5VrEFGO4yo?=
 =?us-ascii?Q?2Njc6q9JpzfL+ldzEi1cEaWkfJvM4F/IiBhUZdrYcarG9iONGGe8ylO1PInr?=
 =?us-ascii?Q?TlrxNZXtveSkR0XslkK90HTB+f/k6b0Yq9yYpG1l6umms2MtZvdtM8FxSa5p?=
 =?us-ascii?Q?CosG8znkS1FEH5hOofsd3QCbJcV0GNGvCK6EjIEF57uxJvOWxt3gUw1hcGzg?=
 =?us-ascii?Q?AZf5SR3rPHVbIoAvqu1+v1TouU2fBtxE7hcDDLXFMKeDgK9PlaqbE2+GBCUN?=
 =?us-ascii?Q?qz+KWfm1PweT3nzwjoOPds1iJ0QP00AGyrIMESnED8PcawN6ldE4iZkewipU?=
 =?us-ascii?Q?4iF57M6ynSteMwadiMaVJADm6vO2EGxwt/uixJuT8lbUzWVdTKOMCNfVACKH?=
 =?us-ascii?Q?C8yAyO0p7xIvt8VJGEYujYtq2wN4XMpu1ADK8p2loGDdcpvwvg3SOW92oRoP?=
 =?us-ascii?Q?DJeDasILdVdsisvAi5tBY/SvNgilImCzvr6ZyWpn8rseHKdrLMbKnVkAybEr?=
 =?us-ascii?Q?Rd+t+4ndoNdMfbdc0z2xxgSkVQK8H8jytGv5YwupT7xWx8h7l0uw4IrEnANq?=
 =?us-ascii?Q?Ol0oBNPThtFXk0+w8YE19T75vR/SJGE1ALndgv6gCRUyTJmpxpuCp8Et4Gt5?=
 =?us-ascii?Q?PfPyAxCpIvheJgzPudsHKozrUSOpiCNLPK1L1VYtTvZGUDINGrGGl3d7PFYK?=
 =?us-ascii?Q?nSCGJSIy/96JqGO1+IROMDE6jHF8MVg7TC58Fl3dVGSy5tZE5/SC5Ur7k9eA?=
 =?us-ascii?Q?mUkBKmbRi70dHxQkaFtJ1ZNhJumbImJLTSoMyT0JcGRpJsuuEJaNemFwtIxE?=
 =?us-ascii?Q?GArbY3EO+taw370feunNuGdTszqfr5n79i8h1386jZv8oTHnrt1RYwMxSsLW?=
 =?us-ascii?Q?r1mRAxijLkBE+V+vxB05JfKEm5sWmt0MK3yZOrlQ8ORUD/WUeDJsTipxrC33?=
 =?us-ascii?Q?yoq0w9LUFMjeKMkkSoXlgIh02HQ4TU3aXYeYn3OnAh31?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 98fd3705-707b-4951-c403-08de2859a757
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2025 17:24:26.3947 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e1mBJb2Co5f6pDDreqN/Utzzbm1SMXzs1QOpqRMQ4bfgYBD5mzFEvlZd9acH6swAhbJ+SqfILeI2lix6DStX3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV4PR11MB9516
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

intel_port_to_tc() returns the PORT_TC1..6 -> TC_PORT_1..6 mapping only
for DDI ports that are connected to a TypeC PHY. In some cases this
mapping is also required for TypeC DDI ports which are not connected to
a TypeC PHY. Such DDI ports are the PORT_TC1..4 ports on RKL/ADLS/BMG.

Add a separate intel_tc_phy_to_tc() helper to return the mapping for
ports connected to a TypeC PHY, and make all the current users - which
expect this semantic - call this helper. A follow-up change will need to
get the same mapping for TypeC DDI ports not connected to a TypeC PHY,
leave intel_port_to_tc() exported for that.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     |  4 ++--
 drivers/gpu/drm/i915/display/intel_display.c | 23 ++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_display.h |  1 +
 3 files changed, 22 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 8471bdab5c62f..ed9798b0ec009 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -5148,7 +5148,7 @@ static const char *intel_ddi_encoder_name(struct intel_display *display,
 			       port_name(port - PORT_D_XELPD + PORT_D),
 			       phy_name(phy));
 	} else if (DISPLAY_VER(display) >= 12) {
-		enum tc_port tc_port = intel_port_to_tc(display, port);
+		enum tc_port tc_port = intel_tc_phy_port_to_tc(display, port);
 
 		seq_buf_printf(s, "DDI %s%c/PHY %s%c",
 			       port >= PORT_TC1 ? "TC" : "",
@@ -5156,7 +5156,7 @@ static const char *intel_ddi_encoder_name(struct intel_display *display,
 			       tc_port != TC_PORT_NONE ? "TC" : "",
 			       tc_port != TC_PORT_NONE ? tc_port_name(tc_port) : phy_name(phy));
 	} else if (DISPLAY_VER(display) >= 11) {
-		enum tc_port tc_port = intel_port_to_tc(display, port);
+		enum tc_port tc_port = intel_tc_phy_port_to_tc(display, port);
 
 		seq_buf_printf(s, "DDI %c%s/PHY %s%c",
 			       port_name(port),
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6c8a7f63111ec..a8a3e80001870 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1859,17 +1859,32 @@ enum phy intel_port_to_phy(struct intel_display *display, enum port port)
 }
 
 /* Prefer intel_encoder_to_tc() */
+/*
+ * Return TC_PORT_1..I915_MAX_TC_PORTS for any TypeC DDI port. The function
+ * can be also called for TypeC DDI ports not connected to a TypeC PHY such as
+ * the PORT_TC1..4 ports on RKL/ADLS/BMG.
+ */
 enum tc_port intel_port_to_tc(struct intel_display *display, enum port port)
 {
-	if (!intel_phy_is_tc(display, intel_port_to_phy(display, port)))
-		return TC_PORT_NONE;
-
 	if (DISPLAY_VER(display) >= 12)
 		return TC_PORT_1 + port - PORT_TC1;
 	else
 		return TC_PORT_1 + port - PORT_C;
 }
 
+/*
+ * Return TC_PORT_1..I915_MAX_TC_PORTS for TypeC DDI ports connected to a TypeC PHY.
+ * Note that on RKL, ADLS, BMG the PORT_TC1..4 ports are connected to a non-TypeC
+ * PHY, so on those platforms the function returns TC_PORT_NONE.
+ */
+enum tc_port intel_tc_phy_port_to_tc(struct intel_display *display, enum port port)
+{
+	if (!intel_phy_is_tc(display, intel_port_to_phy(display, port)))
+		return TC_PORT_NONE;
+
+	return intel_port_to_tc(display, port);
+}
+
 enum phy intel_encoder_to_phy(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
@@ -1902,7 +1917,7 @@ enum tc_port intel_encoder_to_tc(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
 
-	return intel_port_to_tc(display, encoder->port);
+	return intel_tc_phy_port_to_tc(display, encoder->port);
 }
 
 enum intel_display_power_domain
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index bcc6ccb69d2b5..f8e6e4e827222 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -451,6 +451,7 @@ bool intel_phy_is_combo(struct intel_display *display, enum phy phy);
 bool intel_phy_is_tc(struct intel_display *display, enum phy phy);
 bool intel_phy_is_snps(struct intel_display *display, enum phy phy);
 enum tc_port intel_port_to_tc(struct intel_display *display, enum port port);
+enum tc_port intel_tc_phy_port_to_tc(struct intel_display *display, enum port port);
 
 enum phy intel_encoder_to_phy(struct intel_encoder *encoder);
 bool intel_encoder_is_combo(struct intel_encoder *encoder);
-- 
2.49.1

