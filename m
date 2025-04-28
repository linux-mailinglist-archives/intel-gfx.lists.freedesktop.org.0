Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 446F9A9F261
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 15:31:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDC1510E4E7;
	Mon, 28 Apr 2025 13:31:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QYIWiKFd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5313B10E4E7;
 Mon, 28 Apr 2025 13:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745847104; x=1777383104;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=tELI184Pj5XOybb7Dj2YV8yHqsPeGSAt80QayTZpCWo=;
 b=QYIWiKFdMn2OJ+flaoG5yWJ/mAaFYNyXoDx7/ZlrT/qauFmLBVVI6ev+
 FLSUCptU8LAVPZUP2UxyN9zY84FBPNnhXGPB7cGzYgH6ov5QEbbJ4mPQR
 J2iX8bmWEqL1bA3e9H8jEu7B9i6PFJPFPvWqBeCfYk8AiTtyDchDZMoT6
 TCz8rtFtEeOYCVjlr0rQDaQ65f5Yk8hRyMAveeNIkIaUl752WkPnSoOaX
 Hk4hksHK/RAtKZAHgH0ropF37X7mmoRdCb+jSUiXz/Z51jZRBkQLR1eac
 d6JM6R4i7tsSq5mqa5RB3BmL6/2GBpBJ3yy9QzJ7vDvdaI0j6rsCA//3G Q==;
X-CSE-ConnectionGUID: nitsOVTQQX29lxksnG1G9A==
X-CSE-MsgGUID: yuqGCLZySh695OTDsWwcJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="58423110"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="58423110"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:31:44 -0700
X-CSE-ConnectionGUID: h8UIJKN4S+ewYa9g+5mXdQ==
X-CSE-MsgGUID: eQkf+r9cR0qbTUEUy8m6GQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="134490860"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:31:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 06:31:43 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 06:31:43 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 06:31:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q4H7rP6LCweyiyGYKcOYhE0JyzgqwRw7OFXkeuaMOdoC/D26oU469CCcTXPTRo3oArfjUdIIsiPbDaUA0vlYAvumrAyvcDcDDeY5UxlltWswEP+cHP/R0trqTbAc4JQJlLeekknPV1LkLsQqbg1RQngN+FV52qkoG7kIYGKe2dLvM5x8aWxfQnJA/CtWQr+eKlDN5BW71CVB2J0oTbwSKWhUpKYL8ve9Bx+Akh5qGe2Lz5ubqNMGD+bszehu4BvC58jjsNVlgN/8yOFyd6S1KVWSVeAFP4PVmZe27om2UKhlyqScGV4vWFzJ1VcZEGBAy6tJrQk4lvKqVtYR18s0Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=89TJhOp+owT1oALfZfRQlEj3fwtbKjDND1cpMMlFgPU=;
 b=obrEyE+56ZERb5yVj1ZaHkEoaRiVFROzLMgZfJ+ZrKb4VsXrMybd/LGBZvaQzPGvt4kQYyB7We3BP6xOhWcPXjJXDYU3ZjYsACaOWsaY9ychgeoRJcKCXdust0B8H7je2af9ZskWxPnvJsc07KgludWAQWzWK+aLbTY7TSgM+EzWNSBWtn5U77uUzOzPdYfaKwD8qn7lpIytfe8t0ywp+eWe2fQIE9eSbSpO/UbYjxiuIcoqdfa71ib0O5Ni4l2Eh+/3uVSY+1YVEREgakHGW6zJV6CdW3v2iVcoPo5Km8eE2HoAzo2aGeWUvCQcHQhdLbEM5+dnwjPhtwQ4gJYk0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW5PR11MB5882.namprd11.prod.outlook.com (2603:10b6:303:19e::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.29; Mon, 28 Apr
 2025 13:31:31 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8678.028; Mon, 28 Apr 2025
 13:31:31 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v2 01/12] drm/i915/dp_mst: Use the correct connector while
 computing the link BPP limit on MST
Date: Mon, 28 Apr 2025 16:31:12 +0300
Message-ID: <20250428133135.3396080-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250428133135.3396080-1-imre.deak@intel.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0067.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:153::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW5PR11MB5882:EE_
X-MS-Office365-Filtering-Correlation-Id: 7f8b5290-5307-4a85-3b11-08dd8658fcb6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?fxe8dhW6vYpwQy9HNKSd8K/BEJDKEjsOHFVqyOmyH5gxD6QUh4QTStF58ItY?=
 =?us-ascii?Q?bx7h3pVKs2X1SUW2+mHuquH1I5GXZNbroH9riVUvDH5OX6KpLKQyoCI65DQv?=
 =?us-ascii?Q?eSceMQDi0aAjBM4b04q481yOsSVCaNb0Imu41gftAgzAqAGR+9b0IiLQQzkl?=
 =?us-ascii?Q?WBmHENs3mbuonsd6xBAm/seSiQIkit2MmaPoRMZmemtkYPc2Ao/EN43Olwqd?=
 =?us-ascii?Q?q2I275r7kZVqif7ml5Wrv97OrA6y2adH5dBa7Ez32nqUT2H1qOR6K89kGe0t?=
 =?us-ascii?Q?nhRK15HDSB8C2N/ILDdkXMZCXTI+xdlSPfdGC6P2tHLPYdZiMWontWN/SWPe?=
 =?us-ascii?Q?AZ++wXtZE5ibyqwsv0z0apBI4K2LnjWRSOCn7pVDewNQ5ilUF0fqnb3gr2zT?=
 =?us-ascii?Q?B788zmjLQ1JZEqMGZcWt4YTIrgBSMGELNXVE0Rj7DMieRpIz8WMsmxbqP4tL?=
 =?us-ascii?Q?bq2MeOk3yUZ5eM0ExJ0X+ZEn8hQzVXhRuHExLun5za80WxQDKyNrP+JJU/Qf?=
 =?us-ascii?Q?Mlch5SxqDbCYjj/z14s5WC4Bw6FQwwsEhpw2IRPh1O3nxbxpGLlXjS07MX6a?=
 =?us-ascii?Q?XOE85JCRcytELK0tyEG/texINV8wc9/aRaMN2SEImIaohlsHe9AgFoSzKRJ4?=
 =?us-ascii?Q?IqgxVjAsqHicpDMRsRdP3wbquSCZo/GQMF/4H1M+27Rg1VXJzn8yBNO00HdI?=
 =?us-ascii?Q?9Gn0OWXaTwEMR8JDJtNgPGUQtDb4Ko3j1vn/GrbW2yuq1NXRLmLnWOqu5VVj?=
 =?us-ascii?Q?cr8xWiVJ4i9j0Npg+52+7wN0S3UWSquq8mRApIIeitWguMprhkz33a0Nu1rQ?=
 =?us-ascii?Q?opeBkfp9+8YO606KVAr/RNtY0Fqjs2tjDFcp/8OOILgOxOB1XYDxfZw7v/vC?=
 =?us-ascii?Q?/ebLHKMYQ2W5xrLnMrWajjlTHLMkECww/AcwNq8TUnGQADYvez8FYLzeRl3w?=
 =?us-ascii?Q?V44vTjppjY2GsIXJ3DhGJEbhYua0kCRqHguHB2ihFa6RtBPgxY7Hp8IIe2XY?=
 =?us-ascii?Q?dWOIX/F/2rS54DZAMLpXJn160tZrQjgsjT6eUljmWyfbz5o8BRqKLqkzsTPW?=
 =?us-ascii?Q?ux3ouwITAMwVGoeB0VDgx3wSdHI0U7rRFL/LUl1NRHh2TgIVf6f7y5++uM44?=
 =?us-ascii?Q?Y6XKkzd9Lu6YJs07a4U5HcpdhRqGAXSrTalA9fGT7TTXZTcuX+cJXKwaFQO/?=
 =?us-ascii?Q?ijCsgktSiVMkMr9cZO+LRJW/PbsiY9kE8WgLTUa5IOp++FRZaIRyK/VYevN3?=
 =?us-ascii?Q?RQa6q2f0JP/CrSuNFAZL10cO5z0jPt4nVz3n6jqv2uNHsyJNdw7snnvf+5e7?=
 =?us-ascii?Q?BmQ9PrCs5AWeKyy14Fp2sUCWMQL3ba/xtnLfu0esmIafl351eh4nfcRaeioS?=
 =?us-ascii?Q?eFFALqmCrxCozCrxX6pKI8JmaAQ4/x53lrmw6Dmc80l4c5tRsw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qgnFzR3qLOt4YmH1jzf73Jga7FdU9CX2VTW5ju/UUCymujZLPc0Kgf36jibV?=
 =?us-ascii?Q?fSVQyCYxVWjITdaYLVz9Mj3i/yOnHqvFNRCMPcpBPIg8gINtQ8i7unYYLdki?=
 =?us-ascii?Q?oidXwnS3id3/tBNvwo6tEhJthD/0YiFM0RQcDHjrVbKblfK8S+VX97JDB4yN?=
 =?us-ascii?Q?YUbjib3hxS6VVg7BIXCKzrr1uu4f2G74KDz4TPJIhOWOq2lj6gF8AkENAwsD?=
 =?us-ascii?Q?Nqxu7dUt+CTbY3/QvpNwzSpXBZDxc62yXAI9Sczxq5ENs8RwkxkYLwuPifSG?=
 =?us-ascii?Q?fotJvWZE6R0aAhA4ZJ+Oavd4AW/DlC8z6+4Fz+2ntRavZw6Os6p4NltiuqIY?=
 =?us-ascii?Q?ou6WksGZQ/EVJT2qwMO3E838DSZcUVtWR93xaX5byu24z16hiCTkqMG/ff9S?=
 =?us-ascii?Q?fErSRbF2NprSS0c8Kl3GuDgfpaYGS1n642CqXRPit3UiDMH7WdXcTqW9JxK+?=
 =?us-ascii?Q?vM/6oPA7vH8vqFtc7kDwzP1uGtNsbZ/rQO9d4TH6zvDw8KIXJdKNqDTceFPK?=
 =?us-ascii?Q?CKIENJ2A27+UldPKcGLn5JFRuR4QwO1K+lfdqHj/zCktrfQETHmptCnvbJql?=
 =?us-ascii?Q?mW6F53IwH0GRPIYYxyhI/bSGvJAM9G+SaRV+zMMW0rgD4D0rVYSFbWlCKr4+?=
 =?us-ascii?Q?bYoQo++QSctTa8eKJq3xHhfm3m1iWZMQ3ktmsa0Sb1SQ2ut4BEvOo0WZnEMS?=
 =?us-ascii?Q?HxckSwv5gsKsQvQS3rwijCkYUY9P1NCTJI0VfFFfK3LOwAB4onJqfV4NTztz?=
 =?us-ascii?Q?0l8r5EnJTQOsq+Fv7F4Nayiq0ARDde2d3LgAnvUhZcnfYSM3ndB34ga2tHgm?=
 =?us-ascii?Q?SEemOgAIdUTQB8p3X43/PfTh4aiKFOr9ddXqaitdPhTBmFLQY7JJOQkqjsO5?=
 =?us-ascii?Q?FDWVs76T3adABd6OjY3NqwBFgp+o8vV8V1Dqus0kVLIO8m9o0Fb0HZStph/D?=
 =?us-ascii?Q?WYrCqAsL6yHdg0+AgZ+SuNpJ141jAmi9baDYQZC8xhPfwvYOZECMU/V4yh8N?=
 =?us-ascii?Q?NWrN/51IdwV8UYIvum/oDt1+6ktfKv9iMnZIJaQYOViMtSX+zxMgOqKjKU4Y?=
 =?us-ascii?Q?rPsfgE0nkxwD+pg1kTJEpf6iYlpLEuoysUUTxfJK9yKr5q8FSRBIXSbs2abP?=
 =?us-ascii?Q?wpjIikD03ALtAo8P+mCbDTZLWA+JOkSK5NoSoFMfaMDjbEUxiOOiff9Qmmsb?=
 =?us-ascii?Q?17CF2L6huH8YzU29OlzOKD94gdcgBGES2PVrlBH1FJZ4pNNLzSV94atRtOSD?=
 =?us-ascii?Q?MPXLHWFdADwgrG6Q+1mNEbtdx0gqNAeInGq0gaKNrnR2SZy2q2oEMT7YOBtS?=
 =?us-ascii?Q?T2apxWik8Wsyo3lte5hu1p9L9Zx4/Gfw1q56IfyJhHgCHN3A6kMj1/OVL/Jk?=
 =?us-ascii?Q?GSYuHyo7l4sjTRXdW0oLAGjQDv5vJCoZPLXhrJDmPn1KPiqCSYX/dQUkUru8?=
 =?us-ascii?Q?xouSuv2cVUsB6T2a51MYCxQ6BPTyC1AIhbaLIPrWaJDOd2gFRoS5FZZE8GQS?=
 =?us-ascii?Q?38jn+Nni5/jLDiKhh9dguwYmG+W7YvW4S7z01luILF6eWRA503Q+FaRkUbbL?=
 =?us-ascii?Q?2btFiQYWRL6HG360L78kPwSy3ggV0seYOKtLGNm/?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f8b5290-5307-4a85-3b11-08dd8658fcb6
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2025 13:31:31.3107 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k+7ApIs03Nu55JxkeDUpX8nIZ50wzkt2hEbWDz57UoT1wjQuwKVXfHxZkL6Vv1uDOgW+ciyIzY4AOnr4q1Erlg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5882
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

Atm, on an MST link in DSC mode
intel_dp_compute_config_link_bpp_limits() calculates the maximum link
bpp limit using the MST root connector's DSC capabilities. That's not
correct in general: the decompression could be performed by a branch
device downstream of the root branch device or the sink itself.

Fix the above by passing to intel_dp_compute_config_link_bpp_limits()
the actual connector being modeset, containing the correct DSC
capabilities.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Fixes: 1c5b72daff46 ("drm/i915/dp: Set the DSC link limits in intel_dp_compute_config_link_bpp_limits")
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 7 ++++---
 drivers/gpu/drm/i915/display/intel_dp.h     | 1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 +++--
 3 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 607aea1bf6fa2..d63aea7ee9c80 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2523,6 +2523,7 @@ intel_dp_dsc_compute_pipe_bpp_limits(struct intel_dp *intel_dp,
 
 bool
 intel_dp_compute_config_limits(struct intel_dp *intel_dp,
+			       struct intel_connector *connector,
 			       struct intel_crtc_state *crtc_state,
 			       bool respect_downstream_limits,
 			       bool dsc,
@@ -2576,7 +2577,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 	intel_dp_test_compute_config(intel_dp, crtc_state, limits);
 
 	return intel_dp_compute_config_link_bpp_limits(intel_dp,
-						       intel_dp->attached_connector,
+						       connector,
 						       crtc_state,
 						       dsc,
 						       limits);
@@ -2637,7 +2638,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
 
 	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
-		     !intel_dp_compute_config_limits(intel_dp, pipe_config,
+		     !intel_dp_compute_config_limits(intel_dp, connector, pipe_config,
 						     respect_downstream_limits,
 						     false,
 						     &limits);
@@ -2671,7 +2672,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
 			    str_yes_no(intel_dp->force_dsc_en));
 
-		if (!intel_dp_compute_config_limits(intel_dp, pipe_config,
+		if (!intel_dp_compute_config_limits(intel_dp, connector, pipe_config,
 						    respect_downstream_limits,
 						    true,
 						    &limits))
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 9189db4c25946..98f90955fdb1d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -194,6 +194,7 @@ void intel_dp_wait_source_oui(struct intel_dp *intel_dp);
 int intel_dp_output_bpp(enum intel_output_format output_format, int bpp);
 
 bool intel_dp_compute_config_limits(struct intel_dp *intel_dp,
+				    struct intel_connector *connector,
 				    struct intel_crtc_state *crtc_state,
 				    bool respect_downstream_limits,
 				    bool dsc,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index d19ef1fef452b..49b836cd8816c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -621,12 +621,13 @@ adjust_limits_for_dsc_hblank_expansion_quirk(struct intel_dp *intel_dp,
 
 static bool
 mst_stream_compute_config_limits(struct intel_dp *intel_dp,
-				 const struct intel_connector *connector,
+				 struct intel_connector *connector,
 				 struct intel_crtc_state *crtc_state,
 				 bool dsc,
 				 struct link_config_limits *limits)
 {
-	if (!intel_dp_compute_config_limits(intel_dp, crtc_state, false, dsc,
+	if (!intel_dp_compute_config_limits(intel_dp, connector,
+					    crtc_state, false, dsc,
 					    limits))
 		return false;
 
-- 
2.44.2

