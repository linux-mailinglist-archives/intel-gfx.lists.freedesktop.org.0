Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EFE9984C53
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:43:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA49410E755;
	Tue, 24 Sep 2024 20:43:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MVShTRIo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3210610E746;
 Tue, 24 Sep 2024 20:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210610; x=1758746610;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=DOKRcZl1VoT7fLPyPTW3qOBCEvKTC/ymmiIIfJB8fio=;
 b=MVShTRIoZyWU8BWUxORNHBYMUzpXNpgeZhsET3sOdb5oHxPxTB34c4vM
 iHlPI5pRXsoE6BhEpHSoqifrPcQ1Ut2P6qe9UcSMlzQdJTusv9/6qHyos
 rAl0h2UKr4clgNHT75fOLdDBCKs3unPIMRznBaivWXxjP/RI1fhEPy86r
 +wL1tmmnWlaXQahwik2Wu+tgtJOxizGwqxFeVHOeRpnJdjjaZfMEAwvsx
 7YUwe14AkqXHEyc7vKbCpFivyoYd6Nj/5oMQ1erK5W90WyYly6a2QYwKz
 DxntHx821Xvp5qOYPhD47VTv+R2wKbSDXs1vgWyRhD0Ir/mxXhIFri/Nr g==;
X-CSE-ConnectionGUID: WO2kuWO2SRa9SZsLw3AjaQ==
X-CSE-MsgGUID: vZAx7VWrRJunjnw1w0rz0Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="43751555"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="43751555"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:43:29 -0700
X-CSE-ConnectionGUID: AagPLzJAQSaICiLrbYsEJQ==
X-CSE-MsgGUID: RZqIll+iTtWJwAAzisLVVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="76298826"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:43:30 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:43:29 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YI4yn8ja47DXAuEVC9d8rcJmE+4vXf05m40NrU+6ClB9BNnBD5kEVUFdVN6/LwTEOljZNNAxC8x75T2+euzfVJccx3bHN8gnce5pPaEEaqE8PQ1PTRucxkvPm5JZdge4LBW0zSLHP/74iYGVHEnHp6ftWL5/dkelBH0R1mDYrf0DK8ck1scBW3GwF3Xbi7/EKgqKHYvVCSsp+SYYDpqhiCFqM0fUY5i5l79il+j3BGyPrgBkyB20xBafIbVVbTLPCSiVCHqL4wsOChJ58YWo74MlLJQwGjXDOkVpKihUoh2a+NfS/CsFyzAuRsIkCTcBmW/CAKl33bW/k9t+OVcgnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+QDW5xayfVVbVARaiXU8WdoQ3nY9Ij7ff9kj0T7Pc0o=;
 b=ooyz9cT+FTSQAAtbqATDT3Si87shCi4ev01bYFjGlq+wOg0Lq3Zy5vJ/PBOzObuzLo6y65PILtBsmNwqqXfgUIqUyRsPYedoHIaevkpnDaWtndCZqktij4DwwrlubJJNZlf1BqQ1ur6pYXg4i4j5mkg0OwB9ega5OHG9ynXrMmj96okNdtt5XNzk7LJRd4TSShOOUiOoweYhuO/91JFt/HXKWp2l+AdROSSP7pu+sp2I3GTxzFJR3vK0+VaBmhEES2GxtOw134hJasluLMaWqYqFLGHtN7fBE+lMWnKF2ZtxGYg1w1OcDGeMB3C1ZDCjfn3ZirXi3jmENxokbnDSMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH0PR11MB4965.namprd11.prod.outlook.com (2603:10b6:510:34::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Tue, 24 Sep
 2024 20:43:27 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:43:26 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 18/31] drm/i915/display: Split resume_noirq calls for now
Date: Tue, 24 Sep 2024 16:35:39 -0400
Message-ID: <20240924204222.246862-19-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0091.namprd03.prod.outlook.com
 (2603:10b6:303:b7::6) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH0PR11MB4965:EE_
X-MS-Office365-Filtering-Correlation-Id: aba9444c-0ef2-4da6-b0b6-08dcdcd98a63
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?1b5DwFiA6WEk1jVGuSCr2oi9KjcgXo+ByyJWALATl3iqVHxjjx1f1RcZOYeS?=
 =?us-ascii?Q?/rzXRc8B+PRFLiB3A2V7SzY4iPS8B3g+u0etUrnDRSR/YQvGSJ9iy6hnnjLw?=
 =?us-ascii?Q?b1LImgK2Y4Z5y95MOGpSUg/FjunGNGfH9eDnuFndPOAP27vlwHtZZgTvhk/e?=
 =?us-ascii?Q?J6lEwzfzeZLn2xZTe4bKdi1p1NosNG1KxuzdPuaRmao9mXt5Y2TYnzbfMiGW?=
 =?us-ascii?Q?2H2tRnYQYIgw1SHZ6z+/EYFej69VB6PDGNOo1M+lBicXfcs0mwwU3344UB/6?=
 =?us-ascii?Q?RtqPZR88sh1lyYt1AjDx8rmPWd1wB4tDA7moSd6d6hqA/1psivfL9FllHaGS?=
 =?us-ascii?Q?2xfdVSc+5lr+Qez4vYHE7fX9PYA3ihWU4PID+hE9L14Z/uQDDNOLZo1kPx30?=
 =?us-ascii?Q?DQp8LVl17kw0UEHDOcz8RMAuUleIKnAGjoQ3qKGZT0fZUMmtHz0caanb9QpW?=
 =?us-ascii?Q?3EjRMLxusYxntrAcPzHr6jJukhQQ4ofYO1yFxcyo8Asdg8F7RKDfGblLkgO7?=
 =?us-ascii?Q?/N4loGGbZJrtHQGoNm6N9FT0+a/WzZqRMNb+NEFOv7mVobame5dga5lrcJ0K?=
 =?us-ascii?Q?nYbxrga0RaeLIiY7bOEbOuffQu6fjNbi6tfd38DTpSKy+tcIKQtyWEmFtphj?=
 =?us-ascii?Q?0h426doe93Q8B4vaw2lp6fF0BboJRKpyezjZsOlL4ebenxz/J0/YP+EOCBRX?=
 =?us-ascii?Q?LQYOLzInMXXYvZfPm5qASAqL2/q3oCRMJj4sLQYinHWhgFEcSEmK5HTpPMto?=
 =?us-ascii?Q?WXCUAp0u4B2MnCFDTlCHeXHAVutgWr2sOk5QB2kaTABpwpdZr6Yg8jEEA0dq?=
 =?us-ascii?Q?4py9M7Ogw7EL3unVx/wKo5I7Fnnk8BkwWT1iFgbCz6lUVbFE++v3jBJmsQvF?=
 =?us-ascii?Q?P7IAgNr7jBVl/pDwnM2fMC7TEFExwGrLrUL9yWnWmdivNcynkcROi+9MChaN?=
 =?us-ascii?Q?mfBcCTLzOLRhqBqp0J2ErTgcihFaIves+lUPY5oFW+kvIx9isR0vKY5gFVEK?=
 =?us-ascii?Q?9WnbLpOhnf92wGAB1orrkv9iQwu9cYOmlCs/v7d4YPwQ7Fft3ZoUUYR9BwoM?=
 =?us-ascii?Q?LQxkSY6qjKNAWkLEVPvu1JW1IorApgVXh9Ht5qGVf8mdYHghQ9tlpei8AfPv?=
 =?us-ascii?Q?XsfdfyVV+t4T9zhdSE5KUP8uidt6GSv9RYo1Q5w65HdA4IriAYTlcWZz5z0B?=
 =?us-ascii?Q?7RZ5n+F81N1qzDDjaT1rb8r3UxA8b3D7SwTFPTtbU4n/F6nPmX0z3JP1ms/d?=
 =?us-ascii?Q?qk6YTVEQmaCiIfa/kNNVK+d3TfL7g2fQLNsl/YvG4w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qFQaIMV7VruK5Og+pXKY10BACa5Mp97DXHBkm4AHwc7g9KqUkHAzWaeehWCx?=
 =?us-ascii?Q?aT31hwkbQm0V2MXdpSaI8kDB96YX6N+153R5Tm7QH7/mSNM1q0Xt1oTBN/EB?=
 =?us-ascii?Q?l05SiKkaBW4KRfQ5+P1t3YEQCqlgThMyO+3s2l1UIwHGuPjEv4EyYCPNXMLP?=
 =?us-ascii?Q?czmdv5NdxnCfda1RA10V7UBF8KhxqMlB90KW1ehH8KdRABjkPe+oDrpEv6RV?=
 =?us-ascii?Q?OwQHv7jOxW8/heKlP0XQSoBAU15KKyzdV2WjqoKV9JhxFi9STGfAy6KM0Qlp?=
 =?us-ascii?Q?72Y4lQ7X5c14M79nf4pui0xQ1wHyJb99QOqElXrn3+d4qKp7ZUfSLYdIOqOH?=
 =?us-ascii?Q?nz/ojbCROwHzZW3MHhJ+e0DgrflnKUz4OMOTpTbSfsZeovbV/E9m3VLg7zsi?=
 =?us-ascii?Q?seoG6yKSDZ9uLyjtz7nO9dF8NMT2LLSTcslQVhXfV4VHFwKDwPqwVxiuAwTn?=
 =?us-ascii?Q?PUl98tUS1g+9K5F7FVWTJj8SojR+d/vbOJQEpBMTRNhw8/7VwKQLGdSUesFG?=
 =?us-ascii?Q?e7h9bSUtGjr154UIGvUfbEF2t3N5YoFJUO232LaUJ3Xqj6h7XuZcOti7n7AS?=
 =?us-ascii?Q?EPL8znOO5sWeJJYTnnKqnNloodqfQ5buchO0xRhSoNr9HXH+yJxBJV+WhcHI?=
 =?us-ascii?Q?YJihiv2KBM7itQNWVDLZR8yrjBjcHvcOp3pk22o9vqLx4kCQeQBorI18b6iT?=
 =?us-ascii?Q?e1JrLyWBWYgMqvO8n3U02Ex3AQ5lneAzmX3/ifabVpaqBTJz95DvVbt3RceZ?=
 =?us-ascii?Q?gfQHw2q8HycrmItbws9BOu7CPk1TiGYHkBO5U6XCGL5zm9hKJDv1NTY5fQ5N?=
 =?us-ascii?Q?6JJIQCDBEZVyO6HnDqkoYitTBBlkPu26RBjbRq3uvIztJak0QDeutTHFxBKN?=
 =?us-ascii?Q?qLZnGc0btWKk+0jtYeFBeHQxmqR+cU68rFhFxBENjkzvk6C7sqtJx4PMK2Ri?=
 =?us-ascii?Q?Em9s0N1nxHcYy4HIL4Za6BEzTrdSkWYJuTfof9wShTZXuHS9j5ZYImrpjcCE?=
 =?us-ascii?Q?BbJWGdIB7KTTmByW5pyDL0y7T5EexqJpE2o9HAyHjuVoK93giPQEQwW+8x6n?=
 =?us-ascii?Q?9M38ub/0FfNqbgBoXAz1BoYD0F8kuTK8JMxRQu2O0PdwWFjEqIiDR6J1V4d1?=
 =?us-ascii?Q?XncQXvK5k8VpzWFHpz+aB+siHLKfLfkHuZTNVzCXDE9eXJJz6jz/A3vcYAwX?=
 =?us-ascii?Q?zf4dmywaFJqRmy4b6Bq0mngetr84eK01T09og9lbIiRY7Qgxs/CHJY+Ld13V?=
 =?us-ascii?Q?McZMxBwBz9OHJG4E5d3RVPUb9BV7qVjXiKkx1PdrSJU59/hxwjy/1ZF53JNJ?=
 =?us-ascii?Q?sIUlJnv0kioh33cWL0BB/g1Ps5dsNkmDRFp0TreqV7Nf1R65RBJlgOEHg3zu?=
 =?us-ascii?Q?bv1J1twgjfE7ZZ3+or8IPq6Je1qwoS1TDqUy/7t//9NZGTeGbIFBQSq/0rnR?=
 =?us-ascii?Q?9T+aaaKK2NBI+4tAawKxtM+9bXpvBjO0oKLqxhdrM0RS0nEadxurUpiWlpoH?=
 =?us-ascii?Q?8EfDp823lrOwrNht3UGPriHTxIujoKgonP16U3iwwEczQqubYBjWp6wa0LWA?=
 =?us-ascii?Q?sB11J875XVGwTraJ9DWTgOvST4DI6MlJdVXnEcEXDNdUVVx7JQ6Bp8+VWCkA?=
 =?us-ascii?Q?Qw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aba9444c-0ef2-4da6-b0b6-08dcdcd98a63
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:43:26.9507 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LMjwceiT0xktvolENCxueDgAnAMO45AuKdSQzFpiSMVSGNXjP7OwPAXHliPqgDWNC6x4QGEVB4Q5ELMD1lFGxQ==
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

Some functions are not yet called from Xe. Move them to a
separate function that will be only used in i915 for now.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_display_driver.h |  1 +
 drivers/gpu/drm/i915/i915_driver.c                  |  1 +
 3 files changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index a64468e3a052..85a51b9d49f8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -729,6 +729,16 @@ void intel_display_driver_resume_noirq(struct drm_i915_private *i915)
 	intel_dpt_resume(i915);
 
 	intel_dmc_resume(display);
+}
+
+/*
+ * TODO: Current sequences missing from Xe! Check and merge with above function.
+ *       DPT is also a missing case there, but the TODO is recorded as the
+ *       empty stub DPT functions inside Xe.
+ */
+void intel_display_driver_resume_noirq_legacy(struct drm_i915_private *i915)
+{
+	struct intel_display *display = &i915->display;
 
 	intel_vga_redisable(display);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
index 4b2c041667e0..e287574fcd35 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.h
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
@@ -31,6 +31,7 @@ void intel_display_driver_suspend_noirq(struct drm_i915_private *i915);
 void intel_display_driver_suspend_noggtt(struct intel_display *display, bool s2idle);
 void intel_display_driver_resume(struct drm_i915_private *i915);
 void intel_display_driver_resume_noirq(struct drm_i915_private *i915);
+void intel_display_driver_resume_noirq_legacy(struct drm_i915_private *i915);
 void intel_display_driver_resume_nogem(struct intel_display *display);
 void intel_display_driver_shutdown(struct drm_i915_private *i915);
 void intel_display_driver_shutdown_noirq(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 53960326b68d..65f885e03880 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1113,6 +1113,7 @@ static int i915_drm_resume(struct drm_device *dev)
 	i9xx_display_sr_restore(dev_priv);
 
 	intel_display_driver_resume_noirq(dev_priv);
+	intel_display_driver_resume_noirq_legacy(dev_priv);
 
 	/*
 	 * Interrupts have to be enabled before any batches are run. If not the
-- 
2.46.0

