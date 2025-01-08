Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A52A05E25
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 15:13:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 372B210E8BD;
	Wed,  8 Jan 2025 14:13:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AhMloiHL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 139D410E8BD
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 14:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736345623; x=1767881623;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=0/U56rxV0Tj2RaZYACm+g2DfUjzlIpa5hoS1UDyJrH8=;
 b=AhMloiHLjgByLX/hM3jDA0ZveG3DRBKkwl+OMurIomljApUsXyfnUht1
 WRpMy8jORDDsE47N5+NusJ5Onxh4yqz1IAXPmYuMWKtm5pNCbxBo0u+mG
 RJmkXezSlZgCyNK70dWU1mHjsp5lfM14vmWKT+BlJgvM8Kg2pzb9XCd5J
 OvRzdk24mrusObopf0CxSRbTBDGXQRP3O3wBawWwrRI92MkvwmBQrcLib
 TAn6vFU7+7fUmXmhAeMKU2waygKVjLQ/SUFVpiY7vykQjRh0KifrXl0gS
 +gRc0dawsqbq1lahQuYuYdfO5XjwYFYJ95X5Od00leQujyrIZLkdpT3Is Q==;
X-CSE-ConnectionGUID: 6xFwA1b1TMG6lf1+85MrOQ==
X-CSE-MsgGUID: z7xND96KSiS3dkj+MPFRDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="36456240"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="36456240"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 06:13:42 -0800
X-CSE-ConnectionGUID: k9jX1f0IQNm84rhPXqUVTQ==
X-CSE-MsgGUID: KFBtuJKgRLqzweWFwI0L7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="140447412"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2025 06:13:42 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 8 Jan 2025 06:13:42 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 8 Jan 2025 06:13:42 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 8 Jan 2025 06:13:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qL7PaninEg/U6EcX+dPXRqbuiRKGpWUSLGZSKZ5yBm8HNfFfOyBplxiXxWSOdhF7NwvHYYAZeCJWuWpluzvHx5Cr62C2nDRY0Bkp1lZdHQK9JZa6v3MbJ62Hq2IQWQElQkQ0HiuxkNXiMuhPRP3rxUN8Oeof7tYRFad2KVX6pPsNHBi3Om9fCmyOUt7TMsInFvwEcYKYZutn4ZcmRHlMMnrFpejhWxXwpBBVGQf9NWpYSGbwqVfxUnJHo/h7jeVK59vnrQgsdErbW3cAurL+B1nXPmrRfJ2gd7O1ICRMdNNufQxSsmvw1sQQsSc9CtVP8HTxptd+SGZVV8EqQTY4yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WjbY0vjIiQWnnjJ6/Zm1VuoN6taXCvnv6nIQjHWwQOk=;
 b=b7qPXPlIhr8vo/IoujDpLBDE26W98g27nlImk0SVETDtrC5E+yTtQUbVXMT4oW9Jo8aCxOCMiBUyldaBtQcE2zdDvsBkNjJQZHWWRIN2DQFj104WzEHQm2PFimFm0pOwnmGaiM8kU6KUKXyxb0mB1Pmxh6YuzX/z79Zezaagjs5BLAtbDbelY+LO0NLT6PjCLkXAfZvcxyyGV3iq/k9jshozGkPhBgcHjsTyAqTYYRyB/UyC5GTsZoY+xybkeJSh1EmSK9nhVqt+cOZz3Y563RF95FRk6nrnZg1xcw0my7oc+3PhH/1z0og9Rjf4isFx6jvTYkKy7twS7BLLF0kmJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by CH3PR11MB8442.namprd11.prod.outlook.com (2603:10b6:610:1ae::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.18; Wed, 8 Jan
 2025 14:13:25 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8314.015; Wed, 8 Jan 2025
 14:13:25 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 1/3] drm/i915: Increase the timeout of the spinners
Date: Wed, 8 Jan 2025 09:13:15 -0500
Message-ID: <20250108141318.63823-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250108141318.63823-1-rodrigo.vivi@intel.com>
References: <20250108141318.63823-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR04CA0152.namprd04.prod.outlook.com
 (2603:10b6:303:85::7) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|CH3PR11MB8442:EE_
X-MS-Office365-Filtering-Correlation-Id: 15041086-5ded-4d65-daca-08dd2fee9ce2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?86eQ5dNFNWdNYLZsRdRZv+Vn+irCVQqasnAl6dNOhk4U99lEHZbgAhj+2PFa?=
 =?us-ascii?Q?DTMVMKYmy1/lIgp1rJPbUDVzOIx71FkGg2xodzsk/EXDTCO1JH40aDGNVqDt?=
 =?us-ascii?Q?Xnudbcd1iFNmB3LXjq5UYAf3GoTx2o0CM6HT6F3TiPYV9xHHZgD1JaxNXHHV?=
 =?us-ascii?Q?PwBvLgv790TYcKD7blitSzcXjvNuETcJwfk38/g0vMK18++ppd67a73h6pRx?=
 =?us-ascii?Q?h69RDZjIB+UmgCIbvcpj1zlTyirK7RMSDkouzDAWHJwIUzpyaOqSh46T2K6T?=
 =?us-ascii?Q?3FCTeeD+B6BTAB1zN12D7KQFU+f/qqDNeUrsF16+7TZrk0D5+fP37VVEjCCv?=
 =?us-ascii?Q?c/8Q2+WckpmmJ80Os8Ez/3jvO7ckPAcgJwbFFw09tnj8NfLnQ0egt4xRHP7d?=
 =?us-ascii?Q?zNxvEkiWe4Dsx5NjYUxiq4JRcKfx08Wy+SbCQSlbZd3cdXhLidO+WeTdOT4K?=
 =?us-ascii?Q?JZXDk13KnqpweMokv8QlWbCYznJjPUKsJ68rylqUDUrAVlD3VXO4J/cDqyON?=
 =?us-ascii?Q?E6sr374aULQmKv87muArCQmHUY/QfcGmqwo/kfgK61jUP1uJNA04KpuZA5e8?=
 =?us-ascii?Q?FEYoy86FJXXIEEElDl7IGa6XRQkJ2l0a1O8jQwDiiosgLjXhcXn8OTpjknnp?=
 =?us-ascii?Q?FZC4HnQ87pIwHTT5Y5MNzf3msSLD8ZbhuiKl913/27Sy9FVibd89N8zzxeM7?=
 =?us-ascii?Q?uCNPJhASu+C6EpsJ520SMw3eZducy+ir969C142h+GclCSc/SQ/1nNwTZnci?=
 =?us-ascii?Q?WaP3iVbv3Ly/n7VLb8uxYLra8ZHZHLwizs9Q5+AOmx8Mn/RnDoxeyWXwtXxq?=
 =?us-ascii?Q?2TXB3X47l4YMjbDPKeRGBcMdxoGxsDqgH5OSoLr1yqaL8n71OzMAg6Vsl2Gv?=
 =?us-ascii?Q?TbRGLQA0rPbl/bhtnYdZ03+PZOL8g/n7CXV3hhF5p3b8TwfAApDPzLfZ8fCb?=
 =?us-ascii?Q?oFc8poVsfrvYT3Awvd2cvDf/iZ+QWCoFC6CthNAx34yErdBS6Dk42sxfkuPe?=
 =?us-ascii?Q?X2li9WDssrhvDrvrWNec4+s5F5KqZv1H/KCJjxHRHKgyMNfz6X+5FzY4Yf72?=
 =?us-ascii?Q?irKCydQto71PWUs8zQKHLJiedtOIobCYXp9tAZXS1+VT1EmOSTo3TNECpn4Q?=
 =?us-ascii?Q?2ALuIFmqDmxWgEr8qkzkBmf05DIEgXZZKiWrrsUUe0piBSf55gVIsn5oHZkT?=
 =?us-ascii?Q?HsvmPf8GhbUVWIGmAVyjAKqkuqT0Reaw5PX+oOgvAdfv4I4RWjg2sqp4Uz3O?=
 =?us-ascii?Q?AGbxHCUUkaqoySDaGBXJeb89iXQCRNWi91B79aBn+F0z/XjIKwXesDG+rgm7?=
 =?us-ascii?Q?G1+yNiIZ1BuiaNXT2s943LbMwYI/rQaO2y2tLCpYdzH7ovi/yitLkFHhb7zo?=
 =?us-ascii?Q?36ZWmYYeOgBTMzPIAKXWkwIcCttU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MinHy2ADogKdpgiXZM1NxjH9G0m4pu0XxUKtHZvOe3UbDViwUuAscDmQGI35?=
 =?us-ascii?Q?etrhSBG+KClgDNHW/NoGnd5stVUvnBgxo1oZF6Q1AfNWCBsA2kbCehyx0j5Q?=
 =?us-ascii?Q?nDZoMazyyrAAF5KZE/e10Vfdh2ADtCV+HnvbcDtN87YOqPsk1lYfXN9IB/MV?=
 =?us-ascii?Q?7W02odRiv5Cmf4s4PKxcEnfWuQ9TOpZtNCz+z6vy7/AmRPhpgenl1tnNgd52?=
 =?us-ascii?Q?q8Kqy+AJ+ll7M1kHkNGgZ/QwcaCz/CN02BNvjyJR1iYD7M+zTyRlMxO8qcLP?=
 =?us-ascii?Q?+dbJHAS57mS5XgQF6KqivKoGZnTscNIrYi8xsUuKaD6VDJvqn+76kq3VZDW6?=
 =?us-ascii?Q?wn4V4zV0lv4zAaP5eUf9iH3rFzP2U+8rh4HYDi1H+396rpgtaI8eW4lbrkIQ?=
 =?us-ascii?Q?ySfCF6CtZxlP78PPcsPnN3FxcQiHkCsghEDjh81unZrUkPsTvEzoyICAc3EO?=
 =?us-ascii?Q?c69xTUuMGAkxFodsUYd2pNGEFwWQIaoyJPaFLNeIzvdoz2wJ0xKT9CG/dUcP?=
 =?us-ascii?Q?fIWtjOlqTk/yI6YfoEQWnBXHjk8Y4E8+eSmJrsDcZhIJbAMDn2OnQcgnoghz?=
 =?us-ascii?Q?sCC7V7kebecUMOvCxrVcs+lx5bgSMZoVOjdEB0iMSw2L5jYNrDb3o2q+HY34?=
 =?us-ascii?Q?4esunfaU0l1ZGEMkmZw+Qm+F81l7lDfn1Hh0Csnc+eVmusCrGxKEJU6GXaIP?=
 =?us-ascii?Q?ej8flytJFqoq7fr6ECkGk4loY60YrG1AtQ7ZNoWiHw8YaI4oy+rEBmZKrwFc?=
 =?us-ascii?Q?Lm0VRBuNFFLhLeDdTHmcayu5mAbkv+JddlyfXQILAQC86r4au4XPyS20qy2J?=
 =?us-ascii?Q?jW5NUUE/620WIQ8Zn8ducqlWNV30oz4qBV+ZRcY7JZq83o8x7dInpZv3hsFw?=
 =?us-ascii?Q?5y+D5hOLRmlmIAcCc4VAF4cIMcUwMxdk0wg1zYPs2fRqgtmeoTgdj6uEiHiz?=
 =?us-ascii?Q?ww6X10fzY9MJPqrkDIOj+ZcgefSJmKf3up96kCX5AMAVsFJ/OfFPE6wx9dJh?=
 =?us-ascii?Q?dJrn3nvgrMPUiGY1dpATf3aZNzNKe2TMEGKV7Tj79RjJcRyuFm/mN4gO0pmV?=
 =?us-ascii?Q?gUagTionDPP1yRJMoP6gwOgFity8nempChGDzh9m4+S5I1OQLtepxvD/1tp8?=
 =?us-ascii?Q?50fqtB1Jln9VbeuwyuFuJgnuAqc/NuTM9/UitfSEod/X3TDOoLoRT3ojJUi2?=
 =?us-ascii?Q?LLH7QOFe5ucNm6CfRXie1ypH9cmr8uryTHQTZZ8jy43XF/t62DTb3RrfWGdH?=
 =?us-ascii?Q?pxEjGokZikO67dCBp251MdVrhoyXZvLb3TlXVF/Sjn9z1Rd17ou4FRt/v5GX?=
 =?us-ascii?Q?CkKMmYLYM6YNt8l4mSofCdeqCc6JU9/8CHzMcTy4e5NA8u2N9ElzCFP7ULdy?=
 =?us-ascii?Q?YMAWBV3fg7LFGvYuFeysUiCBFvzT9m3+zxxA0/wG68kv1Gv+IboSfD0fS93i?=
 =?us-ascii?Q?7czKrRmgjziqaDo0IN3kXBssX+pld/ZLPFep5O3WC0UN7ihS2OzQIhW7CQLJ?=
 =?us-ascii?Q?vET58HPpBkhybVp8UQvKyPiQp1HN4a86xbp+vTTFOdIZBFQBuSBtszscyEMi?=
 =?us-ascii?Q?l22SCfG7uN4KTS0Hl844S5ssoWoExrImJ/2Uaz4C6IoneL1QLM10GImmiM/n?=
 =?us-ascii?Q?ow=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 15041086-5ded-4d65-daca-08dd2fee9ce2
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2025 14:13:24.9945 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: saoCSG2ikGIE3Pj6KH0pAwxleXazl+RwI/hEt/QTk+YD+/nDS0p8eRgGMK+QtHk9vcvErLbjK7iGFRHsziwJ+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8442
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

Although in most of the cases it will be a lot faster, there are some
rare cases in a few platforms where this can result in a timeout,
specially when we enable the GPU-CPU balancing in GuC SLPC.
The wait by itself consumes CPU and the GPU workload is small enough,
so the priority is given to the CPU and we can expect some delays
here. This number was a random picked number when reducing
it on commit d4b02a4c613e ("drm/i915/selftests: Trim execlists
runtime") in preparation for some scheduler improvements.
Let's move it back up.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/selftests/igt_spinner.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
index 8c3e1f20e5a1..bb757b922ad9 100644
--- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
+++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
@@ -260,5 +260,5 @@ bool igt_wait_for_spinner(struct igt_spinner *spin, struct i915_request *rq)
 			     100) &&
 		 wait_for(i915_seqno_passed(hws_seqno(spin, rq),
 					    rq->fence.seqno),
-			  50));
+			  1000));
 }
-- 
2.47.1

