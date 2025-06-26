Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B02AE9817
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 10:21:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B76610E857;
	Thu, 26 Jun 2025 08:21:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YUXtQ7V2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9E2010E861;
 Thu, 26 Jun 2025 08:21:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750926084; x=1782462084;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=co+g7YUOcxaourzCHX+Yri1+JbCl3mjwW4tu6q8RqTQ=;
 b=YUXtQ7V2BKmsbYzJ8Xs5v99sh/XHfS43vJ7ix/hz6XRSiQZsOhxKjujO
 uojSvJJyeHT+kHb7r8RTFBijt5D/TYVsbA14/56OGtT5PUZkdeZanMECv
 FgchY4J79ptm93PeBzHg0oNOghvOWC07y6jUYYlgjR8lnf7wCHFDEhK1H
 SExq4iyjulU5Kg1vAY0ar1o4icnIVc1HCmCLIv1h8JdfkWY+KAmtqVOOi
 gr8TdJWMOhiZwgb/MB/7BWRP6g4dlMXp3kiOJR7FkmAkkONfghzrNt+Np
 Z43Yz0U4OmgM9lDvJjkItMnoAxZAF2Pn/wBpWsf4xsEKAb4Sr+RjbIHr2 w==;
X-CSE-ConnectionGUID: mOzS9VBcTGmZeXhRxACLug==
X-CSE-MsgGUID: QDXtVeQwSVG6joRUqwzfog==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="57019387"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="57019387"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:24 -0700
X-CSE-ConnectionGUID: xhkF31B9Tda0yHcM1ubiSQ==
X-CSE-MsgGUID: yPUmLJXRRSyGuPVQgODViQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="152070048"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:24 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:23 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 01:21:23 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.66)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UEscWxIqY61INOAu4zpXGKaW56GAhAvrQhED7WFWq1Z5KoQu3dZXKltXZwcXdX/AHjtw3JUIHR6uwedgZx7CvIWy1CjSftXF3vRgMeeo0yxBzu4/LY2fHIIBufS2MVIhFpXuTppHcz9SsUzJ0B+wpAo0OCIFcrTu0PHmSrTfZJSgajSDWcT7QB/oI3mGJZp+kvwI/zx4YxbBGDTysgA8857QPYM+0BvZYslFss9rPtKTzK1hmz8iSFyOK+M881Xf447Vsw9fsufSHUBGk9470tX8xJZYqnqAnmiz2TEc52svrgOWvGGmC3DQOJGwgwpNk0XSPMKWd1Zlw3eH/C0Glg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hep9yIt3kMTvOSWF4XUurbSnBMd1fEWRQF+FKaQBf8E=;
 b=ek4RVLp7QsNrfaVFH2thcDlFioPzsv0W0piSERi3JwW/DE0htdDMMR495vClNSJATSirkpke/AaHjLUxp7Xc0fYs8Anrfw37ygN8LbwMd2x4N5sGEEK06+rza0f3jVBIps5wqcG7WX7PWdwU205H+y+JZZTrk0vnsorDqVIxwaez4Yg+yRWAQfUdPsIfTamuip3WnTEajFqcJl9zQmfWeyI8LSm3IAfQ3uu8V4WPsr5PWNS1WCIMrQcPsXD9Px7LNAS+z1dbPHLBzI8tcr/wnI+levQuiKpEKI7f83euoYIFV8T7KqNxYdrzBLRDFaruQUzz1ZfsfdmQQGK2Wt3UQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ5PPF8EC896901.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::844) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Thu, 26 Jun
 2025 08:21:20 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.021; Thu, 26 Jun 2025
 08:21:20 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 14/20] drm/i915/dp: Return early if getting/ackink link
 service IRQs fails
Date: Thu, 26 Jun 2025 11:20:47 +0300
Message-ID: <20250626082053.219514-15-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 6cf18724-76ff-4bfd-4e81-08ddb48a6df4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?p8ZBzSwzH7HdwtnwShYhk+2cbEt3uuePmTEhoEGOy4LWoujEzMzRsHak5KWD?=
 =?us-ascii?Q?p0qZwkQiBq/zenfy8OFEl/7Dd8T23mLJoo0OtCzGrdbRRYqI2hgxdTBBE8O2?=
 =?us-ascii?Q?iU0ZUP5JqPGqBMdJasaaltbHdcCr6rVzUcpkxPbU21nBCJcIYzLrB2Gc/iXT?=
 =?us-ascii?Q?u3FQT56p6zTN2uqU4ONz0WGYj7KkFZlQRErzgqWTVLs0xKX77NYDVrk3fe1+?=
 =?us-ascii?Q?3QMjrDwmBfqvHqN5hG+5vP+QJgwN0+gjBMUC0G12xB41vsSOWjLPp0vukC46?=
 =?us-ascii?Q?ZHIwzN40DCLbtQcSln5CzMMTm6JBU1xBa3507yh64HUc3tDfFtBtGE8w+LcI?=
 =?us-ascii?Q?wO1zROCZXPix2ml87Pt9v1FH52e1LeAB664PXZgD3MK/S5/kW+crzzwzJSmO?=
 =?us-ascii?Q?qa7s1nQiDx9QX7/Q1L8UP3jTyLTc3o0oldjIs6PbZIe7eXvGCHlXwt11xr7f?=
 =?us-ascii?Q?N4zK4JRya3z0MQYDupKnBLzlLMUT9btDL30g4W/kpEReiHfNU/NgvGjx34FJ?=
 =?us-ascii?Q?qrmTccqX3McjX+U0gX8gE4DFg+FK8jZnbcUkRu4NnpQbed7jNq0Y15fT8re4?=
 =?us-ascii?Q?oKyMTOVgVPLZ1SpLrL2N/6DzDxV74X6G2r1tcYMIz6tzW52OCOB7EC5eTFWT?=
 =?us-ascii?Q?HbMEB9hWitQ/XHiTxb9tWbwVOXCmUo+d7o74FsRTS4UDEd4CrNLmYEw7dBcE?=
 =?us-ascii?Q?dvaZG7guqCMsCeCSvsKNzaimD6vnuZeg/ProjCs5dHwdeLjLjdmmOQnwPPmr?=
 =?us-ascii?Q?1AH2N/ql7360dUIh7+v1q94/ngERaWS87sKNoKPHbB1knGsv7ml+c4jgkjIf?=
 =?us-ascii?Q?pDrYF9G0MTwC1loUsUIdiYLiY1CI/nYWkKsSmmtORO8BCog+k2a1tZKGZ0/W?=
 =?us-ascii?Q?Cc0HokY2WtkQTo+/yPvCAWMWaRR9oWmWd5e2sJ6tGo9W+EbM1qvtWeTknRLf?=
 =?us-ascii?Q?XDiR8eEx1zW/hAwetLp5U6zG7VNRDYjLTp2fa4ym/vuxjo7aMAcaHpmSsAVn?=
 =?us-ascii?Q?EbHAlUzpEXg0gmi9nHR6xXUfM84LcNjtIw0U7gEqibxfOcn5AMDI9zOyHkGx?=
 =?us-ascii?Q?91IJgR7AoACyrFrjgI8/ZZyGl9TLhpgiu31UJNc5bfJWRDS4ROvIJKlCu+wu?=
 =?us-ascii?Q?NY4epIn8Tjc7nkS6Ii8Viq6faXdMXnusUdp4WfF36Cfnol+nQjwtej2kRUbf?=
 =?us-ascii?Q?/ldAoFEu3ykLBQ0TiVwOo7ocE4HujDNmr4GHyIBA3nW+zwA8jgaQvr2Wn7aR?=
 =?us-ascii?Q?6uXre3MeokvJT/p5tWUeRWFrykUlRQpUYFBm3mPzyQZxfSKRxMnWhp1inoRo?=
 =?us-ascii?Q?IEkXiq1G7HMetYRNd2wYlUM+khr7L2OnGV6UiHxmfXsDTWO/LBaFXC2QeAik?=
 =?us-ascii?Q?nQYVqKXmcVH5KWY8xV9KrCjlt0WtQ7HVDoyTVHAEcuW8224cUSOlZL1s0xLN?=
 =?us-ascii?Q?Qt6gEBgzbYw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HFEZPsfF8RxBBFP9fx9gDz1uFs8dobwDQz5RZTBKpJSB9eS+aKumDHGukzy1?=
 =?us-ascii?Q?g4j0nqIk1Dy21KQ8JCOvZHfsntp6Y5zy+Oj26sUR1IVP//+MrhRDeucfZnu6?=
 =?us-ascii?Q?4q5WkK67GJlazjG6z7v3OFg1QOkdeQ9tVusGhCnSIKzUnZcTH794iCqQhN3D?=
 =?us-ascii?Q?rqAQRx+kzmUgiBQDGpj3nvrNRL3w2pfjRYxwqRuDxomaBJABZHhmfCPZQDzU?=
 =?us-ascii?Q?sjt6dF7PX2jbINwqoGLvTl7bCUC3mnHNeUNeshTSBVs2VezT/HSE/jwAFoWP?=
 =?us-ascii?Q?0YSuf84JBNIOiVj12n+sJzuDAwnKMCgd0DpjlTy2Vev1Xkx/0QqD6rMXUJ4x?=
 =?us-ascii?Q?zL5SnwS8LD+SpIhR8vDuIwyH9YoMW+35qZX+WTxReLJ1iP9W1uQ5YsY7ePYH?=
 =?us-ascii?Q?TBGbPob7Y3pPs8oljUbXgD/RtQu/sRvxX3HPA7mHnVCSWP/iFMFbzpD917pw?=
 =?us-ascii?Q?vkda9dkcpS4Qs16pTFJmnlBG0vmUotWpjLyoaD+HfsYq4gsZ32JR+3QMw/Oh?=
 =?us-ascii?Q?rSz7fOFT7pmUIFvuVt16M5Bzyg9K5GUiZXD8scqf0OeE805JjTjnkOqSt8fe?=
 =?us-ascii?Q?4iu/0aZh4xgsDyUCPLGYRH6T9l7FTMAWqRWHzEiXe3QGb4TfBg4YV7LDsP0n?=
 =?us-ascii?Q?3jK1RDYsYfHzfJSAcS5X3VzTLUPwJn+4YLo4DEJZKm4ZTZ/76T4S8sa7WpQy?=
 =?us-ascii?Q?YWTo83jcb2tNrup11MIlPx4N2OKQ7ZxtnScNng/n4rQKoavHG9HIof3n3uOF?=
 =?us-ascii?Q?QiokCQml/pzzUKBCMvIq2V2LJ/0re0iejI/vXm6ALnygOrIbLYrJxKLeeQs5?=
 =?us-ascii?Q?JaEXq5IbOUKGhoOIkuCmUiPuYEfHtSI8MmthPiMptW99YcIjg5/Shsv/kzvh?=
 =?us-ascii?Q?B10F7xIYLCFoQYffh1H4p8xajDukIu2qEMfFLz9L6rZ7hzURgBuKmIX6SET7?=
 =?us-ascii?Q?AS/TzE8U5DVTAaNWfGmndLEl3nchN81gbsfNJBQ815DbaUqP0SM4pZrClf1L?=
 =?us-ascii?Q?f4/1pjBQ4WtSr58NcL7wB1X5QttNgtQaluFCiR6GLaCCjBIjVtEA20Uco1b0?=
 =?us-ascii?Q?R6yVPtT3janUMBDdVr6vm8fMHJBxx/hluwhg4gqLeuPApvcaAzmaDq/MCt3w?=
 =?us-ascii?Q?ex2r19ooxA4uHrs0XQDHieR+7cmLYQ3boXhtguqMQjNkniwnk64+Vu1M7Iml?=
 =?us-ascii?Q?rh5Vf9/3IPO1ujQcAvOZGolTjzasVasyb44XmK8ttAqLO4+xsv0smhbbLk9P?=
 =?us-ascii?Q?hUGh5N/raR0NRUwyjLOgBp5XNWsJ9tqK4TX44oeU0eUxAFFUxAXf/wRAiajr?=
 =?us-ascii?Q?yDDpqM9swcp6mk+MQ0bOFhGYXr5IntfiG1+EHraj5/bzJBlaWhyYEV0YPRS9?=
 =?us-ascii?Q?yOW0wNIo+aRPhaA3Ov4qoYL3Re9+RFu8iggTgN0luw6GL09W7tNrTp3udFLI?=
 =?us-ascii?Q?FPqL2chjI3AFSDFXT9JynXuDY5Cm4zY9BOH5fWZzZcoEwaKX90p8y/3MwMbV?=
 =?us-ascii?Q?vUn5ytZOcqSuZlibJeJrsgv5Ye4DHEn9js+MY81HWZ56wcpzcelhzmmdR66W?=
 =?us-ascii?Q?bOJLKkiEXSH5rtTcCyx7Qb+1pyL8xFuJ3O1slFoQ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cf18724-76ff-4bfd-4e81-08ddb48a6df4
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 08:21:20.1307 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SaaHBTt2TRbQWsvyVrDCszU+R32AZT1Co0Wgt/bjWE+GLVR50OB6lqxBRqHWk2pn6S7LlqPNmiN6V59d0TEvUA==
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

If getting/acking the link service IRQs fail, the short HPD handler
should bail out, falling back to a full connector detection as in case
of any AUX access failures during the HPD handling. Do this by
separating the getting/acking and handling steps of the IRQs.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 35 +++++++++++++++++--------
 1 file changed, 24 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index cfbe7c6f896ab..2ba4a810f22c2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5428,33 +5428,43 @@ static void intel_dp_handle_device_service_irq(struct intel_dp *intel_dp, u8 irq
 		drm_dbg_kms(display->drm, "Sink specific irq unhandled\n");
 }
 
-static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
+static bool intel_dp_get_and_ack_link_service_irq(struct intel_dp *intel_dp, u8 *irq_mask)
 {
-	struct intel_display *display = to_intel_display(intel_dp);
-	bool reprobe_needed = false;
 	u8 val;
 
+	*irq_mask = 0;
+
 	if (intel_dp->dpcd[DP_DPCD_REV] < DP_DPCD_REV_12)
-		return false;
+		return true;
 
 	if (drm_dp_dpcd_readb(&intel_dp->aux,
 			      DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &val) != 1)
-		return true;
+		return false;
 
 	if (!val)
-		return false;
+		return true;
 
 	if (drm_dp_dpcd_writeb(&intel_dp->aux,
 			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) != 1)
-		return true;
+		return false;
 
-	if (val & RX_CAP_CHANGED)
+	*irq_mask = val;
+
+	return true;
+}
+
+static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, u8 irq_mask)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	bool reprobe_needed = false;
+
+	if (irq_mask & RX_CAP_CHANGED)
 		reprobe_needed = true;
 
-	if (val & HDMI_LINK_STATUS_CHANGED)
+	if (irq_mask & HDMI_LINK_STATUS_CHANGED)
 		intel_dp_handle_hdmi_link_status_change(intel_dp);
 
-	if ((val & DP_TUNNELING_IRQ) &&
+	if ((irq_mask & DP_TUNNELING_IRQ) &&
 	    drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr,
 				     &intel_dp->aux))
 		reprobe_needed = true;
@@ -5499,7 +5509,10 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 
 	intel_dp_handle_device_service_irq(intel_dp, irq_mask);
 
-	if (intel_dp_check_link_service_irq(intel_dp))
+	if (!intel_dp_get_and_ack_link_service_irq(intel_dp, &irq_mask))
+		return false;
+
+	if (intel_dp_handle_link_service_irq(intel_dp, irq_mask))
 		reprobe_needed = true;
 
 	/* Handle CEC interrupts, if any */
-- 
2.44.2

