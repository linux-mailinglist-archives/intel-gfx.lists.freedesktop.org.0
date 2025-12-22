Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0B5CD6939
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 16:36:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A983410E6E3;
	Mon, 22 Dec 2025 15:36:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FOZtXdap";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1293C10E6E3;
 Mon, 22 Dec 2025 15:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766417786; x=1797953786;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=jDS+sF5Jgh1btc+mPf3rv8l5q/tT5swMhLQUzaa0/pE=;
 b=FOZtXdaph+jnbuJLDJ3QuPo26UFKbCGv6bomQ05fTrPtCLBCGPIdVzVZ
 fPSvyveWnZ1sDjf/24bSi2fs5w3RRsYDJ/I+I5sNuQ8z4UvpJ5mVDUOYW
 VLhebZKpnjnWBwxYNAFEwiNWp1L+xz/D/D/Dpqzw5ci2iFvQljSkr6IEn
 CqCAQZpw/kSX8X0bj66pXiHPYtoWhBM+j5fHi3CEZL1O3qXL5ivKI1t5x
 CHV4sMKtp38cnPpODgZ3k77kl4i38vYmRXrc1lFL7VVjlkt9G/kr4zrld
 kumZcN2SMBMfDStu/pqwBTLJLEPOExZtpVKBE1V/Ce7uTxh5fDL7Atkze g==;
X-CSE-ConnectionGUID: EHr3iYw4Sh+szk/WcZU7+g==
X-CSE-MsgGUID: kbuBqOj8S9KG2vs42kPTXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="68211482"
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; d="scan'208";a="68211482"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:26 -0800
X-CSE-ConnectionGUID: fPNFGrj5RHmhSHkJKaec/g==
X-CSE-MsgGUID: QEFXNGMRTyKQZzFNsa1b/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="199854958"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:26 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:25 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 22 Dec 2025 07:36:25 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.24) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GGIEq2Suhmva7mghvsEFlHGNtiHBEoQ3kxjEASFnEDgXqJ80CFFq/u/EZ9yg+dD+MNCKV7x6H/u7piETfBGRHcU4Fhk9z3rjl1K8o5bFw+rVDZdcrNJfeKg0fu5wsA67Xf2laDLOv/XSAhRbWwLYxzUmm9MfDa8bPTLCW7HNyVQod1xinYCb6ct0Cp9EB+pghhHI8F5O1n5PnFbIOz2W3944xXiwg9TJ9BbbzHMw4cUh6JogLhTwqEKcInaG1he0Awd//0DvAPm1qlkU1UNGIf8JEYreHQfJIflm0fhVe8pE6G4SxL6uMewa/zt/rUAT+is6EQK79h7vEI9dmhpJOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d+uu6OcoR7/oUTEO5n2VNklp2A00NrBs7XjbgBU3sU0=;
 b=d2ihHgCToGYCjuYXlzremNgqjoy4CWyl+JYGNBCIh9JnqGgWa8pgBhXH8lyNnFzT8gqtk3mZqkNIAdwPqmv2YrbmjYJxpPsUcr8kVl7QOdj0Nz7Vo6CwGY4N0aGopkBpnct/HP+aephFPMWNsrHTqt2T4yt3zfZukbI7rPueuitG32ejRyh//kwGDFDeruZMgOkMesrM1TlamUPbEztfoAUt8DMxU7yxZXI4cP47QbQpRPIsh90IqCj3pVEYJCHk4g+tliPNw4VOEUhqEdVLhldkHi2lQvnsXTrDMwzn/eRDFXfrfkukJ/rp4oLqVYD0LPSDkmO4U411vMPbt743GA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB6912.namprd11.prod.outlook.com (2603:10b6:303:22a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.9; Mon, 22 Dec
 2025 15:36:23 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9434.009; Mon, 22 Dec 2025
 15:36:23 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH 12/19] drm/i915/dp: Unify detect and compute time DSC mode BW
 validation
Date: Mon, 22 Dec 2025 17:35:40 +0200
Message-ID: <20251222153547.713360-14-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251222153547.713360-1-imre.deak@intel.com>
References: <20251222153547.713360-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0569.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:276::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB6912:EE_
X-MS-Office365-Filtering-Correlation-Id: 1fae7c8c-f0c9-4020-3f8c-08de416fdca2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?2eny69WJ5GAwLW8A/8JiMJzCfKiXH7Sb0MBE9oGzHFZ8E126EduaC+GXYGGS?=
 =?us-ascii?Q?uIxa+nn2zHsQrQmhxbBJWtyprCNiq0gLZkYSNNMFrSUr9dIyW/a6f60VdfXS?=
 =?us-ascii?Q?+B3uRLw5BKe9d1CAosZaAb0wRRm13AopgbqfPf1S0TQBR/Lqq1Y/oUDsWedN?=
 =?us-ascii?Q?UYPSBbocmCyvGAIZC/aQUntMK7sZ03jfuTk80v1szjd8gXgYGN//6Bmri0ez?=
 =?us-ascii?Q?Ey0xwwcyQsX2T5gwG2oDdM4Dea7QWAP9GXhF7kKJqJQ2u7RVNkMF2R7xAgZy?=
 =?us-ascii?Q?rzOOaSYSsSqUwOUKo8SsmEIQsD+JdqFTAEkxqGrN5O/UY96UsXSUVecsrHiy?=
 =?us-ascii?Q?ret4XmccplpucVHiAQYXC+Ry7kdoxXzpnu5Hda32RZAC/rhdtDQY3QXUL8Af?=
 =?us-ascii?Q?H1fO9Y/vEXGTetKtg0japgGs/TpjEa/V43c0WbCzzMnDVKWqgrUek2AmC4pC?=
 =?us-ascii?Q?RVIpJdpHLJ76gcbnlv9Lv1A54x07AwlZ1+WHmwuwosfIlyStB9Kj13qJ8QqL?=
 =?us-ascii?Q?jv0jZBRjg836X6FWzpGik2Ud82J6ruPhC2Yht5iUVjN1AJNY+AUYfWG1s+Dh?=
 =?us-ascii?Q?m5G14rxKdT4tYG0+2HG+f8m+4Z0AvZtCwpKfOwjFJO0Iai1Ua/N6aqYxJS1X?=
 =?us-ascii?Q?zW8dBDJUHcbYPuNE8qF0DvGgxF2sVdzzSpDpXPV91y6WrIf1Fi41EWBB4TXC?=
 =?us-ascii?Q?pbpYe833NWweR+DylYqeNeItBHrLQjNh9n+tvncNkLfdW/XXEghZ0M8xDPqW?=
 =?us-ascii?Q?nRDtwObSj/g4GheLvvzQEAxnSNIvT+R9mdDCwvnnqwZbiWXTmoQXmo2aYH1Q?=
 =?us-ascii?Q?mo1UTu9vuTMsMwthbt3p0t0e5ps9If4fxMf+6y5kKg8v2Hru0F5SaJWmbJoE?=
 =?us-ascii?Q?WBmQXtpwNuVPON6yDlWtBzJlFG8/suUtk+NY7dqtz/Tnoj6nsMFAq0aDu763?=
 =?us-ascii?Q?8ldwoFZqdwHLNIjFCn0KIZ/q5+xVRSZ8KltM3M9QnWvGr3wqityMUautYwo2?=
 =?us-ascii?Q?PC724D/tQ/1tNGDy+ZUv6WgaNDu0L5xDu8knO9/23L+LVSoIJUI5D6dm4sdh?=
 =?us-ascii?Q?5Ywn5wLvcczoqTCU/7rSqTXr/2x4Wcs3Xh+mhTJBIcQuzppwYzB2YPLy2Pg2?=
 =?us-ascii?Q?327RIkbq1dKnGsZ5LrJGR1TmypknaKBO5YxTijJdI98f9+ksAtFttJk2E/D6?=
 =?us-ascii?Q?XQZGoWDWXN6EHQe2DlPck9+aMQV8syHCg9E8XvgE5a9/fuYjtdtxwP8BsWrt?=
 =?us-ascii?Q?K+Ts2WCIFIsReM/qH2W/5LNMKKotBMnsuhcDNN0rBUKeHHhBtwlSMDquYbPY?=
 =?us-ascii?Q?qLexE1m+XX9wcEKtcxFZMJgZKEayLX1rivKc9T3mmh5K2d2E6uTo6qBRZKVY?=
 =?us-ascii?Q?MgAizOo8E7NiZeL7JCzZvgjr/VGRBHSfXuoHraIpqJgqWCg9RYigGPN0hwN2?=
 =?us-ascii?Q?GVsrC6uHRwEKi3Gaul3v7Yf57H/1Z22Y?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wDjsktrV7d3gLim29pEZdV+FimLh/1vG4+V+GiLfP7MvP29wCmYZ49ZQuuuX?=
 =?us-ascii?Q?Yi5J279PL0VcE4bkHM/AFwPJOx6NkGBy13ZgyuDhj3+RVxe8hE6hl3CdQGn7?=
 =?us-ascii?Q?3qzc85CLXGYlO78YKWm75eNdxTz2vgxvqaFUd+fRQlrTyONMx/jik3JAtmhz?=
 =?us-ascii?Q?dSF11nWcP7iGXiwK9TnqrN4j4j3IyVOFeeExDAGjZg2Qylto7Aa+FKs1+aas?=
 =?us-ascii?Q?Rpo6aI+z9LV0jA+y8lsZQ5L3UmRMjdfO7Clp6Qep7IE1wkauld7iFGr793Y2?=
 =?us-ascii?Q?nPjvau1oK0n8ddjp/Gt4RZadnHO7kzQCW6Txy8EKCGZrAdAZb+fV5uD+higy?=
 =?us-ascii?Q?vnSnZ804QNTWciqmj8T1qGM7/KRwxqOFiRdk/07nWBTdzBhzdZM8YaITIPEy?=
 =?us-ascii?Q?7wxGvTXMI1sdsY+eFD9NwO+hr+nYnTcrd7qlDuvlV2zIl/jqF+GhrbAVnA3x?=
 =?us-ascii?Q?KXsy1IR09obLagwmCGE+EzwCAkqOEySylgpt2amI9qPQGAtzD+8qBcrlJT4H?=
 =?us-ascii?Q?JT2ej/EPe5IJGAXZuAopBzwWakxbCIdFL5oA0hqkWZZ/bVjyiMuknHg8rygH?=
 =?us-ascii?Q?eEV0kxANe4cPDrjTknmwjmLH1qIw9o6W22CMcHn7v6MtS67fmBxAh2eR7QSu?=
 =?us-ascii?Q?//JPth1fKwWbimwaJ12/IDRgkhPQtShaH7q++YrpVMiq35ZgTsoRntRgZ7Ln?=
 =?us-ascii?Q?+A+QdTEqXjRHxj3l0lcPXxrJQuJL66QnLMPRrwLGrD8BS/wLPhEXeqkgbtDL?=
 =?us-ascii?Q?m95zJOLPbPe3Ujd2Jzh8eAd4dL/4MHN5FwG3lkq4yIt/taZU7n0lfJvEDgPx?=
 =?us-ascii?Q?P+nh4YgOfXzPnHwURs9si+SrxkOrRzt5PDlM174ftgFuj2JftP+hu7Jv+y2A?=
 =?us-ascii?Q?mSDpxHptgIr742QdF88trmaku+jwTob4s5F+L4d0NQFWd4y5YmXDrQc9+BSw?=
 =?us-ascii?Q?Od5MQRluLsVazqS894HNFA2M/Aa7wl3UhNCfT3GRrlF9fNHOlq6S5ARRztAZ?=
 =?us-ascii?Q?zh0B8vTehq7rma5J5l9P8PjuOpxYQlNSOfTgrbYIX/bGsnHtSBLHkuXSQVZp?=
 =?us-ascii?Q?k/bMcvpkJG2wXlTJfPrFhFIuTXA20s7i5G0IdSY2PODubxKoRjsoTV1Ca46W?=
 =?us-ascii?Q?j9LOAiGB0Rtsi/XSEovzoaqT5w9HckD54j50FgGg5EzSlbwjup3djOQMycoJ?=
 =?us-ascii?Q?d3QZIvWLm68z7xoTYQguF5suhRFx8mLUS0ooxSiL5cpVW4N9gLTEF63SBgA9?=
 =?us-ascii?Q?o+UKi+QeDq4LBEkvB0msW8sTnN7IhSiHD5KhfE97vhLLvBIGJHXoGaqKa+9w?=
 =?us-ascii?Q?dO1B1E+lzxk2VuQrPxmvpqNbbohMwZpXUt+Zoqi/W9evjPJWbwe4waZ9OOhg?=
 =?us-ascii?Q?nnFOqfZ3n2NloQyT5eXJE1WnzcsD8rGFSF11ytm6zW6wVMce51vn/Zf2l/g4?=
 =?us-ascii?Q?XHm4ok7Gm3Q5hpf6ijbHHmxYxgIFF0/tEiDKtizqNEIQ9y42Jn22tJdt/2C3?=
 =?us-ascii?Q?56e/+M63tuG5jHjPdhIzbpxFx+3KP1o+wWnFYl2lophpJnKCF7cSRdLyCy9d?=
 =?us-ascii?Q?8+lBO31wdl/P/OzrN2KMNIfg/N+JX05CzCxuHq/sTpyWFzTm9j8ohw13Nb/D?=
 =?us-ascii?Q?v9zkFfOf5MU7ld0CGs7nhpTojHTF+Fz9mnxs+UhIwxX6i0l9UIL1+8IeMEhb?=
 =?us-ascii?Q?dX5mUaUIL4hPHTvyWxkZQ1PzaY68RyGVh+ItApymQvz7GaJp35/j45UOJUwR?=
 =?us-ascii?Q?c8J6firuxlrv9H7503luh8X5rV2aVAK4eO2WfG+0ITpaE9WZ6hkcwhWgbH6S?=
X-MS-Exchange-AntiSpam-MessageData-1: tOvc5RCs69XxIQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fae7c8c-f0c9-4020-3f8c-08de416fdca2
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2025 15:36:23.4013 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9RdvKyBpLP9P6xDB2qZvwy1IrIFVTDtUjADoM55KxPdUCPMLKeeBgVzQXa6vWFs84OrVG5xeFyLeiDrzhfV40A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6912
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

Atm, a DP DSC video mode's required BW vs. the available BW is
determined by calculating the maximum compressed BPP value allowed by
the available BW. Doing that using a closed-form formula as it's done
atm (vs. an iterative way) is problematic, since the overhead of the
required BW itself depends on the BPP value being calculated. Instead of
that calculate the required BW for the minimum compressed BPP value
supported both by the source and the sink and check this BW against the
available BW. This change also aligns the BW calculation during mode
validation with how this is done during state computation, calculating
the required effective data rate with the corresponding BW overhead.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 137 ++++--------------------
 drivers/gpu/drm/i915/display/intel_dp.h |   8 --
 2 files changed, 18 insertions(+), 127 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index abd7632666183..e59c06b6e0b99 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -896,49 +896,6 @@ static int align_max_vesa_compressed_bpp_x16(int max_link_bpp_x16)
 	return 0;
 }
 
-static u32 intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, u32 bpp, u32 pipe_bpp)
-{
-	u32 bits_per_pixel = bpp;
-
-	/* Error out if the max bpp is less than smallest allowed valid bpp */
-	if (bits_per_pixel < valid_dsc_bpp[0]) {
-		drm_dbg_kms(display->drm, "Unsupported BPP %u, min %u\n",
-			    bits_per_pixel, valid_dsc_bpp[0]);
-		return 0;
-	}
-
-	/* From XE_LPD onwards we support from bpc upto uncompressed bpp-1 BPPs */
-	if (DISPLAY_VER(display) >= 13) {
-		bits_per_pixel = min(bits_per_pixel, pipe_bpp - 1);
-
-		/*
-		 * According to BSpec, 27 is the max DSC output bpp,
-		 * 8 is the min DSC output bpp.
-		 * While we can still clamp higher bpp values to 27, saving bandwidth,
-		 * if it is required to oompress up to bpp < 8, means we can't do
-		 * that and probably means we can't fit the required mode, even with
-		 * DSC enabled.
-		 */
-		if (bits_per_pixel < 8) {
-			drm_dbg_kms(display->drm,
-				    "Unsupported BPP %u, min 8\n",
-				    bits_per_pixel);
-			return 0;
-		}
-		bits_per_pixel = min_t(u32, bits_per_pixel, 27);
-	} else {
-		int link_bpp_x16 = fxp_q4_from_int(bits_per_pixel);
-
-		/* Find the nearest match in the array of known BPPs from VESA */
-		link_bpp_x16 = align_max_vesa_compressed_bpp_x16(link_bpp_x16);
-
-		drm_WARN_ON(display->drm, fxp_q4_to_frac(link_bpp_x16));
-		bits_per_pixel = fxp_q4_to_int(link_bpp_x16);
-	}
-
-	return bits_per_pixel;
-}
-
 static int bigjoiner_interface_bits(struct intel_display *display)
 {
 	return DISPLAY_VER(display) >= 14 ? 36 : 24;
@@ -1002,64 +959,6 @@ u32 get_max_compressed_bpp_with_joiner(struct intel_display *display,
 	return max_bpp;
 }
 
-/* TODO: return a bpp_x16 value */
-u16 intel_dp_dsc_get_max_compressed_bpp(struct intel_display *display,
-					u32 link_clock, u32 lane_count,
-					u32 mode_clock, u32 mode_hdisplay,
-					int num_joined_pipes,
-					enum intel_output_format output_format,
-					u32 pipe_bpp,
-					u32 timeslots)
-{
-	u32 bits_per_pixel, joiner_max_bpp;
-
-	/*
-	 * Available Link Bandwidth(Kbits/sec) = (NumberOfLanes)*
-	 * (LinkSymbolClock)* 8 * (TimeSlots / 64)
-	 * for SST -> TimeSlots is 64(i.e all TimeSlots that are available)
-	 * for MST -> TimeSlots has to be calculated, based on mode requirements
-	 *
-	 * Due to FEC overhead, the available bw is reduced to 97.2261%.
-	 * To support the given mode:
-	 * Bandwidth required should be <= Available link Bandwidth * FEC Overhead
-	 * =>ModeClock * bits_per_pixel <= Available Link Bandwidth * FEC Overhead
-	 * =>bits_per_pixel <= Available link Bandwidth * FEC Overhead / ModeClock
-	 * =>bits_per_pixel <= (NumberOfLanes * LinkSymbolClock) * 8 (TimeSlots / 64) /
-	 *		       (ModeClock / FEC Overhead)
-	 * =>bits_per_pixel <= (NumberOfLanes * LinkSymbolClock * TimeSlots) /
-	 *		       (ModeClock / FEC Overhead * 8)
-	 */
-	bits_per_pixel = ((link_clock * lane_count) * timeslots) /
-			 (intel_dp_mode_to_fec_clock(mode_clock) * 8);
-
-	/* Bandwidth required for 420 is half, that of 444 format */
-	if (output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
-		bits_per_pixel *= 2;
-
-	/*
-	 * According to DSC 1.2a Section 4.1.1 Table 4.1 the maximum
-	 * supported PPS value can be 63.9375 and with the further
-	 * mention that for 420, 422 formats, bpp should be programmed double
-	 * the target bpp restricting our target bpp to be 31.9375 at max.
-	 */
-	if (output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
-		bits_per_pixel = min_t(u32, bits_per_pixel, 31);
-
-	drm_dbg_kms(display->drm, "Max link bpp is %u for %u timeslots "
-				"total bw %u pixel clock %u\n",
-				bits_per_pixel, timeslots,
-				(link_clock * lane_count * 8),
-				intel_dp_mode_to_fec_clock(mode_clock));
-
-	joiner_max_bpp = get_max_compressed_bpp_with_joiner(display, mode_clock,
-							    mode_hdisplay, num_joined_pipes);
-	bits_per_pixel = min(bits_per_pixel, joiner_max_bpp);
-
-	bits_per_pixel = intel_dp_dsc_nearest_valid_bpp(display, bits_per_pixel, pipe_bpp);
-
-	return bits_per_pixel;
-}
-
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
 				int num_joined_pipes)
@@ -2708,26 +2607,26 @@ bool intel_dp_mode_valid_with_dsc(struct intel_connector *connector,
 				  enum intel_output_format output_format,
 				  int pipe_bpp, unsigned long bw_overhead_flags)
 {
-	struct intel_display *display = to_intel_display(connector);
-	int dsc_max_compressed_bpp;
-	int dsc_slice_count;
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	int min_bpp_x16 = compute_min_compressed_bpp_x16(connector, output_format);
+	int max_bpp_x16 = compute_max_compressed_bpp_x16(connector,
+							 mode_clock, mode_hdisplay,
+							 num_joined_pipes,
+							 output_format,
+							 pipe_bpp, INT_MAX);
+	int dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
+							   mode_clock,
+							   mode_hdisplay,
+							   num_joined_pipes);
 
-	dsc_max_compressed_bpp =
-		intel_dp_dsc_get_max_compressed_bpp(display,
-						    link_clock,
-						    lane_count,
-						    mode_clock,
-						    mode_hdisplay,
-						    num_joined_pipes,
-						    output_format,
-						    pipe_bpp, 64);
-	dsc_slice_count =
-		intel_dp_dsc_get_slice_count(connector,
-					     mode_clock,
-					     mode_hdisplay,
-					     num_joined_pipes);
+	if (min_bpp_x16 <= 0 || min_bpp_x16 > max_bpp_x16)
+		return false;
 
-	return dsc_max_compressed_bpp && dsc_slice_count;
+	return is_bw_sufficient_for_dsc_config(intel_dp,
+					       link_clock, lane_count,
+					       mode_clock, mode_hdisplay,
+					       dsc_slice_count, min_bpp_x16,
+					       bw_overhead_flags);
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 0ec7baec7a8e8..25bfbfd291b0a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -143,14 +143,6 @@ bool intel_digital_port_connected(struct intel_encoder *encoder);
 bool intel_digital_port_connected_locked(struct intel_encoder *encoder);
 int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 				 u8 dsc_max_bpc);
-u16 intel_dp_dsc_get_max_compressed_bpp(struct intel_display *display,
-					u32 link_clock, u32 lane_count,
-					u32 mode_clock, u32 mode_hdisplay,
-					int num_joined_pipes,
-					enum intel_output_format output_format,
-					u32 pipe_bpp,
-					u32 timeslots);
-
 bool intel_dp_mode_valid_with_dsc(struct intel_connector *connector,
 				  int link_clock, int lane_count,
 				  int mode_clock, int mode_hdisplay,
-- 
2.49.1

