Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC197862A9
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 23:39:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFED110E0E1;
	Wed, 23 Aug 2023 21:39:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 179B210E0E1
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Aug 2023 21:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692826752; x=1724362752;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=5blcPd5/DU/Ii21D+lYvquDDI69eTcMOYiM1ltA6ulo=;
 b=eHyMqemkTBHMRTNt+O9kE+g5o7JcO0XNgVhclZA7AcvFCvunetoYEU2W
 pqe8VGB4IS41OTyRaTN1okd1VbyjfjevpywvA6Sg/SzQMBJi8m6D7Xh5Q
 PC5+N6/Yd4cAGH5KCFZr0ZaGSwfY1NLYNcDH66ibwqLlxo2/4jaO0MPwf
 4N17um0tROcEP3d3n6uOI8kfJowXwqkbBWfQA+C4CJh8vsbqaPA6cgcmP
 4vCK639ZTSsO5L4M226hL9oLx7e4GvZaqjo9d4rkQrIspZ0xvbKC6XAW5
 aikhyu10NOlSa9SkBt3J1Gvo7xzcmKD6wi0JD3EE+hvy/0ryTf2GDfmXm Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="374255721"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="374255721"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 14:39:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="713730356"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="713730356"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 23 Aug 2023 14:39:10 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 14:39:10 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 14:39:10 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 14:39:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l3GswxMlOrpZuUqkIbG9+tGfC6MZw5tRoV/1AfumQ101+yEyeXU4TB8jiUTTnjKrXfGFxiLF2z3J958zAYqkkaUYJLA6POpJaaf6DAlKiyjeURV9IyotUDsNa9W+CgpT6MSTA/OFADgvOofxOtfB8fhone2H+T4jzwTUyKnixjaHOAVSVrHHa5eAIx7AKeezyv4gJXOg81l4Rh45PGf04eSTToGEqNOOKEfzX+C6V8dXNZO2ZOyYAAXiB0whZiCr03yCi/JIA2g382nLrbMhsMgsefCGC1OlslNnP9KdWeUz2SM7OlmQYfeoGhGT63XGQdkmo28Lf9xGTBoGIYCrFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xIC0RdgvdKWwd2fvcwSPnvD7IqsTjl5VgFVRGiQL32c=;
 b=GXzSxqhRz0JV8KxQZh2AMDdrgsUeyEuGKcIA8R/V+RujZCraWa9nW0d1MwvH3w/GiQKx1g9tppS9+q9mdbwzudW1AvFtva32WiPA0yvrfbxgWSTdhG/VJq0W6pSRB1sExXHE/2Rq6VFFHPsOT2DTgsq/ncouhTTtrTUrFtuwUKqMX4wE2iX5jNTXiVsNYBwg6K+DEkO8VLxqC1sLTCMQT1LTnD13pTjF31Q6ymSqU4tKSy1aJcjD5udeUmzPaoB1R9PPjGdup0zGiCM094Hc85tdpiJtRgqscD1OcyRfG0sEIDDlQjizOhHSzYqXC51bwQZnIj0uImSQ6Qypzd8acg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MW3PR11MB4681.namprd11.prod.outlook.com (2603:10b6:303:57::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.26; Wed, 23 Aug
 2023 21:39:07 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6699.026; Wed, 23 Aug 2023
 21:39:07 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Wed, 23 Aug 2023 17:39:01 -0400
Message-ID: <20230823213901.335696-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.41.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0046.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::21) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MW3PR11MB4681:EE_
X-MS-Office365-Filtering-Correlation-Id: da62d85c-0bd7-4417-0dc1-08dba4216084
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bvDnattEBUuuA2R+erBy4C1PQjjwNHlnDeLQ1Nqmqwyw4znhJwCB3h9iEa75Zl7FQuvJSJlv4PhnMLLoYW8zxGfuBAxFmWhSnVEixl4m3Jc8H4xPKM2g7Lh819shu+U8u97+NsNTuGGPV2UOsdIEOTIbCaT1UIO0brcnZtytp4Tc5Q5V3KpDUeVnoLiDflBNkVo3A2pxeePVhtsAfTgRQ4qqpD2+BDWwvTExf2LhrQT0rg6GSWBDL0rJs+CnsP2LNFmtBIWHuFda29OGKVNVf0Ok81nLuZWIWVAsHFY0C7rvhA+aCLkQx40KNS+ZwInUQFL7vF6Pbbz9uH0Enff+yafx8z1JZbLoxatG3+kTVFb3zyV+iuqNY8gRf2tBZue9r/y3Nti9c13y607F+3vz/FKopfDIaShEyEhVgRHIIdQR/yk5XTXC4z+nAmJaSNLPxx+RDGzkDLmiMBsQAyTeDULuYXZHMSGoVE/YWdPqx79MCPhtBqN23xdqw4HIlfdLSQQEZkfV4adjOlxmjfPXoF9aAPffOXexW+ftU3l4eXvHwpw87rc0gJguU8DRAMS5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(396003)(39860400002)(136003)(346002)(186009)(451199024)(1800799009)(2616005)(6506007)(6486002)(316002)(6916009)(8676002)(8936002)(4326008)(54906003)(66556008)(66946007)(66476007)(6512007)(41300700001)(1076003)(26005)(44832011)(5660300002)(6666004)(478600001)(83380400001)(36756003)(86362001)(82960400001)(2906002)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DypsfLDtwVMSsmU4r4y6lCGCVjqChbNixv1vf6XPM0UCQFC6Kaq1JWWJFTmj?=
 =?us-ascii?Q?NkRgpjOAM4TeumKelB+59EnebJtEKoZdtv+7mb9qxYtVBUm815ijjYyKnIFW?=
 =?us-ascii?Q?inbzvPGaDUvZKPzZrFIJ8gkzpM/XSP7u2E560h0u+osXjd9HEUDE3Mb39DfX?=
 =?us-ascii?Q?7f4LWccqQyygF/iE62qaN+irsRoJVE45k8y0Xm0HcB+a5CIcLYqXmAPM01Yk?=
 =?us-ascii?Q?xxy79+uCTCiP8QPh+Y0/LoC719GrXHgAXSigeiFIRCtooYeNnQJywZDCB4U1?=
 =?us-ascii?Q?5MRNgMUaFKdy8jiFykeP9d0mXhEmcqqjrj0x/otTirvE3I+irz11nnCNeTTV?=
 =?us-ascii?Q?0+shbhBeY4AFu4qszi7q3Ab4mK4u8c/iASqzIx72nTYBJNhbaXTTIQQdSSj0?=
 =?us-ascii?Q?EE0o+qhFuVIIoIho/ZbDLuoeiNwQxs1qVkDkkz8SBpkOXvZVHokhwHEtlNlk?=
 =?us-ascii?Q?DXVTif0f5gbLjsWCgJDrFJ3zdD8R0zMVPDX2XGkcCirQii5NT0I9Dyd1tACg?=
 =?us-ascii?Q?Vu0GGpY+dw75bAiI0IUWdCqS51hML0GE/f6Ghjr0T74eDyevigUA0xk5nZ+d?=
 =?us-ascii?Q?1u0SSgjAxqfgaoM6+j4EkMy5K6H1uWpjP1iRzlViJZCV6q2GQXJSZtuoaYt+?=
 =?us-ascii?Q?A9e/rgPAlvXf64cEuNyl6Y/EPPo4t8aOPbcq5AYoAul1OMU/0hIth0Y5Z7uW?=
 =?us-ascii?Q?JjNou/4fuR/LN/a/ZO3JFe93UHFCHHi0bSRr3wZ0gHu3+QJJBjVa2pD/CguB?=
 =?us-ascii?Q?XqNnsr/zK+OIRUpRxBHxTa/lyBKvNyUabY9cVw9Pj6FbK8GBfo0hZFEIckKr?=
 =?us-ascii?Q?8gD77IvkGl5t4dTt76FZ6GTqOXyfFPXhTfYQZDyVxGEv2k/DFqZ4IblRpHPs?=
 =?us-ascii?Q?ukszQ8s3vRodZgTFLvuDwVz0Kk7j9ATrJ3eI1YRnpFkZH3XtkvULbaCPdGRH?=
 =?us-ascii?Q?taQpf7y2CEPHbZ7UGKpE4yIBbQJgHMycuTtE8RiQ0BHD3/9GvxGwkXC0xvLv?=
 =?us-ascii?Q?v9iK40Bbv8XiYj3rLE0/+5Uou7qOPS0tzRbPqZH55goX9OCXvZcX0c7z6gRy?=
 =?us-ascii?Q?e1eGvkhnhHGxT68y1RMgnhLJnhgvmAP5RuSkN1cz+JSfo8Lo0dSsRVtEpPUu?=
 =?us-ascii?Q?Miinj8BPr6VKweYNmv+Y6ztxRf5of9SXYQRKXA4fCUaqVv1o1zOvQyQdeEO1?=
 =?us-ascii?Q?KVDuYF2qqGiAUoy/XfHHQhWbw5Jv+mupb1WVlTg+JlZo8WDrU22mWWZuFfpf?=
 =?us-ascii?Q?Fp7VkOp9i0+xOs/IkYpwJ0cwhhElbkyUXRJodrmH4ppV3f42MgOO6+a51sTA?=
 =?us-ascii?Q?q42+KNHObrHCo3wrwox/aqq7Lf410x5WOH5+Eqm5+Ri9laA0o2H9zslNxj0l?=
 =?us-ascii?Q?3X0fNscMKk0e/3w0LAyZwnKfY7YA3syvdKyYiI9pstMrypsA0aODSSnZlnDG?=
 =?us-ascii?Q?Gbj+cTxN06Z/V96EbmaW0HlZaaeYx+z4ocIuprPXAQ/YdYultbUYaoJ3SP+d?=
 =?us-ascii?Q?1/Aq5jTqKF08dT5A8jW8JP5klrd3X/WQjP5E7nb304dSHEB+N3YHSRTiNpD2?=
 =?us-ascii?Q?mlvBLrBzr+ooRisPWLnMkXThwaP7wh/MHrRLj6bPgXho8UnXgyK+KSBJkASz?=
 =?us-ascii?Q?pQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: da62d85c-0bd7-4417-0dc1-08dba4216084
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 21:39:06.5962 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LE2PkdekK57NVAZgymveS58KxFSwtr+5GSM8uzBGkojvXeQhsVq6U7bzzhqjuiiswArRPsrXy34Gk4bg5t7EGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4681
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

Fixes: 944823c94639 ("drm/i915/xehp: Define compute class and engine")
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 Documentation/gpu/i915.rst | 24 +++++++++++-------------
 1 file changed, 11 insertions(+), 13 deletions(-)

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index 60ea21734902..87bdcd616944 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -267,19 +267,17 @@ i915 driver.
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
+  performing compute on platforms without CCS.
+- Blitting Command Streamer (BCS). An engine for performing blitting and/or
+  copying operations.
+- Video Command Streamer. An engine used for video decoding. For historical
+  reasons this engine was alsso called 'BCS'.
+- Video Enhancement Command Streamer (VECS). The engine used only by media.
+- Compute Command Streamer (CCS). An engine that has access to the media and
+  GPGPU pipelines, but not the 3D pipeline.
 
 The Intel GPU family is a family of integrated GPU's using Unified
 Memory Access. For having the GPU "do work", user space will feed the
-- 
2.41.0

