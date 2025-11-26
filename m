Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA1FC87C39
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 03:03:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 974E810E4EE;
	Wed, 26 Nov 2025 02:03:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EYwWbt4T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F08110E4EE
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Nov 2025 02:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764122617; x=1795658617;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=rdE/9BjOx3vRPXo34ato2QQAcMYcBxqSVJCqeCNT9uw=;
 b=EYwWbt4Tb9UYYQT4TXXb42/iO0OGGT7T6fpR7bHSeVDZqmiijOSIBeAJ
 JcUoa6fQY9WDR/ytoupmR8w/pEKs56sQNiHqe0/Wokn8dTLmF85P/mfnz
 cTKwjzZXM3JDpg5L3fQU11y9UoyRoxH1d7zHhYFgjBjUyWfyU10/zTvJw
 5yIMuo9ElXPPDVIgcwh7G+SfxiMtZCOBkzXqYLNX/b4XvBXPHOeguKkX0
 1YXLUyTtHmgRMZfEkTN91TFhVrSh+yjX+seATfnFJiWU4SamiyLysrNQx
 Uh8XNnQJ/CSV7St37Qfol6Z/CJpd9328pRkQSfXRkCHoPveu2eZD+rOby w==;
X-CSE-ConnectionGUID: c79tcaWTS7uIL5j63WlnUA==
X-CSE-MsgGUID: odrA2RBLTeecWnPuQ8TbLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="66098532"
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="66098532"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 18:03:36 -0800
X-CSE-ConnectionGUID: cKK5d9YAR7+ggiZxCGwsKw==
X-CSE-MsgGUID: CLUrG2W8QkyZTET7V66y8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="197281573"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 18:03:36 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 18:03:35 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 18:03:35 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.54) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 18:03:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VvY1Yw/naKG+EexVXhP9Z8hw3J0tW8zvuf9CslyBHFhy8cVe5aV+AJfA7LnIViPRnR03iUcQIF5VS1Lwqap+xcUZVuEnY2LLNOlKyPmCgxUGJqiHYT/3Kz/YcKBo4K4rzHP+rc3LX0UfvAHHvHj9WMFVPnMOUhqyDwIXVAZUe9LDm1wwWwt/NPK6G4uS7HTEakzbGXZnvk1CMKPmeGApwg67wLD4OX29/DmCrBBXcNsKsJ9rQ6wuAt24DuG42z5wzJAtcHwXGDhDrVS+CQESKzW4t0A54Ybh36KJFTActqIBpj4f7wLYDpkXwDRsYiFZajVvvm9JNbl1X4m/bvsgrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=77eJVZ1R9Y2wkPfMQu+o/A1t536ZenN5gfPBS4CjWek=;
 b=vznuzaZ3sAZMfoYL7xOGlooyf7M1NZrjSHBBc/KaCjLbCMF+B1jRJZj9Yl0iSK57ALve20TBshEoimm7D9fPoLvmXgA8XS/6YMG44NYtySRELLlLI/jFfSd89GNFPQCfR6obiV6IUfyHxbEqW4tqr5tAJ5GkYv3vzVoaVb/FHIo8p4oLtM1+ERmhNJUt2GcvAaXiwZcjNfqYCabzYovwbNuvgdq6gJay0/bWw4uD9f+c8lOvjYl7opRdbAUyGH4jQEAN0qqF/1McSadxQQR43zHZuinVh/sPhr4yqFtS1m/+21RIeBcBwdfQ7jiYwEZbnq0iqYJilgbhUkyy5cyAdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by CY5PR11MB6413.namprd11.prod.outlook.com (2603:10b6:930:37::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Wed, 26 Nov
 2025 02:03:29 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%7]) with mapi id 15.20.9343.016; Wed, 26 Nov 2025
 02:03:29 +0000
Date: Tue, 25 Nov 2025 18:03:27 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: "Kumar G, Naresh" <naresh.kumar.g@intel.com>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] fixeup! drm/xe/xe_pagefault: Fix potential uninitialized
 fence usage in xe_pagefault_handle_vma
Message-ID: <aSZf7yoIqnU09U42@lstrano-desk.jf.intel.com>
References: <20251125101841.2325554-2-naresh.kumar.g@intel.com>
 <aSWwoYwYb4OIVy1A@intel.com>
 <8e482c98-2cd3-43b2-8b2a-7af6143846be@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <8e482c98-2cd3-43b2-8b2a-7af6143846be@intel.com>
X-ClientProxiedBy: MW4PR04CA0354.namprd04.prod.outlook.com
 (2603:10b6:303:8a::29) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|CY5PR11MB6413:EE_
X-MS-Office365-Filtering-Correlation-Id: 345e5064-4362-432b-b732-08de2c8ffea5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?iKh3Dd5JxBCqmBuNMNPcuufPHbbdJC90aQFSZCj9uOljf9OhIRujylYAYHox?=
 =?us-ascii?Q?LXuHd7OWVGWcrgFVseIiqTr7ppdAbm/MM3vEXQc4SLU3sBbMEbLqjbZ2wcCR?=
 =?us-ascii?Q?qAugMTUa/cmNVMZSfhlFqj+P4Tj7MRFdD/0/t2FYGZbyZw5tkdK63U6ZPpls?=
 =?us-ascii?Q?oCNHTQiZ8jYYwfigxB2C/DXhEBAmjygpe6BOmHXyK3SaHiQE2wbrZSOxY/6d?=
 =?us-ascii?Q?+tsgS6JJKIwvWJJazSG3bBInkivVKULCMgH3Y/+n6bCg/s6k5lU1dZEIm9iS?=
 =?us-ascii?Q?fbu9ncGjmoL4L1xJuSZL8uewrS0Gp0DaFtAYcEog8cJrMl6spXtv8Lu8hfbG?=
 =?us-ascii?Q?Ulnv6/RLDawwlUltzLga8CHvQKD8K20KyCZh1KIJNHwbLXCb/DQNBJLGlVGx?=
 =?us-ascii?Q?PAaV9sriVp6jQqsLFZq9Xh+oWm4xZ1baxDJVfMErAj3mI8B9hcGe85ssmiXi?=
 =?us-ascii?Q?C9VB0txd9IeDH/cCgNlJIzudtaDCkqw1ixjCEoV5TozEGQyWr7bWcrZRIIEw?=
 =?us-ascii?Q?KsGOSv6vex1RMbtwbecqwfSDT0dN2BdeKelToqSk3aceBtLJmhwDPyofZs8l?=
 =?us-ascii?Q?ukDj5aEeGNkP+AcfjqTpzJdviLTc8rvWOh9LxuSGLJvVDw5PkALVcHefamcj?=
 =?us-ascii?Q?ekkdNJDuVUvWCIQq9M6bqWE1BvGZ49oPC/+suMKwsbvw0e+y/8n8Dx4T1Wbl?=
 =?us-ascii?Q?/1WjzGrd/lO8vn9So1WScwQwyUP57kVjCAJmjXP1TUwMcHKmCtsLUEGHCJsW?=
 =?us-ascii?Q?QpuGm68UK5A0tX5ZFKiQSun+5cGjDRI0byGPAeWurFHtG8C4q/qWD8XWj0/t?=
 =?us-ascii?Q?Y7NphjKIBE5fyZls0Zz5jNRlbAAsEMlwTULcViAXtb2wUp2cqsUja4u8Rf/K?=
 =?us-ascii?Q?/gGhRSXjmh7pEym9xjQ+6R2QZiBRJ9TaqejIM7zXZ5NVILUexn88zgX/bu4f?=
 =?us-ascii?Q?PXbLOFQaDfIksZDkzGKziBYpd9VOWlgwrJMW082QEJn5OsqaQ9Bq8sOF/nCe?=
 =?us-ascii?Q?oZlU37vxQz8p4Pwll2l5j/A77Ijw06MkqcDEL144VTB5laB/uiLspSa+KS4N?=
 =?us-ascii?Q?M1UH2vP1S+9PiGyLYLx0JElcth/BH0KzLzBi4Mx3x/xrCJ9c2dyh1L27BGDu?=
 =?us-ascii?Q?uDFOb3E/q6DpGlCSRJQ/xOYkH/YOYFwyfhsRDuOeyHbrFNQUPRrM9rAaAJbf?=
 =?us-ascii?Q?xcnEt6AZxk8PZwHOcMmlyedd1ujSSHc5IxOcVo3i9KNcY38v9u20kajlwAce?=
 =?us-ascii?Q?RN3r15Vjw60bkO62tGosun6Low22qF2O/K4SkqEXfdCnJWftNLFUNZb14TBX?=
 =?us-ascii?Q?3BFecLj88twftEdakbWNaEFfwD8au4rDOmUpCkEakA/nLV2ZVhW+pkQSihJF?=
 =?us-ascii?Q?ekC/K7oGf2kpmADGy7+rqTuQkmvLtCmgSKYcE/6ktgYZwEKFXp2/AZJeUwbn?=
 =?us-ascii?Q?I3ZgKZ5CDnFXlvykpgGBWTrk/Z0nKZUTEfFvRsbFjgD2+Wd5gih8cQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?T5R4uu++dZ0ciSCaInGgVWdFeLcnmNghDaqaDPOOoOdOCpVseLXDxTyF1yxE?=
 =?us-ascii?Q?tRuILT4qW5D3UGxY2LO+TcPMMet+dfxbysoBuHS6m3JOyBvgaM9yTXD8VQvJ?=
 =?us-ascii?Q?1DGddf0OrtXyNtuTScSt42ttIx5d24btVLjPBw3v2qYpZ/iGa4gFLEHzaS6N?=
 =?us-ascii?Q?tl2T5vDMlDSrW0O6crbmwZH3bX9gLa+7LdEN7jPxiyPnoHdwDv9QUf+Xxx9r?=
 =?us-ascii?Q?W0AJLx1Mpc5g5kdgrAMBP0rHbDhJDgILwgK7APEaTKt/2epdWkYPRYcqGJTM?=
 =?us-ascii?Q?SQApkYQBKUQQ9juquaCAc1+P7IOQdTkGvmCP76CgqwuW7v/tTZuYusJHUDaB?=
 =?us-ascii?Q?81I7NRFYz9zjVDZPrMSlYBwm/qNTKScV/38kDkGuoW9fdux0lRyZOzQaB6FL?=
 =?us-ascii?Q?I6yRWfG3cKFCaTgA+QDJ6W/cEg+lQ3+6rDl3uEQxu6W4ONk169jT9mdvF2PU?=
 =?us-ascii?Q?GZc7ZgAWQSUh0PH52AuN50hfksojEtPOS2caJsR1tn+goWA/Zxtw1euS7nOK?=
 =?us-ascii?Q?329xVGUCjLM1EHkAumjqBWVgZwcyph3SaNGLPlvSKSI6tf7NDU4vfYCKrl4e?=
 =?us-ascii?Q?TGOd9nqKiXoDYPn93dXWsUQzUMFzIiInjk7N0DUjrxsHX7PQQvyIBk/gEW0E?=
 =?us-ascii?Q?vcYzVFgjhVufHhPqKTUtRJD+aREQ19FCFmTpyeL0sSKoSU+fVG1k89nbzWn+?=
 =?us-ascii?Q?/PMPtB4go9QcbDYWj0/LUqhlvYEIlHmBY5EPLQz0UPhSX9AXAnswEJ8c0mYm?=
 =?us-ascii?Q?owOdxKVqrEwCMs+uWbtgqBNLAIxsYYeQ9cOgNoOQAUWhMZh5G9/jSb9jTWx+?=
 =?us-ascii?Q?Dnz06IjMmapCKSjuOr8svDFM0KnQYXFNRD+v/Zm/OcG4j0krMdiThXduX25X?=
 =?us-ascii?Q?OHM5uuqUaaKCQQCMUjRT5Xq865Dg83ap7wB6EtK7x1YsjcFGPkv8ybIf+BGT?=
 =?us-ascii?Q?4RkbOQZknd/9k0guB39utvywQygPGoKFkzVfuImmUV1FtpCwjsMA6cr8MUaI?=
 =?us-ascii?Q?NpfikPe4hNT9BbYAnBhO+yEhXz0TCWQ9LA7eSbo1SV9BOvgkhF5SBQj3/Fz/?=
 =?us-ascii?Q?Yc8x4YG7DEzj3xukqLnfUx/AkEjwITm6RgiOE1Cj6CDfMmaYMLfDj3yq5qrq?=
 =?us-ascii?Q?VUdXbZu7eZHKf2OF1wVc97jnIcMrPr7tXaPrUDR7LDQjqU26B4RI9uK1hnXT?=
 =?us-ascii?Q?3y2uWzAPuk0TkpHYSLyioG2SHZ0t+DyUJvDMG/8en4asTHY2lD2/3dP98fIo?=
 =?us-ascii?Q?Wbx1AIaTE2A4+uvqgMT/+/drJbPV+i22x6gCgkRrG/18DpQMXJWkmwnkyyET?=
 =?us-ascii?Q?qUjomDKfv3IFfLRof2Sg2ItmzA9lqf5Tugw/3h5niYdvySTW+EqvzMkwELmz?=
 =?us-ascii?Q?/fAyuvADcD32nEHuqXC2NvtdXO49BqNCG6peGb6obObQa9nPWiNq1p6W8+qD?=
 =?us-ascii?Q?HItJIJiu/jy4jER0SPkfNSA9X2JZnHgMhqgGeI03hEoCqAOGqWGTotqoYAI6?=
 =?us-ascii?Q?3B+Hn/GZ79XZl3tyj5FuX6OeijLvHuKwXz1X/dOnS72gToDE6CGUjCy7Mc6e?=
 =?us-ascii?Q?smg9eTO1zMQwW1uuotO1sIxGHP8uQbQk1guOHCMnunBfAcYjy1OrEcW5H7ZV?=
 =?us-ascii?Q?UQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 345e5064-4362-432b-b732-08de2c8ffea5
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 02:03:29.8566 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QwUHjMC3Nu/kCCuHZksmlxSVZGMXRGRVmdpHSZpJDJAUjwwTlHJ5aQJBzOiX+Zo4b48SGEGMVKdLfpyrvsbHXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6413
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

On Tue, Nov 25, 2025 at 08:18:37PM +0530, Kumar G, Naresh wrote:
> 
> 
> On 25-11-2025 19:05, Rodrigo Vivi wrote:
> > On Tue, Nov 25, 2025 at 03:48:42PM +0530, Nareshkumar Gollakoti wrote:
> > 
> > Hi Nareshkumar,
> > 
> > Thank you so much for the patch. I believe the change below is a good
> > addition, but the patch itself is in a bad format.
> > 
> > fixup in the commit subject is absolutely no no! This is a git indication
> > that the patch should be squashed to the one introducing the error,
> > but we are in a non-rebasing branch. So you need to provide a fix
> > as a new patch and using the proper tags indicating which patch
> > it is fixing and Cc'ing author and reviewer of the original patch.
> > 
> Hi Rodrigo,
> My appologies, will correct mentioned suggestions/feedback.but i have pushed
> this patch to this mailing list by mistake and will correct and route to the
> xe mailing list.
> 
> ignore this patch
> 
> Thanks,
> Naresh
> > In this case:
> > Fixes: fb544b844508 ("drm/xe: Implement xe_pagefault_queue_work")
> > Cc: Matthew Brost <matthew.brost@intel.com>
> > Cc: Stuart Summers <stuart.summers@intel.com>
> > 
> > > The variable "fence" should be initialized to NULL,
> > > and any usage of fence should be guarded
> > > by a check to ensure it is not NULL
> > 
> > Furthermore, the message itself here is a bit strange. It is not
> > necessarily true that it 'should' be initialized. In this case
> > it looks more like a false positive of static analysis tools,
> > but it would be good to have this protection just in case...

Yes, I looked at code, I'm guessing this is a static analysis false positive.

Matt

> > 
> > So, some rephrasing here might be good.
> > 
> > Please read the documentation on how to submit patches for the
> > proper style and messages:
> > 
> > https://www.kernel.org/doc/html/latest/process/submitting-patches.html
> > 
> > Thanks,
> > Rodrigo.
> > 
> > 
> > > 
> > > Signed-off-by: Nareshkumar Gollakoti <naresh.kumar.g@intel.com>
> > > ---
> > >   drivers/gpu/drm/xe/xe_pagefault.c | 8 +++++---
> > >   1 file changed, 5 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/xe/xe_pagefault.c b/drivers/gpu/drm/xe/xe_pagefault.c
> > > index afb06598b6e1..401f1835939b 100644
> > > --- a/drivers/gpu/drm/xe/xe_pagefault.c
> > > +++ b/drivers/gpu/drm/xe/xe_pagefault.c
> > > @@ -70,7 +70,7 @@ static int xe_pagefault_handle_vma(struct xe_gt *gt, struct xe_vma *vma,
> > >   	struct xe_tile *tile = gt_to_tile(gt);
> > >   	struct xe_validation_ctx ctx;
> > >   	struct drm_exec exec;
> > > -	struct dma_fence *fence;
> > > +	struct dma_fence *fence = NULL;
> > >   	int err, needs_vram;
> > >   	lockdep_assert_held_write(&vm->lock);
> > > @@ -122,8 +122,10 @@ static int xe_pagefault_handle_vma(struct xe_gt *gt, struct xe_vma *vma,
> > >   		}
> > >   	}
> > > -	dma_fence_wait(fence, false);
> > > -	dma_fence_put(fence);
> > > +	if (fence) {
> > > +		dma_fence_wait(fence, false);
> > > +		dma_fence_put(fence);
> > > +	}
> > >   unlock_dma_resv:
> > >   	xe_validation_ctx_fini(&ctx);
> > > -- 
> > > 2.43.0
> > > 
> 
