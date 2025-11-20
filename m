Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60412C75A26
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 18:24:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E458010E798;
	Thu, 20 Nov 2025 17:24:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h/hE0SLL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6168110E798;
 Thu, 20 Nov 2025 17:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763659483; x=1795195483;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=NJyX8iTczhSLdU0fTBUPC9pKLVxjy1N6XFBPqjA7j8c=;
 b=h/hE0SLLnJuaw00AjGe2t1458DCQBCoKgjfCy+DkRUbstAkZ0JLSLKvz
 WkPmnsBwuIxpsitxpY9x/hxhmS+qExKvKrCrUxdsGFz078m2phCbeo8NN
 rK1bQqkKoEzy7jo6ZJ6ouQZJAJ1TcA9Hy0NgQSy+Ue7PNEKxMxJSNVqw/
 nsDxybMiDkWJCPTjL3UtSGNjZghCKObcW2yduWssvSI9E0n8iRkkvDV9T
 MmjkS2OjEgd0y5O7YnjgItoxFkYZDBm829Y5vQOMCBY1AiON1iARoK1iz
 FFcCbeNpjGd8TlO6MHKM7oGShjjDRfHs6oi1F1++L9s+lhYfISxtVtzD2 w==;
X-CSE-ConnectionGUID: J00pwAoxQ/+Ll1PCDSokGg==
X-CSE-MsgGUID: wqUUmYhkSamYXqN+D/jXMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65767759"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="65767759"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 09:24:38 -0800
X-CSE-ConnectionGUID: CCheJoIgSsKjVBCXQByGXQ==
X-CSE-MsgGUID: FqR3dKF2SX+mrKeH86vOsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="195728089"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 09:24:36 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 09:24:36 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 20 Nov 2025 09:24:36 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.36) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 09:24:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U0/z+eahb0NAs/B07AvqVSnsMs0tjna41LXZAuw+JpsZBsBcNDaVBLnNLIgtu1zZ97midt2H/blV2OyWFVmjFtjkUR03WM1WOr8kIwisgolFU1YmQuW14BqdhAU9rMd19WVYmqpgMdn3YGyW5XX0nubCLpWCNAsSUIn8WuCSMfUyxyK+hiZGzf0QgZpAni7ZvGegVlEc8HoS35Hl300I+QFWOrVeJRhZhfAPnvkTebUjJfGXUkdzg4LAt+fka6t3+cfZjKMHYubX2I8qr3BD1JuZoGBKMZMGBFzDv3yj0WZ+21bsTgXFqK6t5/dyKRuNBSKaIljtKt9Vn7kbYwJ49g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g5PPazp5r9c6rqlB0QRhjjJjWYa686+AH0i1Yxsr3yU=;
 b=qO9SUOSHavwh+2gjBWvBHzCsLb+RtOOiP3jZV6R525U2SA1fWdn9ZGowCrzbaxDZZrPbSnfugRch384/gn9cWVCsWmW+quQwhJ+JfGSKU2+M0wqCLnA/RugNTN/6TsQpNjgGOf/gslQx/TgOgBSyGCK9CVmqSx8NdINdCayUAhegyEWhwvCP5SZLobdNCBj3FUF9egEl8FkjJZEF7gBTRo2BTtD4wMUzbITsnglH1+/gUxkVIyVQs6tOj6C4jzDQe/Q9XidolUaIZJMkYWmsp/xHsid9HwTsIf8ofbQDxV3SgjBhg5glksePNWQIYZdvbZzzzPqdKlmLDpPqm0hruQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV4PR11MB9516.namprd11.prod.outlook.com (2603:10b6:408:2dd::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.11; Thu, 20 Nov
 2025 17:24:34 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9343.011; Thu, 20 Nov 2025
 17:24:34 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Mika Kahola <mika.kahola@intel.com>, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: [PATCH 5/5] drm/i915/cx0: Read out power-down state of both PHY lanes
 for reversed lanes
Date: Thu, 20 Nov 2025 19:23:58 +0200
Message-ID: <20251120172358.1282765-5-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: be4184d6-1a2c-41b6-9a6e-08de2859abf9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?4yY+tCdD7cyiQOyKvYR/ihx0HvQ93fRwS2OnNoDDlu+76EWcftfRKkGPrDiS?=
 =?us-ascii?Q?UBNM+jiPva9XWZBGIM/eBxub7tJhZKmnv2i5ffn9Qa6uOSlFpzD2JHqrIrPE?=
 =?us-ascii?Q?WjXTh29wHiTY2ylkMUvk3EfKKQHThIX3jeusxseA+DPU2JPZvQdpQ2QN6crT?=
 =?us-ascii?Q?MZFCMKcmsbMCPsZ5p1UizNNCjOu+zVDpGGoeOvXYNvPz88b24FawmA1CnRfw?=
 =?us-ascii?Q?I4REUcGO6jYB3Y6jCcKGmEdBhfeEz7pjckqWd3oOOp4CqCSz8oG81SAEMgGF?=
 =?us-ascii?Q?CssLOUrEc+2+xSriS1ag1uO4EadEIcUctY8OFD/qbCaoDFosj29/yabktpG0?=
 =?us-ascii?Q?AsdO9uvqiJ9WpFYyvHknG17TvVVtD8q5aLS1NRlIFO2G/Rt7qmVT8L6xtkoy?=
 =?us-ascii?Q?L2ttPhGwOb5u1NHRz9jTx+BqLiWOKD0c8n59bZ09e8RQudgPrEN30uQ6Ja5p?=
 =?us-ascii?Q?nKGcO12bP53yGM5mj+MKenV7VjTbwA8N2xZarUJyZdWN+9TWZBlL+AXd9O/c?=
 =?us-ascii?Q?Lm9yb1WNahQLJLj3JIkxk7Fo3mVw8AKfUwTyC9ShiDT+KLsnG1EIDyFcnOQ1?=
 =?us-ascii?Q?qP+oGFenkx1mKmIztyuC+4sVD2uGXfx63wVHfj8FOUGNmdiu7m2RQTNDW82A?=
 =?us-ascii?Q?Prx6mIPsrbRuHnwgFCaTeoyUPuKzCB5kGztFdvchqQf1p1NozioI6LF94u4s?=
 =?us-ascii?Q?NxnGAC3Ukx0yF2yKkUDHsAJcQkimMevpviaHK1M4YY+AYWHdpKSzqqlCM3Ld?=
 =?us-ascii?Q?ZQPwcOpd+J1n88qnXP+O1reAxz1tthOiTbeQI8TyC0cqgACGAQZQFcZgSFAM?=
 =?us-ascii?Q?oFPfdGvUkjo+An2y7+HGTAtLvCQk4j9mJk0VpGkF5Cp/Phm+Y1aOv1/eW6Q8?=
 =?us-ascii?Q?QsX8kkeHfpsM2TrGo8PyRghXjNphbRFFExKPK/i2eBT3Yxb099pKPmlQnC+Y?=
 =?us-ascii?Q?VJHOrNW1RcSD64hyy3NnbC7JfGhVN4SwEJTTj28Cr22o69yLx3MF0gyrKs5A?=
 =?us-ascii?Q?3AY3w/rxKfUVnLdFjEQEavfRRDAep1SRsUx1YICIgIDrpKRtuml+p4lh4d5M?=
 =?us-ascii?Q?jqGQcgXE/NwSS7ZinI4w8lUBIqBIZiF3HZa2bfflLzGfn43mMj/KhG+dZl1m?=
 =?us-ascii?Q?jXmxkkE1mTwcay4NTsjG5etNK5OLvBj2WYBa/9TIWrHst9OrZgUSRnq9jV7+?=
 =?us-ascii?Q?VA/E9yTvo/jzQjzmbakqnvSGugUcMRuiEn1ogzCvmvSaqZ7MxDG1wzNjsIB9?=
 =?us-ascii?Q?xTODKrN2OG6K1EaiUPA64c02plKDhh/S8XUfF/Idan2hQ69TnFy12q9T11AX?=
 =?us-ascii?Q?tOZNyGJ6Fby+MvsfpfCzab8zjZeRjfvMp986cSCh5KXlyJ22UGrF6Q8B9kxo?=
 =?us-ascii?Q?GdTU86OtmVROiJIQzp5Fs+/pKHoDq4XgjwO5ubQ9o7c1xbimM2xj/93WoOzu?=
 =?us-ascii?Q?l3ChPsKnrnhwb1L+esW5l/FEWNtCCHWo?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?M6O78cXeQ60VOdGHUer6ErZtVbtvr+KFdLGpP3849IjWzFhViAGROq7DiAnM?=
 =?us-ascii?Q?eYFh5rAtwzPm2OnO+v4zGQ6k5Ilv1x9uGCVALnUwz2Y8wmBup7lZYziF/7ST?=
 =?us-ascii?Q?Q/KFyqdScTe3DVdhK36rc1rIF4WX4GTq4ME2sDSbXnLakZVOG30IB45yt8pc?=
 =?us-ascii?Q?ROESLpUctxWfZdQX24kCIQnEg0MpkOVAUOPV/6sqmGDzo12YrEEy+zbUseqA?=
 =?us-ascii?Q?C92xcz1SRg445/s2NlAQ/ICatduPY5d53D6rWBlKpHLVjS/3xKpAx0Ins+/y?=
 =?us-ascii?Q?cIfKq6GswcRFJo3eakh/rqUjxQPI8W18ohq93PCqNRcvOA+G2jb9FezFZzrT?=
 =?us-ascii?Q?xenkiYQWhP/rZLdVkiF9YznbNdQ2lw3Z7t8xc1+nPVNajtgDJ+OvETMMRBsv?=
 =?us-ascii?Q?+LiTDCnZ9gIYNVCejiQEikqUVMucaNc03rDKOTzVd4DVRu/sDFJ9GfPXjeqt?=
 =?us-ascii?Q?y2k6QwERAx0jFJz5Zqd3KA1tV478Z5jnLffmDcR9R8QsbXMYt2KxyspaDaNu?=
 =?us-ascii?Q?gcVRQS9qo6wSscIiAsNxfqhvnpnshTeI5uyesUJKIHbzTBLJ0jTBD9FXJob0?=
 =?us-ascii?Q?dviDhFRMRK2sYITzcQQkqfs3oWeJeI7eEoYARsFlkvYvXJDRVwLpapUvTEAY?=
 =?us-ascii?Q?vjqA30cRNyTcauHzJdsH4h0kFC791aRKclPs2gvSdsqcGT5NVvbKb0oN8Yf0?=
 =?us-ascii?Q?YzodIfGiqp2uoC+1llq1FIQWKvb4qt5MYtFnNfrEqZIy5WUE0T0XcAb21D2K?=
 =?us-ascii?Q?8IBCdp6dxf2/k5Bu1x6iuzajoiNGx8L26+7IlnAp+ly9pRaVR3yYENjiC9al?=
 =?us-ascii?Q?7CTMQhzmD75iDwVGRtRETyJDAeofU9H11+BcE3ff4RrcwjjkEECAkpP47xZn?=
 =?us-ascii?Q?+QDHVbO1+lEhHSmNLg3telfP7vA5tl3i0d+XLa4c2+eiuOyAentLZ+kQxL9r?=
 =?us-ascii?Q?UY3UVhqMqFdIhf+ffboiBrJUQmZqabyv1Uy0THwv5ztohtp+2snm7VfVQqA1?=
 =?us-ascii?Q?jxTbNRyopRCMwBJI0HWWVY97hWsQx7tkFhxRrS/EeNC1cgKBXgq9F3CAOz31?=
 =?us-ascii?Q?2cvWEmZdvup02xRC3rg+3OgSxjzqXtnNYsy1sTImQyQdlOzioH/grx1vYbi4?=
 =?us-ascii?Q?RChqIz2p0jp57mrjCOzDU9aaXaqdNwucQ+QGcsMN6YrIk3aHO8gNGiwlPS/8?=
 =?us-ascii?Q?ez3oxLO+glcM4hmGPyQC2Z+6mJoXocGz41B21l9eN+0IGv2kRBrj8MET3rIg?=
 =?us-ascii?Q?YGc1U6TNEzlD7T4HF2Y7NNp/MxjE54XMCUiNs+3S14RwUff4hCY5z5u4kybH?=
 =?us-ascii?Q?iiF/sZPwO9s7MChdJIp5mEbJKBOJJU5htbnw0qt2J385Coc6B6gUFhKQoeIP?=
 =?us-ascii?Q?qQV9PfZ0zOdfoXB3Kiv+QcyUVc6LlagfpsXdQzBqvfLlE+Cb0mNPaGmiwhPX?=
 =?us-ascii?Q?YzaIAxxMPBTeRyc06/5QayUYyBGuNYwqDcfprvx+7Ug2mY7WcvahOlhHS07n?=
 =?us-ascii?Q?phFwYhbQDMDCUX1CKG1V/ClvJdiPnNvFymsp0hf/wm8gU8nfZbZAaP6Fb9KB?=
 =?us-ascii?Q?NxUgMhiQBSO3PNUt2xWPtJOgpdwkgqmueHLulWJ2vH6X/J0dUUAPtMoxFMgx?=
 =?us-ascii?Q?TebjoXUDEz4xy/7NKs+rcB99ioHyHPiizM98dKSJBZPG?=
X-MS-Exchange-CrossTenant-Network-Message-Id: be4184d6-1a2c-41b6-9a6e-08de2859abf9
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2025 17:24:34.1564 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5GLo0NOB3tZWsd/wUTWOTBLgC3eKPg20+KCUtRFZcLeQpCU6bqDsL+G+itqPf14KuSiyDvpulSH6ZjF01z20nQ==
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

For a port used with lane reversal enabled the first two TX lanes will
be enabled in PHY lane#1 instead of PHY lane#0. At the moment the HW
readout will read out the power-down state for these two TX lanes from
PHY lane#0 incorrectly. The display HW lane reversal feature (vs. the
similar TCSS lane swap) is only used for TypeC legacy mode and for
non-TypeC PHYs. Since in both of these cases the display owns both PHY
lanes, both of these PHY lanes' state can be read out. Do that to fix
cases when lane reversal is used with 1 or 2 active TX lanes.

While at it add an assert to the PLL enable function about the above
assumption on when lane reversal can be used.

Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Fixes: 230d4c748113 ("drm/i915/cx0: Track the Cx0 PHY enabled lane count in the PLL state")
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 24 ++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 0d524735dcf95..27be2a490297f 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2197,17 +2197,30 @@ static int readout_enabled_lane_count(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	u8 enabled_tx_lane_count = 0;
-	int max_tx_lane_count;
+	int max_tx_lane_count = 4;
+	bool lane_reversal;
 	int tx_lane;
 
+	lane_reversal = intel_de_read(display, XELPDP_PORT_BUF_CTL1(display, encoder->port)) &
+			XELPDP_PORT_REVERSAL;
+
 	/*
 	 * TODO: also check inactive TX lanes in all PHY lanes owned by the
 	 * display. For now checking only those PHY lane(s) which are owned
 	 * based on the active TX lane count (i.e.
 	 *   1,2 active TX lanes -> PHY lane#0
 	 *   3,4 active TX lanes -> PHY lane#0 and PHY lane#1).
+	 *
+	 * In case of lane reversal for 1, 2 active TX lanes, only PHY
+	 * lane#1 is used. This is only possible in TypeC legacy mode or if
+	 * the port is connected to a non-TC PHY. In both of these cases both
+	 * PHY lane#0 and #1 are owned by display, so check all 4 TX lanes in
+	 * both PHY lanes in those cases.
 	 */
-	max_tx_lane_count = DDI_PORT_WIDTH_GET(intel_de_read(display, DDI_BUF_CTL(encoder->port)));
+	if (!lane_reversal)
+		max_tx_lane_count = DDI_PORT_WIDTH_GET(intel_de_read(display,
+								     DDI_BUF_CTL(encoder->port)));
+
 	if (!drm_WARN_ON(display->drm, max_tx_lane_count == 0))
 		max_tx_lane_count = round_up(max_tx_lane_count, 2);
 
@@ -3214,6 +3227,13 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 					  INTEL_CX0_LANE0;
 	intel_wakeref_t wakeref = intel_cx0_phy_transaction_begin(encoder);
 
+	/*
+	 * Lane reversal is never used in DP-alt mode, in that case the
+	 * corresponding lane swapping (based on the TypeC cable flip state
+	 * for instance) is handled automatically by the HW via a TCSS mux.
+	 */
+	drm_WARN_ON(display->drm, lane_reversal && intel_tc_port_in_dp_alt_mode(dig_port));
+
 	/*
 	 * 1. Program PORT_CLOCK_CTL REGISTER to configure
 	 * clock muxes, gating and SSC
-- 
2.49.1

