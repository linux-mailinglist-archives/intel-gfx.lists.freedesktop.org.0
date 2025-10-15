Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51293BDF9D7
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 18:20:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E68110E881;
	Wed, 15 Oct 2025 16:20:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hu4ReKgE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E46EF10E87A;
 Wed, 15 Oct 2025 16:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760545210; x=1792081210;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=naYpulItFnRwb1NCJmtTKt2Z/TDFQJM88ye6+DWa7yg=;
 b=hu4ReKgErNgBRNBipZB9BoEXKeaC8AvYvVs1wMVn/0aVO8wui5NMSu2A
 RJeeg5qhufE9mrhxj1LDdbJd5Ad44Z0y9OwVKr2ntjDL2NOa/BuvfFs1f
 aFh13zYODVrrFjdz+AsQdQFtj6zikP+XhBew8fpnMM6lGa8HtsodiCC/v
 t+yh10y9sG3CM0Vgms4pEqiHRVJA1zJkd23newijcQPiLPDSCtjxdFHTl
 xvzASV7vYhH40w+RTSGGT6PjlLuf+jjmoi01FV0j1XZxdOxv5U/RGW+PK
 gUWPyxwBk783YLU3zTe2XFFTYtRFp3gp2d5TwAJAycBqBiwrOo3Z2eI6W w==;
X-CSE-ConnectionGUID: OnCSJLuxQg+fmY76um46zA==
X-CSE-MsgGUID: WvnojCs5Qv2F6+BqEk6rCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="73837275"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="73837275"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:20:10 -0700
X-CSE-ConnectionGUID: 13fFibrMR32ukJVytnSybw==
X-CSE-MsgGUID: cyJYGgAcS8OU6j0M2qz78A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="181344518"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:20:10 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 09:20:09 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 09:20:09 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.28) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 09:20:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lRcMw3MnYPAcBvBbqVeFhKQ/157j9MLRmjEd2xktVBcOiV+c/zI+7TKEIpUwJQZJesatLP63Bpj7QTpLzVlvY1E9d+4qJzyNsNVvSqhH1C+rwCOBxENZaP/4Y8Xpl54+V9DDeEyj/U4goqt+ZgGhkYesinYifwhDDAYr8MDPZTmf5/7U8IkcdyZFVnDQXdLp3ayZYDbUnQKIJTr4ZC+YsZP+FeO90bA7T1Wi4HjWxa6udnuuB5rC6xcJBupP4TR5mYuFk19Yj7AkRAgiJV7ApEl/tmLmH9ZPE5iePvmNwWr3KToxGAjGX38lc06xZY0tLWFlPWvmj9x7YIedNyuM8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KpO7qePpchnKMvFq/zHncX5kChKEUjp5LBfDBZD04I4=;
 b=gKzBc1N6shMnJPOt9lS/3emA/ZEfJwt/GqA0yitUnfh7kVyhdJlSKld77bwsomTypOZiG5Z6NdyLqmgkit4u5n3SHk6Qf42DT5hL7J1T/NHT9VYZSCO9UuZ0mn0UWQV+YcgQ/spMWvRYerwZngvuVG70iwa5SwieTXWNk/zK8QwmIW+zU33174NmT3Fg9Jf2ES6/m5dThVMN7fTkF+8cvxe0CgD+7vqhAtOWiJBTO66q1PXvKrYoDia0wx7wgFm2GcbVusw/reVfMQjZ4yUFwBJUl3WEt56Y4p9pE2Gq5yLdHp7BeTj0Sf7UeGcTDrxFK4bkuro/eJrDiKFwedAyxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH8PR11MB7046.namprd11.prod.outlook.com (2603:10b6:510:216::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Wed, 15 Oct
 2025 16:20:03 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9228.010; Wed, 15 Oct 2025
 16:20:03 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 3/7] drm/i915/dp: Export helper to determine if FEC on
 non-UHBR links is required
Date: Wed, 15 Oct 2025 19:19:30 +0300
Message-ID: <20251015161934.262108-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251015161934.262108-1-imre.deak@intel.com>
References: <20251015161934.262108-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0188.eurprd04.prod.outlook.com
 (2603:10a6:10:28d::13) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH8PR11MB7046:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ecaeef7-78fe-4a41-901b-08de0c06b218
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?gAJVJgiAo6FerxL9rJ9YppsuE5+f91AA4LBfoGrREGaM7TbM8x2VUXe2slxC?=
 =?us-ascii?Q?ULpGEojUVrVs7JEvks7Z4LpVDiuqIpkq2o1VT2xaiJae3dsrN1hleCvAEhKc?=
 =?us-ascii?Q?N/x5OESC5+a1gPAWpf/OfY0ue4loUN7AKfu/sfGgrS2mfW1fApDNCVtaPfZC?=
 =?us-ascii?Q?GTs+oxcptH88IjFfOLnSPZdjhjaWva58F0vEzSV4fW06nM1lWu+JsUojNI0i?=
 =?us-ascii?Q?zdAf9znPrK0So07ypchkY3IN1YSBNqZ6qhvBO33buvbvMdtUjAny78c/jAgr?=
 =?us-ascii?Q?PuLduiQ5j8JC452zvIfcjOoA80JXKyXqW5zgP6i/yMECJBvq7hobnbhY5c6x?=
 =?us-ascii?Q?r8K+VXhkJfE58rooBmryru96K7lgV6XrWo4DPD2VUYT7TCsjKnUrbIJf52c3?=
 =?us-ascii?Q?qOU8pFBZqvBFq7/9uRnJmsNlmRWDCk3+xYZF/IZCKmXGgcxqlj1Fa7RoUkO2?=
 =?us-ascii?Q?imw23VZTPuYM283NHycNeMKP+RwuktRTLrefoR4FBwXA7Abhmab9TTWkA8NJ?=
 =?us-ascii?Q?UPXVpNsSJXsHE2bfaXGK/DBUHU79FVjecWLExzAQL4sHxFBP4+GBCCGiWGM8?=
 =?us-ascii?Q?c5WannqEjQvgtfMxrD+/8IVh+w/Wy6bc4age64cMdtqjQEvOTYc17q9W/lmO?=
 =?us-ascii?Q?posPgxgkE6gZxtIanRAWkFO6qh0hFjMaJnzAXQzo08D4htmqarNL0wIZWYi5?=
 =?us-ascii?Q?BW4O0rtjOFNe8A+g8J969QWQehjkO3ScgIdZdFl1M9dZmmOWB6D06QcxKup1?=
 =?us-ascii?Q?grK/+TbetP1keekPtjl4zNkP1I67Y5IbzpwT8RUi2I9ZQEPPmlwBmzux+TJ+?=
 =?us-ascii?Q?zHywnRDFLXR7lQlOCZ9WqOXE81fZBejOc6t9EWt36EkvK3sVEasVUDMtWXvF?=
 =?us-ascii?Q?1ipyi3rWpkvOFpmL461eGbG4QCJ13B/dsM5xWlH1KFEMUt8zDsdgrnmf2blM?=
 =?us-ascii?Q?ZvTTtbQQ5pqENhQqqiZCbJvbfX+WvYr5Y2XlRxICFtJ6qFedQyQiKY8wYBqu?=
 =?us-ascii?Q?FR/z0SOlNmFjMumdt+2oxVgUNLZcjiUtWG5FfXTgpf3PkU/sc2c7Q0Rp4NpW?=
 =?us-ascii?Q?HzXZoEGpnKYhMxO766RJcJY1OzsDZPbfAzMEJzt6ahXWhrRv8i6VG/NFkSid?=
 =?us-ascii?Q?yrEAJub1l+N41lHEYaIJNPc+ng59ZAvFYlEHfDJ0lLlddO9muqCb/OMJ3pqy?=
 =?us-ascii?Q?susB7gsl+ePFFS341WMdlkG8fEpjFqdKvqrC/bcaNXIDF74MIc4h8huaiQXN?=
 =?us-ascii?Q?gE4xlERvhr/NW7eAPeSrfN5uEvypp2XpfQhcOt8SO20G2l13j+fV3qqqHHsB?=
 =?us-ascii?Q?8TA0iE+FIfzHLpNsDQo3k/P7zZ+zMmqZodNlC5yqkT+14ZcD/E8ff088WZxO?=
 =?us-ascii?Q?0gzHJZVcRwrh/gMoeMqpaMVyxhJ3tLzC/LNcCjPpjF1gI2JPezO60krfVa34?=
 =?us-ascii?Q?Mo4RQ5FhpsTzmSOzHVRgDZYqEAQOcnUs?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bofB3btP/vrA11pwYieRcsPQs60ODXtoUbk1huksnEtFdatiLAEZMfmTUpoq?=
 =?us-ascii?Q?uCcHzCYBSx2bPaVp4tJLQg8ZFgzJhJXtnS1TwHhBJNg2QtgL2W3GdOou7GD1?=
 =?us-ascii?Q?I+2s8JKRdkUHD9kmoyEGSDXYKheM0Ob584zGCzpweCQX27Q5i+l38OdmwiJl?=
 =?us-ascii?Q?U1PaZRc8+7TibC/ELy8GS270omGkFIFZ5oC8Gg8ph/6xLCUGljWXh+wl5ceV?=
 =?us-ascii?Q?KcHXYkdbhfcq9hM/7Zjbl8ZqKK+67d/Qh2iwz5LnqiJbsMG6Gsc/1R5Odogp?=
 =?us-ascii?Q?qn+KHTaVwFX7NebAgz31+DtOoUJILQSiI1YCNUFGP+Ml24L2NsH4/WILqag4?=
 =?us-ascii?Q?yXCBrwhp3YueY1Gfca7kjdDor1utncg8/ffZM5NYwNqqNAFyphKpXfWcPaLd?=
 =?us-ascii?Q?AauaRj7isxCMiem6A2npg/0geLGO0MDZ2ff/Hoom3k27joJKpVjuREsVtzu6?=
 =?us-ascii?Q?KaxlPhdirY8D5UcGiTmJZ7cMEhTCDG8i4+neHthsOrqxUKJ/TGj2yEvr5GMA?=
 =?us-ascii?Q?8IB1PrNEOD3O1N5NLN1pRYSYn2/uMGyGmAPhC1wEWtNbnL5HVLKi373pveCw?=
 =?us-ascii?Q?sSeyCUyRjtP/uKRsNFxN0m7Isu9rmrWA8VcjyspgfBzFQKGjXD/qM6FMZcTA?=
 =?us-ascii?Q?VkWggs8Jl6dfW7PcFbBKgl1vRUdNHvEihOhSGtY/8d2LdIjTDHz44DoGNRHE?=
 =?us-ascii?Q?v/pQZrMsfJmSj+/gN2uwSwhWKUcFfrsJgScQ52K6fc8ef7UL7MxcGl4Ojdfv?=
 =?us-ascii?Q?1SB9rpxFlvLJdSoSXtFQzWNHvlqVX0PvKNMoziSrkojsJOG5/QaqF7eso6Qh?=
 =?us-ascii?Q?CqhRU7IOGfBZ8X5mHZ3PXG8ZbP62xHeURneEy3h65EMovVJPAGDk2w+lZjzN?=
 =?us-ascii?Q?biCA3OqjAQbVTOXYRaO7IELrPGP1X4r9fNWw7tDrq7a+rtg2wUC5mxdj1rUH?=
 =?us-ascii?Q?KPvsoGDO7hY6Eh+h5jC5NtxRHUuz1IZuvt88go9vGf3nvRa14Y2XoXcSvIlR?=
 =?us-ascii?Q?verXwaL/AtjTCuyVfjOmViIKy1tic+ntIQOOF6qIeE76GZ4qjbs6SMDGmAOj?=
 =?us-ascii?Q?I7fqRrSlfqL/MJwSf+6fTQpiuGZwwipJkb6ohyeGZ+Ujz+nm70my+3KtjJEN?=
 =?us-ascii?Q?aFnv4XpUWMwcz/hYiO11WnKQcGNn536/MQCf64uZk5WYLxdSRebdfbbsTUnH?=
 =?us-ascii?Q?2w/Q0WQGaIBrNek8fxINI/MNaEm2kthcQdGu3UAK+Zh4+mJwBlf6iQyTwuC7?=
 =?us-ascii?Q?Nt1cZQ48PUaB1A4g8sGvc7kjMvDbgOHHOVPUq6tfSGWKy/fgQzDRrAnwWPBS?=
 =?us-ascii?Q?KAJLms+WI2CkrKE9VXpdc/WdzxeoiFbJiRli2gzKR4lbZdvbexwUA8/Fu8cC?=
 =?us-ascii?Q?bv3H/Ry2fL3SsOkcb4/OP9qRQYLt/WoAUHnJDe9FUI1MiQ0Gh4f0KLD9cSIV?=
 =?us-ascii?Q?q78vPixAjqWl5YCuOpq9YXJSFwSaPYiT05yFbcXY6OdPXEJUw7gwvEw81YDV?=
 =?us-ascii?Q?YwSAoyV1KwWMkowzscy+pH7ZWCYMF5tOaIlEQufnyFGxy7qYiygM0BiUjujG?=
 =?us-ascii?Q?At2UUWckRFmCHkgHgjWShHeQdfr4ESHEDiDC+Js/yueE3oRggu0zDQD1MbUo?=
 =?us-ascii?Q?QoNpR5KAFOAV/sBt3hg1nuHo5KOg3tb6fWUM4WT5op7Q?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ecaeef7-78fe-4a41-901b-08de0c06b218
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 16:20:03.1622 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UBwnAxtpaWjD0jATYc2ePqHDGDZuGpqe+ia2s38iIuoBJBS5eNdMpu0AKsxEOwNKsnIrY9Wqtjyvq/2omnr/gQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7046
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

Export the helper function to determine if FEC is required on a non-UHBR
(8b10b) SST or MST link. A follow up change will take this into use for
MST as well.

While at it determine the output type from the CRTC state, which allows
dropping the intel_dp argument. Also make the function return the
required FEC state, instead of setting this in the CRTC state, which
allows only querying this requirement, without changing the state.

Also rename the function to intel_dp_needs_8b10b_fec(), to clarify that
the function determines if FEC is required on an 8b10b link (on 128b132b
links FEC is always enabled by the HW implicitly, so the function will
return false for that case).

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 21 +++++++++++++--------
 drivers/gpu/drm/i915/display/intel_dp.h     |  2 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 +-
 3 files changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b523c4e661412..3ffb015004c54 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2365,24 +2365,29 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	return 0;
 }
 
-static void intel_dp_fec_compute_config(struct intel_dp *intel_dp,
-					struct intel_crtc_state *crtc_state)
+/*
+ * Return whether FEC must be enabled for 8b10b SST or MST links. On 128b132b
+ * links FEC is always enabled implicitly by the HW, so this function returns
+ * false for that case.
+ */
+bool intel_dp_needs_8b10b_fec(const struct intel_crtc_state *crtc_state,
+			      bool dsc_enabled_on_crtc)
 {
 	if (intel_dp_is_uhbr(crtc_state))
-		return;
+		return false;
 
 	if (crtc_state->fec_enable)
-		return;
+		return true;
 
 	/*
 	 * Though eDP v1.5 supports FEC with DSC, unlike DP, it is optional.
 	 * Since, FEC is a bandwidth overhead, continue to not enable it for
 	 * eDP. Until, there is a good reason to do so.
 	 */
-	if (intel_dp_is_edp(intel_dp))
-		return;
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
+		return false;
 
-	crtc_state->fec_enable = true;
+	return dsc_enabled_on_crtc;
 }
 
 int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
@@ -2404,7 +2409,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	 * FIXME: set the FEC enabled state once pipe_config->port_clock is
 	 * already known, so the UHBR/non-UHBR mode can be determined.
 	 */
-	intel_dp_fec_compute_config(intel_dp, pipe_config);
+	pipe_config->fec_enable = intel_dp_needs_8b10b_fec(pipe_config, true);
 
 	if (!intel_dp_dsc_supports_format(connector, pipe_config->output_format))
 		return -EINVAL;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index b379443e0211e..55059bd5c7efb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -73,6 +73,8 @@ void intel_dp_encoder_flush_work(struct drm_encoder *encoder);
 int intel_dp_compute_config(struct intel_encoder *encoder,
 			    struct intel_crtc_state *pipe_config,
 			    struct drm_connector_state *conn_state);
+bool intel_dp_needs_8b10b_fec(const struct intel_crtc_state *crtc_state,
+			      bool dsc_enabled_on_crtc);
 int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				struct intel_crtc_state *pipe_config,
 				struct drm_connector_state *conn_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 27e952a67c343..d0590b5ffffd7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -296,7 +296,7 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 	/*
 	 * NOTE: The following must reset crtc_state->fec_enable for UHBR/DSC
 	 * after it was set by intel_dp_dsc_compute_config() ->
-	 * intel_dp_fec_compute_config().
+	 * intel_dp_needs_8b10b_fec().
 	 */
 	if (dsc) {
 		if (!intel_dp_supports_fec(intel_dp, connector, crtc_state))
-- 
2.49.1

