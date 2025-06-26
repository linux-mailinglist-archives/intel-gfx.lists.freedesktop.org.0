Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74096AE9810
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 10:21:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB96E10E869;
	Thu, 26 Jun 2025 08:21:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YQ5KSd72";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 086E010E842;
 Thu, 26 Jun 2025 08:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750926076; x=1782462076;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=mXjBc08rIZvCdQ6+UjHa14erSs9QHCDmIBLR8TV6N6k=;
 b=YQ5KSd72CkAUDEcGyUFaN157pg9issP59I7MHLZIhjm6o/eKlTjDPbSc
 /rtF0LzBr1nl7zIH45y39vC7mhWNZLvJkg1kRvZaG4FGFTzDlPeQ24b69
 8Jt/LMkuqQ7NReIXExEoSwftqidPKTIBmfDTr/Bij6TkpBFAsK/CoZ16b
 rSb9ptLji7ffA3qSmH1/zIITe9VihZNqFGuwvTAPdcAq1cfLokzdWzkOv
 rSoVjIHKDGJnncttTCTTjJiIKARIkB8wlZCrw0/kTNgEarX0stSGqxuz0
 Y8W3jy0wEDvirQOqp+EC6pxhGZfka0LLNKvGuIyFXQzFlGYDvY/KZIJki Q==;
X-CSE-ConnectionGUID: DkklxIRhQDq9/HGKq5Vbvg==
X-CSE-MsgGUID: JUtImF4vQpmsoyodk72c9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="53345725"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="53345725"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:16 -0700
X-CSE-ConnectionGUID: wogZNehSQZCTEBbiTW67hA==
X-CSE-MsgGUID: 81nyaSDfRaOxQ0OlF+G9RQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="158211271"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:16 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:15 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 01:21:15 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.54)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=djO7lzvhdKO2A5VInx89nmzssj/WjzY46wXOCNfixB9z8Ayh1llrlEnJr+zLfVYF3yuLojEaHID0OoWrS3YzUmwevN7W4AZnlQH/qpkLdNRyj5GdzBzrZnoB7m4vZ6zqywyZUftQ1tArqL3wYboB1myWC0nLGJu2E+sqnWDeGE4BGLObrXw2AywgV9d38LxP2+xx7tlyOfgK67yiu/soYlpbR2MRY24x+kQRMU6OhZi98XHYL45vE3c+nfF14X4cpj37sE13Pd8jP95A2u43wFYGidQqcPcONVfNA4VS2GbJoV2ke8ar88FopgyRCXitK7fgCnIy8mNMBh7RAhw8FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NjP+JS+KBWZZJ61dLGAr0dpc/OcAS1LVMPoe/AuPXaM=;
 b=X0hPv07Q2J3oaPrPUKveZ5ZKSZ/k/yooHPTqJIWWu0oYziOex6XBKAdz5+PmMGzMxLsU4q88dgdvwdrtCOz/wOnzItql+6y829ahdzOT5UyWOsgmHtE+xyZ57qE5DHDy89ShpHreXaDL2S3F1oBK6E/K0zauZFQnHyyxlcUqdnOsTdfzL9pHDnlfMOkO2CXd+FySATfXI2Sx5FzVo/NtroDkIdGrbh7uiSli5F0i1q50kbx5+cQUNfr6HjkSozZqSQYKEhnEtsp5Q0cKNlcCFHY8ro52vRlFGYDYcBisGpKFNomgJBnxjrL0/R3lBmVOhVdY23yvH8UkN08enF9HrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ5PPF8EC896901.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::844) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Thu, 26 Jun
 2025 08:21:12 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.021; Thu, 26 Jun 2025
 08:21:12 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH 09/20] drm/i915/dp: Fix the device service IRQ DPCD_REV check
Date: Thu, 26 Jun 2025 11:20:42 +0300
Message-ID: <20250626082053.219514-10-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 55234004-21fb-49f7-83e9-08ddb48a6972
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?XYesvhLrd56fIN2va084MYebnHg3ESue8ZufiP2ds/8fLbRGkof+t3+NZB15?=
 =?us-ascii?Q?Y6WDQPFUpdbNjo1x9AIgM8Ik6YbJp8N+GaimHqaH++dpFVRs1l+GqMT68K4A?=
 =?us-ascii?Q?z3onThQ75Ue9v7l4M/5pFx9BRgCPz9ThyQhv+yBGGPs19XW16sX+I7fVk4X4?=
 =?us-ascii?Q?/QBf6ESTNVliTh1PRDfLrRvtEbUDLr6kYoTwqxbSGvcQjgna/E2X0mc0c/Ec?=
 =?us-ascii?Q?epF8QOK6lkfTACLsc/n2WyYfK4zOwP9bHWUiYkV4mkxInKCT75BnptaOFfiL?=
 =?us-ascii?Q?eYG4AB9XjtjWZzhhX09cT/XKmU7SsNUkBfJZ4jA3nAkvFV2hqNxBaLV62ojf?=
 =?us-ascii?Q?8wGu3AoxFg4eJTcONEBN++qP5IHR1e5FCfa3KO6pFM+Ce49d1sdxzS0lrYx6?=
 =?us-ascii?Q?d2kxbnSu0SVR8l8gw6P8WNc+77wUtXYUrshzk1DsgcawjzYrtcuCbV8ltz8Z?=
 =?us-ascii?Q?5BC96KtSvdtYBSnFG2tL8QIzrhFZamEdPVZbKYaC3L0ULVmuGAaMZgluweBM?=
 =?us-ascii?Q?TGADLNJK0B1FS/ggj2Npe8TtzeC3bc9kSOFbWkNUM5o7AEndQnKgyYB80DN1?=
 =?us-ascii?Q?y8PyXF3LJK07GjDr/RE20JKvK3pbojwdwfgPfuVpRoVDxW3Hxo8N47+DS8u5?=
 =?us-ascii?Q?CDjmOPlhlb40JRCYtiXGV9/fwqKe2sP4xb/vpZzroWgos7OShPZuSl6D57ux?=
 =?us-ascii?Q?mgmEuBIetGE6lR2uwWx3d1LFfq9ksXS+jgrp8PsZe+79+FvGIxEFdG4L8v7u?=
 =?us-ascii?Q?Cs9oK74EMKPC7f1KnPOZmCRLFlvdxCeOMIszqLSYK7GH+qvF9nqGUObXsXDX?=
 =?us-ascii?Q?pRUW325lAuHQjoDDnQDZ2zUZXoHGbRMFtIQ2v2oCeaO9drf0uddvXqtNdcxU?=
 =?us-ascii?Q?zkZrLiwf/c/lgmGMeU/g+5B6/qh/7Cb/EBi7jo5sl3dqR4tPxSQBhKgzHy1n?=
 =?us-ascii?Q?vVgLoMs4jncHGIX80U7NHIGRcSd0aH2VbBmg54DWycYQ4tt8/48ip+Lt6Trx?=
 =?us-ascii?Q?AFrHjQA8Pr3pR5qHOTBCuGwWVhuCBaVB220BmumsZ8Zq4bVk9KSGMkO+tPMQ?=
 =?us-ascii?Q?npTAToYp4nnViDiEAOhWJav11DhLgERXGt0u6CLpohP2yYj9huJn9ZOhCVlH?=
 =?us-ascii?Q?zlhl8p89PycNvC831Sd2hyaEaztZwX0rN9FhLQAOZFrDpfzk78V6klBRsVa+?=
 =?us-ascii?Q?agZB2SkrpBbZh6wMoRQlgyA1VNEKqcuOL0aUkle0Y1yGX5k1zPIfdWc0Qozs?=
 =?us-ascii?Q?zJ1JcUjzJnUbrCKbM4dlq1W2NHBdAOT7oKcnQ0/tS1hSR14BL8DEWWLWZwom?=
 =?us-ascii?Q?eNRy8nmtHjh77DfWxNhgV4eSTyptPSzWdcZh9Z4wiYVmUvVuwhqfxLpG+4tb?=
 =?us-ascii?Q?VsKU5o/NSyIjy9MmU91Rwvw0r7DmGGfrlMNHfSk5VSbKsBUq3+mMyx0wrMnD?=
 =?us-ascii?Q?Pi4E9/hk/HQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SS3zfVTBZz2XS92BPx2eJb4yBzzJgmevEuaaPpxFwgIaytwo2QJC3bESOdSD?=
 =?us-ascii?Q?JkQ8VHFH2ystiUxp7FMWEme35b9zhisAIhSDvX1PwyRTsc5zrxjwDnTKglC9?=
 =?us-ascii?Q?sp1qmsVwKoR558a1QO/EM7zfcTc11p5FxzsixrbmHqslDj/RLOoETnRP383y?=
 =?us-ascii?Q?bIZas8kcbTwxz89ZxhiColv7PJl7l5rQIGkvxpd6lJPpVemEyaEnBj5MjbdM?=
 =?us-ascii?Q?DDjmIh1wcyFZw5f/1XnPZZyPRAicVjIVnkobmaitO3T/ebqRi9wiHku/6fHY?=
 =?us-ascii?Q?i3tc3IbONidn/kThbq+fwxQM2Ch/K1u1ea6HmiOP9smBldAJn2VT7ZVgVgGU?=
 =?us-ascii?Q?+uSXWlXRSLslUOUZTop4Bhs0pCBTpdhyJecE2zl7tLJbC+WiMzk0iqdfqCFx?=
 =?us-ascii?Q?IbaQXn26gC7ZjjTIqBKks/St+nwiHfhlNLo2xTILhxEgWiQzw2HERA5tum+G?=
 =?us-ascii?Q?CPbVMhIZHnb+N7i320vY1mQeFdZIEs9cwmm0OX2kwj/OOba+nAPPjSH7nqGp?=
 =?us-ascii?Q?yHGImq1byfm0TvB/Z8H52MB/FUEEKgVReWfi0OF1oEo8TuyIc75TTY0v2hIU?=
 =?us-ascii?Q?zKemG3Mf0654sNZw6SJoHjQnmylq0BPGAbXnhT9Cv00SMbuV9MLmcnvrLTrB?=
 =?us-ascii?Q?hLwYUG+R7cPJBXHa40ftu4W82uraeLQkuyBiRKmcKFMUxSW94qU5qA0aLiri?=
 =?us-ascii?Q?hsP33uLXMioRh+93/wjs7GWNnBK2acLQl2DQrv/CbkydfI3skdU0MPQiIkHa?=
 =?us-ascii?Q?mstFG8fmpB4kORQ2aGkNv0tW7fl+2ZWsdmMpjWfAiYQCuSkV0dMTcXAQjGp5?=
 =?us-ascii?Q?XiZSDUbdHoXA70slPXHb9hl7Js2KKc5QvE6I/DXyXgFO74AzUb6OpUUsS8A3?=
 =?us-ascii?Q?8IPCMHs+mQgafTCcv3U3EoACafukGWTF9qDwbxgxFGqeqTRJVZtKdfNvXi+T?=
 =?us-ascii?Q?aYNaW1cnKWCfItd/jaQZmIA8+jxrvUDb3qLbGtIsjA2R07rvZ5PzIO6B0qLw?=
 =?us-ascii?Q?MtRilyTlRl405DbMkGAgEpJ0GblK8Q6sjtUfNnX87eK5CIp0S4DGt+YMn1p+?=
 =?us-ascii?Q?SrLcOow/MgbDC9w3DsmJQjZvGrNc2B4B9WirsP0bQoCL5yHpevIFiEX7Man3?=
 =?us-ascii?Q?Zap37V1vjTE8d7ulz9joJx6hINoCmsoLBZl3klsnQFcvzWJJdwUDuL3X5B62?=
 =?us-ascii?Q?hb1DtYnPEtnurfKWI9JgIaESD0NVFkExp2D0z9MUM7UAaswpF95y+lzcChN7?=
 =?us-ascii?Q?F0dZhCCc43Vx5jW23v0qPPuMvoDlH2fSdUdjlFufw/UEkvjclxp8MDhNkORb?=
 =?us-ascii?Q?cebY6CC5RJNi3r9pUI4Cxu/SaeHSKUVXAWgdGz1vyl69ij32zXL4q/1lCZif?=
 =?us-ascii?Q?nYj6LMSmnIO/jfDcSR/pyapGmf4OUvmipbMEiF9AAInwt6n3TvSQQ9tqtrfG?=
 =?us-ascii?Q?NSu8+oSMQQZgWiw480O99+WEga9tKADfjUdFrieQCb36HSt9vzhoth+qJ/V3?=
 =?us-ascii?Q?oaou80ZA7e75ocUf44XADIA+cuFfgj4MFOB99qnjlvB2mUBB5dLnewKoxJU9?=
 =?us-ascii?Q?1EqmVEtrtQJSoWF3hDqT31arvTYJMXLECqzs/wRR?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55234004-21fb-49f7-83e9-08ddb48a6972
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 08:21:12.7755 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QS5AREpIGFXkZtbYV4JzO/luNUGAOzHKlGcJi8Gy6zj22rwj8xEk3PtH7vOgUxDTLKOQjG2JVOgRl1oRWi7kug==
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

The DP_DEVICE_SERVICE_IRQ_VECTOR DPCD register is supported since DPCD
REV 1.0, so read it out always. Flags added only by later DPCD revisions
are defined as reserved/must-be-zero by earlier DP Standard versions.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index aacea2d7b9738..6262b661d026e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5398,9 +5398,6 @@ static void intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
 	struct intel_display *display = to_intel_display(intel_dp);
 	u8 val;
 
-	if (intel_dp->dpcd[DP_DPCD_REV] < 0x11)
-		return;
-
 	if (drm_dp_dpcd_readb(&intel_dp->aux,
 			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1 || !val)
 		return;
-- 
2.44.2

