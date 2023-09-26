Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCC57AF125
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 18:51:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AEC910E40F;
	Tue, 26 Sep 2023 16:51:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26DC910E40F
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 16:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695747087; x=1727283087;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=eaREI7TyT0kjl8k+hnz16CbbSkEEOh7znxqP0yo1EcM=;
 b=asGWQOj1xdMZm4vFPbXHiPEJcrxUkQji0d+gD7uykzwsVZs6SXFGgHQE
 JH4Xa2yiBSdmeA3Hj70MeVZGjspWZv5mfaWZT4b4rHxH5fFXsgImRqRUQ
 MDsY2Pi46CW3Tmjs10jH3zlexZqapZcQ1l9vcP3eWM1eWhdYOcf9Yu6T2
 iBllCIfuSs/Hyzm3UiRjUiyQri0tuX/akBzIKIoFfxUd20XHX2tSkiucP
 0SdptywtAjAcWbcRwT15HRGjNBWABzKVOo/tGcVGl5HlIEdRiUZ4GD3NW
 NLVAILWHURuY5A1q27aag+2r2eZkWRdXWgKsmdblYtH1PgeweP52uq0bU Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="380483824"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="380483824"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 09:51:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="784003194"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="784003194"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2023 09:51:25 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 26 Sep 2023 09:51:24 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 26 Sep 2023 09:51:24 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 26 Sep 2023 09:51:24 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 26 Sep 2023 09:51:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=leR3yK4Q87bDY5ajwufYOWCCYPTe2Afo/+4LUmDr6HD+hDV9RrYxs5ZgEI+7EYomeNE/ARcBehhUysDrJ2WavWF9BINSjvZT0mgweLiRtljYf94wpTUJRR3cz83QoU5EkiK6jd9RT6GpuzsmsuRcYhMGXtwtHHk1+6Sk1cCno3IsYykICW/IBFcRtz8OZvD7nKgW/B/hI5VWiT0Jjq5i5aoe6cjDUNAZsCdgv8pj6++VHuF+5XzAMhCUAZCLEtTx0Iv+WwuXwkcRfxTNmHi0TUGDayFMaDZjrARlvTgLE88et8etLIkF6D+ouHHuYBHNXkU+XiEq1H6acG0P1ux2tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3JjWmo8p8SKafkgfLVYaARhia/4oGI9n4eIGL7Uxl58=;
 b=OIhIvGw5HhfsryAglrf+U4Z1eiqcaPNM5y+eGA1YRBQ4JI94ysepDnW39YHbtdaRtgAGWM8JH/7SJ9ejxI9m1eWhNE8tu0mApa5vGl2NbkYrYpdnI2inak+ojXXNtQIw45N3Qght/E9zeTd51LFzmz+5vIcY6Hj8/3xd2MS8tRAlfLdR31OIXobrtzoxuDVdOWQCN0NN3n3V1vdQWqTPVNf4ztcBdB5dQLELX8QR2iwDdA8NBjTYBGQ/10Y3Nc5DyMLs9r+qlN+SzkLcO2T7wintoGvVGItKuH7qglSv8FfcNnK+8ZRed0coxoCqZH2iHHRzcnuPcJrKTHa5ZBJF7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB6568.namprd11.prod.outlook.com (2603:10b6:806:253::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.27; Tue, 26 Sep
 2023 16:51:13 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593%7]) with mapi id 15.20.6813.017; Tue, 26 Sep 2023
 16:51:13 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Tue, 26 Sep 2023 12:51:06 -0400
Message-ID: <20230926165107.23440-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.41.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0142.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::27) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB6568:EE_
X-MS-Office365-Filtering-Correlation-Id: 82e9e5de-4d03-4000-7eac-08dbbeb0cac7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: z+ueRM3wJU7RcDGrJw6ptRC/YTIKectonAoJfxI9ASSReztU8p4AXx+ce4Of/rS4VQISQ2qGWECtDuV2vGDQjLQpKh0q/NiQ0SqyJGTtghkrbW6eL8rtJ7BsD4rf9TlHmZsLK+NLs62u4FzUyPg9vsK64dT+1hsI53KjzNvp439N41QwsYiYPJP1o/8lQlizThVq7x0c7dLTHCExJlTp6Eg9H8cqfCb5Ksyl3n769/44KEXr7gLTtaD2xjcG3Ku3LiJTW82DRq4p5e2gJ5eMv3/jeak5ARiXdda62fPNLB7c8dDz20FR5qtq5EENFeZBlpaqcxsF8vHVqmxbfG83rYJfHgsUZgprCUjYWcofJ+EFzSsMAU6nUcKzU03055Hg64GGMBzdDFiyQhGUOmJEhFtE3Ctb9PO60iv3mMmm1jUFWUjPvdl91eMM9DzUBgzpW2PlLMF98MuyEkNlOVNXrI2gxJVxvcmyrUX9pzcNh0wdM62X5kHmnKj7F+7nGkJO0olpjad5lrvRNTUHPLsoRxwE15Y4Iz5Kct6NrDjufRhsKr2WWHJ2dttTsvQC0ddw
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(136003)(396003)(366004)(346002)(230922051799003)(1800799009)(451199024)(186009)(6512007)(83380400001)(4326008)(8936002)(6506007)(6486002)(8676002)(2616005)(26005)(1076003)(82960400001)(2906002)(41300700001)(36756003)(66946007)(44832011)(66556008)(6916009)(54906003)(38100700002)(316002)(66476007)(86362001)(6666004)(5660300002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Wv0tptunHOAzyU0ddJgKDheF7yezb1Sri8gpacqAshS00kkS5mRq1qCsPgXp?=
 =?us-ascii?Q?HDbRWw0aH8xTT40EJypNVHBWM/p74pqe5p72i/eF6DUAvVTlhn0mQrl6chYc?=
 =?us-ascii?Q?gCVWCm+8WEn4n+YBXn0nuRKuxw/CduvVwTb4SFzhjKn57t6ajnIGgFIMnGXU?=
 =?us-ascii?Q?afRk8h+ojYuSlf3taKr7A0FbvecgYvX9HHkvLs1SWH3NNw1jesSx9Y6aUVnA?=
 =?us-ascii?Q?pFN7f5br83tYvSOfaxo2tnyOAt3clKv/3+Un8CWBSv0VcqEBG5n/EfEjoaRk?=
 =?us-ascii?Q?Der8glyerCKafVzm3p4cOw6FHW/TYb/Yy8fq5JE8gd9CETgkYxs9PUsmf9kw?=
 =?us-ascii?Q?4T3n0h2ti9bEPVgvfaaxYrExKZ0EiOvOkx787IFAnB5ccj4esCcvj5+xqZut?=
 =?us-ascii?Q?p9EBt96xJubjTDUeHOsR+EZ45WHJo4EkQiMbohUMMn1SVKoACmohN1jg6bj6?=
 =?us-ascii?Q?J5b3kT9FaKP9G8HMDqimcV4SODVsiSnegipUs0sin+IIyOkrrUUeuD7wz9Mm?=
 =?us-ascii?Q?29BJ1/OqnKGSjOEEROkCnZ8dRqh+lwxHgZCvaL2+y1bTloNz8XLEc4aTBw+c?=
 =?us-ascii?Q?4VtemgM6Em6HWv+xAuXDrkObxw2LHd1U8hhjH1GPar1YPDgIe49HB6RbEPWy?=
 =?us-ascii?Q?kBVaS0XgatyIpqcCBonZA0bvZYt0NlJgcGd+Elvjc7cDdLeN00TYH6d5WwX9?=
 =?us-ascii?Q?H5INtumbbI4HCTqVpdi2Sym16spOEZbksrFEBX246k9nGs2Jm7oWLmNuFFox?=
 =?us-ascii?Q?qezTe3W/BPPOzs17V+SCpuyfF8/S2POCFwAWwctEkGBiRy5fpKCNZTYM5usz?=
 =?us-ascii?Q?MQeHq/pM64MYCG+bZDoEpfMISLKHN6VtDTWyoGN7r2FyKsZRQI+Rnq3qd6dD?=
 =?us-ascii?Q?yM1ar2E52k+u3dBy3QXLeM3O3bu7+YkP1wxUjWxEszNWdBO4nEjdiKxDmAWr?=
 =?us-ascii?Q?tJ43dC9RejbzEyw3Ku7kkw1o86Xaa2dLLTRDRH4rEKWTTFVOhXE/ZbnCVjvp?=
 =?us-ascii?Q?5yALIjJ9s/+TqJYHRXly4cHqEr6s7bAFru9cyucf75Y4bhu1VE6KIdDZ1/qQ?=
 =?us-ascii?Q?wOHkccsoTCovJQo9aYDpA/NP1AwbVqkdVBC94eOSCHq7B4svVtgPg9C5qmcT?=
 =?us-ascii?Q?vutZsYVJak1gEO8Fo0y4R0rqBoH2ZfJQzZmI7XOSd5rzNczVeXMkudKtRfY0?=
 =?us-ascii?Q?xCCHOo0nMCcJQftGyDxfQY/PSVzaCjbXhenzG6T12pqnAuaWZhNOvkpLtPmj?=
 =?us-ascii?Q?e/YRVZW2qSGryOZWTz8cfxHZtyPiyvn4IvPoEUBgtz1XaIv9RsTfQydYLiEc?=
 =?us-ascii?Q?Wtrm5cHaFjugHFYbYYOgQjtVlnUabrGCurxOGH2Jt+gBunBr8quiJt/fH2C0?=
 =?us-ascii?Q?a1xYqaNJJwzL92pohY2N9JHbBEQTfZ3RZZUt6byepxvQg89Xd7ynJ/4iNNrK?=
 =?us-ascii?Q?+JSTlxVhgk48CfC1SBXu+G8Ev3uMjCyr5Q8WISn5VEnbJB3BPXnI4nPNLMzt?=
 =?us-ascii?Q?sRDurpKchugIgquqmKdPOhqBQYBogPE+9zIZSF1lV4FHALzWpTpJPx/zOvju?=
 =?us-ascii?Q?R0nDg6Uq77+YxZW2EJbHEYUjVplsM0mO6ToMkCeg?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 82e9e5de-4d03-4000-7eac-08dbbeb0cac7
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2023 16:51:13.1416 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dS8F+kRz7s+lgcY52G+HxX6WcR/a2/ZAhr9NSBeoyo6o6+G4QXWjyNidgFIlz5AkVXoRMCTOxHFB6i/5daQFrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6568
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Add missing CCS documentation
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
 Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Let's introduce the basic documentation about CCS.
While doing that, also removed the legacy execution flag name. That flag
simply doesn't exist for CCS and it is not needed on current context
submission. Those flag names are only needed on legacy context,
while on new ones we only need to pass the engine ID.

It is worth mention that this documentation should probably live with
the engine definitions rather than in the i915.rst file directly and
that more updates are likely need in this section. But this should
come later.

v2: Overall improvements from Matt and Tvrtko.

Fixes: 944823c94639 ("drm/i915/xehp: Define compute class and engine")
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 Documentation/gpu/i915.rst | 25 ++++++++++++-------------
 1 file changed, 12 insertions(+), 13 deletions(-)

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index 378e825754d5..13de8bcaaa29 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -267,19 +267,18 @@ i915 driver.
 Intel GPU Basics
 ----------------
 
-An Intel GPU has multiple engines. There are several engine types.
-
-- RCS engine is for rendering 3D and performing compute, this is named
-  `I915_EXEC_RENDER` in user space.
-- BCS is a blitting (copy) engine, this is named `I915_EXEC_BLT` in user
-  space.
-- VCS is a video encode and decode engine, this is named `I915_EXEC_BSD`
-  in user space
-- VECS is video enhancement engine, this is named `I915_EXEC_VEBOX` in user
-  space.
-- The enumeration `I915_EXEC_DEFAULT` does not refer to specific engine;
-  instead it is to be used by user space to specify a default rendering
-  engine (for 3D) that may or may not be the same as RCS.
+An Intel GPU has multiple engines. There are several engine types:
+
+- Render Command Streamer (RCS). An engine for rendering 3D and
+  performing compute.
+- Blitting Command Streamer (BCS). An engine for performing blitting and/or
+  copying operations.
+- Video Command Streamer. An engine used for video encoding and decoding. Also
+  sometimes called 'BSD' in hardware documentation.
+- Video Enhancement Command Streamer (VECS). An engine for video enhancement.
+  Also sometimes called 'VEBOX' in hardware documentation.
+- Compute Command Streamer (CCS). An engine that has access to the media and
+  GPGPU pipelines, but not the 3D pipeline.
 
 The Intel GPU family is a family of integrated GPU's using Unified
 Memory Access. For having the GPU "do work", user space will feed the
-- 
2.41.0

