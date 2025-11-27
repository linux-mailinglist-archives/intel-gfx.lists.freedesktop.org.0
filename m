Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85991C8FC6F
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:51:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA3EF10E87D;
	Thu, 27 Nov 2025 17:51:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VXvyHGIN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B649810E87B;
 Thu, 27 Nov 2025 17:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265883; x=1795801883;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=1gCVIgF8lxIGSL0MWNaJO5D4JJsxKDZRmFTvqP4rBp4=;
 b=VXvyHGINpZ1koQV7qnQP73w7tVTXmXFcYmoXUHad6ya7cyTnaKg+b9iZ
 O2QUB/Or+aejd5Gk70xMDEDvRuqUiEgR/dLEd1EMdpSXFy2EChQikADvd
 UJ6B2owwDn9Qh0mH3vtW5sun+x5+oJKA75mx2zofLXgp/W8ihqlhTygur
 BktLNRrNbN9N10rouvel4TkbOgurVw3ZISLW9S711lTBQqZYOxDCWWotN
 yEi6o0qvsFrDAqjqFYGZhrTOqRPMB/SB59d6COWteDf73Dun70og6RPdF
 0OCaoV3DWqAmx2xWkdSPcHaHDVtVc8gWPb65oJv2VOxkVPu3Mgqpvsv34 A==;
X-CSE-ConnectionGUID: HyewYbJqQMea+y8GJL9UGw==
X-CSE-MsgGUID: Gj0b+xs1RFSn9iZyV6W/LQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77002976"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="77002976"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:23 -0800
X-CSE-ConnectionGUID: z0+RRNf2TheNDpsVorwDfA==
X-CSE-MsgGUID: ScFmsvl8TKy6t8iaIY14NQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="197453611"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:23 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:21 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:51:21 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.16) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t7IlvzuORrHCVn/KH4shYoIvnFEZcJAQGG3TDhGe4qAHaPqurdF40jsuIOH275uhztES5mhULz1sIYHsGkQZAkhZRfKp7sSuGtS+aTZPYcTdow7cJWg9Xaa6kjgIcmw+X4I5glXq+85UrJ45CqSOAWXfHlTuWq8glidbBgcl+IgfH71B9j2Z3RfEhFS75UIejh6ko9840Xl6UCsmSnS4r8GOTpg6TLBulaJTUxPHcn4oh/i2gaIHG8oRxtZ0qqk3i0OrtyjnV0LdMSxNAe/AF4tcfb8d7LRvZhaHSvBkCtOqY3fjYtL1uE7MX3acJuqid6IBGI/xSmWfA2fO2lyjBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xj67rX/uBz+c28lKqWaKYt9212KhSJL1Vi6A6BRsFPw=;
 b=h1Z0B2KnkofY8NLFH93Dk8ehtPhD2Mo/Onunx3ud1UhZNaLC1AycTOfECHoMGHaTGKQg1t4TsCRqvrf1IT9zVn+SwjZ6zAoGgaoXqzLqIayC/CWoFv0/kGtCecNER8B3UovFYXZGJWAKDrO/iOOLPjbzqh5UqJPzGu8Ub1k4jSqBoWUQ8puM/bq+4OCaMjWNa/FuniIM+Eh/n+brM2OvCedod4HYPBS5v7H5XoHSucq3v3kbPcmma4F79e9817iuFY7ypc0LOS0Sip6V1vM1ItAU3Q3pylXJvGoU3hp7QkGiEhhCRG65IN9p6mzw8utYHwL+mRWtDvTReKZFsV0D0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7842.namprd11.prod.outlook.com (2603:10b6:610:128::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Thu, 27 Nov
 2025 17:51:16 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:16 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 21/50] drm/i915/dp: Align min/max compressed BPPs when
 calculating BPP limits
Date: Thu, 27 Nov 2025 19:49:54 +0200
Message-ID: <20251127175023.1522538-22-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 7f1aebae-541e-4e2f-c776-08de2ddd8ff8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?RRcgjVec/ASvQAP/qgPpIq9CLRFnRS5Lp7d5R2PGliTJQGpGtqfGIgor3q9h?=
 =?us-ascii?Q?EhK2r1aXysMwzM5f9qcmLpuLCSSoijlm+K6h5XuxT/MoM5jmVtnYLF/96Qh7?=
 =?us-ascii?Q?ju3Lh4etQAVbp6aRMZrMj/DfP7IALotIHB/Rpll8W6rA6NGkPAkT3k3Jt5L6?=
 =?us-ascii?Q?P8xnwwXF3f66MWdPnQTcM+2B8nmslc9pzhGLNlmxrZOdTR/puShAQmYMHjqY?=
 =?us-ascii?Q?GOS1e7U6l778ZdX3VUUo9ab9rHLJYO0ofjUllT24FOQkzkvCl6k4Qq5gojvr?=
 =?us-ascii?Q?zzcm2wD4cxOD58BEXbCxXoMbjkr7Qg0Yv9rzMe21aMxQOraDMR538+7kokpw?=
 =?us-ascii?Q?zV5LkrvWzgnt/YAkucOiD1+WWDOkX3vMHveyIIuV+vqyG9l6Pg7BWRf+EB50?=
 =?us-ascii?Q?WNogYexFn4pVQFT4YMTIyu+WAdrCR+8xT2O9K2Oj6b/6C+fnXnE6C6itNVn7?=
 =?us-ascii?Q?8GRnQt0+NaNRPzQEobHA/Kb+GQMmwotej1ASkoUoDuR6vGIShYapnJILXuiy?=
 =?us-ascii?Q?T5FA5T9IcB11YjbrQOuQTQEfKuN24M8AGW7tHcBkfP9QU+sq66op2VjZ9R/T?=
 =?us-ascii?Q?7k/NVN83481aJ3/p9F2UAxFRaB9Ih21B5MfWvAK1T2Dba8lofkRbpfS1jjMm?=
 =?us-ascii?Q?HkFQwLUlDY/BowIjDMHqJYwXkCbEMQws1romyxdIWg+9SOvLtxUQ6jLWW93M?=
 =?us-ascii?Q?FmqZ3mvUNNPCNowBk+VGtLk0efOKy9B12ptZy8+2HmsF2mHSSuY+v6bZhoNu?=
 =?us-ascii?Q?ZfvUDzL/mMHvoszY4853nF2qxCm9Y9lqCkgKf+zCiE2jwmBQQEFDfG4ugw39?=
 =?us-ascii?Q?pwMlrPreureHljH4NYJeror3/bRXjvW1veqHfH328n+stSj7BqLLksl7Xp6Q?=
 =?us-ascii?Q?5k3bgBstMtLMgbhd0CxHAScNsTtLKoMsDwP1FlI5OvEbEQInhHYZADtuecIZ?=
 =?us-ascii?Q?8lHx509t892IrOsh+RLuVz/AgzJ554Ncq9Wer8cOXcv3Fl0/C4WYnAQSaO0j?=
 =?us-ascii?Q?dxocms10sbzrcAMqyguiB44yS+XhoKGZYHMS9q9FiRPQw5e5MsNL0/fMBkT3?=
 =?us-ascii?Q?jqve/zOO+Sr7bedMLc+eV/MSeg0D0NaiJmAOjqeqMNcOuwPjCf+wNy56Dx4O?=
 =?us-ascii?Q?I9Gxap0qrYoEv6D0TSpyHM5xC4zl7l6b6py7SL6THb9cfq0LePA2lHhjBNqm?=
 =?us-ascii?Q?oGRSDjfgGoDMZsykoZ213a8h+o5L6L+wwuEPTYDkvH+NG0tKPzCYYiOeyow1?=
 =?us-ascii?Q?ogmiAm0QDZgCjyckD2uxruhyPWfm4EPtt4KaHBy5LRu78LfxyXGi477O4MT6?=
 =?us-ascii?Q?W9k15+yWNlPD0NNJgWdmu9a0ZHvwtIATIzznZaKEVNVEHWqreoSWxLQh7RAG?=
 =?us-ascii?Q?6rKdKWLD3izDAbTLazDRedukKj5KWooZOpAaLufRKaIQFYQIRD9pO1E1Pu3/?=
 =?us-ascii?Q?6+VyrvgqUEpW/OUu/pZl1uVKwr4EguJa?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?S32sRd9/vfsEJvDy1iU/4B87rbCRiaB9NOkV7KHtXDdFwFh/ApDwv9rrnTsD?=
 =?us-ascii?Q?u+gmGahhqTfAd92FlCHcVK+B1FetASeefUphdmXRwwez0aM0wv5Gu97A7NO4?=
 =?us-ascii?Q?mX26goiZ4odxzOJz82+dFZtwrUmGXdcJV6WlgWF/lJieOm9JXdx6rpG9Koje?=
 =?us-ascii?Q?BrJeMQT0NATpyH8jwcs3Nuyy7bN5qRv1ij258kjUSbuqhpXof6RF80TihLrk?=
 =?us-ascii?Q?nHq1ssnpZbbtb5uyophCsExb/vYw5Es7EnQI26fwCpMibYKTjcIGEshCOZEN?=
 =?us-ascii?Q?BVgzeh0/w5rzLmlBqgJOXfVDdArV95br0sktGCWTzWL8lpwhFHQAF1VwQVS/?=
 =?us-ascii?Q?4oO+7KJIT2TPKOm7IdU600i7BmQRtpmdejpQo3klBIzntiHmzFBftBhPWUvX?=
 =?us-ascii?Q?sY/GXQC1k/2dJrpLZMpuV4AKvlfbVSbFO8UJ8AHeecTh4/xPa06RgLbqdSyq?=
 =?us-ascii?Q?XJeZfG7NIs9Q0N5YRg5b/vKXHjGynxQnqXDYrUP+C+cXERG1QgSsHcpBwGTS?=
 =?us-ascii?Q?FsDvx25Srg9CraGwcFg9zMBomS8CHS4F0PBhw8J9opb4MFi8LVqN0zOEBqQg?=
 =?us-ascii?Q?Ptkp+Ru8owdFqwb5RZZway1d7qBR23qAFipMuMAxRU8acNkOVzvHeHl0laey?=
 =?us-ascii?Q?cTcLkm2St6VrZLQubTsG0R6NlEpq0Dq1irWeTJiaNeO8qpKRZIf3Q4VsRhG8?=
 =?us-ascii?Q?qvob7EF3dkU/dOPsD25dgzk/H2hw8JsutNybuK+CgXQAUgeLCKetolL2COua?=
 =?us-ascii?Q?PC7zw+UgFpRidlzfyVSj7HtFHWbK2SiEyvJYwHOFWpW12tsdnjY5jMg85r0R?=
 =?us-ascii?Q?+C3zmfLU+TBssz638XMu25uR9/aJtFNUdS9N8nNIyKJRwOCxgquN58L/ax27?=
 =?us-ascii?Q?B98JZhT/ZXDkunwnw24Z5pv/WNRSBAbhW9YFjpspu0MSx4X5Ty1zrMvTgSXb?=
 =?us-ascii?Q?I4wklfyEtVd3x0aQ3ZtASGSHoBbq8oUWfXavxND7WrKHvgkS943gQqc8pV9K?=
 =?us-ascii?Q?OiTykXoWP8txx0YAWueY6FrictdRzEPw88pDaxMKjlCNeSmzEnmtv8Hlsgu6?=
 =?us-ascii?Q?PPMu12pqOHtlio1Femgp5yK72JvaHd84cEdxpsP7pppjzycsbKAH/jv4csZf?=
 =?us-ascii?Q?Xi0aY7UVyRSr0wYsCq0TRMlrnCXXyhkE/rmlL/h+dFLtvkbOd67H9OcwrviS?=
 =?us-ascii?Q?pjrIwgIcRK7sW/EqWhA9BS2XyBg9C6H0ThMtZCpQilLfeBvd17rYsXM153wS?=
 =?us-ascii?Q?DT3/LYP17UsR31eOtUsFQpvOtOZoBUdXCZ6I0xSMCpHHFS8sDOQGuaKXiLf+?=
 =?us-ascii?Q?9uVM+L7KLA75hzThJHuXfyRLMaC44V+wPrvMcFOBFr2BHTD4qUnKwSMbY2bi?=
 =?us-ascii?Q?1TZTjvRxfQL5YZzSXnCzNK9nMiTDrfq0lQmaJXy1jhEVpY9fu7aTkbQtaVJT?=
 =?us-ascii?Q?78+168f0vieG0dV33/KiVrSvknDOj1sugeA2Rn7Z6lKCFkf4dqVLeHUlyoOO?=
 =?us-ascii?Q?26Oq4kPiKDo9kQaFRZlCT/HqLcz2L53HbdcMp9R7m6DYSImhk4L4AMuhwQ/i?=
 =?us-ascii?Q?YtFbEQEhiyWuruyqR3B3aFFD7zL3ZCVcQowW+bTWioM7XQKjHQhb2Jn+oxdZ?=
 =?us-ascii?Q?F4Hznvdugfb9lIzEJ5mcNJ7QXDtPGlIOAxywFE0yUCYc?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f1aebae-541e-4e2f-c776-08de2ddd8ff8
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:16.1299 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yDQnz4VOImh/id+dLRUYQVOngPkQhz7K88GNtkTIL3QygNKLTn98u4/x5mQPimxp6eSTehryvfcJMkvrV2bH2A==
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

Align the minimum/maximum DSC compressed BPPs to the corresponding
source compressed BPP limits already when computing the BPP limits. This
alignment is also performed later during state computation, however
there is no reason to initialize the limits to an unaligned/incorrect
value.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 57 +++++++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e7a42c9e4fef1..801e8fd6b229e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -867,6 +867,20 @@ small_joiner_ram_size_bits(struct intel_display *display)
 		return 6144 * 8;
 }
 
+static int align_min_vesa_compressed_bpp_x16(int min_link_bpp_x16)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp); i++) {
+		int vesa_bpp_x16 = fxp_q4_from_int(valid_dsc_bpp[i]);
+
+		if (vesa_bpp_x16 >= min_link_bpp_x16)
+			return vesa_bpp_x16;
+	}
+
+	return 0;
+}
+
 static int align_max_vesa_compressed_bpp_x16(int max_link_bpp_x16)
 {
 	int i;
@@ -2261,6 +2275,40 @@ bool intel_dp_dsc_valid_compressed_bpp(struct intel_dp *intel_dp, int bpp_x16)
 	return align_max_vesa_compressed_bpp_x16(bpp_x16) == bpp_x16;
 }
 
+static int align_min_compressed_bpp_x16(const struct intel_connector *connector, int min_bpp_x16)
+{
+	struct intel_display *display = to_intel_display(connector);
+
+	if (DISPLAY_VER(display) >= 13) {
+		int bpp_step_x16 = intel_dp_dsc_bpp_step_x16(connector);
+
+		drm_WARN_ON(display->drm, !is_power_of_2(bpp_step_x16));
+
+		return round_up(min_bpp_x16, bpp_step_x16);
+	} else {
+		return align_min_vesa_compressed_bpp_x16(min_bpp_x16);
+	}
+}
+
+static int align_max_compressed_bpp_x16(const struct intel_connector *connector,
+					enum intel_output_format output_format,
+					int pipe_bpp, int max_bpp_x16)
+{
+	struct intel_display *display = to_intel_display(connector);
+	int link_bpp_x16 = intel_dp_output_format_link_bpp_x16(output_format, pipe_bpp);
+	int bpp_step_x16 = intel_dp_dsc_bpp_step_x16(connector);
+
+	max_bpp_x16 = min(max_bpp_x16, link_bpp_x16 - bpp_step_x16);
+
+	if (DISPLAY_VER(display) >= 13) {
+		drm_WARN_ON(display->drm, !is_power_of_2(bpp_step_x16));
+
+		return round_down(max_bpp_x16, bpp_step_x16);
+	} else {
+		return align_max_vesa_compressed_bpp_x16(max_bpp_x16);
+	}
+}
+
 /*
  * Find the max compressed BPP we can find a link configuration for. The BPPs to
  * try depend on the source (platform) and sink.
@@ -2639,6 +2687,9 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 		dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
 		limits->link.min_bpp_x16 = fxp_q4_from_int(dsc_min_bpp);
 
+		limits->link.min_bpp_x16 =
+			align_min_compressed_bpp_x16(connector, limits->link.min_bpp_x16);
+
 		dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
 		joiner_max_bpp =
 			get_max_compressed_bpp_with_joiner(display,
@@ -2663,6 +2714,12 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 				    connector->base.base.id, connector->base.name,
 				    FXP_Q4_ARGS(max_link_bpp_x16));
 		}
+
+		max_link_bpp_x16 =
+			align_max_compressed_bpp_x16(connector,
+						     crtc_state->output_format,
+						     limits->pipe.max_bpp,
+						     max_link_bpp_x16);
 	}
 
 	limits->link.max_bpp_x16 = max_link_bpp_x16;
-- 
2.49.1

