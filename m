Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B10E9C8FC66
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:51:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 360A110E875;
	Thu, 27 Nov 2025 17:51:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NvOsmQmb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40B6E10E867;
 Thu, 27 Nov 2025 17:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265880; x=1795801880;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=ekhLr9PNsv+eGVxqZnxy5pcHxotibUMuTxLITHUhF38=;
 b=NvOsmQmbooeTmzu3ynGoxmcjHxn1/8neAX9KMLbb0o7p3+fu+xGaGfvK
 OC2NDs65FjJn6dfdnvbcYBGhTWSOXK83yGNX2+NOvzC3aYsdejs8lQSSc
 OtABgLsgXByDzvigYNuPWMteyLyOVWxGZ2J4T7USdfx+28hhhPrss3A+4
 K9yvmnV2U3lzSucHg/yMHyDUPTgNRtY9rAthypORYVooEzsF+026Sp5Ua
 h7yb9h9les58Srk768FOb1srLXjH8h6rGEhOw4BdObvDG0X1jTeseyC9p
 +QktCqxgAfETBjzo4TqF2H0u6XikTVOBO9ohJEDWD0bysiidSUysP9S2J w==;
X-CSE-ConnectionGUID: Fm69LAfhQoaI820GHcrWEQ==
X-CSE-MsgGUID: cwrqrBwnTaKcT5WU5kmuhA==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="66276763"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="66276763"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:20 -0800
X-CSE-ConnectionGUID: xmRs/6MeQ7ez0E0kAXrJmg==
X-CSE-MsgGUID: 4H96wDOdSp6YxthXbL5W9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="230562041"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:20 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:19 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:51:19 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.37) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y1JYeKMY7VZv+ziplgkLnJrqAiA71Ws7K8xcnAkqsruFGKlJ7LQaPxMKObtSxccMM3hDtg5qBqhY6q1Z7ik/zWnLiRfsjVu0tQTnUSZTGVvckwyRDFsnEqT/5fVEatpGae3runAeB8Rv7CYJED2BP7qh2S+GadzSBG7adQp9HtP8yjtNLDKmOe4BOK3bM1zoVMRDhNuUg/aGL/lwTKmXfIKZ+2U7kEfv+yRwMCEqhGjapUlLepTOCwf5eU7B/wUSStMrYzsTxvLk9ZZP78E6EwrVechx6Kk62fR83KOgyldNwz0DVbPYsnLE/IqO9AzO027RYlNtL4oEdcs8fhRTlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V+Se2aVSpB8gXWqyhpn6dTwtgvSX1fo2Mqz9fu8wKQ4=;
 b=JxEP2ZBQu35OuUHuRM4c9lRm3OcsuuaZQwa6npoEsSwrOZYnUPn8vtQez82oupUCLUiJosLrmOZna1fmVqsj+4MnB688AuZgPf4POHjzIwW/+/4B2kXFN4PFdLJJBQTFlwYRoOvwkXcU17povyeJRkNlYiK5tiiVcDUH3RDqOwxakMfTGNJNVpUnkt9N2AA5fzxU7Tj43askXUAdf4ON4McKMmknjrJUqL8/ZlHdJD2DCTmFtYemFjXGDe4fV1/O5t/qwsZ8bM/F3qJh3doCuVx4UFyRffpWaNPAcyiRSTk/tLEegoMVJZWd2kn9GSB8qKWt63MgRBClzYc3hFSnuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7842.namprd11.prod.outlook.com (2603:10b6:610:128::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Thu, 27 Nov
 2025 17:51:14 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:14 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 20/50] drm/i915/dp: Align min/max DSC input BPPs to sink caps
Date: Thu, 27 Nov 2025 19:49:53 +0200
Message-ID: <20251127175023.1522538-21-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 7560ff86-5772-49ec-7235-08de2ddd8f48
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?QGiQKaUyt/n/N1JIbs5lSA9Bpqh1qEMFQVUTuNlz2p06p9TpmFHa+DuVIjZV?=
 =?us-ascii?Q?hay3ku+TtTmhG29RnHtaX1mBDAZQ6bICab0SeO41evYQ/E3t5e8UA9gKUP5i?=
 =?us-ascii?Q?p+XdTny/lkB09aapEDbbC1Xty8BQ6sefGM7qvRL2O1RTH+coBn7Lma7hy5wC?=
 =?us-ascii?Q?JTR3WEnbIVHm8vNja/iSqozwtvn5wx6sLoj6kqJ/xvgraDwckAVCtS8aBTLe?=
 =?us-ascii?Q?Z9MecmN5S0bKGH9HQWuUW4K9ejjAO19VxIZ4SGwXBwjLhw68RN0B+cfuzQM/?=
 =?us-ascii?Q?amlr90l7zjcXPNC1GmnVfaIvYMQRwwjOsehAe4ZGvcY1ME95L4vkH7vI82QC?=
 =?us-ascii?Q?+Z20SjpzFlfoMd+RvU32WNthqvosszb8RW824atnYCKTQgVYp99uGItRva7C?=
 =?us-ascii?Q?Cm6coY3j9ovIozYkxZQdTgdcNS/e0qrk/R54tRf1ni/U+sVRpSUxp7sGSRMU?=
 =?us-ascii?Q?PFAYYSngzNXe+7hB0QpEsz3isXH9+mti9UWOuPWT37iZr4yvJfrryCH5ZIqc?=
 =?us-ascii?Q?/9NwJ0t6Vcg+TvIp8Z2ZHKSVzCwAeGuqsPmR0afHKuoZblx9ZOQ2H4LilQBB?=
 =?us-ascii?Q?jp0ZjON5Lqt/2M0CtH82p6YFMfSudVrEe5tHswianrzN/k+Ptz7E0xc8fCXl?=
 =?us-ascii?Q?toMZZuYCmNo13iPJ7U3zfoOt4NwoaZgM2EhMvKijiF+5OX5BLD0ufAJwzbrd?=
 =?us-ascii?Q?RDwuAMbjm5ayL0EKJrIIIInQ5rudGyi3gRPeU4j0bTx9BpfaQQ5/GVUJQ7QN?=
 =?us-ascii?Q?Klgo78qIRVIxJ3FyhWyRoW6zobeTUDB9Y3cdqtj6f6QOhwCaR1qyrOsmx8Ex?=
 =?us-ascii?Q?rj1Brp0zAlWJXkzZxwFc6vQniFTlXqlh2b3bAxq/k6WXyubFGkvHDeIJ0x2x?=
 =?us-ascii?Q?wApZfQDNqtJaJd3/FzAXKbBjjtYRejwi06/q7XWfIW0fwOzcYotXgPD0hYYa?=
 =?us-ascii?Q?n1mT+UVxeFMlE7mzG7p6C4h+QFFsSaIpePbd0QPKQlBUHS0ca3VP4nQlH7jS?=
 =?us-ascii?Q?a5C7YCGHe/rJ6MnmrcFN+QLar5b6KdqOtvdCGLh4lb+ORYq0NuwHZ1fL+jUR?=
 =?us-ascii?Q?/r+WouYbyl1Ns30vOg1oFIf2u6daZ0zB16za3qOEa1lz95i9puJyOqLLjh2N?=
 =?us-ascii?Q?rfpxZTQ79xIkqDvM61aZ2Iz91ROO/IQtOFPNmXI/VqviBT3tck0GzS49T7dX?=
 =?us-ascii?Q?y5h/0x92ejcgYHaMEGL+Rbzx72b6COSSSNvQsUY2LEBY+sAsqxusfkX53kGZ?=
 =?us-ascii?Q?ZzgF1Y39CyqSutsEXOSme9/dIrZ7+kYmQrRRHg/bISYHNdkjdq6bZw0evllH?=
 =?us-ascii?Q?zWIUbFFWz03/CysiAGuSnHmjqzPt2V5pPjvyeE5ukrNRhYLpDInhp/+Bdfy4?=
 =?us-ascii?Q?MLieFytr+2UqO3YxkQZLCqRqJcQFaiDNcg9i0DxZsatZTKXJWv6AYWKw6aZo?=
 =?us-ascii?Q?CR70t7VHw+5ANDObGt3HcOuyHioC62Xu?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pOIR0CRU7riyRa2FadnqiGRvNha9h3yuuJiVfqdQtaBlYGtPd+uDVYs29u4J?=
 =?us-ascii?Q?IcvxPMcESFywOBlaYRgedXHoqLDRPcr/gnmnGU1yKEPBDRmiAe9pMw7oUZ2w?=
 =?us-ascii?Q?4LT6xG+GzAVaXMuPK5NzzE/0CoWK2PcTjKMJp+JF0+13UHphAsxugDfOjRl2?=
 =?us-ascii?Q?6m0/Bnr0NMP4zIRD3N4Sh41Lph4cR83dQG2M5PDCq59wlfImd7tZ5rXQus9r?=
 =?us-ascii?Q?eb9+qdUOsPPhWvEr8k432Ha/ZMTNcJZJZoq6xo+BMFu9ZUkiSwVnX4EDwUsZ?=
 =?us-ascii?Q?rhRbewD02tII2nEK+l0XIOBLnrrn7+MeRknzVGqmoOeSRum1xjNIesYOL8aU?=
 =?us-ascii?Q?XcOcd661N52gGm3jkhRVWNLXJuLQG6fgw6vPLi/UCLcVQoYtBppcPYrD0vRe?=
 =?us-ascii?Q?LN4dDEHR+kD5H1z4UNbgaU6h1/wzdfjck3/o73tcKi5FP/qELFef3pUtiHSL?=
 =?us-ascii?Q?k9Z9sPX6UlQgBRp/BnlaA5EK9RK/0o2/55IJeFDun1spLFQPD0z47hYDeTT4?=
 =?us-ascii?Q?iLm4aEJDCPlIFKHTBYvaYowMVtibflbUisnubYiSXYvbm0kHJSJ8uqL6C3EO?=
 =?us-ascii?Q?1vOXQ7lnWyiazQtqQeC8WtN1MQ7ALfuAcOmIlX+AATu8E9FOQcZtOz/3ZydP?=
 =?us-ascii?Q?Q07xVm4HXHlJYas/O8ETm2jjUvN9OEhu1m0LHwYlF2GYis82FzUcghtlKe8z?=
 =?us-ascii?Q?MeozFOeo3XthmHwB3AOCX7f+l7dcwf7rSBCq0QqOyMM6zhYJFAejabsBEJRv?=
 =?us-ascii?Q?Ocl+GM7JTEv5TD2KJn4xV/+GzR48D2YJYwnzxUe3K3UEiPd61sBh47G0qtrD?=
 =?us-ascii?Q?dKANY8eKKvWbG+6FZ1PuBK88QvoTr9MwnX+Wsyq/xNz2KeeZdiMWnaYoGSEa?=
 =?us-ascii?Q?h+qG3hm2V+tXekAsS1oboL9DZ9hXxWY9eFjsyyMOqaU3VXDr+QFFvdjO6c33?=
 =?us-ascii?Q?NT7IgR8NyQPHfJt8e3dNCmWx3CLhHV4Z0pbycrbeBGawlu24eKc5g03fD5it?=
 =?us-ascii?Q?FDJvwaitDhtpSFD5VevUeTovGMIOYq2DkGZhRPQ8D6kGAVK1t5gMVJ1ft03J?=
 =?us-ascii?Q?9RaRbqlIDdCFJJpDb4JsY5Qm+cKbGAybK7pbgamLHDByHUjU1byYURkRbK9g?=
 =?us-ascii?Q?f5UEdU9W2le3gjs1TsIoYJViO9mCgoUTYPcLenfKLzPY1oDWTBB+vmi/xynm?=
 =?us-ascii?Q?t3eGuR/vZghdNR8bsPXP8+fI5TvgdjYGK/VvQtCZygq83cerH+FATKYgYxkE?=
 =?us-ascii?Q?VMoTL72PfHfIpYYTS0P1guGRe/n/+PnwbjUsHxkYcDxjR38EiP8LJ3aBk+Nl?=
 =?us-ascii?Q?ZCD5m7scQZDKBDm/coqocjddBpNG2nQxnkRLVfsgo4Xc0jHZ23PwCvByapnL?=
 =?us-ascii?Q?MMypsiDChhvmfddSg4+KH/vJWqqoCQPO82hsVffkNu4FwbANKZkZv6J93fZ2?=
 =?us-ascii?Q?onKj4rbJoncFO/mOwn9YrC/Q0HicoO5aOGDpnoIRcDuNxmX4K5+Aqg2kCFZY?=
 =?us-ascii?Q?lVGwqF7jxvJg6kvSm/KItAInNw2eWpos/38cOKr9RjgpVSoMRhZvSY8vSm5K?=
 =?us-ascii?Q?rbZLpZGJJbx8NuhZl8pmsv9efKh7JwL+8dzdPPQgXgC1H4Rtg5HEgmhthFOe?=
 =?us-ascii?Q?KzRxgKWIyJqYcXZwB5RpBxi5faOjZ1UyS21o8YTzhc2C?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7560ff86-5772-49ec-7235-08de2ddd8f48
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:14.9249 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l5UZSXCB3Jl5N6cZcX14yB1OpNX5L6nfXmWC6xht8qEAauv8AX9WezMYX66KMtJC11HArFSA7KkcA+c+S73bAQ==
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

Align the minimum/maximum DSC input BPPs to the corresponding sink DSC
input BPP capability limits already when computing the BPP limits. This
alignment is also performed later during state computation, however
there is no reason to initialize the limits to an unaligned/incorrect
value.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1ef64b90492ea..e7a42c9e4fef1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1904,6 +1904,23 @@ int intel_dp_dsc_max_src_input_bpc(struct intel_display *display)
 	return intel_dp_dsc_min_src_input_bpc();
 }
 
+static int align_min_sink_dsc_input_bpp(const struct intel_connector *connector,
+					int min_pipe_bpp)
+{
+	u8 dsc_bpc[3];
+	int num_bpc;
+	int i;
+
+	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
+						       dsc_bpc);
+	for (i = num_bpc - 1; i >= 0; i--) {
+		if (dsc_bpc[i] * 3 >= min_pipe_bpp)
+			return dsc_bpc[i] * 3;
+	}
+
+	return 0;
+}
+
 static int align_max_sink_dsc_input_bpp(const struct intel_connector *connector,
 					int max_pipe_bpp)
 {
@@ -2679,15 +2696,19 @@ intel_dp_dsc_compute_pipe_bpp_limits(struct intel_connector *connector,
 	int dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
 
 	limits->pipe.min_bpp = max(limits->pipe.min_bpp, dsc_min_bpc * 3);
+	limits->pipe.min_bpp = align_min_sink_dsc_input_bpp(connector, limits->pipe.min_bpp);
+
 	limits->pipe.max_bpp = min(limits->pipe.max_bpp, dsc_max_bpc * 3);
+	limits->pipe.max_bpp = align_max_sink_dsc_input_bpp(connector, limits->pipe.max_bpp);
 
 	if (limits->pipe.min_bpp <= 0 ||
 	    limits->pipe.min_bpp > limits->pipe.max_bpp) {
 		drm_dbg_kms(display->drm,
-			    "[CONNECTOR:%d:%s] Invalid DSC src/sink input BPP (src:%d-%d pipe:%d-%d)\n",
+			    "[CONNECTOR:%d:%s] Invalid DSC src/sink input BPP (src:%d-%d pipe:%d-%d sink-align:%d-%d)\n",
 			    connector->base.base.id, connector->base.name,
 			    dsc_min_bpc * 3, dsc_max_bpc * 3,
-			    orig_limits.pipe.min_bpp, orig_limits.pipe.max_bpp);
+			    orig_limits.pipe.min_bpp, orig_limits.pipe.max_bpp,
+			    limits->pipe.min_bpp, limits->pipe.max_bpp);
 
 		return false;
 	}
-- 
2.49.1

