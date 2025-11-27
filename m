Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D356C8FC82
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:51:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6382F10E86D;
	Thu, 27 Nov 2025 17:51:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D+fRRFVd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F227110E865;
 Thu, 27 Nov 2025 17:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265876; x=1795801876;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=0Mhv1/DNDpxw0P9yKLVYobbtz7nrEj1edMbMszeIFew=;
 b=D+fRRFVd1tG8lv8OnSgNntNpNuTbJAkrs7ZXIrAQyKoAKM0ZdDTrEXMC
 RAJ2oR6o+yivC70tOVJOc+0nzuDkFg88FNHHvR7CBo67X2yiBZiV+JAUa
 RUbG499bJM4wS+UFWWEgwNMxGyVJRakDT9mZllwv/x7WxrHv3xOx4FRHT
 LwPll6lAzI70NI9xiXHnOoT35aMrQbzvDvEqL8z1YA9yv6mKTPPTl2Iav
 vVRTUHo0J/Dh2+4Vy65hMtuA6McMvxBYbUt1St/k0HipXenYew87zHoDg
 Weml/i3MjGHsH/iy1QGyP/JZbaX28++Szzr298DG+DxPppOpHRXr1p9+2 g==;
X-CSE-ConnectionGUID: lPhK1SNAS+yXcJDmqlaihQ==
X-CSE-MsgGUID: bIEUCmxZQR6KTaNZ4mdH8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77002950"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="77002950"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:16 -0800
X-CSE-ConnectionGUID: cG9S2btiQv2OS2Bqzt8zrQ==
X-CSE-MsgGUID: RwKp5qKjTVOCseOYv5rivQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="197453590"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:16 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:14 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:51:14 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.37) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kLGxHxkID54OCdFXZwgTdEGHjJKBMmbIMt1uvjU6tfyRebZANEyXwfN/q335Xfe6Ti3gXnjCh5A/b+ECgNi+iX+lbXZcGJdfpRg2MJH3ZNYYSfL6cqyMgRB7MtGYZXugSz57AdhM67s00sh9CIV7TtcAh7znPJUMU6YheePpRMUWNSS9wLfqfNuDwgoTC0GUvHdSFmcWN7PuMTh6boWdnyor+FVjKGQwaCTHD1mXx6uvHgLXSoPpUh2xV0zTR5DxlrfVKOlWJ/oMVrDDOzvsP8PBLRTpFcMoTamdeI0Jai6kMT+2HrnH2tmtbPTTnOPty3SmbtAMs0bmYQ2YjEqOMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uqVDhefHNWtk5iPxCIbU1fMKqYpyzw6dZ7q15kDrtxI=;
 b=fvJfveTKvw5ByzNXUDZ7/znkm9q3gE5IBOE3+7ahboWDInQLcKgdllejyTFrC253qfNavKnuc4ayMF6Al8JdIijUf3tl/R/hveMIdRWP9vCrgHw8m5FTobdH4IYw4Z6k6o8Ds8QqNQRK1qxAd/qU3Dz1O7qqgs+1N3RBKiPDcxkZB6Rl8aFvJ5vOQ9BN7X5+nsr/+z9sJXRmv7BiJZpzNnE/gUBMvX/yph9U/iax+iP0PjsTjbBIrS/FVdKq7XXxC3X00NERm38O4NcFaLbzfZddM0a6PTbiIQLQNIA/8hTeA6i2MRBs9iWKMuA98Pa2F5vE62q79ObaCF6N/1Yklg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7842.namprd11.prod.outlook.com (2603:10b6:610:128::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Thu, 27 Nov
 2025 17:51:07 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:07 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 14/50] drm/i915/dp: Factor out align_max_sink_dsc_input_bpp()
Date: Thu, 27 Nov 2025 19:49:47 +0200
Message-ID: <20251127175023.1522538-15-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 2a060557-05bf-420a-998b-08de2ddd8acb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?zZ1AKFQShT5gUQF3EnEodFqNrqwf6viw4UgrWtKKaPw3h0fXJdPyK++vVYnS?=
 =?us-ascii?Q?AbMF2Cuv8frA2+u++k8vjB6AwBUbYYM6Z9pT0sx2eq5peEeaeagHv+Edj8Xj?=
 =?us-ascii?Q?3y3+xwhm4JQzeWBzGrje7+HkQn+FPsO3ExH76wy2soMw7/xDXWUTXerX5wHd?=
 =?us-ascii?Q?335wSXczq7rl7SmlJhruIx6zK/3vG1DpU12iYOFe7X5RX3mxy+qXn1I0Bogo?=
 =?us-ascii?Q?FQ13h4ZbPkqpbPjQ1I6EWdUALGVJlvvRxIGYrS3Ne7yvrwID4X8Ze9f8bJKG?=
 =?us-ascii?Q?Cfu+/p0aGtK0SZBmef3BJMhfOviwCucQ10U81A8jC3u7yKHVUzDedo+1JMhe?=
 =?us-ascii?Q?QS35PsScFdNLvPdwEZARJqYcg10zEkSBQlW9KLDpUCgtiMqEnHu8gaJLZDs6?=
 =?us-ascii?Q?zHlYy+HoC+jQOfMjTvlYGXEWXd8bLljJipHAikSQR8MicYHSZbbnl/gO+Ld5?=
 =?us-ascii?Q?Ekf18foLuHYKtJiSGYINoaFImsc0EHeeW88IM0RxpXocDnY9HURcamtulCrA?=
 =?us-ascii?Q?ShU5nsr1mM+EXioBr/0lpYrrTEMJDvKWz8hFo9Y7YoUGwWelAw+EzDkrOAXq?=
 =?us-ascii?Q?0juJoSc+biD9o69c5FqHlzS/hp1A3HB13o6pPYLZUtHI1txawry8bth3ZSmW?=
 =?us-ascii?Q?On7zkk9hTAObrTDEXfdsfUWasSoppgIR8PNTtRODYCDFq8QTWbteBikQ+Fmm?=
 =?us-ascii?Q?U7L6PU2xOIpLsrlcNAiTIu1Y+ZU5otmyAcwKTjBRShWTFbtqqE/9mJ4pO7fV?=
 =?us-ascii?Q?d4BhRRAiwkoEKivi3MEbWrusFjL6LkBH1akWK5n9foKlXKeEdusrVByiP/B4?=
 =?us-ascii?Q?6HJKessV6+pTrxKp2zMlf3+Kixow0R6W++YWJYixWrCTtyrIGt6eFJ2OaP+H?=
 =?us-ascii?Q?yjB54jmATjh0Ps0MCL4OuDiZJxNL2G7Zmb0RrHn+EUjAX2sj8ozwx7QJHoWl?=
 =?us-ascii?Q?NqKi2YJfA/2HGBNXKOuZylN4if6vqDyd53JLGwwlcxMG/iNQa55oRH89Yj+V?=
 =?us-ascii?Q?12lW3N/SA0Tql9KHtquVNztRLax7n566YXaxSdmna3Kk0QCqgw1iel0CPNdZ?=
 =?us-ascii?Q?tPycI2n2x9Hi909ooQaAFaNFUy3J29/nQa3mu0bcWL8TH93uHxgtqxGAnDcm?=
 =?us-ascii?Q?JU5IRotdDc6SlAVE/xfqruUOTjS/njZw+AAyw7KUowCv3ypjS5zWqEoFTRk+?=
 =?us-ascii?Q?Rh6MZnyDuPCzQkF8BsGTXRiO5+SFKnq0839YHIO+/jfVYs85I8tty0gHtjpx?=
 =?us-ascii?Q?7tGfXQL5AlLU/FJ+fAac3Un0C26XKXXeK45ThIGmuRQCH2f8PrxNmKrplfY/?=
 =?us-ascii?Q?C4IP17Q9cMVe5dfRxWECOIFmFLIeLF/MEdDHD72QgfQZsrxcCj9YO2NfmP+B?=
 =?us-ascii?Q?sBu5qZImRXwZ5fYRpgOjGHUHJOf7jofLsktO3t3N2sWTrNGDTLGcqwlfMZp1?=
 =?us-ascii?Q?qYsbCfxCw6zm4YAfB349BUww7lGRVpCv?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?R4sAHLMsH3EYOr20RPUkPGWRj5qM15FHlTGQI6ep01qhUP7NoSSkQJMMUgr7?=
 =?us-ascii?Q?KqDhdvaLstYFDxX1TPfr4dKowSVwf9MaEjGQeaK/KRfRMyqrsjMkMufwSz7l?=
 =?us-ascii?Q?VJNAwUaBIggCHe5Irq7hC49ccI+S1ByNvag6Y718tgjcxZW2/IWf6SBaJdwP?=
 =?us-ascii?Q?cFlx+9Io67TsG9pd1RCfnWF6evlswDM+lYhIOTK+ioQoHYlBNAK7704lhzjT?=
 =?us-ascii?Q?2Fgr1vQKIEJlpVLs5T+0kjVKhy4zDBOhwHXqC7KqYyW48xUtTOTTwRgbzQqf?=
 =?us-ascii?Q?0HrfCxwta8Cpat/ryNxRFq1uvakOyR2bWDrT32q22J8VHpoJUXexOCIRnGVp?=
 =?us-ascii?Q?0VKi30PG6T8WVN+LboMksVZlXzfRVGDPh51GXveVwLFUYu4j0BwT+aWqz++G?=
 =?us-ascii?Q?PgtfjoINqsc80abUuJs1dIYDPQQa0W67MSHLWjEvbz5ZMrj2UOOYw3INajrv?=
 =?us-ascii?Q?xJteug5dmGNGvbPv49YYBIKOvxt0RRizKxb4i5zfggj2/hjOtQDE4D3S0hM2?=
 =?us-ascii?Q?u/Th6TAJri9ef+WRaggQoERkd+aZLT9fftyV8ck8GcRuym8Odfnc0RLphq/s?=
 =?us-ascii?Q?tK3HFmBGAjQqthePXj9BAygjIdLAvwrXY9ncE8fNJqKoZegQQ+9W3mDPbHXL?=
 =?us-ascii?Q?ej9rxSHQymnTw/9mQe7IqmdbhveyG56/rOeWeZs0Noxt+tqIOjOwl4Gxe6D1?=
 =?us-ascii?Q?FnMwMqOPGWyC8YTXyIU/127HrZRW9SbIMt8GDYbU3IsXCCvoJrZRoGF5CA00?=
 =?us-ascii?Q?uc9hD4rrdrVCqr1uoYVaS2JkKUAfTtJ2X6ObSNYUtX/Mc8qJz2naJVGBoT49?=
 =?us-ascii?Q?qkt+x6Vx4o8776Ta3zruF8UwQ20blQa8Qgvmz0zTs5soIXJMgZ/SqD7MT2db?=
 =?us-ascii?Q?+H0jvSJyz+yfeLuZVwgwrupGQ1o1KLoaSK4UNMtBCQdwm/dkEu19JwVbMWl8?=
 =?us-ascii?Q?PfWgCifJSQdbVJ/uux67D/zmgYgEz1cQ4fhJjRg0/DLwOZjFTwfRxyXW8Tyg?=
 =?us-ascii?Q?XHPR0kDqvRKaczjQf1zLb/orIopdv3iWaK1/Es53TVHUmOSMqFoHb7ITvyD7?=
 =?us-ascii?Q?p2qOfzLUYN8CGoQ5ly/4jPDFPgXUj87N2DWFNn+JW7SbtyQQh2wvoyuUSA4b?=
 =?us-ascii?Q?dIA+oe8hHZnoD6zkckA9zcAY8/QYhSB/9wmRLiXVejCnk4zdoxsQcUwJKi6w?=
 =?us-ascii?Q?ji/Yw4/WSzfih02EcHxXT7e7lZe1p/Pa1JtMg4rvO0XAv/L2KOEPhvSYkmz6?=
 =?us-ascii?Q?CToRv5lghWodxynx5NSrdqh5EjkDnDMY4r6RkOq6C2E6t+FSZ4YOPPBzZPfz?=
 =?us-ascii?Q?gg6lHNmQBQhvprt5lGVW8b7K4wdnZTMnKHFJjTuUDywyF6MNtUiZowasJw8l?=
 =?us-ascii?Q?RPpW3K3kApcPTdRTA0anoDRtPtGOhRTiD2fb8W4ZWm1JJP17neCxnkVpEcmq?=
 =?us-ascii?Q?iWQdqybnOdG7wsxOYdnIcq3K3vTy+ONj9HKiBbhzSFHWZIhaxHH2zQ6EB6oF?=
 =?us-ascii?Q?w++8xxfA5NlWYIR3GSLMCfyiTicCq3qIAmtSal6t8lkWkREMoBNrTIMk7GYq?=
 =?us-ascii?Q?bNMHdVa5KTFvICjXklcxMJNa1oJe5FB3dKRZ05VV/uNOzfCafhwEVwO2656A?=
 =?us-ascii?Q?5xNNNahTS+RreXARhtPPjCmyLgubjg1tat+T0npgaCIK?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a060557-05bf-420a-998b-08de2ddd8acb
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:07.4180 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hry8zOfwWynkcegPhE/x0Qaok79Z08auNihSqUgRak4q+0s5Opj2i4IC9zrmi6uPuYHG39tb+cr6VTeObEqYwQ==
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

Factor out align_max_sink_dsc_input_bpp(), also used later for computing
the maximum DSC input BPP limit.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 28 ++++++++++++++++---------
 1 file changed, 18 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 000fccc39a292..dcb9bc11e677b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1893,12 +1893,27 @@ int intel_dp_dsc_max_src_input_bpc(struct intel_display *display)
 	return intel_dp_dsc_min_src_input_bpc();
 }
 
+static int align_max_sink_dsc_input_bpp(const struct intel_connector *connector,
+					int max_pipe_bpp)
+{
+	u8 dsc_bpc[3];
+	int num_bpc;
+	int i;
+
+	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
+						       dsc_bpc);
+	for (i = 0; i < num_bpc; i++) {
+		if (dsc_bpc[i] * 3 <= max_pipe_bpp)
+			return dsc_bpc[i] * 3;
+	}
+
+	return 0;
+}
+
 int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 				 u8 max_req_bpc)
 {
 	struct intel_display *display = to_intel_display(connector);
-	int i, num_bpc;
-	u8 dsc_bpc[3] = {};
 	int dsc_max_bpc;
 
 	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
@@ -1908,14 +1923,7 @@ int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 
 	dsc_max_bpc = min(dsc_max_bpc, max_req_bpc);
 
-	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
-						       dsc_bpc);
-	for (i = 0; i < num_bpc; i++) {
-		if (dsc_max_bpc >= dsc_bpc[i])
-			return dsc_bpc[i] * 3;
-	}
-
-	return 0;
+	return align_max_sink_dsc_input_bpp(connector, dsc_max_bpc * 3);
 }
 
 static int intel_dp_source_dsc_version_minor(struct intel_display *display)
-- 
2.49.1

