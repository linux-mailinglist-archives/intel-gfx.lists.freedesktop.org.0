Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1CC7AE38B
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 04:01:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0E6110E0D6;
	Tue, 26 Sep 2023 02:01:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4A3710E0D6
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 02:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695693666; x=1727229666;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=slF4kbtJRD1NPgeJdla6Sp77kd4E9YB2bVzMtJfP3Ek=;
 b=AM5uSxQHW7Vbq+rrJVwjok04QVlKJF8e+cucd4ZhmMvQr2hsY+CAW9ks
 3nYDKh4axr1XYuU2M1qnZ98a5MVbDYNuOCBK6+Io/nhQrN/pcFOhWor2P
 2ST9paeXyr1Yzx3lcPrWhqtvXQ4Os4+F2tXFEdfK04OZq3jmamqFG7c8A
 n6Pt4GFyHnOo2WvSFe06b6paEjAoYjgy7eyPzYtO2yVL29x5eS1X8QogL
 mAI3FSPDqBkUBzAy3n5MecoieD4O5Wq24CqP2B51NPvUTEiDweZVz7wop
 pxs8GTQP63Mh6IoERjoHYixeg07BZb7ILNtA9IX73EMzkjFr7x/NRqsLw Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="385308970"
X-IronPort-AV: E=Sophos;i="6.03,176,1694761200"; d="scan'208";a="385308970"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 19:01:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="748628636"
X-IronPort-AV: E=Sophos;i="6.03,176,1694761200"; d="scan'208";a="748628636"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Sep 2023 19:01:03 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 25 Sep 2023 19:01:01 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 25 Sep 2023 19:01:01 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 25 Sep 2023 19:01:01 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 25 Sep 2023 19:01:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fzudFTJ/zSR183b2IdjS0apNPOTb43jMUXPmSAB3VzKW17Q6jp40QDeYYX0ev1G/GQbnf8rSfjJdTtHYCrJ5vgwTBMUr9MA0GQUFQWJszbUDlNuMSF/Gaz0Wy5cZ3RFZPn9gazbl+jvNLwvoDZn73ePuVltSz9XzeIxTZc58lMxcVORwz4D+IZielpVXPtTouBwPXS43g0CorZ/xG+61NVOT0tvXxw8oDOCOsUi01x6fLC2c4HRb3b+sinFN1k1eZokDSB82oNV/wp53P3NfQyHF+UkSk6wq9pU/wiKrdx878Il/f9OSqZ9iJ70uVPzUf/4i78bfNzxRTZgEmTR0Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UwXPTIB1Q9N5xPQ6KvxjDu5VVj4cSUBpcolLVm99Nd8=;
 b=EDgUP5mB4vFaflpW5LuzzEbryJW2fBO6eEnPA5xMQw7Aw+Lphuv9S9eRQBf8ctFxZ7ph+sYb68m2rmsnD8kibFmEDk8/3zu4Q1nXdJwHFzero93K9jJhjr57k4iod8cdCQfr1nWNEI7/58NNeC0DX8UHeoEdJQvcgwWIOs3DjEjfb+kjuKlN8CR4C75BHCL7ZT7IWyDdcfR0jG3U62Y/5C06aKQSjjpJmkeEyIozuzhdYxQUtC5LUUiC7AglJc/4YIEgdsXgH+THBXIHR0T6ZBD+uZcd0twgX0GS5/lP5fgicYvDe6GMjYP3WV0bJSbWs9+u2XiSxlNYChKc5n4gJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA2PR11MB5164.namprd11.prod.outlook.com (2603:10b6:806:f9::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.19; Tue, 26 Sep
 2023 02:00:59 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593%7]) with mapi id 15.20.6813.017; Tue, 26 Sep 2023
 02:00:58 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Mon, 25 Sep 2023 22:00:53 -0400
Message-ID: <20230926020053.245046-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <e038e664-2ab0-75bf-8df5-1158cae9c685@linux.intel.com>
References: <e038e664-2ab0-75bf-8df5-1158cae9c685@linux.intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BY5PR17CA0070.namprd17.prod.outlook.com
 (2603:10b6:a03:167::47) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA2PR11MB5164:EE_
X-MS-Office365-Filtering-Correlation-Id: 2426e41c-debc-44db-d880-08dbbe346d5c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xqNJeiFCSC72OLhnNoOrPesRrOIrcZ2tcw+H/YXXcwLqD8lm2ErfTse6y7djWqiQUPoGErIc/r/NS9b7vgMMAK901th1AN/BP3j06BnmGVZ0+4Q+IrfjNC2ctFnX9hLftXHsy0jv7I6GYukFni/i2dsxKT9vFON1Ef2Ote5RuIIKRSYiRaid0YTTnNpKfsOCtba1pYk8GGv13qPn11rCoiWDMm38aebBcrCjd4uc4XM1hQFRJHx897/27qnKhS1A8axoNzgYZeqDfEWW7Ts/GgtX3h6MdGPmfjzQnIvAoVUhjuiD+mcsUHCgWThSdCDeD/rKc/4hfDnVK1TfIF9LnK+BGbju2PlpiZMn9XhCjxRaN/5nc40+YvwzS4j6zE7IPA2ttg+VB2ekH/8JK/TFvweRfudbTfynpaA7J0/hCLQaOhlf0TfxJxJROB5NsdI88172L2HI01QCcA1HWY8/4l1bjG+zVa3YSnkB0NG2sPWBQ72xol9vbtrMWGd554R/nD7T6RtuLwe3TfM5DxnoXfBK4OgHp8C4uwEzNYjdZ6y5t5E6UIgjypw3sVtQ2Btl
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(366004)(39860400002)(376002)(346002)(230922051799003)(1800799009)(186009)(451199024)(478600001)(6666004)(6486002)(6506007)(6512007)(83380400001)(8676002)(44832011)(66946007)(66556008)(66476007)(54906003)(8936002)(316002)(6916009)(5660300002)(1076003)(2616005)(36756003)(82960400001)(38100700002)(2906002)(4326008)(86362001)(26005)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?//E3x+WmFoGYEmDrLVRHAfudnxiwgVXuAYaWg3sKlhU5BwfSy5sOG5yZXPqZ?=
 =?us-ascii?Q?haOLwyOUi8CjnkqJZfDwD/VhHA9hv/x5MwuN6wLb71fqz2EGhdXxHOGlEV4S?=
 =?us-ascii?Q?vdXcf2RFRgNUEhEeKMWPclKSxpLGTDCnojsztg+vKjCGmcWbLVNJlbs3YYNF?=
 =?us-ascii?Q?KiGT22EM0g+XI30Q7k8fh0D7tTjzt0m9e2TCekANZeDcHrc0SziMUBPkCebG?=
 =?us-ascii?Q?8rPKNDdd5sJzWsa0H8oQ9h42oYBtST1mlmwIwr/QHj4K2rjY1XsP2783gxIq?=
 =?us-ascii?Q?xqPazN8R3RFU4P+UKDmhyJiwQKn0bbAc2XrZsTuXHa573EKez3g4qZUI3JyZ?=
 =?us-ascii?Q?pE3T/G6sGwqhzKcUMPbBndSE12/bUctvgpFYf+y2iyE7l0rOxoRNTPnTfA1y?=
 =?us-ascii?Q?HOr0CH6r9U9atb6d0mArnVx+8PPVEY6gkolsMQLY/4C0YQU+odQgw5e/7+EM?=
 =?us-ascii?Q?O385+mo6nsCwXsEhucgLYtdEBMzXrD3WLaGurrOrXqw3cLflJq+z9RE56dUj?=
 =?us-ascii?Q?yYmEinoeskRKQzTcxCQxHXiFFv7BTHnSkOVuPvUsvxZsD0IrKhW3AonZHoSK?=
 =?us-ascii?Q?c+5B4gHqyPuJXBT1qpId1J/whTg5RIC4R75rjU7wio7VD7Xdl+JhEEwZ3WDg?=
 =?us-ascii?Q?wCfIcaci8aUQEnXDFrE0Hh+GIQr64Pe9fIOLiyunssw4jVE6RLgquw6Jdf21?=
 =?us-ascii?Q?fwVJIfiuoLv/0t02Wp6sgdVt1kbQ36slEVBaZSdoCLtJVoQQYdsuB6/9g1sv?=
 =?us-ascii?Q?C0WxrPZ7taS4GzI4pHAeeOB0OmO+AQPZCTzOSEH9sYE7NG+qgE3QPIOvvtvl?=
 =?us-ascii?Q?iJyfJkkcZJqDyIDEzU4MnYnsf+jExlLtXDVEpATA/zBKCfCG4NPC/b3TfG8O?=
 =?us-ascii?Q?GEXS0nnH93njq/LSwsTXsaoQMoJNRT5CoROM9qhOihjtNtpcD2I8qlvWg6rb?=
 =?us-ascii?Q?UUZEDyo9mT0IRJ/qlEC0HhWCIjrlJfzS1KIkCHzlaKparUA5CLGFELHQ8psA?=
 =?us-ascii?Q?u/r61qI/VaRQW8IOlVZUlr+K2eDqsEGmsYDRq6IFtbOr0sYXTVMkpa2wRrr6?=
 =?us-ascii?Q?En9Ilv+GOR6fUplbxrvzTcpqijxeDw83ssMWR62dX0dK2btBN9EHrKzP9XL4?=
 =?us-ascii?Q?KsPS/JxVtiUaLqAeEBiWoVb7Jc4gS8cTrzr4CkYyTT+AKhfMkiyEtcS5kb4u?=
 =?us-ascii?Q?hLnT0CI0wfDeTJv8rbm9chlmQfiurqWakwLlzbH3GXXepTcC3bPQ0dQSwQyQ?=
 =?us-ascii?Q?IrDu9+K7+TL6UABkPES3ornYZqnNeacZk+/Nxz4y22igROc03NAw5gypWLfn?=
 =?us-ascii?Q?HoVrerQOLKE5jBkj6a+H6hArmvUekUgPc3FjEU5GusR0JTNS0YWEnlT2uvIE?=
 =?us-ascii?Q?0PPhECAU/ioasNRuI1uK9CfSK9o1LI3wWGA5tQDKT8C8LkkIGVRUPABdGeH1?=
 =?us-ascii?Q?YLb+KQz+/8xDIEb+I+swg+VfiKOID9iHfOHQPgOhdmxmGCD46z7Ny56Xngub?=
 =?us-ascii?Q?1w6/KGM0GLS5GI78iFqAtjj7zjuwNYtXqwxkbRbaLZw4BCnk5pqBy4H2km3g?=
 =?us-ascii?Q?KRulRuxbeNTPkggqouiigNXMa+6PCuYG5yfHU9Xt?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2426e41c-debc-44db-d880-08dbbe346d5c
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2023 02:00:58.9385 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7VQmB5wrbY2d1WrIJR10b+l/OcB5t9f4dCgf/by5cS9bxX0xMIhGgqAHUnohqr7aNPZ8JlutafvbZSDZOzavfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5164
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH] drm/i915: Add missing CCS documentation.
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

