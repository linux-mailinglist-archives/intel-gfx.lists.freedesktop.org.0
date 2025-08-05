Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3148B1AF60
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 09:37:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A67010E60C;
	Tue,  5 Aug 2025 07:37:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ncGz7mJg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2269010E603;
 Tue,  5 Aug 2025 07:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754379445; x=1785915445;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=7x+8JKcphIvOXa0+fha+QXAPM/eLXkincYRGeXtveJA=;
 b=ncGz7mJgPjO2znDXUT2UXb3HAYxm4TNzqQdyaEywTlvylCCLZxmCvs3d
 kg3Egz7B+DSJbc1PWx0wIG7djW5YZVK/Fcw5r0Qgu8a+S0OfCGPpbgvBu
 LY2+3iRe9C23LBZBQUB3ADDNeD76fcxRH7v47npg8rZVv8TlFa1UUM91d
 n1YTBP69woqDCaNH3c82On9ynP6VwhpjMi0mDlgkzI1212WNEnrxBHIKz
 okk9DgtErcAa/MilofMm5Q2Kpr/Gjutg+vH1A2s6uPzbMI9yJvjs0lmmL
 3hO8/JT9WPRCDFUKCVxoVL0zvalbe2rB0LTlJuTGd9hCxaDCp4Ua9KQE1 g==;
X-CSE-ConnectionGUID: lcR2De3fTY+/mrdMeDceog==
X-CSE-MsgGUID: hRnwjG5iSMuwvzsVtEsMvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="60469677"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="60469677"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:25 -0700
X-CSE-ConnectionGUID: DkxfTvdwSWaMkjAGUmSeUQ==
X-CSE-MsgGUID: VSiDMEZzTke89qxbgd/eGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="188080085"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:25 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:24 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 00:37:24 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.41)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i9ootAN+iqLo4avxPSpLvz/K7OqhVZogPs9aLDwO/AjMjgxZX+M+0mQJzuuDJ3X0F/YZzI+7iuGRnKqZh5MlUR3eAwR+ZwBrqiccVj9i6h0akLzh8Uh3ClwSmr97VBCs8KKq5DDtUuVu+ASoLLjQYmFwqzDYjyRdcdiD6NBxKkTYQIY7Oqn2VmnIIAGXSr7G3SvRyLmALBbNwz5CmdMj0QpK8JDpp+KLNwDCAdioIsvseG/vsIQnWcBKG9FiyfWP5OLo5ojZe6N9k+wZM6X1/5ERqYrmrtQE6KVSCBQUVgQV8hHaoDTwoFU+qyRG2bE+fVfAbh1itaQUYvU5k2Lrkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F2W1h9LWdYczxh9VkfxNo2i063LcrXMl6OJ2Dhx4V+Y=;
 b=xBDNKtszSF53s6XBup/pXcrEMkmVXerc9/IT6Z8GMJkOPDVg1+QgIczFMcwf5TnFUg4M+yU9q016b3zsAODjTpchVT6qqwAd9VwP4ipB9kX52PIt09AecwHl/RXtKzO3QEnrvvE6TBNOh6IIi7CB7hCyGe+4PLbFtQ76Td5jX1xzPVey4r3U3JYWsYgrPmljscCnLmgl8ykV0rvrHAcUzCub8GYwVO4DcVoi+5JQ5JJS6boY2eOBckk+p5hgnrkaH9HguQTC9O6F6Rhy8YrQMpwQx/etKiJhMbpciNitKtRTobo7d21gjDnNtBkwvWW7UDays1k1fHSvKEbv3udOMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8161.namprd11.prod.outlook.com (2603:10b6:8:164::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Tue, 5 Aug
 2025 07:37:21 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.013; Tue, 5 Aug 2025
 07:37:21 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 07/19] drm/i915/tc: Move getting the power domain before
 reading DFLEX registers
Date: Tue, 5 Aug 2025 10:36:48 +0300
Message-ID: <20250805073700.642107-8-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 72f12637-965e-4ec3-521f-08ddd3f2e9c8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?z8JV9WZ0zAIOf6GAIJbu+qUDetWnbW1WLcIrm6irUhVp/pT2oJiwZ5xYTOIO?=
 =?us-ascii?Q?Mgxt68ALW+QzemCfwdeKuxrELcqYqSlmbOxG134P0sewIYxnI8UNOXxgq/rM?=
 =?us-ascii?Q?RHgK46h103Kho4fj1MPY5d35vffOppAeXANgfwnvnfDacvnAm9Xp0SXogVTm?=
 =?us-ascii?Q?9Z80VOCOPyNmzM49+ePFmnPZ5v8IgcHZLvZakmhqzwNuxvr7U8C+ZSlQA8mz?=
 =?us-ascii?Q?noV0IoI3s5R5TGBKaZKcZ6Nf2RkXkv5uVMVzDDgigRqt4WOKaJ6ODDU1xxaL?=
 =?us-ascii?Q?w6eKSDpmrL8ZEY6eYMDzXmxTnOm7YKV5GMGUzf8MZvcy1S0a0EfE7cielF5X?=
 =?us-ascii?Q?ucu3fKuaUMmaBqqbBevCxCvuETtWtK4lp2+i4xYWB2xajnGgM1lVD/etNPPR?=
 =?us-ascii?Q?K6l/M6I86CW9e2wszQl0vgJZp1j7mnsTl0RMtjAiGRwFindt3EmWtJ2n4zxN?=
 =?us-ascii?Q?PCwRaL0tKatvOd/2QSVXKPKmjQDcJodnZhB5aiq957Vd6Zw0hDq9HtudPm2u?=
 =?us-ascii?Q?NGJQcQxdNvb4aKxWvfbrADd6Xqo+Uw24FnkztJIrfrXQi6oKXnotjH3SON4N?=
 =?us-ascii?Q?oZ0uujLYlEbaJCdlpZ9SKKjHQAnERt+5ffPQFs11nUgd5B9sxyvIkwmOqGyK?=
 =?us-ascii?Q?3T4azvEK2Y6PXhDYtd8fJR4QxM1zq/gqqNyj4yPun5ZfLcyX3LOBf3WrgI/K?=
 =?us-ascii?Q?EhLr4v/GXTIz/3UuYi4DHqv1gnhw0tM1W7XZSPAnyOf8kDj9LhyG3ZxqkzG9?=
 =?us-ascii?Q?6yNMCYb8SqMZr1aEj6EWMF+Fsupy3lWg+C1AJ1s4QUyDmXvz6remQbjkLAn9?=
 =?us-ascii?Q?+Pbqjd9pYy0rnEX2bVDUm/dlhCXvGj7WQezgu/I2Ii00o4HPj1g/OjYej/PD?=
 =?us-ascii?Q?2ZQGCeVa7avWJtuy84+4BxqDqll2Mi7Pc87MoSY+yzDXIcB5/BfRDFZOUjTF?=
 =?us-ascii?Q?iXZkTaeeMV8kzP29EPtc7lL1noqAXQieVNuwlRpyZAXS8agDPUy91jR/SURP?=
 =?us-ascii?Q?NmJjILQ6v0GkZqbCAoK5QkXpflOV3HljYk6JUdOIby9Mk+ouYgSbZhAgD6hz?=
 =?us-ascii?Q?AwzhMtsCjdwpk/GfjpwZpWDpv+R1i8aSYoamdSaI06eDtJtp/aZb1EWddkhi?=
 =?us-ascii?Q?AVo90ZqZxS3x8i/iB6bjeNi8LNRB4UPAYXCcRRSjFtmCft4J7EM3dlFbj8QV?=
 =?us-ascii?Q?6rRFKOUGbcFvhlTpVi5I3DtG5+Uf3OKZWUJoHhEdCv7Z3TguNNdmt15LDowO?=
 =?us-ascii?Q?J8FCY/+8AFmndS3z7GKKJ9VtjZsgGwD/DewIQucqz5G5d8AwK44Gnj2uGri0?=
 =?us-ascii?Q?9sX1qk+8NJQhTpzX1hTS48m8BP+AFHEiDqyVQ9R8MJM91SVPBlWuMnPw5XrX?=
 =?us-ascii?Q?pk0ZEn6wgnFPxRcLrOy5979jkIcdXn30GrD7EQlCzVTkA3ZOQN1+9bCDJGV4?=
 =?us-ascii?Q?5YdtfIZMeLM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QciW/LVCtItdID4e6WupTSVPXGUU37ryBzekn0e06RxN8aZrC6CFdm20mqgk?=
 =?us-ascii?Q?gyXuQAzDMObxkGxhXD8T0Lu/tfz8zXBdHW8Hv3p5B+1+/nxhRNplIebH5B3j?=
 =?us-ascii?Q?movNgYeJVPu0aaAhlmx1Y5s7bwb+7naj/AmlgT+0G98oiEyksJKfU5e+4UGv?=
 =?us-ascii?Q?TEeg6sv3N11yQo3hKuu5gi3VYHbhFJanGvM6TIVE6dkB7vhaFSBTrAmeHz/e?=
 =?us-ascii?Q?nPr9qP/BXvgrDGQ7bkwP6ciPS3janUE7OyCqM6fwRsOqG5j4Pt2ovEAHPbse?=
 =?us-ascii?Q?9NRfTHgjQGzR5MT8eXTE+nGMUSCxx7tXuIj4iOwjvpzbX4U2B+Df75U0eyFw?=
 =?us-ascii?Q?U3ngD0I+0XGdVz7ccExHA34gMvfEyOAFZCREaMJ3TLkKp9wxsu+T4h0u80N+?=
 =?us-ascii?Q?sncuTNnOTw9Y4UJtrrT9dktXdALuv0FDGGVxF5u3aIH83vD421N94kXK3+2a?=
 =?us-ascii?Q?OBXxpXtHAb3uMAPkLzPfUX5y/szNdvM6rOMhHMoWAz1TyX/51Vz2xMvnGB84?=
 =?us-ascii?Q?ZwFpSMX12UpF2/fs4gMwLZ5QYL+75DmCbHh0zmTIzJKMDFRbp2BvEx3Nqozf?=
 =?us-ascii?Q?Ywx1sAps7B2NNUwBgaOzIfdlBbmWYiD3TX9RhKp1RrR2mFryjMaTdDjCnpka?=
 =?us-ascii?Q?hWPsYgTt6Yb36dWtrnu8nlwe3QhZEC3CkT9fMC6kmJGJB/eDqHDR3yZCeCIz?=
 =?us-ascii?Q?YSFqzWNCoI3PoyLaKZFxrULEpAPTSdahEi8Z2qdTdXOgIEg1UURTD8+8vYs+?=
 =?us-ascii?Q?KiI48ctnCmHFxtk8E2KToDoZQ/jUSrwMDWg+Tu37Dj4vA5jL/D+N/00asIRi?=
 =?us-ascii?Q?uVo5kh+ZYf2ooDjbVTNWKvmQZBx0jsRlPHZRcaehXy75kJPWMKNmXvCCIA7g?=
 =?us-ascii?Q?vyNXfYyjXbN2QCpwcEvmQAvbDoOuEwSFvMfRKPC/wYHW0vQ7+dG0t3v4CaST?=
 =?us-ascii?Q?QFjZPMJ0N59SLM0+zO2g4U4abqiF4W/qlbbDaJP7gDYNJeQljfGE+jO3wNgu?=
 =?us-ascii?Q?FbfcS13bkeMPfbtKr77/+2dPfviOEO7rbfoOZbF0NKEj1ppz7/fM9uzoaDxh?=
 =?us-ascii?Q?+kTa9yPQoSoNf0PBqmCGgahKwhbfUKQlRWDsBmPM/jB4p2z/Li4UKN6fmnl5?=
 =?us-ascii?Q?Omxj60QkBjiFNhmX5aF0caWTMlN/sw39RHAv7Kwu6bb8g6OGwIfeItnKWRyL?=
 =?us-ascii?Q?aK+7It60+DTAb9ja08dAMQoOVUtmCAqFjbiFlSA/IarGL5d0ca+CEh3T/Z6B?=
 =?us-ascii?Q?Cc4lH+Lfy5aujI8z/q7YWoZlcx3fbEQ6lezUapX9pXcbgcsfej0mqmDudmhE?=
 =?us-ascii?Q?A+1WpmIUhEOfusFr9qQAt5q+WWYob98iWNZq+kXlPnXMirIt9snkGS4vl9KK?=
 =?us-ascii?Q?Fekxh4VieqzSncyk+fn2STQ6bca/Fv66P3B74jWE8CZgPPsZozW1/UGKUMP8?=
 =?us-ascii?Q?mPWnYDEmk26CxJ1VkX3WEy3Hke4Yu06yWCyFQLhCpWyUN/gj9+u4zKhk83xG?=
 =?us-ascii?Q?ZT09Wxd5dtEJWhtMlNocCCJjBKDuB37aXBRCScvXHPw9eGuajvCXkAkNznBx?=
 =?us-ascii?Q?RtNGn58Mw24kunrKx0UmueQnGPuxmv9Vdx1GT8nFtajuu5vuHrBHRO/CFXcB?=
 =?us-ascii?Q?TXXuIbqiTTsy9LERwUHjMJDZMxcQI+JoHQdyQYcXDePT?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 72f12637-965e-4ec3-521f-08ddd3f2e9c8
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 07:37:21.7774 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VPi5Xl0y/JNG1wfv4kXBB71mM4hnxvsKcbKMHPELmzK9A2L311P1H/Zo+B7wLYYNdg/PRz58SA7M2BDTrLJZ5A==
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

Move getting the required display power domain right before reading the
PORT_TX_DFLEXDPSP and PORT_TX_DFLEXPA1 registers, similarly to how this
is done while reading the other TCSS_DDI_STATUS PHY register.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index d89c174bcb836..4bd827c2187f5 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -269,9 +269,11 @@ static u32 intel_tc_port_get_lane_mask(struct intel_digital_port *dig_port)
 {
 	struct intel_display *display = to_intel_display(dig_port);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
+	intel_wakeref_t wakeref;
 	u32 lane_mask;
 
-	lane_mask = intel_de_read(display, PORT_TX_DFLEXDPSP(tc->phy_fia));
+	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref)
+		lane_mask = intel_de_read(display, PORT_TX_DFLEXDPSP(tc->phy_fia));
 
 	drm_WARN_ON(display->drm, lane_mask == 0xffffffff);
 	assert_tc_cold_blocked(tc);
@@ -284,9 +286,11 @@ u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port)
 {
 	struct intel_display *display = to_intel_display(dig_port);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
+	intel_wakeref_t wakeref;
 	u32 pin_mask;
 
-	pin_mask = intel_de_read(display, PORT_TX_DFLEXPA1(tc->phy_fia));
+	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref)
+		pin_mask = intel_de_read(display, PORT_TX_DFLEXPA1(tc->phy_fia));
 
 	drm_WARN_ON(display->drm, pin_mask == 0xffffffff);
 	assert_tc_cold_blocked(tc);
@@ -324,12 +328,9 @@ static int lnl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 
 static int mtl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 {
-	struct intel_display *display = to_intel_display(dig_port);
-	intel_wakeref_t wakeref;
 	u32 pin_mask;
 
-	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref)
-		pin_mask = intel_tc_port_get_pin_assignment_mask(dig_port);
+	pin_mask = intel_tc_port_get_pin_assignment_mask(dig_port);
 
 	switch (pin_mask) {
 	default:
@@ -345,12 +346,9 @@ static int mtl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 
 static int intel_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 {
-	struct intel_display *display = to_intel_display(dig_port);
-	intel_wakeref_t wakeref;
 	u32 lane_mask = 0;
 
-	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref)
-		lane_mask = intel_tc_port_get_lane_mask(dig_port);
+	lane_mask = intel_tc_port_get_lane_mask(dig_port);
 
 	switch (lane_mask) {
 	default:
-- 
2.49.1

