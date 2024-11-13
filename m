Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFC39C7E6C
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2024 23:51:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1832B10E742;
	Wed, 13 Nov 2024 22:51:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YIZI24ad";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EA9310E29B;
 Wed, 13 Nov 2024 22:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731538265; x=1763074265;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=vrGPc3oNRrz8ov4UPbm8uEBcemu8clsgp+bOz/yFCdk=;
 b=YIZI24ad8zm1v/+ZybAkpNqscZO2EJ9wteNYzUvX8mqVUVBu/t5Pz/JA
 f/fByyd7KwzICr5IlPRY7BtLsvqrioYyjP/FHxW1CHtWkKauJ9tSvFTvU
 d/o68GSVNHkbr/fed4O4KxtnqqQ6Izss2tJlBYXa9E4RDW7nfI/KXY5AJ
 us81DEgKaqgKdoRGESxKqPvbp20YmrsQ0ozu+GlqDir+O9acZjQ7plqap
 +8RAz+L+W6Ob9IkvbsmO33ZY+UWRfYSyp/cr8vkSJwXV5egcgzNo6jM8N
 LiSWu14K4Gc7K41qHxpbRPC7tebxXXHZ35PNAg7dtvwXmf75T7wpslijn Q==;
X-CSE-ConnectionGUID: 8L5uf0ezRBSJYOT/ClgGqw==
X-CSE-MsgGUID: liusHiYGQS2Ojcbozu5ZMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11255"; a="30842496"
X-IronPort-AV: E=Sophos;i="6.12,152,1728975600"; d="scan'208";a="30842496"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 14:50:58 -0800
X-CSE-ConnectionGUID: Xchwn+7BSIuLTPj9MuEObg==
X-CSE-MsgGUID: ksA9lz3lRZK8g7xrRt/oeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,152,1728975600"; d="scan'208";a="87769946"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Nov 2024 14:50:49 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 13 Nov 2024 14:50:34 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 13 Nov 2024 14:50:34 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 13 Nov 2024 14:50:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pbYziPzwJ11q3kegMchMPNdIUcnlx0o84gNJVBhDQiTcwFwK2AjZM4f8oYL++GP+lwNagfAVNuqqP7Rh7WKdpUyy8QOzKsR1CbN4OKyjH/YG2FCjraj9JOblT4WO4B3rKj4sG0IUQ0I8rHXDTr45YoUjNDJA/JUGt5mVd0BrtjvHJmUrWiq3A3wTV5fFVAakLeGLSd5RMSN2BZrXavOoGYDUQk0Q2zwhdIy2tMom/PZUJJ5AhOgXQKo0nai+acQ3t3//4K82F8mbnja8LVOccY6htyRtvJ3bPbYlEhnj/FJ6SbqaZv5suz8VR0RnTL+NK8v6/ZGzd3oF6JudbNtSrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VYJgejEc4E+5W3WOPH2KLNey15Cyh1VfHPoOBuSJVsM=;
 b=uL+ri3xTPLo9JAqwqWWAkMyx9xWYWNXTda/z0UaWd7RPvfLfWgzYon8WsEAjUiCiFwP/T8y+eGxJxUT9TE9FLA3kTqGPdUzAH0vvvb5RTeFO97Pae7Cwt9FOfeeEJKZl7/Y4VCzRsVDOFFRQoVrla8TBgmhm8VBayIpACx/tArMyJIRzFqPUNIYUCdQd9/Pi1H0GFYz/ccaxhMOeptdjVaB90uwd6RMUkBnHBAz0n0RlNy9oE0mg5Wr/nmA3DVO70sa89p19VJzENaxsaayhbKTFcMkMade8WOB5QsHutObjnJ1WoKnGVzaPooV290HaNbhQv0xdywM0y5dle9oSNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CH3PR11MB8416.namprd11.prod.outlook.com (2603:10b6:610:17f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.17; Wed, 13 Nov
 2024 22:50:28 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Wed, 13 Nov 2024
 22:50:28 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: [CI 3/7] drm/i915/display: Move regfile registers
 intel_display.restore
Date: Wed, 13 Nov 2024 17:50:12 -0500
Message-ID: <20241113225016.208673-3-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241113225016.208673-1-rodrigo.vivi@intel.com>
References: <20241113225016.208673-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW2PR2101CA0029.namprd21.prod.outlook.com
 (2603:10b6:302:1::42) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CH3PR11MB8416:EE_
X-MS-Office365-Filtering-Correlation-Id: b95d4749-128b-423c-1703-08dd04359198
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?iDjCELvcZ7JcPKkQQnLQ4RoageGRHiJkwL6XU/9SVWeyLE62QUHP5Q0v06Sa?=
 =?us-ascii?Q?nuwAsY3HC3/BG/KnkQPNLhD/gqLQebByUMoVcm+8HpvFP8cnW/tPTzJLnerq?=
 =?us-ascii?Q?Xmr+Nsdp7nvcP6gtx6P4w7BZRBmU2BPHQi0DruVcwBv3l4smM+gZiZAOGxa3?=
 =?us-ascii?Q?n+ifl7Klm+GpOAWvDAVk3Bf37+9u0iVvjQ+t2w0ZFW7TS3bm4ps/wOuCmY8y?=
 =?us-ascii?Q?YhXxefFihqlqV754NDJ6rtZ2koOtTyw9ouJqbYm3rxdeIDp26+L4ISlRKe/s?=
 =?us-ascii?Q?85jSvmXZJprntLbqgh2eACzfyZTMSwh1KPbq1fDfFkLO9T1JSjc+fEZUQO82?=
 =?us-ascii?Q?RqPr5DKjMFtk/8J7NzMtzlw/YaNmJ3hu9x9GElYt6IyuwA5CdQAUkPjgamN7?=
 =?us-ascii?Q?fng8sg4/b6TBxP2b/h7BjnqW4jst17SFn1SGdowMSZZr0ALMDTYtQklBhCRx?=
 =?us-ascii?Q?C63uR/xt3lifD02U3WJflU0d9VB714r4ZsQw6Jh4q1SgwoaIKYn3BGfNG7zT?=
 =?us-ascii?Q?Q7NAJWkYG6//kzwSBULVj7dG/jPYZlAj0qTCgNya69AoKwMTO6lSyN2VhjG0?=
 =?us-ascii?Q?/p13OmV6ZiKwUFhjG6hbrbZDQvJ1VOk8wEk2cBYNPnBg6M8s8iVuJoNrE8Jc?=
 =?us-ascii?Q?9KJH6Ngp38tUJc79Ec/yPPMR8wXDtUi36JG6e0I3IY4s77Tn1Bj1m4G/GjTo?=
 =?us-ascii?Q?9n64lYnMM8bVfoni/VU+SuOvrA83CD7OUknm+Bjr3trKBDQ4E9b0W/u8F+DV?=
 =?us-ascii?Q?p75zgle7sS5ElPOvq5Mqbdl044Vz2TUqgOAeyi42+ik/Jzuypn+h//bM0bDa?=
 =?us-ascii?Q?rFdtJR9gzD2qcjz4B3DfzVl8ojCyt8snbK7ojBb/J7KtJeJSWJ7ETHHk1qeH?=
 =?us-ascii?Q?PTk6O5gohCkdDkxF5jKpLnDTNVRgZLd8u9hfeGlyaw9r1dnqY+FFhM2J6+BN?=
 =?us-ascii?Q?B/y6tOncAeS4l2Ab0RhAL6KtTuwN1qf4RIUdgZIfnn7ikkuPt4ggYZr00vlZ?=
 =?us-ascii?Q?JkWguzks/lWiMSpdqriRQYh6gJvC8HxrDw10iL1IZ+Lx7j11pC8IuD0H78Tr?=
 =?us-ascii?Q?FPjHBzcscQI1tUDMnyWk45/hRNqN1HgNXpARWjtYJm9lW+wqMXC5eG/roOzd?=
 =?us-ascii?Q?A38747yDH6yLLTvlG2wAuayf9SMcVzHhZ5Ew6lZvI58mhxHIRez/5noyPgMP?=
 =?us-ascii?Q?XE+573Kb3L2f0OHm2PfYWVohbSAXyQazFLhRqQbW7GkjGAfcQqqsPb0YxHZN?=
 =?us-ascii?Q?cmAgobzCceO0HEXaOVL3OO2nxIkLFutYQ6VZT74XTL20LiLYSU4aGdsdk7+I?=
 =?us-ascii?Q?5s18dnmcUEw1uj2gIKXM6VF3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RmzoKbBKq5ThLJyuWIUo/O4XomwG9991umi6et1f7x1+H1o29jeV9JeggMeC?=
 =?us-ascii?Q?jc/6xVMwp5pnlaYgcKPx4tpYPWKmz/9HHLSSNDLy7Oldbs7TCogLMc9AHIW/?=
 =?us-ascii?Q?tFNJqTxd9ebfYcV4oCur5vtHvXlbBt/mI8gjwt6IPEV+CP5dg2hrM4oPdQ0P?=
 =?us-ascii?Q?WS8ps4VOYM/1DViKgQteHDH7fBF/LWqKa2ov6Pf74VBswg+rlbLwRqiXJi8F?=
 =?us-ascii?Q?kDf84/y1S9GfmdTzSdSlDO6mHDYtk6NcsCtbQ+EEc4kZNFOy8tBZGnbAID7V?=
 =?us-ascii?Q?It24bMS4fdqrdY0Bb8upTl6YGfyXV9GgdlXAvXOheLN9/egC/vRCo7PripIF?=
 =?us-ascii?Q?Fx9QOlLcU6eGCvbokkyW2dK/R6uw7VhrzIpt6YBggpib/A1IOKnSymT5IGVT?=
 =?us-ascii?Q?UV5qFvrc3BJX9AmscG6fgqxh1dx93S8ibyKiV2qFDIsqrbgArCzitAMZnLkv?=
 =?us-ascii?Q?Tmbyw0hKHyQ4SAf9F4YKt7WARTH9kG9ozkMK98uz7Y5GpG462zckvStQeTy5?=
 =?us-ascii?Q?ZQ7RhgzxCE53cz8COBoLxGa5z2bfC2mrIG3BMPeZeiToKgYXlGE62g7qvTg6?=
 =?us-ascii?Q?4ODXnsneA+24w4Z9l4QhicDcigQjIf6cuAr8DzNo4VnxROl2h14FQOu/admU?=
 =?us-ascii?Q?H6Ms+7boXtUqUp0aeJAL7/QxxQ4KXK7B3YnZudkZBGZ6cA4rTIbQboQZJwvQ?=
 =?us-ascii?Q?McxOwgd3LkRN2EddN8yUn0uqNZnu2zUICMYxRdKM+0XCHM4VqSIFPF0g2yJA?=
 =?us-ascii?Q?pTRvck76T5njpLH0y8wmKAMfSASK9T8UgFu9CZKsGD/rd1EUr8H2XljGO6AO?=
 =?us-ascii?Q?B33PgoPUGUDBq0HY1thw8YAYdupw+R9inrTts+rsgaih95cd40GBf7bVRCq6?=
 =?us-ascii?Q?YKw8Yakkj3g4FG+PNW4TLebb0TD0elbhtI9qz4wKA6bN5aMipfT5ENKCRJ90?=
 =?us-ascii?Q?H8aFZFyZPkpY+LMmpaIIMGgD7Z7UKBssdgRWbW+LQx6eByvrIDa2xxM6W2ke?=
 =?us-ascii?Q?YOLbwqQYFzgeT2KmtNJfgEUKZprr1ejqI80I4bxBVoOkaLRi2gIgtnxa+Zvc?=
 =?us-ascii?Q?3BfXy3GCkBMAlA3LHZw8eOC1Ul7nnzVTZHJPszsGfDoznuKY4ILpBpD/6nr2?=
 =?us-ascii?Q?/Fq4rsvnEn58L2mtNo7OSjzHz8oor00f8L+QIGmmPHixGDVx58VKoeC43AU6?=
 =?us-ascii?Q?KV8Z5GmvIOR92jpz0uOn5dETYMBLdIV13Dn8S4J/sq1F1fRTCq7uHbW7O8HV?=
 =?us-ascii?Q?wbfBPjoJshHlfd7Xnji5kXzHXqJOZgsVUUsgYy9S21Kx8qvY6I3Zt97XAJfU?=
 =?us-ascii?Q?VZ7jKuvhUu7uC/WYhEcbxLNOZfJ5yIndEPYBqvU0/y8Q//NH2Zw7AtLD0O85?=
 =?us-ascii?Q?WSviIag41JH4/7/mS/Ba/wrf6fjDGbDjuU0p6V3mvpqKr1eG7U4BRxuImxWT?=
 =?us-ascii?Q?tLLqI8TbJ+9q4tg4JnAHJ0kJX0PciTdX0Sh1uTYoXjnWcYoe1QNqgw2wBYb0?=
 =?us-ascii?Q?Tt5XnTsbs7nlpyWxhXoUthiZJC1sFhpiYEhnIi8GWJp5Bzpha4nkSr6vrznH?=
 =?us-ascii?Q?pSSiBjmpER50rAq8qUyEcO8IvWA7jCfoPj6XtaLypw09v/pZhHtc1mYK8it4?=
 =?us-ascii?Q?aQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b95d4749-128b-423c-1703-08dd04359198
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Nov 2024 22:50:28.1454 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9QKjErevbo+oFbxlGFTpDsTKgN5pXCvkN7PDDwxrWMxDQVP3yT8OCP63taLjwZg9C4YjKcclXHZAeXTIXbmCkA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8416
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

The intel_display struct already has a place for save/restore
stuff. Move the i915's regfile there since they are only
related to display.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 .../gpu/drm/i915/display/i9xx_display_sr.c    | 40 ++++++++++---------
 .../gpu/drm/i915/display/intel_display_core.h |  5 +++
 drivers/gpu/drm/i915/i915_drv.h               |  9 -----
 3 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_display_sr.c b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
index 4dd0ce267994..4c78b7165831 100644
--- a/drivers/gpu/drm/i915/display/i9xx_display_sr.c
+++ b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
@@ -12,56 +12,59 @@
 
 static void i9xx_display_save_swf(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	int i;
 
 	/* Scratch space */
 	if (GRAPHICS_VER(i915) == 2 && IS_MOBILE(i915)) {
 		for (i = 0; i < 7; i++) {
-			i915->regfile.saveSWF0[i] = intel_de_read(i915, SWF0(i915, i));
-			i915->regfile.saveSWF1[i] = intel_de_read(i915, SWF1(i915, i));
+			display->restore.saveSWF0[i] = intel_de_read(display, SWF0(i915, i));
+			display->restore.saveSWF1[i] = intel_de_read(display, SWF1(i915, i));
 		}
 		for (i = 0; i < 3; i++)
-			i915->regfile.saveSWF3[i] = intel_de_read(i915, SWF3(i915, i));
+			display->restore.saveSWF3[i] = intel_de_read(display, SWF3(i915, i));
 	} else if (GRAPHICS_VER(i915) == 2) {
 		for (i = 0; i < 7; i++)
-			i915->regfile.saveSWF1[i] = intel_de_read(i915, SWF1(i915, i));
+			display->restore.saveSWF1[i] = intel_de_read(display, SWF1(i915, i));
 	} else if (HAS_GMCH(i915)) {
 		for (i = 0; i < 16; i++) {
-			i915->regfile.saveSWF0[i] = intel_de_read(i915, SWF0(i915, i));
-			i915->regfile.saveSWF1[i] = intel_de_read(i915, SWF1(i915, i));
+			display->restore.saveSWF0[i] = intel_de_read(display, SWF0(i915, i));
+			display->restore.saveSWF1[i] = intel_de_read(display, SWF1(i915, i));
 		}
 		for (i = 0; i < 3; i++)
-			i915->regfile.saveSWF3[i] = intel_de_read(i915, SWF3(i915, i));
+			display->restore.saveSWF3[i] = intel_de_read(display, SWF3(i915, i));
 	}
 }
 
 static void i9xx_display_restore_swf(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	int i;
 
 	/* Scratch space */
 	if (GRAPHICS_VER(i915) == 2 && IS_MOBILE(i915)) {
 		for (i = 0; i < 7; i++) {
-			intel_de_write(i915, SWF0(i915, i), i915->regfile.saveSWF0[i]);
-			intel_de_write(i915, SWF1(i915, i), i915->regfile.saveSWF1[i]);
+			intel_de_write(display, SWF0(i915, i), display->restore.saveSWF0[i]);
+			intel_de_write(display, SWF1(i915, i), display->restore.saveSWF1[i]);
 		}
 		for (i = 0; i < 3; i++)
-			intel_de_write(i915, SWF3(i915, i), i915->regfile.saveSWF3[i]);
+			intel_de_write(display, SWF3(i915, i), display->restore.saveSWF3[i]);
 	} else if (GRAPHICS_VER(i915) == 2) {
 		for (i = 0; i < 7; i++)
-			intel_de_write(i915, SWF1(i915, i), i915->regfile.saveSWF1[i]);
+			intel_de_write(display, SWF1(i915, i), display->restore.saveSWF1[i]);
 	} else if (HAS_GMCH(i915)) {
 		for (i = 0; i < 16; i++) {
-			intel_de_write(i915, SWF0(i915, i), i915->regfile.saveSWF0[i]);
-			intel_de_write(i915, SWF1(i915, i), i915->regfile.saveSWF1[i]);
+			intel_de_write(display, SWF0(i915, i), display->restore.saveSWF0[i]);
+			intel_de_write(display, SWF1(i915, i), display->restore.saveSWF1[i]);
 		}
 		for (i = 0; i < 3; i++)
-			intel_de_write(i915, SWF3(i915, i), i915->regfile.saveSWF3[i]);
+			intel_de_write(display, SWF3(i915, i), display->restore.saveSWF3[i]);
 	}
 }
 
 void i9xx_display_sr_save(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 
 	if (!HAS_DISPLAY(i915))
@@ -69,16 +72,17 @@ void i9xx_display_sr_save(struct drm_i915_private *i915)
 
 	/* Display arbitration control */
 	if (GRAPHICS_VER(i915) <= 4)
-		i915->regfile.saveDSPARB = intel_de_read(i915, DSPARB(i915));
+		display->restore.saveDSPARB = intel_de_read(display, DSPARB(i915));
 
 	if (GRAPHICS_VER(i915) == 4)
-		pci_read_config_word(pdev, GCDGMBUS, &i915->regfile.saveGCDGMBUS);
+		pci_read_config_word(pdev, GCDGMBUS, &display->restore.saveGCDGMBUS);
 
 	i9xx_display_save_swf(i915);
 }
 
 void i9xx_display_sr_restore(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 
 	if (!HAS_DISPLAY(i915))
@@ -87,9 +91,9 @@ void i9xx_display_sr_restore(struct drm_i915_private *i915)
 	i9xx_display_restore_swf(i915);
 
 	if (GRAPHICS_VER(i915) == 4)
-		pci_write_config_word(pdev, GCDGMBUS, i915->regfile.saveGCDGMBUS);
+		pci_write_config_word(pdev, GCDGMBUS, display->restore.saveGCDGMBUS);
 
 	/* Display arbitration */
 	if (GRAPHICS_VER(i915) <= 4)
-		intel_de_write(i915, DSPARB(i915), i915->regfile.saveDSPARB);
+		intel_de_write(display, DSPARB(i915), display->restore.saveDSPARB);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 45b7c6900adc..f6c1bedf1c31 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -505,6 +505,11 @@ struct intel_display {
 		/* restore state for suspend/resume and display reset */
 		struct drm_atomic_state *modeset_state;
 		struct drm_modeset_acquire_ctx reset_ctx;
+		u32 saveDSPARB;
+		u32 saveSWF0[16];
+		u32 saveSWF1[16];
+		u32 saveSWF3[3];
+		u16 saveGCDGMBUS;
 	} restore;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 920585ea1ad5..dcf6050e5550 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -101,14 +101,6 @@ struct i915_dsm {
 	resource_size_t usable_size;
 };
 
-struct i915_suspend_saved_registers {
-	u32 saveDSPARB;
-	u32 saveSWF0[16];
-	u32 saveSWF1[16];
-	u32 saveSWF3[3];
-	u16 saveGCDGMBUS;
-};
-
 #define MAX_L3_SLICES 2
 struct intel_l3_parity {
 	u32 *remap_info[MAX_L3_SLICES];
@@ -299,7 +291,6 @@ struct drm_i915_private {
 	struct i915_gpu_error gpu_error;
 
 	u32 suspend_count;
-	struct i915_suspend_saved_registers regfile;
 	struct vlv_s0ix_state *vlv_s0ix_state;
 
 	struct dram_info {
-- 
2.47.0

