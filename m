Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4E65F2F53
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 13:10:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B307510E308;
	Mon,  3 Oct 2022 11:09:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D5F410E2E7
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 11:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664795385; x=1696331385;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=BAU0gC84rvBXkJYWMsECUTKbK8VQt8/4996dACIVH1k=;
 b=cUkISH+KpYYbzmKmaeehlyL+co+cGRB+wfSLhXZCAtMiuyDVvNhDV95M
 lORjjsmY5AeHXEJCboCXVH15ab+r79lnXj2+xvYPXZV1sT5LM+legkUND
 MWPximUj3ZWpJ+FUuzF1033Nm1mEf+/V6GdaPvlsxpDYsxOo2UXVItLuy
 gYBq3fjkah6dMonsFqx4ifg2kH3rmjz0z7L+XuVpnyd/cvi73chkfOGnx
 pO1oWzH4XorKQARFipQve2jDLfHMzDn59rZk09ffguUrelSQzXLcIaXyk
 +9eGCpyVIh/vfBP06IaYBgfjIocM+3JfWj7PZC+By5VoKg/I4yqetME2x A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="388895746"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="388895746"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 04:09:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="686070584"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="686070584"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 03 Oct 2022 04:09:44 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 04:09:44 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 3 Oct 2022 04:09:44 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 3 Oct 2022 04:09:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DJXbDc+KVoqlKmw0V6VaKrctUEA8NIN99xL/gr9ZAtFFK3AE1tAHu/Z/C8BljDb+Ui2aPzahitt3sxJryzXtYfOqo7uLxA9x6u5BbL1JCyz6U6tSwgTbcwDABylUnFip3YZ3LEn2abrI05MX4RIEeUWZMm8TbVrlrXFDpECGTE0wPjmTaXw4qtuMDjcXfAMDpwFOJCfZYUdXDAIXxhIkSQSlN7sCTlK7Wlc6XfIo6FAzeEk8yla5qml/7s8YiHNtcH5IpJyV+kbdOGinFGx4BPnYiBAVVeKVWl2Fj3ikcGpwpyvndvx1L7BO7H+bIqMQQE4nyq0n/SKphhPQT4Ewtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=thsGNY98TalJdJjyzlld9eBpipGT3bNbNJrRl6mwyXQ=;
 b=Co7dEq6s5/n1pxWtzajiGj24CITjEjkGyaK0FFrDPLPMHC3wPP6gI34ub8Wh5eQEdIJhZXQX0/cQ0KK5LSUXE0Srbonge6gaQOxhCLAGeJ1IV+HjIAjtuaisAOrs+p7P1ofuhOxDe54L/WfRbcPm0H3WfOd/9iU/GZLVyOcyizdL0Ch/D2dHhlVfjdiz3XGCe7/+vFJ+e9U1qVquqJW60gi4w7ZS9ztidYNkdb4iPlOIbve0nfJWV1Ay9RKLg9HgsRwnCj5h9eRp00+UsdW5HA8Lh3K/eiY9QhsAzLtYadfXyKGNCL+VoNJnjRHmeRAk3eDvlu3Ttb08ngyNFsw9Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 PH7PR11MB6476.namprd11.prod.outlook.com (2603:10b6:510:1f0::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.28; Mon, 3 Oct
 2022 11:09:02 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5676.028; Mon, 3 Oct 2022
 11:09:02 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Mon, 3 Oct 2022 16:37:59 +0530
Message-ID: <20221003110759.140398-7-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221003110759.140398-1-balasubramani.vivekanandan@intel.com>
References: <20221003110759.140398-1-balasubramani.vivekanandan@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: PN3PR01CA0048.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:98::23) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|PH7PR11MB6476:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d07900a-c948-4a0c-5d09-08daa52fada9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LYsGJrbLVd/3zBaKm0lwW8DhHgwmroBLk+IaXBnsLYcilhOduGkW5h/nOC5y4mxBuHw8MrAuT3COtmtttuZhT5YWo7Axdn2VbRtyMYhWOplVKxO4bmaRTE2VgBr2wc+2/2nqxRGZ97bX7EAhDPDGpSVLSniGRoC+QG0dIBvxaJzITObPztH7awKjOs3rmtC/RrBdi9sPFcz9pDaC50GXu5JpvdesG/NS5+eC1tWp9chLTO1eS7Sbt/jOa0UlmvVZKZD8neiIaNuQdFGVGaCZHZUda4Jyb8h23lHBbFeAyug5saAt0LNx/xaX5Bwe3iI6B91CzFyUJdT2UNLTIdLgjPuucsP8cANsnljGC7YIzWbIDGLlqbHfzf3H5TDGmZFqnKrmjDb0OoueMRm5GRf0jd8LhPWfU976BvkPKN8/MWU2vnJ/gqg3V7edCvQFcqbS1wWgnaV9xjxB6C5dKpZpLDIv1ckIUNrYpeFyzOL92F43t7bueSNoIIC40bgIFS/fH2jvraNWnlElSvRQew+R5zD7jcvwZFS9AyvkfEB9fmapQ961EFD6XBntJyJ5g6Xy5BYI8OcNjtbMoQIL0rIRquE/Ee6U3Xakje+Xm25iHHtfOQeLkxd2ogkmO1PDz9AOJq+BXu1AlJ/gY+5/zztCiqdWHO5L7rCcsXfJCBXbBccONNY2F6vGMmm1O4SO5RS3rV9oVmAT/gc4ZQdegQKuyA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(136003)(346002)(376002)(39860400002)(451199015)(26005)(54906003)(36756003)(6666004)(8936002)(5660300002)(44832011)(6512007)(6506007)(478600001)(6486002)(2906002)(82960400001)(38100700002)(2616005)(1076003)(186003)(86362001)(83380400001)(4326008)(316002)(8676002)(66946007)(66476007)(66556008)(41300700001)(6916009);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?eIhaF8RmAK7kNb906dEuPyudKejMOMWin1XF194r8lfDoKI0NQ+3BOMC22S9?=
 =?us-ascii?Q?ffAU8nLeC4R8FCKeIlT5veEBqzdsFFirbRTpmSudXgkPxmt9d/9DMxx9s+pv?=
 =?us-ascii?Q?3dFbS7Bmru+VudHX42XwsuABMaKtR37OCiSE/4nRYOFTCTS75FnZZ7ICz2D+?=
 =?us-ascii?Q?nLxyX8M4+Gqss7s8lK+WPnSIcYFJyMGhcbQgBvI15RgiFNBECR1ZarajrOfX?=
 =?us-ascii?Q?jbO3ghHrLtDwPBQQKiP5P0DuJxt5oJpGmBRc83PYYtIhVdcbhw/7B28doRf0?=
 =?us-ascii?Q?DOE9Fx+G7sKXYLnQ2md8JswepnYnokZtmS3altxJXShtj+9L7yQWWOST/hji?=
 =?us-ascii?Q?e4KPy3BVHrpuX4amtZ9OkomMi4JcybMTUuLJlVCBtloxmx/6jhQqoII52Cd1?=
 =?us-ascii?Q?XbI6adVDMm/DyPkdp9RoBuhMNYJYsPp2E4w0gatB5Mc5Vi63/LWKG8v/EJtK?=
 =?us-ascii?Q?8pWPa8siUzkA2bi52kpw9qeHHPTEwpZj5uU2KsGpCv5JRh7KMA26K3E4D7+O?=
 =?us-ascii?Q?BWhj3ELMh3ZXSJjgq7xVv4YzeK/1SL2u6QUCsYCgGEPl7ygM7O4hiEJvYW6V?=
 =?us-ascii?Q?az3oSFmN1igqWvDXW1XXuGOdemWzeGj/bzZN8N6rt90DulIJaF1I+GHMu/wm?=
 =?us-ascii?Q?6sM26ahLe4PTqjV/A3yIj6eKsryMo6oaCMecYoczc2L4uWcWtsplWQwZfUZ9?=
 =?us-ascii?Q?9S1Lo7SDe96nUW2lF0uN7U/U2bVYUpNGuUSaz5adfEyZRAKWrL/VX+HNN6FM?=
 =?us-ascii?Q?i2a50xLZRxVlcNVWRjdDcyen2qYK6eDrt1NEI6YPQOCOxD1kUKeNTYVo9jdN?=
 =?us-ascii?Q?zt66JBuf/ZiR27HjQu0DpEvnsuOJOM+XefWJdiOl1iggnTCTS1Sn7LhcuTFT?=
 =?us-ascii?Q?9kz1u5+yqVggA5A7NsBIUVFvD8b4/GDsSj2RM49b/xyaukGK0g8Ix/kOyZpR?=
 =?us-ascii?Q?+nkyo3/5kxAa2GybTwrEe6+RU9L3hNygbs5qW8Qx56DbhIxaLqSwBI8F63pP?=
 =?us-ascii?Q?UF0Ori1dWplSuK1hBHP0Me/6QcPNxhQBcYKqV7+WyAI4W097QH3SlxZsj0Uz?=
 =?us-ascii?Q?UFptPNsXXT3oVCnOpMwRhR32BuuojngjcP3B3R8r+VqWB/toC6ak0gbewRFc?=
 =?us-ascii?Q?O84NCTiAoya11d1sqVnelfToaozgWml4ny3CWUZkf6pm8/yPbZsDIQ30glil?=
 =?us-ascii?Q?OHVM7RYeYYld/c8YGfug0M5Vsb5b++H+FoxX6DqpoH/V4LIB7jM8Ek515E/W?=
 =?us-ascii?Q?6fxO3zP7KUtoFbJQO4UUcwQAIGJYSLEtuSjIb+YPuWgV80sIn9WFHD6A3gcf?=
 =?us-ascii?Q?Hq2qZbpI9P3o/NZy1TRQVq8BMi1AdhWzntDO6Ud0aAcv0r8ViQ4IZUanyFFL?=
 =?us-ascii?Q?Qxpf6Tb0rp5Q5qV49bTf+tFOSnZnSXYCuJ/pl/O6Zf3xNNtQROUb6O8Ko1Pf?=
 =?us-ascii?Q?fm65OcBMrSK50eITnV1DFaC/lqDyvq5KHPyNjFJn0O1pSk6O9NBLFMCjR9+z?=
 =?us-ascii?Q?NQotbM/WrjiIKpwWVEthpaz4IiKDkkQPXi70W4Ln3P5jGJmYDBmUwbKABP2P?=
 =?us-ascii?Q?uYlbyMSjUAFEZ9pvc+VpWunAqGe0syscFw1FiquaRWySYcLsG0js9KN1dxJ3?=
 =?us-ascii?Q?YExJmf+YCQSIUNSrLJ8MD1Q=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d07900a-c948-4a0c-5d09-08daa52fada9
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2022 11:09:02.3043 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y9cbUyEuwPGA/Ae/ScEgb0IJT4uFzWVPMZFqDjNGqILud9uuczkocLMu0kvSgbrrmuInoj4Hmu0MMfTQ9ZNg26A+BkDZ8an3tqw4LSVdFDFHhuWWqZklrApVoJ2CyYwZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6476
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v4 6/6] drm/i915/display: cleanup unused DDI
 port enums
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

DDI port enums PORT_G/H/I were added in the commit -
"6c8337dafaa9 drm/i915/tgl: Add additional ports for Tiger Lake" to
identify new ports added in the platform.
In the subsequent commits those ports were identified by new enums
PORT_TC1/TC2/TC3.. to differentiate TypeC ports from non-TypeC.
However, the enum definitions PORT_G/H/I and few usages of these enums
were left as it is.
These enums are unused as of today and can be removed.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c    | 3 ---
 drivers/gpu/drm/i915/display/intel_display.h | 9 ---------
 include/drm/i915_component.h                 | 2 +-
 3 files changed, 1 insertion(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index ab472fa757d8..b0dfb37e402a 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2404,9 +2404,6 @@ static enum port dvo_port_to_port(struct drm_i915_private *i915,
 		[PORT_D] = { DVO_PORT_HDMID, DVO_PORT_DPD, -1 },
 		[PORT_E] = { DVO_PORT_HDMIE, DVO_PORT_DPE, DVO_PORT_CRT },
 		[PORT_F] = { DVO_PORT_HDMIF, DVO_PORT_DPF, -1 },
-		[PORT_G] = { DVO_PORT_HDMIG, DVO_PORT_DPG, -1 },
-		[PORT_H] = { DVO_PORT_HDMIH, DVO_PORT_DPH, -1 },
-		[PORT_I] = { DVO_PORT_HDMII, DVO_PORT_DPI, -1 },
 	};
 	/*
 	 * RKL VBT uses PHY based mapping. Combo PHYs A,B,C,D
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 4a5f7df7492b..5a55b9f43ce3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -208,9 +208,6 @@ enum port {
 	PORT_D,
 	PORT_E,
 	PORT_F,
-	PORT_G,
-	PORT_H,
-	PORT_I,
 
 	/* Non-TypeC ports must be defined above */
 	PORT_TC1,
@@ -244,12 +241,6 @@ static inline const char *port_identifier(enum port port)
 		return "Port E";
 	case PORT_F:
 		return "Port F";
-	case PORT_G:
-		return "Port G";
-	case PORT_H:
-		return "Port H";
-	case PORT_I:
-		return "Port I";
 	case PORT_TC1:
 		return "Port TC1";
 	case PORT_TC2:
diff --git a/include/drm/i915_component.h b/include/drm/i915_component.h
index 4b31bab5533a..335822d6960a 100644
--- a/include/drm/i915_component.h
+++ b/include/drm/i915_component.h
@@ -35,7 +35,7 @@ enum i915_component_type {
 /* MAX_PORT is the number of port
  * It must be sync with I915_MAX_PORTS defined i915_drv.h
  */
-#define MAX_PORTS 15
+#define MAX_PORTS 12
 
 /**
  * struct i915_audio_component - Used for direct communication between i915 and hda drivers
-- 
2.34.1

