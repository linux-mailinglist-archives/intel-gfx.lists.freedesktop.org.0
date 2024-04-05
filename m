Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF7189A5AE
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 22:33:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 174B410E804;
	Fri,  5 Apr 2024 20:33:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J1FbLesW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2746B10E804;
 Fri,  5 Apr 2024 20:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712349202; x=1743885202;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Uyx/c9ni5u6hjuKb+AutD6IGI/G4c75HZQDrC4JIcGQ=;
 b=J1FbLesWiy5Hgb1fLw+hwqxr5UVAVQDnwye8UWhFHAifUBdafGq+7b+b
 lg2fxuV9phbmMCV8UrpD83XBShAQLLnD9hUjz4tRfoEEZnEqRbZvtktTT
 q71vImFqIHT25YVRdjYf0xwBQ4staVthmjNTNJbTMjoLMAl84XJWEZ49Q
 BQ1OOEku2l/BunlNOoCs6BmvPRzhQFUa44WyzRpQGnsy7VoqWiJZKumqh
 mGhXQmybmybnsHBdJxkensGlbM9WiEFQsQzwcZXEo6VpI51qNtIIQYT2y
 jxZRvGUwqWgGfkOoNVD0nURA+LJAp5aYWPc0nhn5XeB/q+vpQZCp57rBr Q==;
X-CSE-ConnectionGUID: Qpbh4dkZQ9e6OjjipphKnA==
X-CSE-MsgGUID: LEHjN0XgT7GFKdvu8GcjxQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="18836018"
X-IronPort-AV: E=Sophos;i="6.07,182,1708416000"; d="scan'208";a="18836018"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 13:33:22 -0700
X-CSE-ConnectionGUID: USePV4HFSp2ARl8tXD8JPA==
X-CSE-MsgGUID: QLpsPY9nS+aJkJ7Qu9oCnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,182,1708416000"; d="scan'208";a="23998972"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Apr 2024 13:33:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 13:33:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 5 Apr 2024 13:33:21 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 5 Apr 2024 13:33:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oYFK6vsT4dK46DcLPDwYD7EHlq1hrVLPBtFqWYw3w1v/x1atTSYPqywoNnkqc4vTsNqEPZwty/co9GSMNOQKTE2L4CWo8ZHkQzpC1mHmnRb9aTy0iDlJcXSYseUBNLyPwCvmqt8IEszmcJYvF1gpx3uzYYW+anISM/NhV11PB9fDXxmRPAeBhUpves96YKIu0O0tREao1qAfHu0jIofRDr0km3ZD0SyFcyxmbMCBBHi6gVrM9/W6DAYxnBUU1Lw7gUXa17+Gy/IM+QwEC/bedQG5OKFWTDh3ec7Xbc7CKBqsJH+8m+sPx/F2GTp3zYg27XgVATN4EyTKME2Dh4FFdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vo7sHTUXdPmZbJehgrk6PE6dgEcnzniTVglP5g/glz8=;
 b=aEceZVA7bru0z2loXAj3+PH9elrxjZ9R1gg1W6MvVqPOkST50c802s/CuJv2wxJcaYl7HI+wfuP8vCHz0vSR2FEkubPeFBRaZYf2PikARqb+AvCdYk/gUtxqwj4M7H3pa31m9ozblIQQ3fupyMgn3n+8NzhN6LlJn7afg2N3ksZd90Q43xa5viu/T+1UyWgO0XbWmRG5HC5wvGq0WDNlz8Gokq+8/0e+qwXhlyCBwZ2VnWIWSCx1Gm3/f3fTift1KoVQv1yPkJzcdIn+kpq4Z7y1uoDfWZ7lGH/jkEDIvbBIw3JEgPU0QdcqQ6siTQAnsmulHxyaIiZCZhOIesczLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by IA1PR11MB7918.namprd11.prod.outlook.com (2603:10b6:208:3ff::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.20; Fri, 5 Apr
 2024 20:33:19 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7452.019; Fri, 5 Apr 2024
 20:33:19 +0000
Date: Fri, 5 Apr 2024 15:33:14 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 0/6] drm/i915 and drm/xe display integration cleanups
Message-ID: <ba7nesmtctmqypdwnnjyffh7x7ibewnqpoim2cuoawqp2nolb3@mrfm3h3rxaao>
X-Patchwork-Hint: comment
References: <cover.1712345787.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <cover.1712345787.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR02CA0027.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::40) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|IA1PR11MB7918:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: S8uTKa6sFBEvMIK3IHaQIOG2hmiTie9V7ClN0yJ37XKKzLjmcZM1EUXMHQ7HtpzPz99WhqAfirEQoK26FMAJEBcm/JwPpUQNxXcboNJxs2YwzAo/t3eqbJOJRdea8A0XcVm7VYcpi7gE7khI8u1NCVCTkgGWTytJGpptvuXNDiX0qNntp/4Dnk8W/RxwB0GFQXuNhNEDCBJW0cB0VK56oAePUD0FMqomboI8ejf1V/pD+y3YpDlSnqOktQY9D9lfn4/cZqHbaaROumzLGFD1XF7iOgVWMdvoOSbt3X6K3HhSuSP6P6zW2sjj8/A/ji2B64p/cMI8jdZPNslr7wNZkDgLgad8UysPShWcpoBugf67voi1M68MmeyHMmbnvGEOx3+sT071TZB7MQtiT/EXGWkrAdRkrQ6N9Ay5vakMAZqhsWIw5ULY32LS9E3K/1ZDYQ0DGxo4zV0r7YmZ9U8gVW9WxXCm/vY0xH8Y+i5v22AaMs89IskpUxoXn31HK4HzYbZqohS1j++khXHkJeKHCTelSPsYTsVJd5n0lhNfvJs0hY+le+g22LeLRfXtAvzvpN27cWKzLyfKxya8AYqpGe6jSpChqqRGx9hKJzVAtM+jNiHXFZulhTyWW45RzizYsXYAYwJr7FyQXZ9rtseppaXH/IErM7E2Lxvp+5TLuxM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?m5I/wozGv3biUroYVRBStABCsmbSNhcpN2xLizTjleNpy179oamLgt2WrJlK?=
 =?us-ascii?Q?oUgWWarR2gYl/iZmVXrOzP0+EBk5wkkVB6l8vZnihrB8dpzLFMGukvOwG3ms?=
 =?us-ascii?Q?tqGSlKGqmkaVj6wdJYWcs7UobwfapzokQl32beCqSSOfE1rjRvegCfQS7g1p?=
 =?us-ascii?Q?CrMjJKaWaY9pQbtnXIN+Z393Sl/MhkI1hwF0PE6UDMjs2K/ihQOaoLADtlBW?=
 =?us-ascii?Q?RsKCg3RGXFampE6G/CcnaFL5LOjPOHApIqclZhRJ7W7O5kR9Gwlc47sn/D13?=
 =?us-ascii?Q?OQez+1O6KJFBkiad0Ret2k4+kTm/DXj07xg7N8udF3Q7eNCHJWsq4nWOu2PW?=
 =?us-ascii?Q?n+Y62ZAklD7DZ4nyQ2iRSD2dmPr37g7LKR/PI7wYn1HJEoqWWVrG7xFVOqgr?=
 =?us-ascii?Q?kNrJvwl8oSTGl7yWM0ru9etJq78ltbq4tna2r7ecTiIUPFH6EUpLG3rcF+YC?=
 =?us-ascii?Q?DrhFYXu+bnbOJ5C5mOeZ5VSTCF35mTPjX2JKEriNvGwq3yStVT0FgIH3do6u?=
 =?us-ascii?Q?kThtgKsCP7HSJkVD1WkZ7h/+vGScSO/0rrbCSAVLzANXrZtRxddSpAm2PGfi?=
 =?us-ascii?Q?eYu9jUyU9ionpREig2/aYoLnIIpnsU1cB8jWh0UxCMN/KPFvL19O1JsBTln9?=
 =?us-ascii?Q?AlHI7h4T3B5jaXPxGxnjMHEAHoLp6ax4KB1oOYqw5nfSfgbyhKlbP/kJbmqw?=
 =?us-ascii?Q?sC14AIK9I2ZGrdSVZWrDN8LTzjuYAaY8v0XIyHq6LBq/ozf56drTMG9+EWLz?=
 =?us-ascii?Q?VVzuhhIeG+CZHat04yrfXiCogzSba1Lvk7aRmvCQ4GSm0Mpqq4BowtMTRO9W?=
 =?us-ascii?Q?aQbjY348OweFYruJ/lVOx+gIshj49rQZXhMtGhNLm9u1a3SR7mnkwuNJocRh?=
 =?us-ascii?Q?Bd6bLX9n2O4+1bexAynF7NUhA4iYGsFp9OVn2dxq9gKvHe4tqhCQGp9kICVb?=
 =?us-ascii?Q?yyfhR2unXhjfQBQdfNldI2D5pV2lpT1wKsrnI23V4hfvypVnLrdUBbndH5QS?=
 =?us-ascii?Q?J6nqwyb9yS1LyAZULzLjBl4NlMfypdr8qdzpsoUm4u+eDXRP4qNLyymzjo7q?=
 =?us-ascii?Q?cjB/xAHgnpVqzMGcoK6OOV/Cn3HW50cyULmr/40huY5+nHlyPk6mbJHaWbko?=
 =?us-ascii?Q?OMgmHUyl4Dl5iN8Hm/t95Qz4PfALmSljZ6YSGrbHcs5hLHB+aUZ0OVGzorkw?=
 =?us-ascii?Q?5H8yOKotM8s2bvhS6srRXN7De5OLaXMkuCY2pbSfuL+a40JZ04Ke/aDf+LvA?=
 =?us-ascii?Q?YuF64MpJGP2lNSJPrK5GwLpDJgXLr19UQ1YKnlSYfnuJRqRfEYJ50msXIqDp?=
 =?us-ascii?Q?+tQU5w1GRqWwmh8agINd+qvJYCXH5LIv3fVUPz5slLpBy1I+0UbApJeusPEw?=
 =?us-ascii?Q?oACCHeGmw18LNAHgYV8UAs/QPmKsAhZFZlKa1MW7qcDaOwtrCWIiryLbmHSw?=
 =?us-ascii?Q?q1smzXjQpnV4+fEAbLCDgbbBgwOEM1H2dVYOwmD0juT5C1tulkBY1qrDiuZ4?=
 =?us-ascii?Q?cgRHGjHbRyXdbb0J+DZjABUNXWniYoE4ZzNdQtGWZg7Yhp79G1H+0PTy6/qQ?=
 =?us-ascii?Q?xZ6vd+GYsIswzVP5PUvWfCsgGKIRpaaE/qmZfQ08yBydB/oNlthpjRNDSHFy?=
 =?us-ascii?Q?+w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f772f0c-880c-4b8a-6183-08dc55afa116
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Apr 2024 20:33:19.1210 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JCPMuYnKnmOv1WaQtrDV6S18nzT/hnK7BVf6W1fvzPWtR4PMg6VPrPk0UqBzTibyEPPPHMozg1L/FsOXRm4KMfa09cxY/nUSnIjdSqrL8co=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7918
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

On Fri, Apr 05, 2024 at 10:37:37PM +0300, Jani Nikula wrote:
>Some cleanups on i915 side, and subsequent cleanups on xe side. I'd like
>to merge all of these via drm-intel-next.

For the entire series:

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

and ack on merging via drm-intel-next.

Lucas De Marchi

>
>BR,
>Jani.
>
>Jani Nikula (6):
>  drm/i915: use IS_JASPERLAKE()/IS_ELKHARTLAKE() instead of
>    IS_PLATFORM()
>  drm/i915/dmc: define firmware URL locally
>  drm/i915: move i915_fixed.h to display/intel_fixed.h
>  drm/xe/display: clean up a lot of cruft from compat i915_drv.h
>  drm/xe/display: remove compat i915_gem.h
>  drm/xe/display: clean up compat i915_vgpu.h
>
> .../drm/i915/display/intel_ddi_buf_trans.c    |  4 +--
> drivers/gpu/drm/i915/display/intel_dmc.c      |  4 ++-
> .../{i915_fixed.h => display/intel_fixed.h}   |  0
> drivers/gpu/drm/i915/display/skl_watermark.c  |  2 +-
> .../gpu/drm/xe/compat-i915-headers/i915_drv.h | 34 -------------------
> .../drm/xe/compat-i915-headers/i915_fixed.h   |  6 ----
> .../gpu/drm/xe/compat-i915-headers/i915_gem.h |  9 -----
> .../drm/xe/compat-i915-headers/i915_vgpu.h    | 26 --------------
> .../drm/xe/compat-i915-headers/intel_uc_fw.h  | 11 ------
> 9 files changed, 6 insertions(+), 90 deletions(-)
> rename drivers/gpu/drm/i915/{i915_fixed.h => display/intel_fixed.h} (100%)
> delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_fixed.h
> delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_gem.h
> delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_uc_fw.h
>
>-- 
>2.39.2
>
