Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC3FAE9808
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 10:21:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9193210E2A5;
	Thu, 26 Jun 2025 08:21:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kuL59JsM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F5D910E28D;
 Thu, 26 Jun 2025 08:21:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750926071; x=1782462071;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=0AK7REGbB0Ppon5/txEk61rPr8OwvhaCsmV4xeEvVr0=;
 b=kuL59JsMLYoWNK0/3rOYfOrcEcuXzitCXV77dwK/6H2wZksucDizJ9hg
 kSNSRODzsDamHy0twG2phj+pLttkZeerupX6cNQ7hqiz5OeTrSZB3lYeQ
 YB3smxE7laAKYoKfpV38+QHL5P/QyuaW2DJRX/3tS9jcX91XJVdAJden9
 W39Fpc9kcf+gcbfIaywAuf/IzbgaiXahvSirC1Uc7B3WE4r6n+CZB1O7g
 5TsBOB7oSFHKiAvt+KkQJqpYoJIN1mF6CLcByWrVoyhTpV2ZNf2qSjK/p
 XOZmEOUkYvZemLdrIsjIUrjJvVfpYM2ASA2cYF07vA4FlHcUQLLY1OMr4 A==;
X-CSE-ConnectionGUID: ZmfOKg1VR6+fO7lMGkUrug==
X-CSE-MsgGUID: hXEjxFQmRHa3b6ji38/1hg==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="57019324"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="57019324"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:11 -0700
X-CSE-ConnectionGUID: hOc0JZPwRaalrkis/7+EIQ==
X-CSE-MsgGUID: neMSzGJATEyDhMWBB3VhJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="152069921"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:11 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:10 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 01:21:10 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.54)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XHAnfP2c9dJuP8qhzSE4yUB19UNyyxnsb4cRVJ9g1WDmrClE03SmzKulFR1jJCsk6FWZ3gZJ4lEezquAUNw9kVcrjNkB8zDR2e+vBm7ytS3ev/mdDoH40jo3JQAO+7/P1jOb/pYxcWMq1Xkzs5IFFJkezXpOrpAFQGQ+oVqq+rCGmAncsO2lHDczhjNp1h7ysib02gnMDtoZ73p1BWIECokC8lolvfSlsq4NvVPkvBgbFmEDiUQeHA+vsy13FqtFvkTtyS7hdfQUewwsePewdSVOvWG5W9ON2qLbsX1U7cBI00JtJlRKDv8a8cNN20aFcrVRPVfZlPACCpsThsIWfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cju36NvKRsV4qrF3i5vBFH2u6+af+TAjfwH3INz2uII=;
 b=ZS6q7srhMJ8UkqflglzsGbooDNQkDuli5nKLXlWMpqLFfJnXAZJz0FNJ6Hp91b6gCDdwGl7pwS96PR+rTcBBbF0LFpcdCupfAtEpTn+tRRPS6+bf/LZvdPtWvkuhPPYl1pBrw+Dq6w3w7ay6hXy1dDmj1LgG+N0khnvrMdi1RpWZJbjzTjVK0sQymEV/BWYFSPRmzfIdn/N0erqqVXWuPBj991VEPxWuGkIA+5v7RzrthfUh9lc7jfS+M35Pa5gJok2C2X/SDB+JLW9vVMjMau2WdeRk1st71HgfvT3Z+oeYpR7zy6vyX4vF/rdLuRgFHefl3V3PvZXA1P0FLXGA2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ5PPF8EC896901.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::844) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Thu, 26 Jun
 2025 08:21:02 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.021; Thu, 26 Jun 2025
 08:21:02 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH 02/20] drm/i915/dp_mst: Verify the link status always the same
 way
Date: Thu, 26 Jun 2025 11:20:35 +0300
Message-ID: <20250626082053.219514-3-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 3eed6de9-5871-4254-985f-08ddb48a6360
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?bIFWkX8zgXVGWTNHnOOunqB+IaOjgTo6G1X97AvgVLjBHtxZCnrM2N+G9XA+?=
 =?us-ascii?Q?UDj9lhsKLTJgimNgtU2bSoEWcxjUMFOTQRF+k7UM3eqTuX4SDOWbSOlTf0SS?=
 =?us-ascii?Q?zf7o5pP40noiZsisxBhn5Hi6hr35WjlDwMyySaY1uLwNwirhyURwk2y9qQLJ?=
 =?us-ascii?Q?drRnZ4gv+E6wAqEtdwagtveBRm+wRrgGm0KG93P5WqosAcRggVJMqTQmWMrZ?=
 =?us-ascii?Q?rvLfo3QKM9IlrinrqSH8QVABL/1w+RwxWjeOrmtxfYeP0ipMYbi8/WMihtBM?=
 =?us-ascii?Q?WKp4VxRZ1y6kYiVj3RJvshJXzR5frSh7lv/hgSUG2iMuzC1eT4KSa5+1uPfy?=
 =?us-ascii?Q?B0gWeOxU7Tc3q8R6zmqLmiYNFq0mnc4ue7hwonoM1D8LTLfOm+8GEzT/aOUB?=
 =?us-ascii?Q?W+J2DEDqmTwCQG6U5UohTirfAqXv6fdPqnWqVCCDebK+ITknr5/+G9VTLM6K?=
 =?us-ascii?Q?yGoOY0bLxt/Q+O3kqcYO+GyzCybj9eNhhECxZWacQzAaFTLGVG8qMmTefTOp?=
 =?us-ascii?Q?OBdhb7fPNmh426Jw7SvspiXfPhIAjHH0LBIiXrBd50+nFt7cMkHz5V0w4ntC?=
 =?us-ascii?Q?p4Sw5rMROfK+2a2tGqhQjx8yrQEYXGkwKorQHgFeUtKupUSaxmXwtF7G4Oj9?=
 =?us-ascii?Q?dqv2QfcfbIrWMfSb1I/PzqZaNmRpYE74+qGxunzqPXB8BtTH3fG8tt//hHJ2?=
 =?us-ascii?Q?tekVitlLfcxxPDlnXnbXc5C6f8vUbDmR2QAEId25OJt0LnUfl5/TaDsBWu3L?=
 =?us-ascii?Q?xo6wY+rjoAI8/ePM1i9TzXgyDoVGKO5bp+7l3bgSlVrM+aQMTebuzFjCoCxy?=
 =?us-ascii?Q?M6GihyNp9KeOKuexi8VAag1jVx2QAIsx6Z1VK+YGNhA4796rVcn5qdQ8M/ON?=
 =?us-ascii?Q?gT3Eef/dk2aw8BRJHbJselAGoTEBIo0TLBFp47riuTKt39EkU50p3XJsuoz4?=
 =?us-ascii?Q?C8GU1dkwGRplKNmHdhLwLmCYErOiw6x/0ra0WJNQumgJMRiFNjnPWJreBDTV?=
 =?us-ascii?Q?ct1hehkmABHQnholufypq+PLwNtk5yR93VYh09Ctr3zxGSBZCHARWsRfSCyg?=
 =?us-ascii?Q?2r0z991nX2qsqoBbcFnL5YF4771ZBGY9zIXq+jglWi30fexcRO/5QCHWxhK/?=
 =?us-ascii?Q?b/R55hiFRQdpyZxmzQt7oTqeje9x+QakQcfGP3b/GsmS+j5DQjMOwCyBA/an?=
 =?us-ascii?Q?WeCU0ShenA1Aj287D1tfpfz1aDpZBTJBX/SgfEdKhUSz9V9cGzfdqUQKJ58g?=
 =?us-ascii?Q?Ops9RAs7MVDpG9cC3TPW+AYx21ghJIe3NsI5ra8iwM7S6NqdbxcoecAuj8Qc?=
 =?us-ascii?Q?GfdLMNhC/JNRPTyxLbNxifhtGgk/yC07g1mfr6xl8KkadLD5I7lvkWLC3pA9?=
 =?us-ascii?Q?9Iqv5Rqfqtk1IKpxQE19wGYHusuHUfo0hegMhJPUzHvhT7+i4zPf9LID7Ti4?=
 =?us-ascii?Q?3gqFe81k1F0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iPkTu/QStDSIUs/Y9+tdqR0lfgwiR/jedUbu/vRbBAIayBcumwRe3u+EuVMq?=
 =?us-ascii?Q?BASEuRROhLibtWSCyDLhXFv7jRv4DoUtzMU8JCIx3LG3tGbX6fs1X9omh52V?=
 =?us-ascii?Q?+VFaXBnkAnqR0C3SAUmuRZL4/YuLidGw800lDqLJJUGIK4GG0xoeTrymSSjP?=
 =?us-ascii?Q?f1AqzI4QYxbcZ0EUSWNHz4zllkuEnm0WsRTIPD5XTCcA/Q996xyNwPPCeAv6?=
 =?us-ascii?Q?5IHdg/ab7OEwU9MryEUs0iUAMKW8rIdXNSAsoK8xWmeHszo/58Lp6J1p2e/A?=
 =?us-ascii?Q?Dev703yL1gD5yuW3DsXHAo1/rxs0WW8TJof1q+erXK+SKUtjBN0IebFnrEjm?=
 =?us-ascii?Q?TTmI+KNrcr24DlEJ30YYJUGShCMESq+3eVbkyQ5ZYykS1JDBzQZepLfZ2wMK?=
 =?us-ascii?Q?rVIPMIr9Y+esruxxvahy6KhmybzPj29ngUoGWpSK5maaH6AiW5tmeNpUo5g2?=
 =?us-ascii?Q?acFjatynwA7anaBRbPoxaAH6DXzQKc4hgcrzDdUXSf6J6kCGdJTfgksc+U9C?=
 =?us-ascii?Q?78yF+T8DK/wHYmEUu5Bd3QjcqjidOWSmYGAM4L8OhEOmZauYn6JdG/+/OnhA?=
 =?us-ascii?Q?xLEAAwU36zV4wX2SHnNAHY7TVysMPmvf2rSb17x1Ced8kDQAXOWsuXYGKqa2?=
 =?us-ascii?Q?+gUWaafZsvV6nklgIfWHcEfpt1COdQtRTpYoxNKtp1LHz1KGfQHUrFbiyiJT?=
 =?us-ascii?Q?Elt4wyk/gNWEba8xU/Gt6ExvIq5c6n4KyhKGNLUDWishcwi/M2PCIc4TfKl9?=
 =?us-ascii?Q?rUL+Mm0OdyfnpO1NCopvza+JQFfBnkf1jyvnVyItUp4r7rV/NlGpQ85BGDt+?=
 =?us-ascii?Q?W6VJf+0hMwyPJTNdiFXq829mUtUHLqhQiB1oo+dlQWK7MkRMGx56Vl+PLak9?=
 =?us-ascii?Q?D9JoH7TWXvQ9R+2ZBKcozlW3/L4nX12Tz7RAswkJhgvco7EVr9Aw+TtnRfbO?=
 =?us-ascii?Q?bZzQIReO0I3poRRT+6OQgx9dDk3JFi2FwAx0cSdpTSEfgLKX7lV3UJr3gYld?=
 =?us-ascii?Q?d77e994xgl1joC4qxpQ+iitGiyPZelh4j8TQrzpsyfkysyKX273q5M5+f3za?=
 =?us-ascii?Q?KhZSS2UnMCm033v6Vv8TGRk/VJdVsBlqhH0o7jH2E+eQmVkzpJ/PpaPZwTY6?=
 =?us-ascii?Q?TQiuA+1Grkn62dFZcYq5/3zPsCP7gcvGpdgueu2l74KVFINb1PGI7u030zM6?=
 =?us-ascii?Q?m7YGUgYq58vFHuYRrQRAbtUo0c3geQI1TjhJsIHCDLcu6e3mN4JK4bB3Lk7w?=
 =?us-ascii?Q?qJ9wZKEQvSldH1KktD4n5pRAhWTEcHB9QDCbUf6wg7LOkSbAsJA3PeJmcRnR?=
 =?us-ascii?Q?Xta2W85CmWaJ8ifpQA4tJrHkxOM+BaObE4JM/yfzT3qBNsCU8+pudH9ihrjZ?=
 =?us-ascii?Q?wHS0gzBJmvAaj8i6OaxrFRLrvsTz+GDlwdaqYVCP4Pp7SRscn1sP53AWSmtM?=
 =?us-ascii?Q?fgyfVixzVWL66aZ1CiKL/+tD4iWARTZcNQECi61NpB0FS5NZyUVBXKpj/d1A?=
 =?us-ascii?Q?v8qNC+H83mz9xK/yrRsb6eIvDaVS/zODOO0cmIejvXuucPr7aKbYM5fAgEK0?=
 =?us-ascii?Q?JR8H2D3naigEGvEZxbdl69kXw31lRSrHqk3G5cLi?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3eed6de9-5871-4254-985f-08ddb48a6360
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 08:21:02.4171 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lMVmRTuXs1KlRQBRNpgLSVmI1zyQ8LpLvpLcWUNhc8KpsY60Q2+6RgP3C48BpNbWoun0T1CwfZ5u19ZngiXnzg==
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

The MST link status should be always verified from the same DPCD
registers after link training. Atm, both the legacy (0x202 - 0x205) and
the ESI (0x200C - 0x200F) link status registers are used. Use always the
latter ESI version of link status registers.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3f911c930a30b..ac7e08f485309 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5176,6 +5176,23 @@ intel_dp_handle_hdmi_link_status_change(struct intel_dp *intel_dp)
 	}
 }
 
+static bool
+intel_dp_read_link_status(struct intel_dp *intel_dp, u8 link_status[DP_LINK_STATUS_SIZE])
+{
+	bool ret;
+
+	memset(link_status, 0, DP_LINK_STATUS_SIZE);
+
+	if (intel_dp_mst_active_streams(intel_dp) > 0)
+		ret = drm_dp_dpcd_read_data(&intel_dp->aux, DP_LANE0_1_STATUS_ESI,
+					    link_status, DP_LINK_STATUS_SIZE - 2) == 0;
+	else
+		ret = drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DPRX,
+						       link_status) == 0;
+
+	return ret;
+}
+
 static bool
 intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 {
@@ -5198,8 +5215,7 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 	if (intel_dp->link.force_retrain)
 		return true;
 
-	if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DPRX,
-					     link_status) < 0)
+	if (!intel_dp_read_link_status(intel_dp, link_status))
 		return false;
 
 	/*
-- 
2.44.2

