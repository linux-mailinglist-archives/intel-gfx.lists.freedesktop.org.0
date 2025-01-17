Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4AEA1596C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 23:10:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7845610EB7E;
	Fri, 17 Jan 2025 22:10:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MBuBI+OK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E37F10EB7E;
 Fri, 17 Jan 2025 22:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737151819; x=1768687819;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=6taVNAiODYm6hin2U8bpfDNrm7BlrEkq+T8O6QeG6ho=;
 b=MBuBI+OKqNRq98i9umwKG5CU5lwfAr5swILgF2q3jRD+X7cV+211W6xv
 NFEaHSkcehtZJAW+IAyRkzig6vZHbojlNNvu49iIYvnYaWR7pq+hKRk0W
 a/KpeoiTTJCRhI1S5ao2F4IrF1Az0NCXA7xXWgzVj1+Xdw+blkLgXuVWb
 KZFLYLFetFrTWdYYn5AKzXrnTqU5YhqTKUlQRdavYTuSBcLF3kYglAtIV
 zh/NPsGaDU5cpDXl0xaq/cSdUP7s84wfRCmBYymkVutpd0mExRzMPE2f+
 vILd4hSTM7Kf+qeGOfPgi6BjmOsJtueRVbYeWRWsg4sjzrz7o7+apKCZQ g==;
X-CSE-ConnectionGUID: vtYpEwcqRiaagZG8BI6i7w==
X-CSE-MsgGUID: WWxE+l2eSmWtXIUDsYKXig==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="48264604"
X-IronPort-AV: E=Sophos;i="6.13,213,1732608000"; d="scan'208";a="48264604"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 14:10:18 -0800
X-CSE-ConnectionGUID: KaEmXUDGRbWNTTFMWDT2JA==
X-CSE-MsgGUID: sc6th0cPSRSwk7TKaoLw7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,213,1732608000"; d="scan'208";a="110921398"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jan 2025 14:10:18 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 17 Jan 2025 14:10:17 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 17 Jan 2025 14:10:17 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 17 Jan 2025 14:10:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N/bsrC9xg6Dl+btrSz4ZsM5IXrL+tPWrKJHzMpd8D9H7S+GeHgT5uF19uEceKX3UdaQOtZoU0PTnF5QFArkScQ1Q8O744JMQ9I3lgkPJkHhUAjCzzbaXzhzQOfuSHFBfCI9bT9eYkTIaCK/NvpGo16/hp2B2i0mKL55PzbnlNhcMab5F6P/qpnshR/29oJGoRbY4IHxp/Yh/D6OJUYdUf1raqobcel0gvcehqztS5mXufxVqspzjjVNTHl/HNczxVB6UgjwjhrVkyViaxrwZpzQ2ca86JSEaDrPj91BCSr44YCFWAxxaCsOIO04cfwWsChmVGWqhOO0UmAp9XqgjVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qSrvV3Ael2jglMyhlhqRd5HktjF9IpJWzDLrO8TJ8iQ=;
 b=l4u/ShmmZoMt/+u/bkQrGTJ5AbBdREen2TS2GKpwntnrbQ4F0MaNWYWgQHxSeWr+SSGAZ8/4nPVOKWPryl7HkLgJcR66qkum4CzMHrHpOBuD/Os3Nq08B68EcZvcnGmgiOSxAnO0t/Tjo+8Y+aPm8WG+BhcQpXyAj32hB76yDTk0CDwiPaCp9bhF2l8gh7CzVBI1lGh9QeWkb7vGvZ9m7M1W/3tV3fqinfc+HHFs35Ye8XgQUowKmRBRVxdZk76gBvqwN+iw3eFuAHfRf+p7K1PdKWo7wf22ef5cJQuY0iK2fVsTkUpMK/TfI7Dld2JiUcPIKbmHcHhtKzyHKjQIdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11)
 by LV3PR11MB8532.namprd11.prod.outlook.com (2603:10b6:408:1ae::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.16; Fri, 17 Jan
 2025 22:09:50 +0000
Received: from SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72]) by SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72%5]) with mapi id 15.20.8356.010; Fri, 17 Jan 2025
 22:09:50 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Maarten Lankhort
 <maarten.lankhorst@linux.intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: [PATCH 2/3] drm/xe: At shutdown disable commit helpers instead of
 flushing
Date: Fri, 17 Jan 2025 17:09:42 -0500
Message-ID: <20250117220943.506991-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250117220943.506991-1-rodrigo.vivi@intel.com>
References: <20250117220943.506991-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR04CA0286.namprd04.prod.outlook.com
 (2603:10b6:303:89::21) To SN7PR11MB8282.namprd11.prod.outlook.com
 (2603:10b6:806:269::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB8282:EE_|LV3PR11MB8532:EE_
X-MS-Office365-Filtering-Correlation-Id: a0440f37-99ec-4885-54bf-08dd3743a97c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?E4VWPQGskIiXK2eWvBDrVAtjXJJi2/1zKlSt0vE/Vm57BEC7wK0KFRq6S/hn?=
 =?us-ascii?Q?F5uaVXW0siswOaLj14hcIEEhADglEJWS45OqFNS3A5gDBJk0NxtTDR745qlZ?=
 =?us-ascii?Q?aibcCbXtS3NweDG0gMNbNsieF8yQyEo3m4H1NnEY+O3eZHYMrXXteb3cI0/a?=
 =?us-ascii?Q?Uq17PCNaINIyp9Ic6g0Cxh4i6glUoWx+afYw4UDjSPLAmcwGlS4bfEvRalSG?=
 =?us-ascii?Q?LThknUyVUGM/1crk6ksKILa49UnhYVG+QfhEvp+7x8P0/lg5x6EEWO3lC145?=
 =?us-ascii?Q?F299o9eYtf4oFpNLKhmNZ1vsGm1PUlpti5wQdqhr8j0DXfSp6KgvAHOcMaBr?=
 =?us-ascii?Q?RCgzIPW0/YiCn3BCvVQTTH+rilcTCGMO7d95WhiSb1A+W0B67bYaNt21LlbD?=
 =?us-ascii?Q?tZTI0n6/0eMkjuo2so6sSgzPPos87ptMVv2g8Z4Elc1zJXVLq3vAhV4uevAu?=
 =?us-ascii?Q?dNpQxoHmMrPBXjMXCHqiLiOvcXnmkdFMXvuTtN2Xc1CCtrc8OEw969Ru2DEF?=
 =?us-ascii?Q?547n2sDTAGemEtQhMjEwhnnUX7JOTKsyCrov+07tdP+LLUY1woAKEoWL/GmS?=
 =?us-ascii?Q?+rqXF1V25mBVDB1IrwW5VRJ+KhOlhnpyMStpuDAwvcwgMuQHGWKQLa1EgK8E?=
 =?us-ascii?Q?9T1Edlxh4ndKI77oJZpZMxCxhUU+3jTX0N2XRhkcNXVaEn3E4x6Uh4QU9Zuk?=
 =?us-ascii?Q?DrNT2MFJ44/B07w62AQWAMGG2FVI7zAfhDYcGQCEQSetXfXAotFtN5bRp1Fi?=
 =?us-ascii?Q?MxiRX6DNV47o3WmtjqKEPJSJH4J7hVNsHgWKWaxeRomtu79/QOROGyrND6kI?=
 =?us-ascii?Q?Be8EmA6FrMj/plmPHqBtaB6pn3vp17Aj/yeO2lnCsKZfqafOWDvbhO0DZsjd?=
 =?us-ascii?Q?ax57UIrCltfJGZfjDUpJAfYDg2oyje+4DiYOiPKtYIdeYvawAm4jdz5bSgAk?=
 =?us-ascii?Q?MfCPtCbB4v+yh6ioevfoa2LNZydzeCDBYA9Wg/dfhZFYnJtQ5kdF75yvhI0j?=
 =?us-ascii?Q?kIhFdYA13KKZmxvUYOY/kwDFbB9ge9PSscin+4NN/0tDFlr5UooKufPG3TfK?=
 =?us-ascii?Q?I/jjaXtE7pQNP1yhihQz+36Ky+VnLLLZ66glkWjOAVsnOnGA8s0njd5suAQO?=
 =?us-ascii?Q?0HsHGTRl1iFtIpEOlPcUllUV02dWCI6l6+1wn2nhIKvl603WcuO4QKWkmJwN?=
 =?us-ascii?Q?RYWj2WTg5jj4vuEUXmTKm+i1FfLBb2UvYasgfIMdYc58j8A2UYJwmtjk9N6G?=
 =?us-ascii?Q?4PgEJJwghVipU8I69z6Bl75Xk21TlcKe5MUYsfYB4QIUo2Y2FBQrE/m9QTij?=
 =?us-ascii?Q?psdypWJMmwt3chGArKVHjefjEO8ClJz4SvWv8OOvAvSrDKC7x8p65e+6KOws?=
 =?us-ascii?Q?Scbxyw+BI9VQqZVx/Y4jYAcALwI8?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?r35Ass6ke00DumOV2dCcDU+H4znJHmywwis84YCNEMqJP8YHoQ4vJSmhG70w?=
 =?us-ascii?Q?04XTM4NbBBtIeT4xA4rymUtPElA48Yvf5v9YNk0ZajSQUKVq3wrswX87Umz2?=
 =?us-ascii?Q?+3Or+CBcfjx5omv4oUGnCbxFu6vPmJCTD23AwqLefVBuAYMIWOLfzKqQxTOD?=
 =?us-ascii?Q?niXLZQ/8Ok045SwHZ9Jicpd+jJ0Pnkz/XHyZwdflK43A2hOKToOJwngWSiGq?=
 =?us-ascii?Q?NXmpt95MRurUtFaoV3dZs/JI9ZbzihiyRAYDbhVUUwOZF/RsWFTjJD2tSJb8?=
 =?us-ascii?Q?AuNmwsZe09o2PJSKAULc9Xp6z1p83ygeDdRkdv/N3OJ0XOQrNMrZHaaXpNxV?=
 =?us-ascii?Q?4ZAXcP9J8JnaWUgZ8HN1eeS9ZGlzqqXCnZGxGUJz+Oaxjdk8zqfgXnzEbMN+?=
 =?us-ascii?Q?mGZHEWUzcs0SZczFLATqu3xNBsccVWFoX2NoCFw14lzmxI7IvRgA7RqXZR8r?=
 =?us-ascii?Q?YJtBf1qkXukt8Zjp16pWWGGDeLaCl3Hrc4SSn612yEZElI/u5S6hilb/AhsB?=
 =?us-ascii?Q?k5Uerm1MSziqr8Ck+ThEjNh7DEWE1iJuOoxBw4cbxuVWR6EdqHBUGFLjMrc/?=
 =?us-ascii?Q?UkRApbx1EdKGyBS/Ud99g95pFkbmnmgvVr/eXtYcez6TgwH7/Dp/QvvZzWpr?=
 =?us-ascii?Q?YQ+pXtC+krkyL51GAJseHAY9XQMYf+EtCJZZImKSlGXJ2RaQc16ZGyk0gXNL?=
 =?us-ascii?Q?UShz+AxHyGc5bhcfRv1GfL6zUwri+7VMmzO+snHZxBnHc8u+pC3iiKE7m4MO?=
 =?us-ascii?Q?mUMDuVyV6HVBZAKayw4Q756EzvWI9emz3R3kU6k9I5vC0hCDwrxBeZFIFqnn?=
 =?us-ascii?Q?OQME4cgcyDmjh76XX6Od1RxMROo2FGlZ4xclAUb5DPtzykkH14BPlX9bF6lP?=
 =?us-ascii?Q?RRz9B1N6zSLXLpV79Cc0eCSsc2FxBnlHz1HMCEVHuctLsjXkb+jho8hVXAC8?=
 =?us-ascii?Q?AkKmvAI+w1uPF0g6CJVm/iMBaZd69+CVR3ZDbH6PcBrql3/ank+emaQYn0co?=
 =?us-ascii?Q?3S6QVNbx/nUqesmcF3ksRndnN0Dwu7w9UZF6P4X4oLZFhWRpLaaLQxDxulQc?=
 =?us-ascii?Q?LLwWHbHjXscXqH3FFkRtlKUbAEJx8GmP6dQG1+pifd69s2Y9L0pGsuM5uxoT?=
 =?us-ascii?Q?UyWFM7213bck3SKddQpSZXAu27YkHi5vdEjOPJ9qQoID0P5Rlmmy5FbeJc/G?=
 =?us-ascii?Q?7rTg1CFiXt4mA6l44bCYKZxed/u9hKXcOUPtf7Hg5c1XnaXAMIFMKhbrkxbb?=
 =?us-ascii?Q?7yv/LQBSON/A+gZKx4pLt/08VKsH5jsMMeDy6Pk9QdiRS+lX1KHsazY9vnMa?=
 =?us-ascii?Q?5u/1zC+GqEr6yd77hQiyhtIg0b2LFTC2rPKD+POm1Nqm6cLRj/6DVxGl/5r5?=
 =?us-ascii?Q?NC/ofKjH1MpclW9wnP5JqTj9QOCemhlFfh2t1Vdnnb/qM0DH8aVPfvjbPsto?=
 =?us-ascii?Q?sIco9ftVK4XpIV47BBmVW9l3J0X9xE5hLWlI5dQHaoxgBt5ctdSo5BPFhaaD?=
 =?us-ascii?Q?vx4roef7apL1FNdZkUEU8zbIkzYyCBGsyj+ytn5707I1WKOi85ryCX4p2A7D?=
 =?us-ascii?Q?fO9yn9dCygFGbAM9JaiL0vcmqyduHXLPzKiuUGPCUxUOqg0aD81ut9KrJFf9?=
 =?us-ascii?Q?0Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a0440f37-99ec-4885-54bf-08dd3743a97c
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2025 22:09:50.4095 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FTo2zdiH22HhaKWYhp5r1Xl5e3ti3C56mmx0IJM8Vm0dVqZEM4QhAAySGUoszJrLrKsTEP2Ru+XO9PfGo41uww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8532
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

This aligns with the current i915 display sequence.

Cc: Maarten Lankhort <maarten.lankhorst@linux.intel.com>
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 96ba9595bf2a..4f60d7bd7742 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -10,6 +10,7 @@
 
 #include <drm/drm_drv.h>
 #include <drm/drm_managed.h>
+#include <drm/drm_atomic_helper.h>
 #include <drm/drm_probe_helper.h>
 #include <uapi/drm/xe_drm.h>
 
@@ -378,10 +379,10 @@ void xe_display_pm_shutdown(struct xe_device *xe)
 	if (has_display(xe)) {
 		drm_kms_helper_poll_disable(&xe->drm);
 		intel_display_driver_disable_user_access(display);
-		intel_display_driver_suspend(display);
+
+		drm_atomic_helper_shutdown(display->drm);
 	}
 
-	xe_display_flush_cleanup_work(xe);
 	intel_dp_mst_suspend(display);
 	intel_hpd_cancel_work(xe);
 
-- 
2.48.1

