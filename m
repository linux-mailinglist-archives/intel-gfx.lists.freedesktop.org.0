Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A367AF126
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 18:51:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22A6010E410;
	Tue, 26 Sep 2023 16:51:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C48710E40F
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 16:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695747088; x=1727283088;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=CMvZQtmJGbC5KCoZ/YI5RewsPlqyUslR8xuN/lsg/50=;
 b=D2b65jHX60y4RMY75G6JLQRtj2LukJE2gBWZ7NVnuNAF/0O7+URKl51O
 OV9Jgh6crUKvTpZTjAwj8z9KPfVWOFfDSRdhQNUimy06N+RY2pDugZT/F
 NWRXMgJfe6XNb3Ansc6vU0i/I/izmR7ux7Zwfuda/gZkgwSoG7Lc67Tjt
 fUgXEaA6Lyurh7ihvmkYYUpphYRe/HK0xrLiilaVkPOu2zjheTuAazuA3
 ADadM1RDRdm12Mo6dBWJYMOqfsyWlgThDajr4bX3Xeji36nnhW5/AxViN
 zWADIdzooy9x1LOawY/joZvh8vAoXPykrspn9Br0ScU+rplQn5EDHCns+ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="380483837"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="380483837"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 09:51:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="784003205"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="784003205"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2023 09:51:27 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 26 Sep 2023 09:51:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 26 Sep 2023 09:51:26 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 26 Sep 2023 09:51:26 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 26 Sep 2023 09:51:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=azmKsPsb2QX0XQHtOEFkJwqQn/sM4czZJDMJpKvSiEQqvns2WJxeyQpMAjHXXg5uiF9Kl+UjbmwKVcC1BhbH9In/K76zbeS5XhCKqIcIKJ6tv1qalItqfJjV0M1Hn2m7iexxIk2zavw0z7eTUC5hi1w0ooZH3bCef2r/Zp3opVNxBwluZfhaheRQIYiy2aOrjJ8dXgLkzCxYbKm3pdOyo9//zL6x17XiK56Tjl4qCFhXexPiJRfYFKw47jRtOWNiqUJtcBvu1cIv+PY3m27LC1ZIIp9gocLiIx46lw3CiooBTiI4K0TV3GmzsuOseRWzL30pVSFlbxKe27/0qqMJHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O6r4XsixWt/Uy38I2uYVSMbLvGo+TheMuDcByeOnEN4=;
 b=Tu3VXYXp0wtvTio3+AAzOucIwtAPd0yg/G5UHJ2OgbeKm2+SzwInsl1Wda6kSTYuynm94jhNvC41mUwCg0eOjHt3pPiBHB8nDgHiCZw/49PZ/v20flXjYQIc6ksiI588aW+c70qsc+Txywke5gVotqbLc4YsIlG6nGwma7CMBxOeA/+lyWdohfDbB5QF226abmTO1TEopzzc5GBMbKiVXLS/MbosTz2yiXLxT3m9Bn0HXuvDJnpPdW+zIhj06EK7zYIUCXX1oMX3xw6+0JhB0DwZMtFljZiZeO9kwCEDcE0Ga7KjqalLYrXRe0GFgSsof9B+rn2rpa6O+dIcy3zt5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB6568.namprd11.prod.outlook.com (2603:10b6:806:253::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.27; Tue, 26 Sep
 2023 16:51:16 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593%7]) with mapi id 15.20.6813.017; Tue, 26 Sep 2023
 16:51:16 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Tue, 26 Sep 2023 12:51:07 -0400
Message-ID: <20230926165107.23440-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230926165107.23440-1-rodrigo.vivi@intel.com>
References: <20230926165107.23440-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0068.namprd05.prod.outlook.com
 (2603:10b6:a03:332::13) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB6568:EE_
X-MS-Office365-Filtering-Correlation-Id: fb3dd2d5-b088-4f39-d771-08dbbeb0ccdf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 09shupw5yuXoITd+gJcW9M2Oam8SGdNksOdw436GQDLAltQTYpESNRJ4DMnq7jSAxuZP3ttE9cJcG7kD1nYzOGUAD4pCpy2EDX6lx00Il/s6EaIMTBa1dvMXRTHb1O2wTATp11IT//xFN3N19n9Ribvifn+PkACgFVnQVRfsODXgI8P3KA73zsSR0U6gBd8KdmGSCVSQvk49AlCOucK2X5K3i0+Wk++w7y31/8GDR23MvS/4752FXQFbX+KeMmhHLeBS7JSi+F17yiylFeTpVbgLYmVWPOqvfggCLu5lOsGLwx+DedE/52R2/uBaM8RB7d5zgWC2nykw87LFWMpiadDOiKXd+YqoWcPrD19x4wSZsktwTkLu8t2xT4bBMHnThnrf0dgUDUFAEEycNJ45gIfdI9ZwuymSRVYYQw38LsCoSrjEM/HIL+BoARqkxNF60R71E/neulK8QVR9cKSQ7hwbcAAUKkY4q+E6m9CmKUyKd0DhAYGMbZcauaqj4wTZ2sOUjz4gSO4M44DTVGNBoizLUqdWsmi4n0K0vSaQy7lTiUiRChcbVJw1C02MgMmM
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(136003)(396003)(366004)(346002)(230922051799003)(1800799009)(451199024)(186009)(6512007)(83380400001)(4326008)(8936002)(6506007)(6486002)(8676002)(2616005)(107886003)(26005)(1076003)(82960400001)(2906002)(41300700001)(36756003)(66946007)(44832011)(66556008)(6916009)(54906003)(38100700002)(316002)(66476007)(86362001)(6666004)(5660300002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vEYc3N4wuCRtLjU/Ypyy8DlhLsthn5ng5oLTIYvsbe6QUVXnW5+wFCy9kDL+?=
 =?us-ascii?Q?KHOdG8og3nUcAuubfxTALg6xS8XGJ/V+SNpGT0C0P3orYku+FHHYXFPh9dwm?=
 =?us-ascii?Q?9UwIuObCdeSOwLnmxSxtAMrVT3Wx845HodhEuUHJRaOrdfiRpLuWBZ+GGnPn?=
 =?us-ascii?Q?XJ70pQG/1tgs6g94Fc7HkbB5LvW0qLy8zqahCX29VLfpa6j9qvftHIXcLa4M?=
 =?us-ascii?Q?qGrH2+8KHkeAj15OtVv/r35xiv3DMe+XTg+f581HnWEe4f/QUFRQ/YbSWW8m?=
 =?us-ascii?Q?Y12ABCsLP41oYrbUrt914m6/eTKNreDSbUXAzv/MQA7NBICrut7AJ7UntbNx?=
 =?us-ascii?Q?CGLi6gQMqO7LYcNriSk4PxyZw4cVkBLo/tBOGyia1OPncfS8HRy3S2uINlk0?=
 =?us-ascii?Q?Mf18HhdG2e67qAICGX60W8QwOR7qHdqEG6rXuFTMKLSppiCJ2dO285XZnPy6?=
 =?us-ascii?Q?ZhPcamLkc0Hw+X4Ert6rOm9ThaXFMpvRR3EdmLU4jISSsOaJwTHfq8bucSNz?=
 =?us-ascii?Q?rpPVo3Pxzn5qwjNE2v0mYkFiH+jC29MVakkBONhLbaGqWFBOru22jP1+NqZD?=
 =?us-ascii?Q?NLWoQ+T4NeHo4RJ85kzxbik8Lb9Yf3NJuBEiDkV2StAIo6ofDX0685vyej0g?=
 =?us-ascii?Q?0M6hj1Hl1mF9CfZVz7KMU7kjm7YAbrUouogbDFdMh20sj7FN825CMeZZflAC?=
 =?us-ascii?Q?Dkzw/Hlj1du4W+YRYzcy9POO3QdBBGfixga0tT2zHDB+ELCFivoBfLX0P+mu?=
 =?us-ascii?Q?B8qfpK7yw9nnsFSnuWRHLvt5tT3RrJFM2IflmNCFdy/GWxYNEyzSMqqRBzf8?=
 =?us-ascii?Q?N5l1T6hpHqEszIYYAdRl7cjbFt6undudAgg0smMldjp4821qUw5DRPZ05BgY?=
 =?us-ascii?Q?rao9EFpUJC41RtwDxncTo7xTc7zwzSd24v++0StU13OrLkQ8C+3sitv483wV?=
 =?us-ascii?Q?g9P4J8DsDYSJw9KPeKUM6D2Ft06M1Ee1P9q1rD59dAieH6aDUT0OdFAJ0G0a?=
 =?us-ascii?Q?OmqJ0K7qU8Lh3mBkWCsjzZUreZHzj+TCav0/t+j+iNy0vK8SpKjnvBFsPZ34?=
 =?us-ascii?Q?MNISd1VPp6DclMqqSCor7F4HEjpIg/gAa67klqLMSlM6ZVbvmQ/nRP1Ib8js?=
 =?us-ascii?Q?pfcFbqFsgWIxCB9CA8eTUHR7uba50j4p2hMjr98cksxcMOL9zU5kDZV7g5j2?=
 =?us-ascii?Q?Mc5jMeSwZcWCDO6YvNinR8Ema3bq/CipoakULYWLu+GVfUyxs7lREGVg49Le?=
 =?us-ascii?Q?7yQR9YxrwQ6i/f6dbkpRYRk0hFCe9WrFZT0ccTFflLosAS9G7kOwRAwvemK5?=
 =?us-ascii?Q?xFGZn3b9OEAAn4KOvNpuiou+FLKtJ8zaDVl4sEPES4iWj3vWV1/M+PZUjAN4?=
 =?us-ascii?Q?BHeZgfjCOxheNE5j5pq2YGIzD2N1ehtU0D4Pyz/ccchGd6vvfoyJGbUvalSc?=
 =?us-ascii?Q?4Xc/q5pcJGR+86AGa54JileU/ArM339h9sUdRNAwvZmerP52gz1oG2sdbQo6?=
 =?us-ascii?Q?J/6Ysu6Kw8Tvmuc+bRdUd5ROMbyGq/kY7M6J8RAUpxLcaVo975apNYdVCgO8?=
 =?us-ascii?Q?I6L6+Sj/e1uLblvI/hWImuU7w1F5k0BBwVlzNuSHPEA3kAdLAxyqrIDdPusm?=
 =?us-ascii?Q?qQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fb3dd2d5-b088-4f39-d771-08dbbeb0ccdf
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2023 16:51:16.6352 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C61Hv3KjjE8BZPZa4bCSuNgruZgdyyQ45m9BIodc2S4ftESlkCS7wLfGvNzCYazb9mUSAAW0iHLPYMXey0M+IQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6568
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Add missing GSCCS documentation
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Introduce the basic documentation about GSC CS.

This "GPU Basics" section is focused on explaining the hardware
rather than the driver/uapi, so let's make sure GSC is also]
properly documented here.

Fixes: 5fd974d164b4 ("drm/i915/mtl: add initial definitions for GSC CS")
Suggested-by: Matt Roper <matthew.d.roper@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 Documentation/gpu/i915.rst | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index 13de8bcaaa29..893ced66646a 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -279,6 +279,10 @@ An Intel GPU has multiple engines. There are several engine types:
   Also sometimes called 'VEBOX' in hardware documentation.
 - Compute Command Streamer (CCS). An engine that has access to the media and
   GPGPU pipelines, but not the 3D pipeline.
+- Graphics System Controller (GSCCS). A dedicated engine for internal
+  communication with GSC controller on security related tasks like
+  High-bandwidth Digital Content Protection (HDCP), Protected Xe Path (PXP),
+  and HuC firmware authentitcation.
 
 The Intel GPU family is a family of integrated GPU's using Unified
 Memory Access. For having the GPU "do work", user space will feed the
-- 
2.41.0

