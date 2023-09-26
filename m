Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCD17AF20B
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 19:56:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0596810E408;
	Tue, 26 Sep 2023 17:56:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B333E10E408
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 17:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695750988; x=1727286988;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=gOvgLLzpantE8J7AN4J6T1qoDxhWPVmsQDTUXRCFAm0=;
 b=B56y/p7e466RBssAyfWwGBoTKy7hltX+MSUK9nYU9wEjpJ/vbsGUfOjm
 QrPl2vSy+9GUF2LsMIeWdsScRZ3JU7CQH6lqjlQpmbfbHbmEWv5PxBTHQ
 4BMRKOITeQoKOFkJJlH3J1DZsL5hQUXNWl6xOzwhL402avb/pjL+9hGtQ
 JkTwmwCSI46mVNlf7PA1A1rfinqVyBdksVC8Z3qIIGs2YfUEwkcW7VT3G
 4J0zdeKOTIenIMJe+yMtcnRun+ZQ72TDcg+wDK1vG49/qJnTxC74vxkVP
 t8m2yOZcVnaeVBLG+UvGdBthL48PEj87My9HTnIhrjy3861N0PnUZ9QmZ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="448121768"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="448121768"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 10:56:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="872588387"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="872588387"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2023 10:56:27 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 26 Sep 2023 10:56:27 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 26 Sep 2023 10:56:27 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 26 Sep 2023 10:56:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eVXFZ3gfyocawJiLpTNsKNVJO34HYtcV+XBMJV10TJnEWEBrrlwwD20sACi7K3yMwdbF1laoEgx022laEZj907RmHFYlXFfGoI/T9di/OQgFUhYpMksri74SwvEDbNvqQUdqUIEuWFXox8IGcopoIiLlKKI4gYb498uY1LdMBODZ5ELryH0uZ0Xa6AB9On5FuXbQY3tXEbRpRryjE478mtJ1gP9HvA1xxj2mMIqpzwhdDKigxUUZYvJm+AN3ECDv7PbP6yZuPfZYXO7155Cd1IzC2exiDaTinFYFGAYD83jNsXuYh8XWKblaLt43UiHraFtcPUkfkgZTNK3knnzRVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qVCuEDhskUX+FIFX5UrLkQK6fWgd0zGfmO0a85kw1I4=;
 b=oV7b7ugzSMlCnpND7YRHZLXScJIbRdWGAbMi4dgdgYoO6EJxHE1xCHRthBrStNPMicMwkVDFNLl5EPwl7xamIgR0HUhvk1SSnizlrYDwUf8barJmrQtRGZbxV1ImPKkhUYqbCgbJmjE3DWkvyczcMrBRgCJnuO/q9JbYcrkUs0uYqDWSRgNKhDVt9WzevidTIk7u6jHHzZ/la4V0GB4jBuXkZDC2xhgI6Z5HZH0Cj4ceuaLX1gxQx0Y8Di++UGushnVfwmpWTbQvsUODlNSVNH161fpjW28hOX5/08oD0D+ciN7qra6PcuPu92hCdMR7N7MD52UekKY4W937WpXmuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MW3PR11MB4619.namprd11.prod.outlook.com (2603:10b6:303:5b::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Tue, 26 Sep
 2023 17:56:10 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593%7]) with mapi id 15.20.6813.017; Tue, 26 Sep 2023
 17:56:10 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Tue, 26 Sep 2023 13:55:54 -0400
Message-ID: <20230926175554.25968-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230926172829.GS233750@mdroper-desk1.amr.corp.intel.com>
References: <20230926172829.GS233750@mdroper-desk1.amr.corp.intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BY3PR04CA0022.namprd04.prod.outlook.com
 (2603:10b6:a03:217::27) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MW3PR11MB4619:EE_
X-MS-Office365-Filtering-Correlation-Id: cc60ac95-f24d-4782-6ec4-08dbbeb9dd81
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uMKIeSdPgiWfjyE4LD0p7BqXjSIxCp6bwbX+x/32MbsVFCLMWZ/7QpgiHj4ti56sUzhWnOF23CybNKweA7VHRzsrmpBucTGyCfsgZCGPmBqHPZhzJ+5wydeMzjTFg05h26yZwQ3Th3GLUvxsQLGmu9ZHAYiQwSefCPYWGV93Gz9X2i1f350XivCjq/ROMlylRCL5mUuLEQuMnA0eBIOXGy4QG63vF1ug+2BkfQaYIBRqVo6YsDV3msWubE7prXLV3F4sGAAhMIOng90TiNZeyBLHx+72URhk9f1fZAfxdViLgKb2QXjPf9lVRoNbybjvIA8D5bjraITMOBmRUXLmgqUXkIdKLl+cBAg5Ew8BuK/EY3hY6pQox+F9Ey6bQKlZwDuOwkZP/2vM/gtlrV6edlsL0LCIIYP1OU7lFIjCd8tjLr7oKsL7P1qHrFCX706aKSFSnKei2RzB+pTjFUYIoDvarj1CT3yBF2Jfc5YH9xCmU+gGC6Or1dpVv+4TkjDXIt3AM+ZGIru7AnnOx4PqpHAQJjAPEvCmhVR9IouOB/+/aC1piGsU6qzgATeW3XHj
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(366004)(396003)(39860400002)(136003)(230922051799003)(451199024)(1800799009)(186009)(8676002)(4326008)(8936002)(41300700001)(44832011)(26005)(2906002)(6916009)(478600001)(66476007)(66556008)(316002)(66946007)(54906003)(5660300002)(6506007)(6666004)(6486002)(6512007)(107886003)(36756003)(1076003)(2616005)(83380400001)(38100700002)(86362001)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ycGYHIGFUEr6dbCWhzBsQZlNUr8YtonSrrmvMXkOj06l5bJgEVrXDTl6lXUe?=
 =?us-ascii?Q?UFpKFRFoFOh9gzmOecgwTUziDrIRQsf5/DGguH0DtVTjdqDmayYkd62SuBw+?=
 =?us-ascii?Q?nuaaRkakZrvXLBWNMj0Y5LcGsk3nHOn8R24Ui6BFzKpuOCaYr/nh48IV/YMQ?=
 =?us-ascii?Q?14uLw1Fc3oWRpL/QhifhZugBjNrtKoExH7QzqlX3fQshjkd1C7bggG5R4/Wc?=
 =?us-ascii?Q?UT4+EEdK0doqZVXImYicwTaf9sAS23iZ1lmn0x67VRSi06khqp/MwBDuxafl?=
 =?us-ascii?Q?Y9bjf/5b5tTLhUh7GdXgyAFmBN5aoO0yrwp6xBE1E0n/nPWDPswhYiln4C0S?=
 =?us-ascii?Q?0KW/LFKwbawG/HX3sqsZfSFr9Dx4L8BMJfMw1l0Rf3z9P4uO0x7RCVCfCUvs?=
 =?us-ascii?Q?cwyogssrkJQRmPQkovsOSikaJF5C1HaIZTx2j5p9E4EP+HFMHiQNMiR1fTnr?=
 =?us-ascii?Q?XxacQJQWby8OFLc5kJ8JUELZf+hG4PhlDDI24G4+vpnaLiXI7w46xVdrOXHn?=
 =?us-ascii?Q?UMGgEiZYCfzLYgYeE48xGJ72+V2B4GMJBl6wRGvsMHhILrPX7xTLIJCYukCd?=
 =?us-ascii?Q?Zph0Y44MAeMt9U62M8PpCN1tcS6Xf7yj6GuU5qAhRoTZ7hxDkcHVexlM1Qp3?=
 =?us-ascii?Q?qWyyzvFIt/9/u3l1IafNdGt2VprZJDTW8QJn5ow6MES6Pnzqi9DFyZFzac1W?=
 =?us-ascii?Q?eQuiwMpoIonRXwSLLypTHqOQxn2saUIuzAwRsFXFle/+ZU3dYbA/QjU/N3jb?=
 =?us-ascii?Q?NHfXB3NyZrgy5iAXdQiOR7WW7OLQ9EFUNqBAhMEz7ucrsOQ5tOIlpCeesgu7?=
 =?us-ascii?Q?75k0qTiaH5hnQv52j2LqhPrc8hetI2ATvaGLnOPvXyCQRAWF2ie1lu5Lfs1J?=
 =?us-ascii?Q?wTbXKhaLL2yRAvIPDOb4vh/9vfwWi2ecMauXWXytFpJrEUPQyW3GcxGKtA+U?=
 =?us-ascii?Q?yhaA8wos5T/YDgkBlq0rlqZWyhyOJjS7Nbo83eBfyKa8jSz37qFymX8poDtn?=
 =?us-ascii?Q?59arnpw7DUtdnojrU8NrIRXKM+4ZEPQktw0ORHUE+PLQ3+7vxvREm3qWRgPO?=
 =?us-ascii?Q?4CUGm1tLF1/bPXgf1FB5ni2TNrxGg5ZUWo0rFtaeRp/+Kdcc5R4/pqliNWGf?=
 =?us-ascii?Q?VFua5Dw7hbjuOaTc3HOnaMjs9ue3X84ju5ybjPCEOnk7bGBLW/XptM15bj6L?=
 =?us-ascii?Q?aLx5LwWL9NFa64/FQBfCHKZfOUCK0+dwPvF3WGUpq90hNwD8YVt73duTkC8I?=
 =?us-ascii?Q?xoY+DU9N2l0qDdUyXp7L/w52Tuoyo1+MCKoi7Zfxj2cQKthuuz7MlP9znMUH?=
 =?us-ascii?Q?B6UH/tHDcG+gTwyhf02CyjDda3D8uV7aCS9Q5tuRAxvKcW1k3S6V2iSlopBZ?=
 =?us-ascii?Q?/7S4Vm/ftYQ1oJ2qjtxGQtrTjiF7eHX1wqBhG/VP2Mo4ZFXSftT9DBULEQ4P?=
 =?us-ascii?Q?FMgrX7actsOk6/HEsJmTPqQER3zsX51p31pqXa8MvzDaT5D9JEKcN2kdNVk6?=
 =?us-ascii?Q?GS1Ol+Jx090RnFls1Uxp4R7z+oi8iR/6K2372p8wlW8gw7polbjHCs2aJTha?=
 =?us-ascii?Q?cDfUPEP9N5329bI8VXROxJh7jj1GJYZ5oFlNFNPdKHIG06pz6K1q8yOv10wU?=
 =?us-ascii?Q?kg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cc60ac95-f24d-4782-6ec4-08dbbeb9dd81
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2023 17:56:10.0372 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mzcuAK+A6Q3840rXulR0TtlZc0X87VeLlx1akQW/uJPAANsxc3rFcx8umAYBQng4JhuZ17XntvYuSCXRGkKItQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4619
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH] drm/i915: Add missing GSCCS documentation
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
rather than the driver/uapi, so let's make sure GSC is also
properly documented here.

v2: Fixes from Matt: typos and acronym.

Fixes: 5fd974d164b4 ("drm/i915/mtl: add initial definitions for GSC CS")
Suggested-by: Matt Roper <matthew.d.roper@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 Documentation/gpu/i915.rst | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index 13de8bcaaa29..0ca1550fd9dc 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -279,6 +279,10 @@ An Intel GPU has multiple engines. There are several engine types:
   Also sometimes called 'VEBOX' in hardware documentation.
 - Compute Command Streamer (CCS). An engine that has access to the media and
   GPGPU pipelines, but not the 3D pipeline.
+- Graphics Security Controller (GSCCS). A dedicated engine for internal
+  communication with GSC controller on security related tasks like
+  High-bandwidth Digital Content Protection (HDCP), Protected Xe Path (PXP),
+  and HuC firmware authentication.
 
 The Intel GPU family is a family of integrated GPU's using Unified
 Memory Access. For having the GPU "do work", user space will feed the
-- 
2.41.0

