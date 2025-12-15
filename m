Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2857CCBF885
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 20:24:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 985A310E505;
	Mon, 15 Dec 2025 19:24:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XHrmG4Wh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8409A10E4CB;
 Mon, 15 Dec 2025 19:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765826669; x=1797362669;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=tvJ1aTSx7g9XxDblXSdYVgG4sHjXF6QEO0DPsIdAs14=;
 b=XHrmG4WhrtMxNbpa9tZ88JL29A+hNuCRGis9QsdheHJ+lh2JiXBhCyO+
 zqjn+51nw3F6DzVvQE2K+tmFG8eMqt2YcWbEk7e+bsa+RNRaB9o1xqAsT
 CTG94fqIbMF4J7Ethq+9oh47ciIMgJ/hpEkQk60sAVCn5S2ts6/d9aaBF
 jlrnb7KLQ7cLf+ZR+xwyVy862TsRwPs8JlMAgegoMO4btaRm71B3uagaa
 8UjANQcWxgsVMCwXFQ+pK2GGrx8DIZ4st1uqa61zGArJ/P3slzmG/mmpC
 rKcWeqn7RPhJWrO8m7e1+3zIKqjjEnO1Yc851LiZG48rvcn/pjziBcFlG Q==;
X-CSE-ConnectionGUID: MTM34kkyRx6mAayIaEhAHw==
X-CSE-MsgGUID: /p8SuhP5QPSq1MxskSvFpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="79106295"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="79106295"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:29 -0800
X-CSE-ConnectionGUID: phApZ1moTLibVwG7uYYj1w==
X-CSE-MsgGUID: 1dw+pqUETg6Wa14M/VlUOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="201987088"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:29 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:28 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 15 Dec 2025 11:24:28 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.22) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fi/f4AcS0BEgELeWa0HxSs0nG/GMz3dTmJf4N6iKkTQJNrTiCMjRoBQlUUUkvJKcm7JD4pDMUXne4BNQr3B+RaIQLGDaarS0hGyvxe1eusz7Q2ZLtdKdJKMZ4qnsD1brsadyxSYyDEqWeHWTBT2qcb2zipGvGLjREIMlx79WDdY1N+pYwAuJ5AbaU1/f652P6P+Hhhc+AxQK56yyIpqVHfscaY4DuekMSjpZaAzjOgNm/NIpBKDEhdDLCQYdeAVPJdEcuvjJorpIXlbkzvAGA+Ryup+t12ZGzVuW0RaCLk0ulPge1Mqcu0H1zmmHG3Ip1n015xGmSLz3i2g2D+5ZFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6N1hCrjEABMhpB3tUOqzzZrp2I3hYjHkhcNtRj00EUI=;
 b=NDAiHdClQenpfESudQrcc4mlM/E8gO0fWu01mKg35ggD8G7c5yiplgLiSDkgrTCIL8du2NbEgntpIrLliraXgXxY+EF2iFoQyGah7UCLpMzq21jwIRxeljFmW8aDe65rtmTS2tleAg2EnzgyF5P3b9UHccOWrQt//USnPInLHAOwyTQWqg45HvVjNBk5ehCzr+2mi2NRefGOVB/09L9cHcIIZ0njBTaxrKL7ErBE0FB0x899xgIRx8EG+uGF6tMBRffZPzuy7q3+Vmz6LippRmgxZsgYtrhLrTRK0bQJoVR+UAeezzdLk1RiBYivBEFmWaBjhCnW+piOorOvK8oFew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB5112.namprd11.prod.outlook.com (2603:10b6:510:3b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 19:24:26 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 19:24:26 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH 16/16] drm/i915/dp: Fail state computation for invalid DSC
 source input BPP values
Date: Mon, 15 Dec 2025 21:23:56 +0200
Message-ID: <20251215192357.172201-17-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251215192357.172201-1-imre.deak@intel.com>
References: <20251215192357.172201-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0093.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2bc::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB5112:EE_
X-MS-Office365-Filtering-Correlation-Id: f818a7f4-28e1-477a-acb7-08de3c0f8f64
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?oYio6oQLhUqwBmOEUvmup8YAc2F/SNp8r2vCXdZ7UuTAIACmF6eCbDpCm8Cy?=
 =?us-ascii?Q?EqRGY+y+DElp5QFWAb2nVQ7sYlaQwGoxKvl+mQy7iP/A7RfwWA/IfjRub+SQ?=
 =?us-ascii?Q?9At7/Q5rOCJa1l5hOAchsrLSFfXBsodi+hTcEX1l5gZgyquSYyhYjg79gEfz?=
 =?us-ascii?Q?gMDXoXu6xCllWCPkZGTLp8JZxaK79oK751vIESuyH71gZwNfqWNj0Kv20cxK?=
 =?us-ascii?Q?Ap7Yf0htYuvEBWFURf0TLAkETeYhxd6bfWgOTNE0nelQ2O9clYXAKpRvZIBY?=
 =?us-ascii?Q?QSBJx7TK+qxNzvaRMIqeNCweD0H5Ej1JaE6CE86tn3WfpD9PJ0fyEQlwd14b?=
 =?us-ascii?Q?IVKogwFrAmXVF/ycXHeeaxu/uGjKFepjjxVLXt3cN8lPN8K5uYJimA/MeBxo?=
 =?us-ascii?Q?W3sgu/xBhZNqcLM2os9uXm1L36e5/LnuFFjmKtszJ7lWcvv4G93Yxatm/zuF?=
 =?us-ascii?Q?Vj5uQdTMYXHAhmELucAlNIn8tzDoyzb3htSt9G5w8EC/PkoU/18mjyUFJg2e?=
 =?us-ascii?Q?InWc+tasrMBby9JEArR3G2BqyHtB4UOrMLpuvDpjBWF/FKmije0TqIj/fEMQ?=
 =?us-ascii?Q?Yp3w01/pBuHLGr/p8b88mv/2QXnoW8d0FnOhJ0dp53X6yeoOqoUJUj9msUzC?=
 =?us-ascii?Q?6NOCsN0wDfcbdGITIrlBGZc83TBvvrUBAMRDSXPGbgTONYWXbvYcM3ThMw5D?=
 =?us-ascii?Q?ZSXQHHKuyllXr964KQAkXIzc65LGvnpBg5Mi1Y03oiIMyRg4iSWJBoIvZF4u?=
 =?us-ascii?Q?2WvmOKb6fzPo3/rFfpWVgRa5uANmYd2BMf0jak1yzW9ldVk95DyH09zyfBGL?=
 =?us-ascii?Q?GRk8Y9PPZ7gsHffL79J9dfwVicC2yt8qdvsiMRHf7qio7RTB+betPYIlZ0EZ?=
 =?us-ascii?Q?ixzEgI/nyGKE3TCZ9XZOdGhv40h1HzgEBVyT0EYrelS/6xTStLfp0pUJqglR?=
 =?us-ascii?Q?Wy5N4lCmGqR/q4lI2fn6hAbQAaKjVQTCQGg9AZQuYp6McDuejQM1f8NGQfTn?=
 =?us-ascii?Q?jiFW7J4mbo9/JNfYgddxlbb/CGYkfVfKIQXZQC5Iu6S3hhooENbaN1a6CMII?=
 =?us-ascii?Q?/P6ZUEJSzK16qzCrRLwm9CQurJ1PuHySfk9W0uhqV/ydsgplZ10gDzB7YqX+?=
 =?us-ascii?Q?gRXUqowYTJFDsIZG2925dwOnIvnDavjPv9wnrhNQj6xLUjy1jgKLQaRWwmiM?=
 =?us-ascii?Q?qor2HPXPUlpu7FAddM1QUWuoYDTq+qrrz7J342I39mrm98ExXKzC3h8IsTlO?=
 =?us-ascii?Q?7BkUQ3ufFebjytFolKTFaOOE3lmw/nOKbrhgKyrFMWeS0vAiySDhq3CiNzT0?=
 =?us-ascii?Q?wbd6fBxKsq6E7CH0Z/dv6Ug+aio/AKIEshKLiTanNsxoQrDsma2e33JMoysW?=
 =?us-ascii?Q?BdXuhN8DD3xk6zUmLKS23PYdPMNmZlmNf9Wnr2N70rGtHnYqHQrkHcoXAw3W?=
 =?us-ascii?Q?WuXZCpzs141WFoxrSWtk1U9x7nzYN7/H?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LrVJr8xZU9n52OiR8Cp7Y9Q2YdL9s4BiQL8AOZ4w0BAYISmgVAzv2fQxFHId?=
 =?us-ascii?Q?PgR4fMIwOp0FPvy58fv/CSxRAAmf6WHEWjpYqX/CMuefxCV6aCrH7ryK0o77?=
 =?us-ascii?Q?LtQmUH80Ba5VEe7gT8CSz6ZmHfBSuLd+ABgVo2/lA7dh6xAALyZUzMr258Bx?=
 =?us-ascii?Q?C/+1e1XgplKmPCB9DXhtx0tuYQydpmXwIj2k22LvPYbWdondhWYkl1M2h3IK?=
 =?us-ascii?Q?cT1caRtzeFnxALUUrdg39P31lhl9cfOPgIGgz5Z5Ls672p235MywhmkViyuX?=
 =?us-ascii?Q?7190Za3SaVWHrPF2lFAMP6vGpmt4n5i9Y2pHoNaqaUgnYGelbv8LDhmy3pYX?=
 =?us-ascii?Q?GyQSQGzp93MeymSLy2UZlKIWw/T/Z/uP0Vvdd50NoxA62wDrM07UJwx2T9Fv?=
 =?us-ascii?Q?QRMPPEOpIQH0GuPjIrKN0zwNaWZ071C6gxbLnm3kycHSbIqDZCtd9NcydWAE?=
 =?us-ascii?Q?XlWhFZwaxvc2oMjT7tdMsto1BA03S6mArVfTUa0w9Bi394iUBWqmjtY8G/8q?=
 =?us-ascii?Q?fKC6nO9+0TXSVKMJ1qYGLcM3q7V7iP2/xGlS1bA8+m+qv7EcBWW2G+IO48rA?=
 =?us-ascii?Q?BLbOIYIxsTlw+0gmHAIctONHMVghHNF1VHyP4e2opoipFqHNuP9v2IY22kNe?=
 =?us-ascii?Q?Y4/n4JK4ohkGdf8+kzkNOm8CRtOTZUpi3OScR4cZH1/6O7nu+tQfbgTJlr7x?=
 =?us-ascii?Q?I9+n5yfFdUfTeLk2XqjiuwJ3wydci6VAZ0/jA89zYaDnLq6zAZlp3PgthC5m?=
 =?us-ascii?Q?gS/Ph1joWL/sHH4oq3cJZJnA9ckqYkhhqIqQog1NDv/KWdosyhXTZIwa9Tn4?=
 =?us-ascii?Q?uEavjz/ZjoQsOMF/YoExMZ0e+2bmKvAEHjc+z9mHLMBDc05TqCAhEA/h3oGF?=
 =?us-ascii?Q?QzEVIZ4clTIKboykFTBDX5dCejTYlsN47K1s+fj8+widDvZbrs85fot7OFOS?=
 =?us-ascii?Q?BeAGURrzEIRMc/BqI9l3vuOS17QAhPKnLF4tKFFzCHsZbq4HGNVcGWGLHfGb?=
 =?us-ascii?Q?A7BN0ZZPj9EhRLcuQD32XVvn3oXSWZGSonZUzG3Q/1fAR6GTlMr9Y9hhr4q8?=
 =?us-ascii?Q?RXj3K6kmPnxcDXEQe7frarz4LpDWAs9CU2CB5oNB6cGzHhVmpw/pqjjm7SyE?=
 =?us-ascii?Q?5LOn7k6rzUWGqQgGdZB4u6n3b4UaMkt8QwBVuLhBSDyVJJlM5x6IlFnoiY/E?=
 =?us-ascii?Q?WA3rUoIewykSssodzICP7LOB2o3pgXVYqiPl+GYY0DHT97hzUI7JObbBUM5B?=
 =?us-ascii?Q?4KpNO6rUUuFtM5nreUPb6b7CUotRSA12LuxPv6mDwAoOIGI+fCWIZx5DQOaZ?=
 =?us-ascii?Q?dD1V6gb9h19PXQD2d2ur5s/V4z6nYcuU0vdr+S/PV1URTJtiKNmjeffrEZsM?=
 =?us-ascii?Q?K/s9+MhGlJ78uuLstXPNIwlEXtShF7dqw6p0nPZY9lW+6fnqNaH1nywK1qCd?=
 =?us-ascii?Q?Q9SK7+DNWT+MmOzZ9zJpqBf5TWdMLa27Cwu1Osij3nU4X3a4CfPxPUyni1Pg?=
 =?us-ascii?Q?T29U4bCWZ7weKi2sqL29JvaRdO2FNusFbYtTGRM9Qr09Rnsx2aepvXntkNFI?=
 =?us-ascii?Q?VfrHzwsFmfpuXs6d+YdfQDjrOyNPti4fDDD4YIQxO5KNOKhX8TYijgU+QzFf?=
 =?us-ascii?Q?+jJOtWy8NxOJlyOl9YASCjLF86T5gGpEBoLRpEFZfsQZ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f818a7f4-28e1-477a-acb7-08de3c0f8f64
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2025 19:24:26.2243 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZKDBTsDh7yp2dCLlpis9bR0H8MLwq+AO8jgoxJ7YFHezLEmiZXu20oRlTIL0WEF0z+0VOza6vQ4sEl9H2S5Mww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5112
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

There is no reason to accept an invalid minimum/maximum DSC source input
BPP value (i.e a minimum DSC input BPP value above the maximum pipe BPP
or a maximum DSC input BPP value below the minimum pipe BPP value), fail
the state computation in these cases.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 28 ++++++++++++++++++-------
 1 file changed, 21 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 074aa472d33c8..dd2c774bb9202 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2660,16 +2660,30 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 	return true;
 }
 
-static void
-intel_dp_dsc_compute_pipe_bpp_limits(struct intel_dp *intel_dp,
+static bool
+intel_dp_dsc_compute_pipe_bpp_limits(struct intel_connector *connector,
 				     struct link_config_limits *limits)
 {
-	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_display *display = to_intel_display(connector);
+	const struct link_config_limits orig_limits = *limits;
 	int dsc_min_bpc = intel_dp_dsc_min_src_input_bpc();
 	int dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
 
-	limits->pipe.max_bpp = clamp(limits->pipe.max_bpp, dsc_min_bpc * 3, dsc_max_bpc * 3);
-	limits->pipe.min_bpp = clamp(limits->pipe.min_bpp, dsc_min_bpc * 3, dsc_max_bpc * 3);
+	limits->pipe.min_bpp = max(limits->pipe.min_bpp, dsc_min_bpc * 3);
+	limits->pipe.max_bpp = min(limits->pipe.max_bpp, dsc_max_bpc * 3);
+
+	if (limits->pipe.min_bpp <= 0 ||
+	    limits->pipe.min_bpp > limits->pipe.max_bpp) {
+		drm_dbg_kms(display->drm,
+			    "[CONNECTOR:%d:%s] Invalid DSC src/sink input BPP (src:%d-%d pipe:%d-%d)\n",
+			    connector->base.base.id, connector->base.name,
+			    dsc_min_bpc * 3, dsc_max_bpc * 3,
+			    orig_limits.pipe.min_bpp, orig_limits.pipe.max_bpp);
+
+		return false;
+	}
+
+	return true;
 }
 
 bool
@@ -2709,8 +2723,8 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 							respect_downstream_limits);
 	}
 
-	if (dsc)
-		intel_dp_dsc_compute_pipe_bpp_limits(intel_dp, limits);
+	if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector, limits))
+		return false;
 
 	if (is_mst || intel_dp->use_max_params) {
 		/*
-- 
2.49.1

