Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5FACD692D
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 16:36:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DF0F10E6E1;
	Mon, 22 Dec 2025 15:36:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jtENySYJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A94010E6DE;
 Mon, 22 Dec 2025 15:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766417778; x=1797953778;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=eIPTB4FdKHZbiJrkG9bFFfp6WmLegv7ISTf/z9Nfw0g=;
 b=jtENySYJow2NUvCr+VeWDLUsCn0Bw2ovrETiSSAlgwWWjurSUYWG2fXK
 FP/VZUnKWPB0z7uW3oDth9xRJhYULuvCg9kGvwwKCpGXuWwhQcLPcC4F7
 xFueHh9QMEj2blXsqAXowXsAVs8oXWSsxfZbjGQ7Y4QTbQpP1lT41NAWk
 46Z62d2a9BQaLAHneHRB47rQtdYsh50rc9EdLbKOaJANV8Qb6shhIN2uM
 OJThm2uw8SXGvAhMfKNPBH3gs98nz9bTbuIQhdHsv46nB1dXB9znVG4Li
 GjqbH5qzcOQx3cWmY5GCe9ju9DuD5AVKt87rpQFPTzw0iGomIgmQv9rDf g==;
X-CSE-ConnectionGUID: 9h3/zyuNSb6DFkR7B+XkNQ==
X-CSE-MsgGUID: SWZVxPOQQ8WhIPD2nzun5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="68211465"
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; d="scan'208";a="68211465"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:17 -0800
X-CSE-ConnectionGUID: 6QxEh4AvQWejCGtuD8kufA==
X-CSE-MsgGUID: 89nzUgvtRd6t5QnAjMY41w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="199854909"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:17 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:16 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 22 Dec 2025 07:36:16 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.34) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YJPxdw46OJSFwaHiOIccZh3Bv+xhlvVCwRAhtPjp7d8riGHx/uYbUi9//sgrph/t9EOdBnep60GIt4gWysN93GfW/OZ14mtTyDL4pFqYjz1aZoh8cjwypiCHHD7G154kaFh6Po6vYUgjIukXxouP4Hwmd0rLZQuj6RjD6cT283XQgLzpOQsGyVm3SnQV22ztR9S1UzVyXbwgQxtYVHbcXsiJiWqRLqWXOCSMEtse6EPuVTuLzqrSdVUsLAg79EqUzHH2zGiSltXg4tiZ4ZdnYHsCnpIvVTVEgkvoGims9bzV7neXPv/mwTBd6B/CW3+UxTXSOA1dqi/M2MbTsp8U9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vax18i6Xw/HMZXs17Xuqyxa9p/gH36g5/LP8eLJmOGg=;
 b=CqXWRr2owCcXMv1X3SpMuF4pltCk6Vu0E5KBFb4oWCHcR/ltX7Mya7YAzMGQmJ2uA7F8b3S+jJ+GAVpN2Y3wb7LR2yxBoSUjp9sfHdMbnR1PEV/b83aHO4vb0hVDNn26Eod9w+0rYkEQL3Ox4iLquvqpL1dfORo+ng6FFHf8OMSuz5uvWFRS0oRLSEyLJNbCJb15MJ8W6tNNv5cYFlu67nNR65sKI+VWBc1vN+1d8yjUm0OMKdtKo0AQceS+ZfxQA+sxdBzHw05EN0cCSCE6G/sfVTk00dcQ/dr1SYhRFR2zHMdvJ76loOAKtMYG2qMzlP+25esPy8vObv/dAnXtzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB6912.namprd11.prod.outlook.com (2603:10b6:303:22a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.9; Mon, 22 Dec
 2025 15:36:12 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9434.009; Mon, 22 Dec 2025
 15:36:12 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH 04/19] drm/i915/dp: Align min/max DSC input BPPs to sink caps
Date: Mon, 22 Dec 2025 17:35:32 +0200
Message-ID: <20251222153547.713360-6-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: d24d6d7f-f09d-4b89-fe19-08de416fd606
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?nNyUryQik/7OUs3O9oKdWtBObk8rTzDvnJwhPDzDFwTNPZNpQRgVc69KJm4z?=
 =?us-ascii?Q?TNP7ioa1bt7pCZA7wJrejTYwj2Kbvwj/U1280xA87izbTjJ3LTAOIbmEFCHi?=
 =?us-ascii?Q?RSnUrcKLQVq1eQkWLVEGQczYS5D2VYAIcXPgdLlT9+qi3QnlACOc6NnSFcib?=
 =?us-ascii?Q?1Y+/mBbFUPzzxpKZ+GelKgTPZNE5fsJoaa0hvw3ZtiX+uwpCzetfigNax1Hl?=
 =?us-ascii?Q?LfMMRbKBm/k9L2G2x67gYWia6Fz1+9emSF+lVVZWyENrmhP/uXR/duPW1zvt?=
 =?us-ascii?Q?SE9BC8zEiMcmNUkHLD4DLMOVPf+M0dVS2r8oSmNZAGLHdTwk6LmXe0X9oEE+?=
 =?us-ascii?Q?N69kK71XlDxVDsFv/7EIW1bDsMsweAUduZ7yKfsrjwJNr/ZW5EsX4DvWu30Q?=
 =?us-ascii?Q?C/9jd6+DwDL9Aj5JEU5IXGfzwIOiq29Zzy0H+UK82L3EuG1z2ds+KFAQHp3C?=
 =?us-ascii?Q?uq3AMm01ZDPU3ACt6ceNRYd5HIvZNBZ+poyKd2if6bFBoVttHxbRhvdg3ZbW?=
 =?us-ascii?Q?Lh5/HShy+RcWbxoiJ+uCLHLD3TQvOGM3WZtQk3KIZDf6rlsIdlVhrcU4ZIlm?=
 =?us-ascii?Q?32EKQ2MsW2V4MqqeSXU3oqxrYbQlylHN+JE5ODkpj8IKsI7bQneeQWB6ktWd?=
 =?us-ascii?Q?tX9uxci2PeHqQPfjLrnYv83n2VuPYVZfg0b1BPVwr7gGIdect8+rWNGm3TBH?=
 =?us-ascii?Q?sD5NmVFP4Bi5NSBB9OgEUoUIzVyQYnhetQENw7dTN8/zodRpECf2FFJfXQGl?=
 =?us-ascii?Q?slb1/2sYWmnOEP1eM3XxXR8fk8ZZ571lo3DurwjM4yoNwYipKLDeb4zfEcbo?=
 =?us-ascii?Q?nk6UG026rmSghohXMA43q28cIiZu1mp66PyljS+BFPV6g6ke0HMnzAbYJa59?=
 =?us-ascii?Q?wYf9u0w4t8dfVbz4f4HI+Zohm6ODp8LrZHtWWlcc96ndfNmLzn7UxRTtXnNY?=
 =?us-ascii?Q?mRtX2N6Qsy7Xu2pygVEvLngizIw6rnGUt/UZfv0u8jkUpyEiwJ/dDnhUpJGA?=
 =?us-ascii?Q?UnIjNlQ7/DZFDx+PqaXnt5TtduHuzbK5kJUKfJ1V0reIHVlbhCZe2rlfYz+P?=
 =?us-ascii?Q?vDabEg9ILSrdTU5lpTn+KeYx4Tw7IrCmXBt28JH12EARfGVPjVThYpKL1G5J?=
 =?us-ascii?Q?vlviXfBV5f5CK21aqg2mKP8rHrqlr3uAfqON4loygF1BFg+qZLb0rsp2vUzh?=
 =?us-ascii?Q?RI5H5Sbx0DU3dulBVaYbSnchTJxzqwccbRZmWFPDwbhxlcbrJD/XLlHxPndX?=
 =?us-ascii?Q?x1Cc+1FbIO8pfTaVQKn/hmAvfVmxmbw6+gQa0HwovWFrbfhsLu08Up4Zt9Zd?=
 =?us-ascii?Q?gWeZC1RQVuQOjr/AcRLdZgv5hWxD/6ihIK1nkQm/bbXvSLGCuJUb/bEiOAl6?=
 =?us-ascii?Q?pTFJHnMaz7J9oMxtknEuA6q8IRabdu8HwRzc4U0U0CQ0jKFwlw5yvtEbE8D/?=
 =?us-ascii?Q?P8+11Zmvg8fauAoRCm2gPpWT0slP974Y?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?I6M6XNabkoGb6OmPvIGUCFX4E6R73v9WNK2T93j/4eXYixAu88/atNv0N9Cz?=
 =?us-ascii?Q?chMeJna5GRxdopjx9/js7gt4uBT6nn+8uWqqIgjmq6vYfNn0uzQbLU+fgFxk?=
 =?us-ascii?Q?5F9saHJO/rj642l97ewTc1yjHW39AWZr1wPkvvcyoRA94zCuHraP8JFdS84u?=
 =?us-ascii?Q?4hyoOmbduqRsLaem7WGLGQplAfhk3hRAR3rlFAZP49YQtJHsg0pc0rmQXuwJ?=
 =?us-ascii?Q?C1KuSpkpXswEuIAK2dTLM6vtO2KelVmdfVuO851ghEM+o9xISQp9C8kifW/x?=
 =?us-ascii?Q?TcoQv+tAp0/UN+rxqwjta5UZPPGsrpsDRk3OGqYLN7IcSikoTRmoAiUsQiJN?=
 =?us-ascii?Q?Jf0rXsWUun1bgntV8V4WUI02lJCQQPVbtPXH9B5ehweCoCaL2MtJkEoUhruA?=
 =?us-ascii?Q?5EbuwsSl/jqwHrXjSzy7BMvCyswnAkRsB/FPEst1CrSl/5IV6qFVQmOjBFAP?=
 =?us-ascii?Q?u2M92nFJTqr+hrSzYgJhq8mlpnrhmzsoC90RWzCnEgVPn2SIcZRqpxET/jG+?=
 =?us-ascii?Q?KYCg1sI3B0sBEeDOJNcfZtzgLIstb6cBpaNheTu2kQqDFBy4cHiY/kUW+87t?=
 =?us-ascii?Q?YT1UO4T7Ge77GKHKj/8485n83h7B0zh1Vpj/ToinCeDyBFBMwmMFHdyo/rwY?=
 =?us-ascii?Q?cuq6xhCpBnOWivTbAohi4Hj0vYqCNO1qtMcLFddnwfenrOIOzkO0a4YnbWq+?=
 =?us-ascii?Q?lnmD3eZ/x7QX/RneEccwwVLw2e56tE+FBBcbYeKyXBWWmgL9Yd3wf5GkgOqW?=
 =?us-ascii?Q?+76lIcZQ/kigDFXFqhvTvJwlwCHU643k9TmhagoKIyp/oM8A9NOMj1Myo7C5?=
 =?us-ascii?Q?ZfRbfQfQBXY0M6+4XY4nXH+2BWFBJ6rowI+ImimJVOm4EVshN/ZjEmkPAl7p?=
 =?us-ascii?Q?6j6McFtCxgTZEHfJtCLfXmfzdU0+Yhvy72stRywr2LTzPBg+hQA/xCQThywJ?=
 =?us-ascii?Q?E/+vlrBDK/6nFeKJgDn2a/aVJlPSBYO4+rJHqDPUyHoT+kF+437DlM9dYn/6?=
 =?us-ascii?Q?6eexLPCkuC7EclKDeVKyZDBHvgvATS18V57xr11fvYqsb7eErfnICXfL2H/9?=
 =?us-ascii?Q?X6Z2oAII89HqTAv3t7PQCltE45hNwjsvqrYPo4fmf3xwC4ihf06yk9j41Gz7?=
 =?us-ascii?Q?ja2srWMqvnmgQlesFHK7JucwztiWVOpWoygGBqKvgnE/Lh1lZD1D1CRKrGJr?=
 =?us-ascii?Q?90zF3321JK1FGChugM5xztPwTA6HkbNABqh+cL2pPhkkfKSzvFsF9C32H5Dd?=
 =?us-ascii?Q?ABhKWpmUzFuPnJ7SZhyooVHewSUi93WJtDtNfygXJ24Cv6avVYuDNXww21bf?=
 =?us-ascii?Q?ahciBU0OCnfiNPqaF1vfbEjCiqgd7YIDIRlS2vzJERJ7yfn1UPMxJnmx2USH?=
 =?us-ascii?Q?iBHO9EFySY7vuQbSg9mZm/Bn99WKpGF2/aRHIgWe36G9DXKECt6Iys4zK951?=
 =?us-ascii?Q?bGUmDYI0OAnF/M1VRQfl0xhxk8ERKPl3k+XT91bDNsUtWP59jMiUkANcPHGG?=
 =?us-ascii?Q?8pzNlQ52/mk79BcVH17c4Ly5WGKDlMalBY2BvLHJ6jpIcRtkpkSRZUiUObZ0?=
 =?us-ascii?Q?zl7P32A/R5tpAJ4E1cbZi+GHS1kLapy3MI3EOr3+ImEj9K+ndDbSKonJ4/DZ?=
 =?us-ascii?Q?7T+0JVToq9AJ+zQp96EzADwRc/H07FiUkhFtscCCUGK/fJUQGHBWwF6tC6ED?=
 =?us-ascii?Q?kVDkaeS+y8J4LqaRucXzypXQfUFyVREk7HQgc0E0d+YKenJti4J+e6raopCp?=
 =?us-ascii?Q?0/dSTtAAA99xG9q6PnAx3AG4Pi2AfMwujqerRn1BDRsw3xaHW1reFV2S3olO?=
X-MS-Exchange-AntiSpam-MessageData-1: p/Zi4IXdGXZYXQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: d24d6d7f-f09d-4b89-fe19-08de416fd606
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2025 15:36:12.1944 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +gn0N2r74RoCmUDUN1vzl/MFrbRVwRrN4/mGp8P47d5co/nUpyuiTD1fhnRFr6g+UX6eeTqaCJY/ghcaqhOJew==
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

Align the minimum/maximum DSC input BPPs to the corresponding sink DSC
input BPP capability limits already when computing the BPP limits. This
alignment is also performed later during state computation, however
there is no reason to initialize the limits to an unaligned/incorrect
value.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9d7a1df179a4e..4807a98d396a2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1905,6 +1905,23 @@ int intel_dp_dsc_max_src_input_bpc(struct intel_display *display)
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
@@ -2680,15 +2697,19 @@ intel_dp_dsc_compute_pipe_bpp_limits(struct intel_connector *connector,
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

