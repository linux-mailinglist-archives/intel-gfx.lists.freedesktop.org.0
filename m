Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5542EC8FC65
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:51:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC8C810E865;
	Thu, 27 Nov 2025 17:51:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RIzw1Zrs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 813A810E864;
 Thu, 27 Nov 2025 17:51:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265877; x=1795801877;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=SQb3kEZez4wp2wJON/O6q8UGSowX6Qivrq/ZWdFFK1w=;
 b=RIzw1ZrstX0zGGaLffwE0FTHa4CDA9aPRUJzDU5G2MBCSGXnr6e2UobB
 UiGAMUwpwZJVDStOMe3o3v7zu7CwwQorq3c6WtH0f9q6dKwqUQqWiEnKE
 kpJ+Yl2HxkvzmgQbHhdlr0h03ejrrOdy6S+r8UJoUWLjQ9jAvnximEei5
 pi3kcKYfw6k+nhugId6Jl2RcreqKPdp6Rr5/va8SRAFgt7lW+ELonPxKf
 mXiEqFxDavMJkicNN6aOYA4zJKxsmd4fXfdYDaOgQJ2W5ipoVUAUBFGQW
 9fYxRAhKhQ8MkNXgudWsHIZ62AEZvB8OeL1sVV6g5LqkWNizj7yivZWni g==;
X-CSE-ConnectionGUID: mGbaiOfWSpqLE6vXIyPGkQ==
X-CSE-MsgGUID: 7MN9Wxi9R0O7E9eROyi5Bg==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77002952"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="77002952"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:16 -0800
X-CSE-ConnectionGUID: fMlF2wJaTz+Py5nHniBqvg==
X-CSE-MsgGUID: jKbYcxtsTEGdEPkHEDwnHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="197453593"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:17 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:15 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:51:15 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.37) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bcH27sh/yGwInuzzk9XCSSgkKXMjHQOh1fRlPrQL7PRNN6pkVGEON5Q8JGIPXEp/Rkmy+aq54bHt7+V49U0TCcIevcLpASe1PLcYiMLMONPH0AThjOA86gZiwu5Qq8W18wxqF9ZMLevnIu7j4KhoWAqc7QJsGpk/cxlPo6iTKYYGHMU0K+Nnq7uXnltoz0KDq0i+QB+K/gcw2fwpAndtrVOr50zwhhI2SRE5wbfGSrqDtFgwz+zfmaB0Ax4fllNHIixdKFw0OH89YdXctxM/x7NBfvVJDk/mMd+cgdQHf1LiOxdzPkNYnSKv+soWHt3wjjCc0ssoenps4gGhM/wt1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UbtLUd48nwQ4nLNibskRoQB7rHFm7mKSdnvaIVgY5NI=;
 b=YqWYucOUU9r1/gw9RmW/zwPhnwsHECqAqRUF/Qg1QyKf4NJkatYehWlPBeXbDrRmrxCS0SpJ9Lim+omsZL4WcOGEybG/6oswmLYCFkXaj3PP9zjEbXd19bItHm9dNj9NSu6msUctwzivDF4rfqqWGrB2pf/4DXMOFCU+YltUBBwRMnHAeM+f2qsrONpGpu8XCdD8gttogIgR/sxaxWwFgg11TIQx7rjMhH4IgLJGI1HceTSTx54DGYizO1/ujJUAFkrpM70wirvNafsX/NMKlfmoeO371leDQlOJa4zrFZOY6ag7WJSdZvu9mV7zZ8Gp2E20eTNv/uzxQERpm2J1qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7842.namprd11.prod.outlook.com (2603:10b6:610:128::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Thu, 27 Nov
 2025 17:51:10 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:09 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 16/50] drm/i915/dp: Fail state computation for invalid min/max
 link BPP values
Date: Thu, 27 Nov 2025 19:49:49 +0200
Message-ID: <20251127175023.1522538-17-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 4ddbe655-413e-4c0d-af95-08de2ddd8c48
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?j0NfAqGDLmUlMfXiUxOKGWcsAJqmocZL8yVNDhCfwAKMC0Rlv0ADOPKsCwlk?=
 =?us-ascii?Q?JBfjPLnJQSqOxa6KVFYTM9bBO+YNKzxXvED6CQ+npSzVbiBiRMx5UCHRc4KA?=
 =?us-ascii?Q?eZwdzcaSTKyxl4wFDbBx8MlWw5CKLiF1y18RSJE7zc3WlI7kpyoQkf29bkmv?=
 =?us-ascii?Q?LMy6dmmNJ6tDYgzjvvcsAl7p0/yrDEKWxUmbWioQqESNFrR+QS53HK6rgKRU?=
 =?us-ascii?Q?F/QEJ6IwnUu2tG6PYmOSQkH69or3ofpuNK9xbHwpWRV/X96h1wAEt+zIeVgB?=
 =?us-ascii?Q?cFNWx9Ri5/DFIeIYm1bJsIAw9GN4XTGvaiXZRljk1X62rFjt6EILOHaERjwP?=
 =?us-ascii?Q?vaP/4BPVEEEroaV7MD52DPZxs9l6N7wyZdKWPpyippjaKMsiIPWnyAJkhBu/?=
 =?us-ascii?Q?RAzA3eE7NpwJfOj1s66buOowjOGqrRh5l6+MXH1JEZUZ5rALfZJeS+bsaC9+?=
 =?us-ascii?Q?7/Xx9B+IZd8x6fDjrZMtYpkWHfj7gu1TkUBucKBVMi2qqQ5v6EvzZl3tSNgJ?=
 =?us-ascii?Q?LPP55jEqkqSlhydOIffrrSTOhHrFW+B1lvKqGNmIxq1aKZcov/QSLf25H5st?=
 =?us-ascii?Q?J/IbEou32KsGE22HsrhsaS+/6LO0WqE4O87zOUcBculHXfjq74U9JM6fswq4?=
 =?us-ascii?Q?K/FD2QGjidn/+gofJ85KU0waH6/gcxSOW2cAgR2t2XnGfECxKKHCPEXDREFg?=
 =?us-ascii?Q?EfPRom1yXazMBKdYxP+lFNZBe65B4lhmEwGfyxtobR5Mzo7QO3ikurMsRKSn?=
 =?us-ascii?Q?2bam02r3IuahDdBUdQrb9W8unpUcr4OBLgHj39UJJ1on2kie0jdVIftmoOz/?=
 =?us-ascii?Q?q50IFIZZnX+bUZEHjlPtBvMp1PqItRy3+0PInrN86m2lixLp41cj10QCo/RO?=
 =?us-ascii?Q?LZYMzfWZUffjie2R7tDrxRbRAmFpRf+OWpcEhtxj91GWzLR5PfHkwXs7Di4Y?=
 =?us-ascii?Q?mulUMW9Z6C/oZcvaIg3qeEIwbAAMPj1+cmQtQkWyzeYMI6UAVwEozUi6QQMW?=
 =?us-ascii?Q?JMPqI9gWGZcQiAOrF88MwYGC9+4gUz8GN9eZ7FODwdr9v+clCUZYzK9RTMSU?=
 =?us-ascii?Q?Z0ws4Rr3BAofhlfplkwI7ef2CnfHYKGJdex3C3JrRzPc3Js0QBVqhKad2u7w?=
 =?us-ascii?Q?q8zqkQYsZ2JOGobHbTcStyHUmTUSvqw67srHL7ISxhT/gvHFfDxdetlFzEbN?=
 =?us-ascii?Q?6TSCRjUF7clLKYcrB++NANy6aONdDW+Dcs9ZF6n/kRQsgF2XjbSlC0qwnKFH?=
 =?us-ascii?Q?6xm/wgGKZMvGEQt9wjcsIrfAITffqynSS1Rh9/5YjvVZ2Gq0Rk1F+GXeZMjh?=
 =?us-ascii?Q?S6263A6hJvuZQdPG5kthHtaEvl6xhWYCbvdXXr9ZtGV0lUFPSWeQmebhdrfa?=
 =?us-ascii?Q?z4e+xV7680Ju6hlfMwjZiub79hP3hHMJBaMFdnfdJSMG92hIVeH6zB9pdqaM?=
 =?us-ascii?Q?ZwAmvcXNaLidu3okG758XDClarsHk4V9?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kfwB0WkR7kFxDandpRylbqPkctcjkJozVVMN/I4MTWccpNnnI6dDkGaXn6F2?=
 =?us-ascii?Q?xyU7m53FXOu9edMS5K6Co7K0ax8NKNIbM6XIFd59zn+ndcNhj84sN1wYpoFf?=
 =?us-ascii?Q?vesHjRAp/NGyYtYH8Nx4W8+3F5+09tBW9hv6U+Kur6xjGeOtbTvlmV8iIUXY?=
 =?us-ascii?Q?ar67eZ00TqVaoXwDKF4hskq97e1x+2WklUJNmlFo/PCUi3IbeAoXOzYjOWIZ?=
 =?us-ascii?Q?gCsF9Br+xtH2exvu8220F1emorP5rODkda36V9gFWA0zkXKyfZRS7dtra8C1?=
 =?us-ascii?Q?uZliroMvvA2nrtrHW5D6DsrAA4DPz2shiz7UYTpWRIfiYPuEN3y8tVh166nA?=
 =?us-ascii?Q?ld7HTXhD/wdHOXeT1tmXpsG8DwWhm+o0On+Xgrhn/TrYHolwScTyWzSUbRzm?=
 =?us-ascii?Q?8XSaPDtUlx8FTvdbNQqa3QKeA0x45MgBKkFLPeTKIeDttaueml/hF4ESUJcW?=
 =?us-ascii?Q?K3VvNA+j2sbcXvsLMG91w8iqVyHoFmVWubEIScqpym8KkSWQYCgIlWBijMi1?=
 =?us-ascii?Q?0m4qE2CPo3rwQ6SogTr9fkARkraZ+tf8XwMbOjJwYAwKmjN5x9E2mB6cyNcb?=
 =?us-ascii?Q?HGx/PdYh0uP72sshCqtWy07RboYTcRZmjydaQZ8tFU7U39Mtf5Jvp7WYX0O4?=
 =?us-ascii?Q?C1bI30qOIN+bkGML25tgV4Ss6cDBWwOu+/Vl55Wo+vMXIxkZKzc2E+erDUVJ?=
 =?us-ascii?Q?QzRLGZzB00xqoCUV7GRcwts2miYQnM5p7ykkcv6ZhXpQ836T0aQ9sJAvJxuu?=
 =?us-ascii?Q?sBDOREV6fM0qaTSBsRZMX/H8JfHorviGzal/zJvm/3G+nl/98vMinvDXdK/S?=
 =?us-ascii?Q?ALXGRsuQkUYcsffx9zw11ExqG3fYcNumCgVO526xM5vpAJrLPGcasdJsQE3E?=
 =?us-ascii?Q?Lm3NFoEXMjUY2uwwqNoKNP/W0sQNAVGC0GArJeH4EOp0tLq9yONSp4TPb0u8?=
 =?us-ascii?Q?3DawFBk2xxVcOyai+bw9vn6soI0J6dz4PUSyn3XBVc3YXPiQBH0R+QYeOcGA?=
 =?us-ascii?Q?BoZqMS25Iag3NEcRh9KE9C+H1f7klQBbzWqCxtsSWFlGyITKBf7s9gSMnAqi?=
 =?us-ascii?Q?djlNanjoYIvY0L0wYRyN1aRPiJv0oc/Aqct+y4vBdAhrlXvMq457x+BAPtMi?=
 =?us-ascii?Q?fBK3HZuGens1vQ1tRjrELu0+EDoPFyrWvxkConUUOcluWu1kfyNE7pKRFyOI?=
 =?us-ascii?Q?9p/5u/Sz/Vix7aUEgK11Yq0tlL4/WNBSnO9BMKHq40zG8BPrE9ac7EyD2pxk?=
 =?us-ascii?Q?SRsJgWYRVH9gU99WKG50OsPFPJKhW6D8EJ1yKLCRtbzskKPCQpv7EyGbua73?=
 =?us-ascii?Q?xGxnip6dq8KlOQ5DAeTKaF+C89y/aJj4I7UWvN70RZUlTFCbg+ofbvMRHvFS?=
 =?us-ascii?Q?nIgQ5QfymneONfkRbG5D6dExKH588JQhpt80GJY5kwVBFrFhjtVY0CfaBBNB?=
 =?us-ascii?Q?VwP+MW3I7PXJJFsFqxYJ6Hu5rp76y/6LKw+5zKd60Cb5MljtxpOoAbkzelRT?=
 =?us-ascii?Q?qtMfK3ibX8nDvg+6SFyzysMCGJRJvN5E5EMqsbkN+WAL5ZPaXU+0aoIe5Vuy?=
 =?us-ascii?Q?3panKbMZKm4wiowJhyM9TODuT54wK4oQtXQG9W5Wv2QGqwyttUKZAeakeBD/?=
 =?us-ascii?Q?Ec43oHXS1elCxeAXQHggjVoQL4EFgxT7COixrC+FyeAc?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ddbe655-413e-4c0d-af95-08de2ddd8c48
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:09.9076 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mhp/HGi8NPlq335ZuG5/saknKbXF6zt4n6XFMlLtv6jv7PmlX9fg5e3KKdz/sRyvFRzP3JXRIyLlxAFGcLv9gA==
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

Make sure that state computation fails if the minimum/maximum link BPP
values got invalid as a result of limiting both of these values
separately to the corresponding source/sink capability limits.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3111758578d6c..545d872a30403 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2654,7 +2654,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 	limits->link.max_bpp_x16 = max_link_bpp_x16;
 
 	drm_dbg_kms(display->drm,
-		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DSC %s max lanes %d max rate %d max pipe_bpp %d max link_bpp " FXP_Q4_FMT "\n",
+		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DSC %s max lanes %d max rate %d max pipe_bpp %d min link_bpp " FXP_Q4_FMT " max link_bpp " FXP_Q4_FMT "\n",
 		    encoder->base.base.id, encoder->base.name,
 		    crtc->base.base.id, crtc->base.name,
 		    adjusted_mode->crtc_clock,
@@ -2662,8 +2662,13 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 		    limits->max_lane_count,
 		    limits->max_rate,
 		    limits->pipe.max_bpp,
+		    FXP_Q4_ARGS(limits->link.min_bpp_x16),
 		    FXP_Q4_ARGS(limits->link.max_bpp_x16));
 
+	if (limits->link.min_bpp_x16 <= 0 ||
+	    limits->link.min_bpp_x16 > limits->link.max_bpp_x16)
+		return false;
+
 	return true;
 }
 
-- 
2.49.1

