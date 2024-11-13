Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50CBC9C7E6D
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2024 23:51:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EED1F10E761;
	Wed, 13 Nov 2024 22:51:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AytK0J6P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9937910E29B;
 Wed, 13 Nov 2024 22:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731538265; x=1763074265;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=PoK9SFotnH1aeSJynZ41ox9He3UKzul8s1XMsjC0ICg=;
 b=AytK0J6PetSIEmswK00uL07uPYfJKRxaAByx1FJxEd8lpy9BDCYf/Mb+
 E6q39H20yRngKqlN1Fs0wesQlThVoYkYsmsWK6ugwwLeZx4X0fe+pHo6G
 TOXPSBWNI9nnvvk2kwFBPoxtIFHt7EmL6ySQptHHHL3Iy1PnoBtFMmcA4
 5+ks0fVmilFYCWqzYeOCu+Xp+8/XRxSEtKPEBTeYYhdYCnWUL4p/jGEeU
 +umW5Qk0mYFUEM/eurLVTzP+uKb3CtFQvpt4R99+xyVBzhhOqB6aU9jdO
 uz2lz2wlJY0SN28JSKmXF8qOcUR1gUe3dzYqYYkNTeWGhmdZNZk+gQKmW Q==;
X-CSE-ConnectionGUID: QrffTW4oQOiqCcKDvNKdaw==
X-CSE-MsgGUID: vK+oDVX6SIKMhfQDzpUBQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11255"; a="30842506"
X-IronPort-AV: E=Sophos;i="6.12,152,1728975600"; d="scan'208";a="30842506"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 14:50:58 -0800
X-CSE-ConnectionGUID: mrbANBqsSkqwudfy8dkHdg==
X-CSE-MsgGUID: dYb8roBMTAK0Ptw/LvAYcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,152,1728975600"; d="scan'208";a="87769950"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Nov 2024 14:50:50 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 13 Nov 2024 14:50:42 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 13 Nov 2024 14:50:42 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 13 Nov 2024 14:50:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=okfoWxAD4TiuWBkTU36Bwiyv1Lwr0TyoUX65gH70KBgA3YBs9nj79+8EELKKHxfvG62lLG5jsPsqip1V5ipUR0AFO+8k8fdHn5iQeSsFGKBeFDKzuPJ5SQjeJOfZrbskerIwICSGmUeMXO517MzKQ5GDf2fLkXOPV1pSPk0scd+wHiA0X12xYtwVpbo2akquBMSWxSmrJOD5fv2BPB87+dxsEFyc9eBmZp9tizulb+8kD2zR5hiyzojxuXhmEc2xoaPhtCtr+1S1ZYaOqF+8QYZL+FmdVWqgUrOZNuYj3Ezti7wmW0H4sLPSz0wfK0uocnqSRx651TQHx/LEjV1Pjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o4vHfhls5FZXclcmtuCLPwpmv4KdIN3bBhvftyFWAs4=;
 b=gkLwAsy5kyjUckQLeLG3fmv6ep1QxcDDBTDJ9YXQfK+9tWDfRUZ/wk7mCrw6K3jqQ1XsWRuLLCGIYGGhY1ScKToq0B1LKTKbnrj3lqHAwIUw4Q024+eEqzErptMUAzSR4pl4OIb2pM4zHjIx5dvgsEKlpLSgsq+PnBdncKQ9pU2ebtnP1qcOwg4HYrO2vIV1VRS/jTS8fGx8NmgKZXX5pBY+6e+LDlURAw5Jzpnd9vaFGADCvmbDf5PicCKQ300lbGhB3MU6E+cyuddCnmrlsSIYmOlHBDJSYhu5UuDQCePiDaEfl7bHlKkcewZyEN7zGpXvs7okFFZA7zTjSsnH+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CH3PR11MB8416.namprd11.prod.outlook.com (2603:10b6:610:17f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.17; Wed, 13 Nov
 2024 22:50:40 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Wed, 13 Nov 2024
 22:50:39 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: [CI 7/7] drm/{i915,
 xe}: Move power_domains suspend/resume to display_power
Date: Wed, 13 Nov 2024 17:50:16 -0500
Message-ID: <20241113225016.208673-7-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241113225016.208673-1-rodrigo.vivi@intel.com>
References: <20241113225016.208673-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR04CA0230.namprd04.prod.outlook.com
 (2603:10b6:303:87::25) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CH3PR11MB8416:EE_
X-MS-Office365-Filtering-Correlation-Id: a9a4f7c7-1a5e-4dda-5ac0-08dd0435989a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?T/y/hYWnWzrjite1wEg2yy47rf+3hFoaYSNqElDb3TUepInZAOyFkfXa9QNg?=
 =?us-ascii?Q?ssJpI8vQy6zMXGJX24HAqNn/XQmziitbV1j0wFPV1aNIrqH5dZEDImFTUQ6M?=
 =?us-ascii?Q?MYrgwnfEdik3TM9TSll/5aXBVzImSTAOQT8UkJND1S/GFHzRsgJ9UJtm1UGg?=
 =?us-ascii?Q?7khaiCm6vYRipBldvCpCD23Hb4hj/QjAOmdo8b011mPj/ZN5Uoe8aBrH/UrQ?=
 =?us-ascii?Q?+Ng8nrz0fwVq4SH0RYwRrLFVLMV5q0P8tUCOv5E5pGPyPAcQS53WDc27CE0G?=
 =?us-ascii?Q?w4/AuHNbIjHkXZpa+YKkQM3rB7aB1RU/PKqFpJrIa7MjjceOsE7VrD2mULg8?=
 =?us-ascii?Q?EDXZntoWzZ1P/mBkvGodI1s0AV9aDRDfsLdnUXu0xvfU4Ku8nlzus1G9Cq4w?=
 =?us-ascii?Q?mypyKwPId19FJmdZimwvWnpEkfnAYfL8oLwOXdMcSt6r6n40ez+sunNgyn32?=
 =?us-ascii?Q?NIeczVUJU6+oQ5aHatdLYwHTPvHRl+xdts2CY/1+pSFlqYs2IL5CZrVvhiJe?=
 =?us-ascii?Q?N3x7eeOqlj7rs1hc38whpNGPudCXAsvj1HjgNRtho0c/aKDCoTrABbg5Cq6o?=
 =?us-ascii?Q?n70fmO9lL6JSF4MTZKROEjZrR9UKv4jR9P+UJOiiBlJsdyA4lKzDiD3AqoS0?=
 =?us-ascii?Q?dR1IIxLuf39BVKi1QWQRwlKiJPrEzDol9RhwLNyik4nM7gphQAic9G/Lki9e?=
 =?us-ascii?Q?IrXHxRHDavOfmjoWWy2BcjG1Ir8uSquxYCNEbpX4EU29MX8BrU99EBXyGIJ8?=
 =?us-ascii?Q?NG+n5+8wVH/lC11SkjGRl1MYmN6OnAaRnQ0jrNJULcLAGI/OGWGHfBtNBBmk?=
 =?us-ascii?Q?x0V3/ZHYbDAVz9d4sFKmC91RQJi0qtZTvsOqRRzDUN/vCZ97dMAJ20TPBkua?=
 =?us-ascii?Q?s8psKyhBB7ByO9MgHa1xWcTigIuF44pedMVYjEyRXlKQVSRLC1YqXfbSmDoS?=
 =?us-ascii?Q?tQy+kfFDpa9mT6GO/nniiPCFe5zJMBhhIJ4a087w8mDzIpcAzPi+hHeSqCif?=
 =?us-ascii?Q?8Y3ForU7hafv/97QOD8nDs5VbumEHXf7WvB8O16lUJLVM9G/rGtF1Kxi4DRX?=
 =?us-ascii?Q?L4/PjErHD7O0g+d8qNT0etB7VeQWZ83cwikIPZeFtUNRld320ZkcMtsk8+Us?=
 =?us-ascii?Q?LpZZXT/y56le5WWZ4BE/u5Z8cJxDtbIVDqAFKpA5uR6aqCBP7SISbPmiygoY?=
 =?us-ascii?Q?Yqle1lJsq4m2pUU3rHjC10atM2drUAhcgknyJUMKY0IGNR2IDTr2tdgi+A6n?=
 =?us-ascii?Q?3UNHHXDGi98bhVonelQq2mZ0QxrTd8E8IttC9MjXZ/Dbsvsu2U7VnXeKP/43?=
 =?us-ascii?Q?G5vtLkt49jcot9juKArfty+X?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?F3ZuTGWIbCUZ9qEY25pJA+kfBOoUsYfdFn4GPNJDfZXUx+wlLIwPQDF3bJK/?=
 =?us-ascii?Q?+XLvVwRTXkaLoBFdUGr1cBkq/9ndT/+HhvVKOF/YNNrBE4+cLcNYzuUzYunm?=
 =?us-ascii?Q?x+5IGxLpi4qBVjujstu5zhr+JTJ5VTJ7n6PvADPYTnj0NKBUenlQZYPT+khH?=
 =?us-ascii?Q?k+K6/FbfQ1BpsRf77tRRLlZtoSHf/V/g7bXFJ2c0KgCWvXyyj+m2BzHhTMUM?=
 =?us-ascii?Q?cIGwsnw8a4nC7/a7yt4ZsoM9CUxcFZp86Gq5fqC6hku5rwAFkrtrOjCg2QNs?=
 =?us-ascii?Q?TrYE+pkBGSa226cWUoLFalBlYoqNuNk0s580dAlCKYXxokb1EylHFjfJQn/3?=
 =?us-ascii?Q?5mkKwB0BIBZlPVNY3BAlIPWOE3n0Md2/G4frxHnom02AIyrnrmbm8wYftITk?=
 =?us-ascii?Q?ZMqgVzs+ADXRdqT1+dCJUDMqOC9/R8APaxgpm9TDoPQVbBL/G8IsL4NuVmY/?=
 =?us-ascii?Q?gqr32QR/ZcWCPF90H/ktBybmh/FP8ZZX74MkLI0nWp8gwbCoCwOlyOhwveZD?=
 =?us-ascii?Q?Vg5cv+upRaZmvAnjUMe3Sxp3BlRvn+sZO+DBOU1MKZ5j/oCDEb/Q8OOJLpg6?=
 =?us-ascii?Q?y5JBCJHCG9wuNUbU6tXJihWY23XHBmdTh41+LLdV7LQIRRLTXc6++AKPmR6U?=
 =?us-ascii?Q?qkk/KdYnwkVtF30Vx/6ccXejiXJAOu7xAgXoqpcOCrHHnPlkIGVM5QD7mx+e?=
 =?us-ascii?Q?jXoPDjOrqPIY4oss6qrFpRqEOiQ4a+gYzP7d30XV/ItYOG3N071+CoBnM6ja?=
 =?us-ascii?Q?TXiZZz7mxRdJpVe7TdXq6Z1z0WABR9lNDVbpNDjN2SOytgNTFqJDaQRqn44o?=
 =?us-ascii?Q?0Ftwv72yg9/vHNfA8jovPnedmybHTMM7o3doqDWb/CrZuynnh3q8kTnXNVWu?=
 =?us-ascii?Q?ptsPwgvLJMR3plFWee/89Rf1wu8KvpylBehXflHnNzHaQYgxA2z/jBgpeTOI?=
 =?us-ascii?Q?rMqDO7hyVSIGIk8sh4lcOHOLOwXfSHKbMWpOT4VOv+g8+nxicQny7RAQ+EXO?=
 =?us-ascii?Q?NvIl6tr4CymOk+PoM3nRuK52hrxZdu7J3xWiyZHCj/SFlB8XZRr76PDrXE3K?=
 =?us-ascii?Q?P2DHWKeprVo66NG9FQTY9i8Upk9v8vZB1FIlYlc/d0+bHVSYvSuPcw57j1U6?=
 =?us-ascii?Q?DSFkn3eDeavVQKIParrp8p+X505dZqn5Gkf5mLV0LQ+yq9N2O+bVHV5y3hmj?=
 =?us-ascii?Q?8WzQ4z6/YsofTHGUpOsgYqchmGT/JXUjbPQzv16ytkqsoxi8PjEUxXyrWYgG?=
 =?us-ascii?Q?1IKgvErUSHiRo0C2Nv4F5kPJxaJxB0x9LHpfpjqFCeiHeIS6WGO0YI9hMHYn?=
 =?us-ascii?Q?3c4yOcWSC8UWyCyXFYJuP1Km+gkBn92gVOl6IF0FEG0x1zUJRlJ86uRapBwX?=
 =?us-ascii?Q?xSf63AKgYq5W+Vyp7bmP0ZUK0wrUdBtoz3n6lItt1sWwyPF7GUeRTOQPHcHx?=
 =?us-ascii?Q?lEaVNKrlKfoYdFzHOYIY8QsoJy90fTQv2Jk+YH69zj+wcylhybRoGHFoY5N/?=
 =?us-ascii?Q?gJMR9GboolZIPAkdBqggK8NkJXJhYWfN8zi4WF51wDpSZ6Py5cj0wf6RFLDT?=
 =?us-ascii?Q?nQkPnJz6syfMmycD4j1UfKpnoKsMUbLJkaoU8B8QQsfQgE3seE2L6c7fYeZx?=
 =?us-ascii?Q?7w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a9a4f7c7-1a5e-4dda-5ac0-08dd0435989a
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Nov 2024 22:50:39.8589 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sgdmwbIfTJe7U4By0tze7hjOwCpin0Hk5pX3WUqNf8/uunKdJwp5tkIdrXTmDyrostWOl43efyslAdM4382cMA==
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

Move intel_power_domains_{suspend,resume} to inside
intel_display_power_{suspend_late, resume_early}.

With this also change the VLV suspend failure to call
the intel_display_power_resume_early. In the end, the only
function executed there for VLV is the intel_power_domains_resume.
Besides make the code more consistency give the call that was
immediately before: intel_display_power_suspend_late.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 6 +++++-
 drivers/gpu/drm/i915/display/intel_display_power.h | 2 +-
 drivers/gpu/drm/i915/i915_driver.c                 | 8 ++------
 drivers/gpu/drm/xe/display/xe_display.c            | 7 ++-----
 4 files changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 2766fd9208b0..59dee2dc0552 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -2232,10 +2232,12 @@ static void intel_power_domains_verify_state(struct drm_i915_private *i915)
 
 #endif
 
-void intel_display_power_suspend_late(struct drm_i915_private *i915)
+void intel_display_power_suspend_late(struct drm_i915_private *i915, bool s2idle)
 {
 	struct intel_display *display = &i915->display;
 
+	intel_power_domains_suspend(i915, s2idle);
+
 	if (DISPLAY_VER(i915) >= 11 || IS_GEMINILAKE(i915) ||
 	    IS_BROXTON(i915)) {
 		bxt_enable_dc9(display);
@@ -2263,6 +2265,8 @@ void intel_display_power_resume_early(struct drm_i915_private *i915)
 	/* Tweaked Wa_14010685332:cnp,icp,jsp,mcc,tgp,adp */
 	if (INTEL_PCH_TYPE(i915) >= PCH_CNP && INTEL_PCH_TYPE(i915) < PCH_DG1)
 		intel_de_rmw(i915, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, 0);
+
+	intel_power_domains_resume(i915);
 }
 
 void intel_display_power_suspend(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 3f8f84df4733..688f3b60b5c5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -176,7 +176,7 @@ void intel_power_domains_suspend(struct drm_i915_private *dev_priv, bool s2idle)
 void intel_power_domains_resume(struct drm_i915_private *dev_priv);
 void intel_power_domains_sanitize_state(struct drm_i915_private *dev_priv);
 
-void intel_display_power_suspend_late(struct drm_i915_private *i915);
+void intel_display_power_suspend_late(struct drm_i915_private *i915, bool s2idle);
 void intel_display_power_resume_early(struct drm_i915_private *i915);
 void intel_display_power_suspend(struct drm_i915_private *i915);
 void intel_display_power_resume(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 249586df9d50..dee9c6b9d6e9 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1084,14 +1084,12 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 	for_each_gt(gt, dev_priv, i)
 		intel_uncore_suspend(gt->uncore);
 
-	intel_power_domains_suspend(dev_priv, s2idle);
-
-	intel_display_power_suspend_late(dev_priv);
+	intel_display_power_suspend_late(dev_priv, s2idle);
 
 	ret = vlv_suspend_complete(dev_priv);
 	if (ret) {
 		drm_err(&dev_priv->drm, "Suspend complete failed: %d\n", ret);
-		intel_power_domains_resume(dev_priv);
+		intel_display_power_resume_early(dev_priv);
 
 		goto out;
 	}
@@ -1290,8 +1288,6 @@ static int i915_drm_resume_early(struct drm_device *dev)
 
 	intel_display_power_resume_early(dev_priv);
 
-	intel_power_domains_resume(dev_priv);
-
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	return ret;
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index c37fd3ea93fb..737f04f45cd4 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -400,12 +400,11 @@ void xe_display_pm_runtime_suspend(struct xe_device *xe)
 void xe_display_pm_suspend_late(struct xe_device *xe)
 {
 	bool s2idle = suspend_to_idle();
+
 	if (!xe->info.probe_display)
 		return;
 
-	intel_power_domains_suspend(xe, s2idle);
-
-	intel_display_power_suspend_late(xe);
+	intel_display_power_suspend_late(xe, s2idle);
 }
 
 void xe_display_pm_shutdown_late(struct xe_device *xe)
@@ -427,8 +426,6 @@ void xe_display_pm_resume_early(struct xe_device *xe)
 		return;
 
 	intel_display_power_resume_early(xe);
-
-	intel_power_domains_resume(xe);
 }
 
 static void __xe_display_pm_resume(struct xe_device *xe, bool runtime)
-- 
2.47.0

