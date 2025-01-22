Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE18A18FFB
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 11:41:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5E8810E6B7;
	Wed, 22 Jan 2025 10:41:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CFkUMvIs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8C0810E6B4;
 Wed, 22 Jan 2025 10:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737542464; x=1769078464;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=6taVNAiODYm6hin2U8bpfDNrm7BlrEkq+T8O6QeG6ho=;
 b=CFkUMvIs1f5+Mb28s79TTz+ETICQetVKR6d/WxaCbnNqpo3rzIhWNbl7
 vdJ1inpJ1Nk//RQ4ytxLDJ/nFBypWksHvnJNHudTYSz20TJdSDqvDGY7w
 qZwxgpQNNMfkP/dtawvSDEgkPkb3BsfYhEgH7t+ynwURS/SQs2xfgutIC
 gbq4Q8dqocR6IfeNBTjh5kxpuVOlir9c1MeXyWIynERHT2ldmNw3jTxvD
 6n4aQ1f0F8gdnihBg1cYV31T8/mrEOxnWTjb/V3caoG85k4B16yycpq03
 WnN79G3uznLfBRy3+xd2AXI9douIWsEf4MovPXCOt/Z8syavnGBi9CxtV A==;
X-CSE-ConnectionGUID: lLrs4XKwSWKY3PpwPFtjMw==
X-CSE-MsgGUID: g428DlMOReKgpRZp00TzBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="41665611"
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="41665611"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 02:41:04 -0800
X-CSE-ConnectionGUID: 8yvpfk5aTnSyLcbwJPwYQQ==
X-CSE-MsgGUID: rL3IbGWESQKDWer5FKuz9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106969748"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Jan 2025 02:41:03 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 22 Jan 2025 02:41:03 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 22 Jan 2025 02:41:03 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 22 Jan 2025 02:41:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UpNw0291lSqOM6dXll+lKXNL7VqfnF+lreAnRuAAYDs3l5eUu0vpkYq21hKHOBxJVOYGZ1aDnsmEA3OPFrnvFIqD0CYL+PA4WPX8atuqqEnfNYfqRD7F6KRBq9eB5rxH5fvtvf936xgxO6+vPYaIB/YWlP+lZ2h29hLPkrhPUtroOWw84WaCE5OqNOmRL05kDNDQ0K/6vnx+uPiPpQJGtl5FJfxgFC6INsXUiRzuZDg3Uyu+HplPzZzrrda3qK22RYiBkZAmTQrpXK9H5CJYrD6icL8DTDKsw3wso3GuvxWiqzHbYBJUd9+xdYlxaRTv8pAufAfdky3+0hiVRFoM3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qSrvV3Ael2jglMyhlhqRd5HktjF9IpJWzDLrO8TJ8iQ=;
 b=SJCkkonZyXmk8BUo2RsW7fGxa+Y3KEHKuua4y/r6w3ofvLz5CX6yJauB6Sktoz9QSzmBM4GKJEwupnJCSLz1vXf/6VhuZA90YtCWhBZSoOx+QoRdVZLZBscXZ+MaDi0y5re64gfDynTERcLvhN5g50E/pHYqkaYplmcxiqhAz8CmkbWF1W8pf1ZcmH/il1SD6gfGcSl+Fuvvvhb1+TzNohcxgai51TP8/lSKMVJWyeWqyjaqcUinkId2FIM96GQh5pBkwyszrB3Pa7uDvswRadp0irBNBF3kjn2GqaKYVZUqZAOinVRIhabGuxvoXQ4yWUT+lwxYGcPmwTtD0wXB5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by CYXPR11MB8663.namprd11.prod.outlook.com (2603:10b6:930:da::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.22; Wed, 22 Jan
 2025 10:40:56 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%6]) with mapi id 15.20.8356.020; Wed, 22 Jan 2025
 10:40:56 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Maarten Lankhort
 <maarten.lankhorst@linux.intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: [PATCH 2/3] drm/xe: At shutdown disable commit helpers instead of
 flushing
Date: Wed, 22 Jan 2025 05:40:48 -0500
Message-ID: <20250122104049.388340-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250122104049.388340-1-rodrigo.vivi@intel.com>
References: <20250122104049.388340-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW3PR06CA0030.namprd06.prod.outlook.com
 (2603:10b6:303:2a::35) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|CYXPR11MB8663:EE_
X-MS-Office365-Filtering-Correlation-Id: dc1ab8a6-7e2c-48ec-6b3a-08dd3ad1406d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ia6wXMG4qNALhJK9mTibsRYut7xfdboQvLZ+UKt86jcoRFBhcuh5IqAwpQMY?=
 =?us-ascii?Q?6du7NeB/nrg/iPjLoJBLl3YiwvqFmlVmwHIdnxub9YUCsUYVIkVcPPOFwCHD?=
 =?us-ascii?Q?WyA83WyFf3T20C2dSMMP1VxzPmKSlIoV6V0DXFVjuIS8XSmC7BDzOuxqA8Q1?=
 =?us-ascii?Q?72TOzIc1b5UyVDyaDn4iGJsah5kmVi+6J0QsHae2X9XgdFCxrYZemTz9aSsZ?=
 =?us-ascii?Q?BfAttGrMvMWocTp0gtkLjBAq4NJ5VNoV4zxXqbmH2zx181MM/zpfswngLKG5?=
 =?us-ascii?Q?24F7I8JXSY13LmTfwGKI3pnLKFumrTkAtw8O9Sb07gl4yV94CNGROQuWWO25?=
 =?us-ascii?Q?UN565okSuP/8CU2p2cAMbxtQxMwq3bDkpJNKjUIOjhlzszqGe7qsnroJ3uPr?=
 =?us-ascii?Q?nd0V9HLY3A7RxOHw9GIBXImG+V9jnpA9822xFRwLtp1nJX4mrHgStr3C0pQS?=
 =?us-ascii?Q?VYtZo8+3hqMPKiLtsEEPoJV4QAsc9Zn8sgGum/Zgy4Hv/uV/+y6qYF5e3dN6?=
 =?us-ascii?Q?+IRhCtp19GMlY9S5nGRMu3UvmavUznM7FrQZYyCi/PZ2rXs9aPyPEy8DPXbx?=
 =?us-ascii?Q?AGYwHQ9jcXt121Fvov962GyQKCPpjxpIxym/5QTXSm7pwlybcMh454QYqgco?=
 =?us-ascii?Q?HdBRXm1lw7/VW3KoJHwTHHBZXzqLS+ysn7Rgo5RiXI+YK7mtZx84EBvHEAmN?=
 =?us-ascii?Q?+rcBFWQGdPcm9X6HsoWMxoel2mxGyGwgk1syMJtcsv2WytRU3ZTvndnYMXWJ?=
 =?us-ascii?Q?IulsOCpvBXWSmQj7xCfcJFruIG7THndEtPmwRPPkyyCc1vSgod9ofDuB6VVu?=
 =?us-ascii?Q?2XSmg8/So4R+BIY0DwZjP+xvoEFCp5Sh4AOKVnn1wb73K5wNKRysNhetLXhn?=
 =?us-ascii?Q?E93COoSSuxjKeI6OJ2m7dmT3zosd+bOcouNAC5IlpmtBR2peb5MK6FJAFETG?=
 =?us-ascii?Q?M/TySx1ulASxKVD3NJd0KlJle3EiSgEskWAqsKJk9gjmMNxta6Z7vjXaG9Fr?=
 =?us-ascii?Q?vQW/dHzQKtplV3BHF7tU+l1mdH80Ff7NsFlL++3ZxuM8YW6DxvSiYKQqQrHY?=
 =?us-ascii?Q?nu2FwKOHZJ3Ba6pUtJiDrx3P8gYqbDuOr36E/dpPu2rd5s2iEn9IXfonBQhS?=
 =?us-ascii?Q?OMvIYWeOdaMuXcDLsIElkVevWMFaibpjHbJOAIJ/3Ey0yXTPlO420rr4UIzD?=
 =?us-ascii?Q?A0dz4aZo6zm9Pnpc0TTCilyVBGnv8GpweKI5aJsgDnA3caokDaP7bo95jX8P?=
 =?us-ascii?Q?AVd5DYxfuKa0m7A37TGPstnxfhsmAssnaAPgZCKqYunCmBWeXpJ77TdBaCvx?=
 =?us-ascii?Q?LrDlhmhEEhQgVCrWK/ReikcaGjd2/g0QtDfPHtydTXxDVQ9I6U5Uoxz1r1yu?=
 =?us-ascii?Q?MNzU24UQ85dBFpDeQaa5ZiLX+kLo?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SreFtsiM1NawycdR0Q1bDpmpXTWzJTzhEep/9lOWmXMkq1+Qpk0SwVhF6bNV?=
 =?us-ascii?Q?BdgzSBEef7kgkN5C0Wj/33q4NvHbEjp7zSiMk2Bli1mHqq693JlISLJ55eV+?=
 =?us-ascii?Q?BfGT5ZS26bA92jRt5mBl2fHKSWbtdRpyYknixe94JeLoNVj9Tl0+Sl1izE8u?=
 =?us-ascii?Q?lGxhkMqKQxpflCoZeZd5EaOpL0ngc67Ge33MwgutqLEFtMtWHIhtENpE3hMJ?=
 =?us-ascii?Q?XHy/H+Cf63sxXEOY6vIaKGnFN5s+kCaMruxg3FMZhiwt62k87L+VswC6XL90?=
 =?us-ascii?Q?0Cvxs84IjIoplDOPaOJ8pOxTiTMrOYdAM2XXUawe6wqvUWWAF5nXnFpynjKG?=
 =?us-ascii?Q?8H8iBZkdeFAUfXgSNNKlYahlPQYaGJSxul0e8cb2TLcTnyD/BP5/BzbchifX?=
 =?us-ascii?Q?ZS0Sq/6vmvZBXtl9g2IZtHfBKBXr/668el4h1MCsLsLju6hLO2R5AqVzQNQA?=
 =?us-ascii?Q?SFfrWc0/zRIW/KW4dFRQ9vkLZ6UWrf3H+kEf4ASbQ/z1/IZV43uVkbZ+hnOh?=
 =?us-ascii?Q?wnmTh/QrOQMUVgz5fni0mAda0ZWonTD8Q/ppPb+9aUxY1dI2v5iPCLtsWtOm?=
 =?us-ascii?Q?PzUquQXxvdhpSgxi//2SIHTeo8silX/ruJY6BJovBZNNx7L7I85JMx35VuEK?=
 =?us-ascii?Q?luRNLYjYohFxlqD0WUmzWMBXZvPzCdy2k4z/N4nTBraD4KcSAXVCI10GslZh?=
 =?us-ascii?Q?5Xs2IipGB8J3AlM2q1c+V7jhe+1q/awEFzeTY5yPRFLR0hUoBxCRSoCc0EM1?=
 =?us-ascii?Q?bDuxJSDOHXnX1U22G/TK2dPlFiDSVH2mBIE0CZpH18qMwMWr81OQJruVoPdX?=
 =?us-ascii?Q?l8Qccgu5NuBN8txdg/pyORk+RcvH/kKn4SCJ2FAYTQ7Dhdv/pJ/RkgwCbwZQ?=
 =?us-ascii?Q?IEj220RxgxvUQCrBhnQVAvmDNGOpNFX7S/A0RQSIC3GW7c56k6X31p/BPQO1?=
 =?us-ascii?Q?hRkCoNehBK0uOGp9cj9YtN2ln1PitsNLriV7AMdb96MAI4gU0RZqcA6d1CyS?=
 =?us-ascii?Q?Zg9s28YfNKYEq6Zu/zcaOadRUsJ+OOYz2WaUUdcRb8BkJUyWsRucYCMr1HVx?=
 =?us-ascii?Q?oScrvrN3Ubmx2wBsRCFv6EW1iZgiJpe4MoDQOoeSRx158biAd6iQmx3o7E4n?=
 =?us-ascii?Q?13Gm48DwqrHyejVg2stP8+gSo2NYfh2qnRjB1ktikme20nNnrVZovBXbMbJY?=
 =?us-ascii?Q?sVkQ8nhwSQP7i4+sn0yKByM2pEjbfG/VMTUvYxnxYlwzFdTF9DFkr19GTaqa?=
 =?us-ascii?Q?aXwDxyaaA2iPeVJpjjkKL99MNyfuxy47D1Zpwq4K3RtW1ajUROyZ7b25WrA2?=
 =?us-ascii?Q?rocXkKrJKVxw6hyMp6YubYd68rUg86MWJ9PaZpNhMkPJzDZk3x5q7gAU3b4V?=
 =?us-ascii?Q?JeC5+Z9buIvnvUvRg3iGGO3bDhwyApMyeUTwEA/l97NlfpvoMZi6fRyx3/EM?=
 =?us-ascii?Q?N+O0RUMN+Z4fFkR9/X5Jw5VttG0pQ11WIEDT2Aua9YJyq9pfYAXAibM9rs7Y?=
 =?us-ascii?Q?jPdNmBhbIo60jdIGqDb7nI8Gdrr46Wi1q2ZlwsEebeS/hOb4A9ndEB0Wsw4p?=
 =?us-ascii?Q?EnVBVyHFpksMIIIjpJo86wSsPrPrO3Q6ttAABqKJZMfw+NO18mqougpGNY3m?=
 =?us-ascii?Q?eA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dc1ab8a6-7e2c-48ec-6b3a-08dd3ad1406d
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2025 10:40:56.0815 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EceH4y4q3r3PQzz5/fi8uGvjfS8HF6OUJ9k9KySbfJ+PuOqdT/nH4BYJnW5vWCx7eXHMn8d61Dh5JTNEGFL8hg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8663
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

