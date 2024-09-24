Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38979984C54
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:43:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3AAF10E756;
	Tue, 24 Sep 2024 20:43:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ORh2hWNy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1525710E756;
 Tue, 24 Sep 2024 20:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210612; x=1758746612;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=UUVJg5zdGCF+GcY1g4fQ2cdn6vEsU9iOfEP1VDM8uM0=;
 b=ORh2hWNyzB5WaQxvEdvCE9m/6BsvwbF6YjT0MIRcAQn/Hf2OJdt7z3Gq
 +aY/Zxw3ULLzrQ9ZnjhivyMxt2H4IBaZ4CYXXs9d92tfeTQRYBRtcvqYU
 +Ja6VkY4er+F9LFEL9+SGBqBHM8D6LhJEZv257zi8VuqHbof8s6S6NMfn
 v4NJHq17pxxuBDRf+6Rd5J5XEFkWTOEAk8/RLadNu8AvQ29Q2Xc4U8mbF
 cgLdTv2G8b2LMxL5HDKN3R4nr8XHrpM2GvP/ZyvqJ7XBxz6D/82AI2sU/
 xHJyKepDLOWJAtVqKhGF25TVgIM5Y4eP1JBmBShdnsgWkV/AxVtaB+Qe/ w==;
X-CSE-ConnectionGUID: qCg/WdE3Reab9aiXNc52Hw==
X-CSE-MsgGUID: fU5nbExdTlKiGOAxJPmSvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="43751558"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="43751558"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:43:31 -0700
X-CSE-ConnectionGUID: ef+nq2FXTo+K0HxSbdP6zw==
X-CSE-MsgGUID: uHV+d7qrQb2E5oqzO1KC5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="76298832"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:43:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:31 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:43:31 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jSbrFQ+mhlN42NmV9AruL+YvGbTc0sGDU3xwAiJPEl3D36fYN3TvprABSv3/0yfdgE5TNswMQy/OGMA9/44lZDVpug5VUkRhK4pHLzqnb/uvtO6Fem4FETg+BaorKJW0IBbshEOsCjoXdxoDLiz7l6My3cuJvxSzvr0fb68DyeUxK94pRt5Mn7qcg50OXPq0cv1bfT1RALo4a6dkLwckLuD5sgwF6ed0HQ9OMvHavf62Qgts2DKkSXH32cb6EGThIMX7WjluL3vwI7Edl2rF8ASufjhstudmNGt6Mk41pPTWeM0GEPemqdsyyUPJffqdkcK1UxVZ+RJ5JREEkLjMmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GmVwvg1Su6YuY3O0zwZFw4kBarNgiIDBjlGMgiCnO48=;
 b=i4EwKo2kGaoPxGAu4hwySks4SJKSaLu415ICPOeWK70QCfkeFaLT+OrjKdIfLtIgCeWSuDBl9QKVqcQP6+O8wK6S8zEm9LQ90JLA4SkPgoNASlgxHYdbyXg0E00oKTq/oezTYo0dUaYnLyhfpTaLW2n0BvRGx898uZ0rw2x98LoXplYnYP8JJP2altWoBODry9uwO4YCM0hyiTr8WAfrN9ccF7rANrOll1u5C0nEDw4sDV81NXxax7RfMBW6RIBb4FW9PFzzfn/vKvElDE1fTMyEmFFHBL28xnJzqHjggWSU5IVp83MTK7ulW99JPFSZZHrWLBeENOz8xE2YIiwIXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH0PR11MB4965.namprd11.prod.outlook.com (2603:10b6:510:34::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Tue, 24 Sep
 2024 20:43:29 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:43:29 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 19/31] drm/xe/display: Align display resume sequence with i915
Date: Tue, 24 Sep 2024 16:35:40 -0400
Message-ID: <20240924204222.246862-20-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW3PR06CA0021.namprd06.prod.outlook.com
 (2603:10b6:303:2a::26) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH0PR11MB4965:EE_
X-MS-Office365-Filtering-Correlation-Id: f5fd4fb1-e91e-42ec-0844-08dcdcd98bec
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Rx2trXSBm5JR5UfTzRiltooJdBebzTxX+OgR4G3JA4PGnkdsQp2m6x+diG+w?=
 =?us-ascii?Q?LSoz/u6tGWNv5GTTPLs8ob45MIqsrepZNU0dxQWUpAl14G0Oo40XT2g4KybS?=
 =?us-ascii?Q?I0+kMKpg6oa6D/zdKPhUlW7Ewuzjnd8HVmHxE26rp1+++P0IRkdoyxEPfg0q?=
 =?us-ascii?Q?c1uEJIbJi+RQcI7FBon/TID+89kmVUEQtP4awoRyvSLRJzFJxQMY/To61R75?=
 =?us-ascii?Q?M0/Zz2zfXwiBU7F1ZuhGUHf1GeOF5iXdnngR0GWQy8uVRTSC2J1D5coGwB5b?=
 =?us-ascii?Q?PMp+jFSL+Jx7ic6lDRsEiYCX+uXEClnVXQwjM1xJOgV0SiBzUZFTAkDKLneE?=
 =?us-ascii?Q?aBlRogp1Hk7KVkQogEB2biNQdrmF3unGUSBCSx/tD2KOCVwzO0MQkgAkzRxR?=
 =?us-ascii?Q?deYdA7auAlrLuLHGbFUBKlElnQviqiif6bCqyjVgGvREKMA9HiKCbh3ZFEIw?=
 =?us-ascii?Q?U3OW3WIQI6zPSSFVnU6VC7ETFYsRfd2lu4pQPrMxNExYeasHaO7663fw68lC?=
 =?us-ascii?Q?4GqTf5D42NXQRYnX/P2HKn0KSMCbD1qUp9aIOIj5rwkCaAVyY18zekOvK4BR?=
 =?us-ascii?Q?0i5SByhSJ0hiKGe0im7Urw6nqavVl0lJRZf7W1z2zcHnzpIet1gY/Ko5kTa0?=
 =?us-ascii?Q?n09Kwtn9sPYu7NR3nYgSO5AR5TqqaJdtCmURFd45ymU93aXIcT+6+Xljh7st?=
 =?us-ascii?Q?7Zx+tj5wrNJA+O2cuEFkplSMuGjd6hpZm29DFvpFBheczjVxP76Lo76C/fmv?=
 =?us-ascii?Q?vUEFbjwRjY5gSHlv/q5wpGH1YEt1l/ZJ0EbMMofLG0DZa6Q4YB21BwuxZGxK?=
 =?us-ascii?Q?E+IF8H/Kz3B7t8x58rVFB9z8LO3yldUDLkq64VaxJ7FaUXTnDRhBxY76n2Yy?=
 =?us-ascii?Q?+eqT5+ib1xZfhs55k3zcg0TTMt54TnXeZHkeUfuc9O9d3AQkjyQXwms4sQ1G?=
 =?us-ascii?Q?PCuQK6vzY1irM8FuoBq6eI/GzKRaXzyOruXNllo1ynTLVXND/peiuMf38k+b?=
 =?us-ascii?Q?6DqKKZiMi6jW/VNIJwoQIHjXSK3V9tRiyyrMhWTafKnB97fxYw/HLkYRxToB?=
 =?us-ascii?Q?GfsXingtHnFinGt/s/9AUhGSLpRi9zXmfnEJYfKFBD0V1KRgxG++GQev9OwQ?=
 =?us-ascii?Q?Aeqq/65OkQyZXXZky1zwUN3adw7HX19pnDWA2DNXcmiADNWKTjms0FDXXVDl?=
 =?us-ascii?Q?0G921qqo8soIF98GSXHNrfcSk3KAAUPZgXNrnxDoxvCTO2fqn0N6VKhbNRtd?=
 =?us-ascii?Q?tyjn3lyHAFuv+wLyVdaiP34fdu1ScyZKQBh6mlwy0w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Avoh++px4eqrSe5+VAwhe3Pw6nW9cFLLgGk1L7+y6b3vCA7bCg/0rVpaRfDY?=
 =?us-ascii?Q?7vebyBGZk3XSF87NNA0GTLNQpn1N5Vkid6S0HpkGryHUpLjfz7eBleoJHqnu?=
 =?us-ascii?Q?+/QRjCtpVBnGzIMSGmPpdIPYCg4nPuTig3bYhm978hFUyWYvtYycsrPb57DZ?=
 =?us-ascii?Q?Qdey5lgY7e727hjNaTczeqIv+9zj3+RAlZ3B4Zvu2D1XxS9PmvO1MZThetMt?=
 =?us-ascii?Q?eqihPESVZWDytX8iXsReXCLs+sBykwu9cNk47Jbex3WV89gSY9osTgljya1P?=
 =?us-ascii?Q?YI7pgjMWV/rdLfimlkIJhO/tZXFZnBCem9U+XUlvOoFfSeqVpriNycZ3sjXe?=
 =?us-ascii?Q?Xzl2KfB3WQit4Gw2jGmuuqiWLDMXnqJZE+Dxin7fhnR/YeD3+zfutFcKI4DT?=
 =?us-ascii?Q?/mJudsRajUNNntsHIp0zrnJgD+H6tz0aWIkuVvmsvpWwMxKQlsQ8AOwBSvsO?=
 =?us-ascii?Q?2FMtKKGuZhPLu+i0IdDO60AQL5YZ/8xeJe3PFoBkM1PKoAxH0EGOMjk8C4dX?=
 =?us-ascii?Q?F38vsvYEj8OAZ/1DWvyHLA7LOzCBNq9sxpOshJYGYEXa9ZuLwzGno0FHDkTu?=
 =?us-ascii?Q?mKFVHFyO7s24Mbqc8TFrymlZ13yFXyLNKkUqPUB0EHMduqF0HBJRltrqG40R?=
 =?us-ascii?Q?yJo1j2Tejm7nix+XFujp1Q7HOKsMEa0ncPmVtW1FdviReZbCYos8ykNq1ZBn?=
 =?us-ascii?Q?Nw2lZTldeHfelDxPlt9M856bZaqKhkyhZTYf8vZMcQD5RU4Vyh0tHuM85Ygf?=
 =?us-ascii?Q?B26CL35+u0CwLbyQKUrZoLb6v32DP2fWzDZf9WfsnKHMc4vr6c+Vu9/rjhT5?=
 =?us-ascii?Q?nJw9XKs2OmCzADJkdAWB45vab0cxH7W/quHVOj2iX0enerfdbxe4n1IAUFjO?=
 =?us-ascii?Q?9D4YRpexfQPBZu5gBADk6jWJ9xzW3aJ2tUG1zTAO4+xVf+GSTRUUINIPUm9T?=
 =?us-ascii?Q?2lf28Zyk/q8CCrj+ndZ3mrnj91VorFa+QPVrpKwCnZBs/pSIuOsI7fkAVLXc?=
 =?us-ascii?Q?6LsaOi+0t9o/BZQbCxXxaf53F9K2ptdEHr1vaXemrwTTcQ5AHioEgNVuhaM9?=
 =?us-ascii?Q?qAs2Hz4g1mkaINxM7w9OVQ19vlGj1REsKWGGGbbs7R5rREhVQSQ/WdmTVxM8?=
 =?us-ascii?Q?3forGCPayWKJsl1JVrXxRE96bxQJ5syowW/61gjM1ji4PJm5tSCNpT7nsJUz?=
 =?us-ascii?Q?WoN0s+hHdhcUvyaUVPQ1K/91luyVs0ofm1rjyd40Yv7e0i/O6MYLb6gt6BZ8?=
 =?us-ascii?Q?zMXiMgZjLjPgUc5q5vX8YYRnEH5TVXm0TzF/udu8c5TGgbVGrd9eZ1lilT3a?=
 =?us-ascii?Q?kt3ewkwfRLOQfzlo7ooKSSLVAcrhoqJGjHTc6QPfPw4YZJBOvy1EWwuN+k6H?=
 =?us-ascii?Q?OVvIMhWvl7QHpkbMjkn20TDa5dRPJHWjdTRVbpms5HryAkSSJU1RUtBOTDPd?=
 =?us-ascii?Q?UMKWAw49PH+e2ZoUB7AcTLiX2eaKFLdajVxEwQpOQXhl76pINTdKt+sXLDPw?=
 =?us-ascii?Q?hJqrPm7l1Pf/SwOsFa53mB7BAEzxXwnvXCfZxqF0EIpeHdXrqDUMKDFmdqxd?=
 =?us-ascii?Q?7/AHaXC/BJR0wIdUbgkpS/x28FCGEkUJSWIMOGn8HftTixmhxugB094Mr5lk?=
 =?us-ascii?Q?Zg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f5fd4fb1-e91e-42ec-0844-08dcdcd98bec
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:43:29.4891 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: haHWgTXK4rbCt7DWNJoMwYW8FpmTu5ishizJeA7Oi8s9pRKkWWmZBaBDoWECQ8YEjbLBS+De5+VXO+hx+kiE+w==
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

Resume DMC before resuming IRQ.
Reset mode_config before GT resume.
Use direct intel_display_driver functions for that.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 23 ++++++++++++++++-------
 drivers/gpu/drm/xe/display/xe_display.h |  2 ++
 drivers/gpu/drm/xe/xe_pm.c              |  4 ++++
 3 files changed, 22 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index df66e47daca3..959635653cfb 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -419,21 +419,30 @@ void xe_display_pm_resume_early(struct xe_device *xe)
 
 void xe_display_pm_resume(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
-
 	if (!xe->info.probe_display)
 		return;
 
-	intel_dmc_resume(display);
-
-	if (has_display(xe))
-		drm_mode_config_reset(&xe->drm);
-
 	intel_display_driver_init_hw(xe);
 
 	intel_display_driver_resume(xe);
 }
 
+void xe_display_pm_resume_noirq(struct xe_device *xe)
+{
+	if (!xe->info.probe_display)
+		return;
+
+	intel_display_driver_resume_noirq(xe);
+}
+
+void xe_display_pm_resume_noaccel(struct xe_device *xe)
+{
+	if (!xe->info.probe_display)
+		return;
+
+	intel_display_driver_resume_nogem(&xe->display);
+}
+
 void xe_display_pm_runtime_resume(struct xe_device *xe)
 {
 	if (!xe->info.probe_display)
diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
index a801db19b64f..b4ed5b598c2d 100644
--- a/drivers/gpu/drm/xe/display/xe_display.h
+++ b/drivers/gpu/drm/xe/display/xe_display.h
@@ -41,6 +41,8 @@ void xe_display_pm_shutdown_noirq(struct xe_device *xe);
 void xe_display_pm_shutdown_noaccel(struct xe_device *xe);
 void xe_display_pm_resume_early(struct xe_device *xe);
 void xe_display_pm_resume(struct xe_device *xe);
+void xe_display_pm_resume_noirq(struct xe_device *xe);
+void xe_display_pm_resume_noaccel(struct xe_device *xe);
 void xe_display_pm_runtime_suspend(struct xe_device *xe);
 void xe_display_pm_runtime_resume(struct xe_device *xe);
 
diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
index 33eb039053e4..f5d89c326d46 100644
--- a/drivers/gpu/drm/xe/xe_pm.c
+++ b/drivers/gpu/drm/xe/xe_pm.c
@@ -182,8 +182,12 @@ int xe_pm_resume(struct xe_device *xe)
 	if (err)
 		goto err;
 
+	xe_display_pm_resume_noirq(xe);
+
 	xe_irq_resume(xe);
 
+	xe_display_pm_resume_noaccel(xe);
+
 	for_each_gt(gt, xe, id)
 		xe_gt_resume(gt);
 
-- 
2.46.0

