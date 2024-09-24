Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F47F984C51
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:43:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AC9410E746;
	Tue, 24 Sep 2024 20:43:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H23MQkyL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 354EF10E755;
 Tue, 24 Sep 2024 20:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210604; x=1758746604;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=+gjKdVKSh2h9lbA06IuR0YLotxVfN503+ggI2kJff3w=;
 b=H23MQkyLjB2JVbdP98ApscnxDjExm+lsPs1ijQLfcb8hE7hdd3T+4zYg
 2RJNUncVMyVDhOGwGygGJzV/pb8n2j7cUbS1wSRXfCaYfclICMM5ecMBI
 cZB8S+MBfdxzylqZrkBbtrQLVCQwRCnGBGgaoX5kgFYene9ahlylTYMNg
 vESVrFfk7FOT4x0SkCUMIVbZrmzukjkS2b879ZCj4MrLLl8FGLpAOMi38
 4z+Woi0PSik2ygcKTsS89PPeNE2vy9KkPB2eFYm1UP4h9EQOUylvamPiB
 G9UqEG6hrt/yeD/SjbJYK/386F97ND0cnhNR+ZG0XaBZwdkLObJTYqcMG g==;
X-CSE-ConnectionGUID: r1uK3X8ARw6q/xuo8iAr+A==
X-CSE-MsgGUID: 8lUGTLCGTCGVK3HGcV3E0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="26182625"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="26182625"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:43:24 -0700
X-CSE-ConnectionGUID: X1g2vaFgTcC0CkbwVEygtA==
X-CSE-MsgGUID: /XPPnUEpRSaTd9o+eW6MJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="76337803"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:43:24 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:23 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:43:23 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xxofmOR/VUASqwC2z6p0pkV1TOxNs0vHK5a/11hB/kjsE4HgRey5kV1lb0VnOgrzKbcZQ96+KDn4ENakMDWguu/rMmtcSKFohy0FpRY7YPt1LURLfe6YaaW+p/aAhePvvogTgkJSntybrPgFIKb0qPfmee9YY2FERynDtAXP+8SCWFcd4L+tLAq6U9sT73SBI7KH+fR71m+DsCK5xI02ITWQVewsIHRmIthqdkxe5ibKAU2b0lZ0Y/rmiF6FPNHoaZUdUpJ/R/AzC9jq0gbf7lsVFDzyxpTBd56WCHB6MAh4GW5DnTlUjbWQWj1uP5TkNUU9rVjYpTkTEDgsAcPmxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yMsZvsOJtikeZDAsiqwLg6sHs2tXm68WB1K/c/s9e94=;
 b=bV9ETMCAfDHfixzp0OU/m48lAyU3a2ftAipNZ4c31ieLLKo5hzix9mXLLJX5fTej762e5GdFU6BBX9O2nW5AE/SGPdJcF/uGI4I5actuvh0eboDGJEovgLFAJMZubBDDkxArPZ1LZXVTFB1om/xfqXUGbppzD7OKE9la7T6FO0AqsldyDYzVfhyfT0zkGinMZ0MJqQM1MIiKGGyJC8tLxI/eaW86FHpLc7m+okYaMuqMKxEsJzzukHXOH6MtK2LCGE4X6CD+ybqMQpQbxiK7mvlM38uEsOwzc3Urt1z3d5tlw0F0fzBhDB+3cJf2YzzaTzWaQYbD7EPYPeItRIczsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH0PR11MB4965.namprd11.prod.outlook.com (2603:10b6:510:34::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Tue, 24 Sep
 2024 20:43:21 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:43:21 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 16/31] drm/{i915,
 xe}: Move power_domains suspend/resume to display_power
Date: Tue, 24 Sep 2024 16:35:37 -0400
Message-ID: <20240924204222.246862-17-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0253.namprd03.prod.outlook.com
 (2603:10b6:303:b4::18) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH0PR11MB4965:EE_
X-MS-Office365-Filtering-Correlation-Id: 30bdb2ff-0db5-4a85-05d0-08dcdcd986d8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?MCrEa/YWHeBlsf4ePAJshKxOT7d93N6/kpWFK7z1piAy3isNSTz8CFM3qI6h?=
 =?us-ascii?Q?M7C0wbXUuTY5cl6JvBzDeEdiNZJ9VefdFibnTqLYUZyKQbN0x96vA1C50Qbt?=
 =?us-ascii?Q?rQQCEWvDXG46Nc+8Tf96Hc5VlyTId6ydcQ4cbtjCl1hM+Incfd2OtjxYo1Ij?=
 =?us-ascii?Q?wfS8Lbv5IFJFX0xxjcXRwqRSzX0RYUeMK/Vm5gWAuci/oeqktA2Olx3r9Y81?=
 =?us-ascii?Q?akjEvCcCAe+AQDMn/RzTOQqQba7VOgjkLt6ckir9kXgmF+XQAFNWAwqskUki?=
 =?us-ascii?Q?Z5qRaMATmvVrqmaiMnf3NOOQwrSSlA1K+oEbBp6GRzLJ5+fHNXhiujHjRnpi?=
 =?us-ascii?Q?7+vlUOAw/+p+SX0V0VP8sQw9yVH8RUnCCv3sNS1g5mWUcXMpNtNKZ8KWt5F6?=
 =?us-ascii?Q?MZxlUnVNjc9tNoiYmUB3Kc1G/HVhR1vJWCgL4aYIsFvrJM6K1QSFgjlvQ+Je?=
 =?us-ascii?Q?C/ZjiR1DynLXEok52WG3sEV7gjkf6STTiiu1Gl6jPLrYPwxkh4IwMHx2T6im?=
 =?us-ascii?Q?P5YKXruY2jDew/iCqoc2HutRhNF8kSAxHKOdeGXLqRCqpXha72OXWtDVtmZC?=
 =?us-ascii?Q?hWvQvbSxRRHrt0TRDQUqymemvBNPOP9aWg1wyw2AphrcdNxpJENXl70Jc8m3?=
 =?us-ascii?Q?OkCFjEnufWJRNVG/iCht+AzdBRtC+NALe+DOXRKsnTL/0g/BRa5IlEQekcCv?=
 =?us-ascii?Q?k/eFEIuS2eJ0t8iUryyGFMl3FuwE6d5IcRTd+TXVt5S+JRKoznbNfrQSYHdl?=
 =?us-ascii?Q?1HEm4aed8++F43tAd0lk9TGjvzg2wijPKOIdSzHJZMdgcYINc7+m1wHgpVUU?=
 =?us-ascii?Q?ums9IsyeHIRwpAKYQTbs6k9BFBCRxcqsoB2qGch/r+7VCDOZFEqGszXJrcWQ?=
 =?us-ascii?Q?e4HuteXm4MrEey3gel7YUR7ckrgOjQsJ3RdgkYVKVx1yWNGYvj8UVyD/VFBR?=
 =?us-ascii?Q?n8ItaO+pGgybTSjltL96q4g6AGed7ddFxbL2bihBUk5v2eP7dybjuLAomTfy?=
 =?us-ascii?Q?SopzCDPKg2N0809135Ll3UDAO/RrGPLhl5jRGwa4dtN2eEm3gx+L77zozn+Q?=
 =?us-ascii?Q?+BYagQ/9jsXxoYx1FWjyInfZtAdANZl/f7oBt4liuK3qIoXbEk1Hpb2rJAEw?=
 =?us-ascii?Q?90rcogDjNP16s7taNbUZ9nGvZnPhcYKSZsYNa7rxuBF0anLHeaL9EssMFarV?=
 =?us-ascii?Q?zL12sLMFES/Ysl/3B3TJ7SzF/Yz50xVGfWPo1NlDBhuMRQJbsd4rcTE8jnfJ?=
 =?us-ascii?Q?JTccycXf8sLBPAr9hdW2YX1UYT945jjBar9T8KPP8Q=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?T3TUTEyIQl0pY0zC10J0dxNQvT833Ts97n0iQ5JNa3Osweq/wfpGYEuQAT6P?=
 =?us-ascii?Q?VDu210WSKjxkMfKt6WJX2UIxeiDUDKgXXhF29/c5rj0g0tyeaOWAvneD+zih?=
 =?us-ascii?Q?Wi8bHBgDexml4EhstfRWTpgtiH6Y3Omk2tiKJVFapxHuS4tHSy/GRGMHt/ki?=
 =?us-ascii?Q?7nzCn0P/POoOhGivtwwkWxeF+/NjS/AtKu0kLd1/GyPtG/sp+1LeXSwHmIYn?=
 =?us-ascii?Q?0hyzdQMH/8nrQVZT70jO7+H5Xw2KMrwh20Cjl0XWVa4BIN17Ml1qUTkzxz3L?=
 =?us-ascii?Q?fZr1uQHC6XUSLaLkGnJZJaAvhW1hSoGnKWP8kA16kI2kA9blTDzSChZlt6cf?=
 =?us-ascii?Q?OFvcu9Z/wI8+y1VUQPHNBiD2G3Eurpbry2S11hC06nAG11avOEk+1QreXFpR?=
 =?us-ascii?Q?4dpgmh0HWlSpT2y5+sPKkZhQJtZQiHm8ZFxSIlFblfb7yMZ3lZlq7K9VN/3x?=
 =?us-ascii?Q?KJCKWPzrrVuh9bziuSV7mc1iK0oaBRdS+MRDm0Jh5C0QUFr0q//fMrc52W86?=
 =?us-ascii?Q?CdtiQeLEt9tW64Bfry1rPxU8hFGHaKKneiO97PH65j8ezc+pXwmwNoJBg4i0?=
 =?us-ascii?Q?KmaOX6SE6vSPee86oLjX5yYVFYJAK9H1DTyTWUicFPbb6mnt2T9X4DGy5bQf?=
 =?us-ascii?Q?B0t6YX2MO9QhU9y53efV4Vgoi1hUITLjj97UjOGdB8fWn28zSBcOqKzL42fc?=
 =?us-ascii?Q?JiLhxglwHslgHRoP2FlQJmVy47RjoNplzj+n/DZOJpElIOvPb9p1gU7etCHA?=
 =?us-ascii?Q?jUebULMoLweTaJBExL4OyD8Vv4FiqUcKJwMI+ZdZm2dNKmpf4RfcBnA94INX?=
 =?us-ascii?Q?QbyfBMztSCLy3oNYWMoKZWTdoKtEF7HBar0AC7MaFoIshqTzfKRxkitB0RnU?=
 =?us-ascii?Q?VEVdhpLFz4swt+RO+B6+KoaS5xfSrG7KnW8LyYB0slN4p7GEVjtV/XfzozT3?=
 =?us-ascii?Q?gsC6oBIBobsNQXredef5LK1XPruEB5C6/RhxdEsyuOmwfssA7UIAs6ztJG1z?=
 =?us-ascii?Q?P4Catj4cKQETcbMYyjtwpsvTQMSx13XK8J87zCXH78vBLKScygfUzsdjMRif?=
 =?us-ascii?Q?gV9+n3hIW5Vy+dPlJzVdCmDJ3WcmIXoHOKxZLdXQus6dTrZvOUf1aXQUZLT4?=
 =?us-ascii?Q?F0dbaZ6pipytkxhtStm1VcSWvOX/Nr+74W8XFNwmOE1CxHlb6XP+fCC4kEJ7?=
 =?us-ascii?Q?sYZ55nwB4wJW1lb/DOHpN2VtFdsUwYGQQXduxn0ar68d1ucj2JiVSlcdbHi4?=
 =?us-ascii?Q?tut8wUvP7LitG/yv8twqErvni8DJMnIxZsOtztd5TbMizuqhRP3N1TA6/Nin?=
 =?us-ascii?Q?p9EuX2xaPyJx3gs+GNlUIrur0bXaa4KWS+dQ4mTet7fJPsl7N8GQHyCIQD8e?=
 =?us-ascii?Q?VZVTpnOXl6UmMTLgAw1Z9B5yEdokDO0M2BOmowrCF9MYHR0x4cY2uyLCQPUI?=
 =?us-ascii?Q?xegGuHaQnWqCLpm+Sebl1Ok2VTwKvooagznS7dTTivIrEfvlKuPdEGqCf2FZ?=
 =?us-ascii?Q?juLbDiQJmqO5fa5U5R5HcXGCDYZ83lwrkDtCVM/ndtvBo6XK5bq6S00qmv/p?=
 =?us-ascii?Q?41bR2n/zcobfGNlDvmmy2g9pLIxCSa4pJYjTnjcljRD1BNCKBsax7Em7Hhag?=
 =?us-ascii?Q?uQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 30bdb2ff-0db5-4a85-05d0-08dcdcd986d8
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:43:21.2067 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XoqIxP2RgJAfZJGMTlHd06+C4RoN/HQQBRv8T5vug6qX4PioaaIxTBwb3WeZf5+awVUyHKKam6CMgwNrISObog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4965
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

Move intel_power_domains_{suspend,resume} to inside
intel_display_power_{suspend_late, resume_early}.

With this also change the VLV suspend failure to call
the intel_display_power_resume_early. In the end, the only
function executed there for VLV is the intel_power_domains_resume.
Besides make the code more consistency give the call that was
immediately before: intel_display_power_suspend_late.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 6 +++++-
 drivers/gpu/drm/i915/display/intel_display_power.h | 2 +-
 drivers/gpu/drm/i915/i915_driver.c                 | 8 ++------
 drivers/gpu/drm/xe/display/xe_display.c            | 7 ++-----
 4 files changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index ecabb674644b..923178a4ffe5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -2231,10 +2231,12 @@ static void intel_power_domains_verify_state(struct drm_i915_private *i915)
 
 #endif
 
-void intel_display_power_suspend_late(struct drm_i915_private *i915)
+void intel_display_power_suspend_late(struct drm_i915_private *i915, bool s2idle)
 {
 	struct intel_display *display = &i915->display;
 
+	intel_power_domains_suspend(i915, s2idle);
+
 	if (DISPLAY_VER(i915) >= 11 || IS_GEMINILAKE(i915) ||
 	    IS_BROXTON(i915)) {
 		bxt_enable_dc9(display);
@@ -2262,6 +2264,8 @@ void intel_display_power_resume_early(struct drm_i915_private *i915)
 	/* Tweaked Wa_14010685332:cnp,icp,jsp,mcc,tgp,adp */
 	if (INTEL_PCH_TYPE(i915) >= PCH_CNP && INTEL_PCH_TYPE(i915) < PCH_DG1)
 		intel_de_rmw(i915, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, 0);
+
+	intel_power_domains_resume(i915);
 }
 
 void intel_display_power_suspend(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 425452c5a469..ccac3c06b2f7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -176,7 +176,7 @@ void intel_power_domains_suspend(struct drm_i915_private *dev_priv, bool s2idle)
 void intel_power_domains_resume(struct drm_i915_private *dev_priv);
 void intel_power_domains_sanitize_state(struct drm_i915_private *dev_priv);
 
-void intel_display_power_suspend_late(struct drm_i915_private *i915);
+void intel_display_power_suspend_late(struct drm_i915_private *i915, bool s2idle);
 void intel_display_power_resume_early(struct drm_i915_private *i915);
 void intel_display_power_suspend(struct drm_i915_private *i915);
 void intel_display_power_resume(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index c9df361f898f..9e788e1c178e 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1034,14 +1034,12 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 	for_each_gt(gt, dev_priv, i)
 		intel_uncore_suspend(gt->uncore);
 
-	intel_power_domains_suspend(dev_priv, s2idle);
-
-	intel_display_power_suspend_late(dev_priv);
+	intel_display_power_suspend_late(dev_priv, s2idle);
 
 	ret = vlv_suspend_complete(dev_priv);
 	if (ret) {
 		drm_err(&dev_priv->drm, "Suspend complete failed: %d\n", ret);
-		intel_power_domains_resume(dev_priv);
+		intel_display_power_resume_early(dev_priv);
 
 		goto out;
 	}
@@ -1211,8 +1209,6 @@ static int i915_drm_resume_early(struct drm_device *dev)
 
 	intel_display_power_resume_early(dev_priv);
 
-	intel_power_domains_resume(dev_priv);
-
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	return ret;
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index e5df50221a04..d5be622f831b 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -404,12 +404,11 @@ void xe_display_pm_runtime_suspend(struct xe_device *xe)
 void xe_display_pm_suspend_late(struct xe_device *xe)
 {
 	bool s2idle = suspend_to_idle();
+
 	if (!xe->info.probe_display)
 		return;
 
-	intel_power_domains_suspend(xe, s2idle);
-
-	intel_display_power_suspend_late(xe);
+	intel_display_power_suspend_late(xe, s2idle);
 }
 
 void xe_display_pm_resume_early(struct xe_device *xe)
@@ -418,8 +417,6 @@ void xe_display_pm_resume_early(struct xe_device *xe)
 		return;
 
 	intel_display_power_resume_early(xe);
-
-	intel_power_domains_resume(xe);
 }
 
 void xe_display_pm_resume(struct xe_device *xe)
-- 
2.46.0

