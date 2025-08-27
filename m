Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F12EFB3789E
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Aug 2025 05:36:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEC5110E705;
	Wed, 27 Aug 2025 03:36:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WqYQj1Qm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEDE910E6FA
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Aug 2025 03:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756265783; x=1787801783;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=CqIQOtgiCqFNAW3ORJgzcbxM6zsv6rAw4zh39yI9MZU=;
 b=WqYQj1QmwKpT1yP1jLB0w+Ok2wq5R/G4nCeLeXpqylRWO9J24fBeHFxp
 w3fUqaiKVAO1LkRz6TcWSa6RZiW+X3avWKlf3fD3zSlIFaCQu3FBzak0o
 ynq+pjLhLpbQzEVIkATODyo/yDn6p8HyQ+RNYqmQXaTOUl/q3KhIv+Shf
 MIzj8AlV56m2nSaF02a4UObkJQv/+YWMpmmas+A6Gr5hDKxN4UTFxk4i+
 J1uSLqNiO0+kOSkMlems5mrxnisgDCYDGRmxVVgN5JYw1sl5NxAZmJFXb
 qV+fT/nXkYQ/slFN6PK0UGp5+aOg9bItx/r5cqvL2Lt2e7hy4yHtfIqHm w==;
X-CSE-ConnectionGUID: ETtRkJ2qTyySuQ2KkOqWbQ==
X-CSE-MsgGUID: FerytO+OSEaPv3o+gJ7vag==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="69952293"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="69952293"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 20:36:22 -0700
X-CSE-ConnectionGUID: 9BdBAQxMRbGM8mFlJ9PHlA==
X-CSE-MsgGUID: jgDqB1/aTyeMzM2dCnNH8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="169029502"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 20:36:23 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 20:36:21 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 26 Aug 2025 20:36:21 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.77)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 20:36:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lvQauddEOGIWQh0v64LLbKaOCpZ7Y+uaUujGxqaL9L8Aoc2DOqDlLjSxPeRHei95O+Hgtwvl07yJCqcIHDDzEKSsBp4C3paM2S364eLz1alO6PbfymKWII6ELz1b2GcTg62UNf7myQEOCaYwETEGCUQ9/zoqp8rmVUW0uQ82ElNDvi9JUEtitqfZKLKR6BPYsKocsXnV5rhwuvKoJpCV64IPmGVlKiGnOX6rmqEkDDvR9ulA74GW7i/mYVtfPRUTjyiEI9IWrssSAbjLszJiSwla/n1BBpju/2TWCUg8BTY9zlRGwnOghtbJwnGA8h/yDUBlM4eKjjpDeDszcyPkFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FzlopfVM22crLe2wjxI75DJHjvf7IhNVzjjxsY89AGw=;
 b=XSAw/oUQ4AIcwlJDAb5Ap1EJZ/NLSrI8nX+1ZVCHELzAYafk47SCqHCz6U/EMx2bZrIsN9/4GHf4PD810b3xLtFCMdMcJg9FUF4pSVuklIIk970aXh2HdzQqyjH3toBHCXMmdbARsZks93F4ue7Nv4UHURcAj56mR+rR89dTKHOxC7W502UHi1LLYRwYpc/YshpV/MJduOzPc/+nQyvKjsHfifb3vcHwwr1aAVAZMcZK/m+iLlbUTohVRcN0BX83Z8/fUGsh7gRG+aC/Vbi/SFsjEwmx3CVv8dD2dv5xJcpzUpA9+Vsu8pE5i20ja1tTHEshzopWk69mwTQ9m3m/qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6508.namprd11.prod.outlook.com (2603:10b6:208:38f::5)
 by IA1PR11MB6444.namprd11.prod.outlook.com (2603:10b6:208:3a7::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.14; Wed, 27 Aug
 2025 03:36:19 +0000
Received: from BL3PR11MB6508.namprd11.prod.outlook.com
 ([fe80::1a0f:84e3:d6cd:e51]) by BL3PR11MB6508.namprd11.prod.outlook.com
 ([fe80::1a0f:84e3:d6cd:e51%4]) with mapi id 15.20.9052.019; Wed, 27 Aug 2025
 03:36:18 +0000
Date: Tue, 26 Aug 2025 20:36:15 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <saurabhg.gupta@intel.com>,
 <alex.zuo@intel.com>, <john.c.harrison@intel.com>
Subject: Re: [PATCH 1/2] Revert "drm/xe: Add VM bind IOCTL error injection"
Message-ID: <aK59L+lVesWs4JNJ@lstrano-desk.jf.intel.com>
References: <20250826154352.90434-4-jonathan.cavitt@intel.com>
 <20250826154352.90434-5-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250826154352.90434-5-jonathan.cavitt@intel.com>
X-ClientProxiedBy: SJ0PR05CA0160.namprd05.prod.outlook.com
 (2603:10b6:a03:339::15) To BL3PR11MB6508.namprd11.prod.outlook.com
 (2603:10b6:208:38f::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6508:EE_|IA1PR11MB6444:EE_
X-MS-Office365-Filtering-Correlation-Id: 0998fc15-9195-4617-edb5-08dde51ae264
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?k6Q7Bo76NmWDJrHVFRtbR6FfpoRvRnzDyqK1V6RhL5Y3Nex8ScAzhwI7uQ6h?=
 =?us-ascii?Q?DOsKMSmXmA+MrNErChHyLQ66aDi+ww7FkTlAzgVIXJZPW7ejvcoBuJrud7tn?=
 =?us-ascii?Q?+dyeIRVplAbTERCkUdErEq01QPpSDM6Vwb3WzJe1yjcAYdDXxQpSlw4jfqx7?=
 =?us-ascii?Q?T6XpH66ria1OCTZFrL4Te4rWLm4uHSxzdBujLDpJ4hbWlBn7D97MBanh+rVa?=
 =?us-ascii?Q?sVn3T8N7pkBnMUxrXZtqgQHqyDg8/51cv1dDIpHw5UVtN8bWqQ5ZZ2Ur9zE7?=
 =?us-ascii?Q?lqghbQV4mxWlOZFQCj8Zcqb6vV0h92uqs6Fwnfuzplld2uB64X+Z9VYzEuAE?=
 =?us-ascii?Q?2fuvIEz5xxIxr0rtCrl2WjsZHm92I5ua/UC2/Yx1GGFK0Q0aRt10c+Nz4aGq?=
 =?us-ascii?Q?gU5b5OFkNb4IaiOxlNCvcCq5zRnrdElRkUJadVQ7kjQfNz5GSzcZ2PPEL4j7?=
 =?us-ascii?Q?JOdJSyEUsPLY2i7IOsTHFk4d++y2K4J45l4STMdRHHhfPT+A5NRXYwCyx7x4?=
 =?us-ascii?Q?9IhnSvGwxjIZUED3gdu6vEWyv0KR4E2eTr3kYBlctvViKgFrPpEQn7m6u9h9?=
 =?us-ascii?Q?4ccRhmbbiTh5nkhD6L9sAyxrtnZw6/D5okuFIIZ8yfkKdJUoPJHMRe2EzW34?=
 =?us-ascii?Q?ETmGZS1Y/expRyud4ZcG25v7DHz373SOOmlxeYwoMDdjc6TIhmxpEGZuteCI?=
 =?us-ascii?Q?m0LQ0Ot5v3vQwK+nvU+i+pmCypnsVvlnBAwJ4Cy/5kOfbVNGbJTHs27ed+Vk?=
 =?us-ascii?Q?grgD6fIKrPyJaGhFga1b3G8F4p5uA8tOW1SRSkZMho9GFO6dQVMUZzVR5czF?=
 =?us-ascii?Q?sk+vwTm/iURwX53e99VL2c758fv5GpUHLC0Vu/zj8eNyvbJgE8O2xTr/xyeV?=
 =?us-ascii?Q?Vpy8lylzLUaOSIpFsBbF7Vilme5UqjGefOwCWM7e0KVw2jWKMDhwSJcRjT0S?=
 =?us-ascii?Q?4kLPnnPEMkn+kBL7MjujVDtDzGMU+JMKOlu7D4SOhUU8Dja+p6v1pgsSeGzS?=
 =?us-ascii?Q?+OZhlQQBy5hswQatil0YMalwBT6tT04p2fi69TaGpF99fnmYUjp7kl7KJGIP?=
 =?us-ascii?Q?7b25WRHA2emZ05zcLkZdWJj7I9g9XMaaZHQhZVAdiBRs8iUidrPk+zl897qb?=
 =?us-ascii?Q?4BhDgX4m5ha3i39MYOqN5213fMVGoCWkEe3heOa6EQap6bb5AJlwvdqhzpvr?=
 =?us-ascii?Q?5PWm1KGs/JW9Rk2K+Tcb0B5e3rtX/chpS6zn3ehUCCoei0GFgmOUvDB+e4qc?=
 =?us-ascii?Q?fBfUZz8Cyc7baE2Ztho/7Dv3Hy/51C8IUKBgX1Vs2x+dqPsl4B7/Gf/QedK3?=
 =?us-ascii?Q?hu5d4XHngFhxbqGbDbC3ZDPwJrprNAMC9hai6jXMo8GUGvHcU1qZgJ9dyk68?=
 =?us-ascii?Q?BzzbCR22C5oYsTGg8c0Lw6t7JUUkpehWQjtT82tWatWhsVdXhwMtJRhPWFHT?=
 =?us-ascii?Q?LekbMdpNrnA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PuX/4UPkz50zqULzCCjmirsL5PpXN/O6h+iNALpmuPpum7jM+gyVn5ENaWlf?=
 =?us-ascii?Q?Gd4NK9gDpTKihBfcZi/7E70F0rzQp+S8wjBdfNU2wWrLR2Q1SRUiED21NJ74?=
 =?us-ascii?Q?d2zYoXLYtFoI+gB/vXJoqTccHr0Qm4IkTHDeAZ+kPZOuQ+wHAtEF4u4R8pjv?=
 =?us-ascii?Q?F17qMAFHA6wa6JvZABUbiWllkK2UNfZVBfw3/tYVjYXGmj7QIvpOs2QLp106?=
 =?us-ascii?Q?MNqqebFNCu2nOH0M8mbDqDzoEv3UkC1u8YICqtT8gI357ExxmqACfFexOQxT?=
 =?us-ascii?Q?hx9L47TzDMxDxSzUsKyFVN3y9MxwdBJLoKjQXlauhu5U4Xu5dAJVbq0y0xue?=
 =?us-ascii?Q?i8+USc13xRGerbrIbjDgi6OCowCkyxa2gubiKS274JoKVwXKaSnUNyM/NDH4?=
 =?us-ascii?Q?uTRMa3q3fYRA3m3pepbUs+rY8hitrfs+tEqzx2NovCzwcHg9rjQWp7F59Qjb?=
 =?us-ascii?Q?Q9RwcgXQjZrghqdLgpn11TXfYM0C3UKmxlp4ZNu32AOpbVp7wPclP03uK3Yb?=
 =?us-ascii?Q?GbIXZj5PSQoua+gQHyHl+YP4YwDGGELVMWVc+SixoF44c8MOt8AcWIhXnqLQ?=
 =?us-ascii?Q?gSM6CkR4/Qeuos8adqWRLaBReeYm6wrAZNOg0E7jt0fQhpPPUCDUnHay5zch?=
 =?us-ascii?Q?Tduid/dCDxYs8bQBG1BG5OfwIBbnYoYTXtSOg/qMeTWEHaIijVxLOXDbAhRw?=
 =?us-ascii?Q?rfvMRkYWwzUsJeOAtu5fuyxfFpm1vfcp3twaiHmgHnMo4YnyuLIfFxOmzA2x?=
 =?us-ascii?Q?opqlFCBD61Q3uhQBSVf8oa46eWeHVrS5fGJJS7CHfesbXCXzEF8J/A69Yz+q?=
 =?us-ascii?Q?netsiPTMGfaV0itTQ08K9OHFo4LxWLbaRKRL3CEK4YajPPuDzA5BleAMUPEZ?=
 =?us-ascii?Q?0t0OKqBdLGIVIthT6OXUgecLTuyYz5QD/3PJuQXV7pqFRASzs+Oc5nmbtPRI?=
 =?us-ascii?Q?ac/UrVdqbuK6oDjG9Oyuh8NB61/fYWfo7SgG3lFYIgfcW2Pw8tBAHrI83fXD?=
 =?us-ascii?Q?CqZRQDWj/7EgMIkf9FJl4NHXb/rPM0cwtgF8nWj7WlhAIt2Pp5P7ycQybhrO?=
 =?us-ascii?Q?kfSBLI//VlkVBq5Iy1EzmM8IfbUMq5qQuM5PBt9mFN8JYnjq0HAIZHrmJ4zQ?=
 =?us-ascii?Q?AGvMCWlOC+pORImTF9ese12Aqwav8xTF7qsy5xsdon7hvUNI6+2TwXqWWKA8?=
 =?us-ascii?Q?bjxOWDXqJ2iIbDCaPd4DP2XnTC8tdfPXSdFh9i6RZkDTBBu71V5ovmq2erfI?=
 =?us-ascii?Q?BSzjL8va2d/skZGFp2G8tRlC5HJAVWZ/fIqiuIFWhUTeppDEziknayqmuQBz?=
 =?us-ascii?Q?NFuuWl43Ua1aqxFcNsuR+XMq1LeX+MxFIUWPV71P1Fdua5xahs4jLSR3LRqt?=
 =?us-ascii?Q?oOpnWQJ6rHlnnPgiTp5dROF0thLLROrs11J/8h8AJcPEIa1PyfbUn6SuAO2n?=
 =?us-ascii?Q?emmPAtPzHcMEkHqVSbr7KaS36Rh8hnXTij2S0qYPSLAQmgKSCgfPLtJRmSfa?=
 =?us-ascii?Q?q3n/7afq7YSf6GG0WwIM0maxQkuNueYA+mjdaE2UcLdmvfSsHGQJevebvWlF?=
 =?us-ascii?Q?z9i3KxfYW2mpy6mh9Do9QPXJB0Yc8z1iCI9Y2wHLgV2CJj7EIAtIFG3nCemY?=
 =?us-ascii?Q?PQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0998fc15-9195-4617-edb5-08dde51ae264
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2025 03:36:18.8977 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lGeJW8reKHrNF3NSd1lN+DoDyj/C9CILsvEuTj8zG19o/sxEfwjNQTHuYpc27YbUcNFece9IZ+ztdaQ/FT5QnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6444
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

On Tue, Aug 26, 2025 at 03:43:54PM +0000, Jonathan Cavitt wrote:
> This reverts commit 04e9c0ce19ac68afd8be7fd54772db3b0356cf75.
> 
> Error injection should use the error injection interface, and should be
> decoupled from CONFIG_DRM_XE_DEBUG.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  drivers/gpu/drm/xe/xe_device_types.h | 12 ------------
>  drivers/gpu/drm/xe/xe_pt.c           | 12 ------------
>  drivers/gpu/drm/xe/xe_vm.c           | 23 +----------------------
>  drivers/gpu/drm/xe/xe_vm_types.h     | 14 --------------
>  4 files changed, 1 insertion(+), 60 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
> index 71fc29b3372a..42a7d910ca70 100644
> --- a/drivers/gpu/drm/xe/xe_device_types.h
> +++ b/drivers/gpu/drm/xe/xe_device_types.h
> @@ -27,10 +27,6 @@
>  #include "xe_step_types.h"
>  #include "xe_survivability_mode_types.h"
>  
> -#if IS_ENABLED(CONFIG_DRM_XE_DEBUG)
> -#define TEST_VM_OPS_ERROR
> -#endif
> -
>  struct dram_info;
>  struct intel_display;
>  struct intel_dg_nvm_dev;
> @@ -565,14 +561,6 @@ struct xe_device {
>  	/** @atomic_svm_timeslice_ms: Atomic SVM fault timeslice MS */
>  	u32 atomic_svm_timeslice_ms;
>  
> -#ifdef TEST_VM_OPS_ERROR
> -	/**
> -	 * @vm_inject_error_position: inject errors at different places in VM
> -	 * bind IOCTL based on this value
> -	 */
> -	u8 vm_inject_error_position;
> -#endif
> -
>  #if IS_ENABLED(CONFIG_TRACE_GPU_MEM)
>  	/**
>  	 * @global_total_pages: global GPU page usage tracked for gpu_mem
> diff --git a/drivers/gpu/drm/xe/xe_pt.c b/drivers/gpu/drm/xe/xe_pt.c
> index c0a70c80dff9..e7bccccdbc44 100644
> --- a/drivers/gpu/drm/xe/xe_pt.c
> +++ b/drivers/gpu/drm/xe/xe_pt.c
> @@ -2160,12 +2160,6 @@ int xe_pt_update_ops_prepare(struct xe_tile *tile, struct xe_vma_ops *vops)
>  	xe_tile_assert(tile, pt_update_ops->current_op <=
>  		       pt_update_ops->num_ops);
>  
> -#ifdef TEST_VM_OPS_ERROR
> -	if (vops->inject_error &&
> -	    vops->vm->xe->vm_inject_error_position == FORCE_OP_ERROR_PREPARE)
> -		return -ENOSPC;
> -#endif
> -
>  	return 0;
>  }
>  ALLOW_ERROR_INJECTION(xe_pt_update_ops_prepare, ERRNO);
> @@ -2396,12 +2390,6 @@ xe_pt_update_ops_run(struct xe_tile *tile, struct xe_vma_ops *vops)
>  		return dma_fence_get_stub();
>  	}
>  
> -#ifdef TEST_VM_OPS_ERROR
> -	if (vops->inject_error &&
> -	    vm->xe->vm_inject_error_position == FORCE_OP_ERROR_RUN)
> -		return ERR_PTR(-ENOSPC);
> -#endif
> -
>  	if (pt_update_ops->needs_invalidation) {
>  		ijob = xe_gt_tlb_inval_job_create(pt_update_ops->q,
>  						  tile->primary_gt,
> diff --git a/drivers/gpu/drm/xe/xe_vm.c b/drivers/gpu/drm/xe/xe_vm.c
> index e913efa2057b..1a8841116e40 100644
> --- a/drivers/gpu/drm/xe/xe_vm.c
> +++ b/drivers/gpu/drm/xe/xe_vm.c
> @@ -3218,12 +3218,6 @@ static int vm_bind_ioctl_ops_lock_and_prep(struct drm_exec *exec,
>  			return err;
>  	}
>  
> -#ifdef TEST_VM_OPS_ERROR
> -	if (vops->inject_error &&
> -	    vm->xe->vm_inject_error_position == FORCE_OP_ERROR_LOCK)
> -		return -ENOSPC;
> -#endif
> -
>  	return 0;
>  }
>  
> @@ -3467,7 +3461,7 @@ static struct dma_fence *vm_bind_ioctl_ops_execute(struct xe_vm *vm,
>  }
>  ALLOW_ERROR_INJECTION(vm_bind_ioctl_ops_execute, ERRNO);
>  
> -#define SUPPORTED_FLAGS_STUB  \
> +#define SUPPORTED_FLAGS	\
>  	(DRM_XE_VM_BIND_FLAG_READONLY | \
>  	 DRM_XE_VM_BIND_FLAG_IMMEDIATE | \
>  	 DRM_XE_VM_BIND_FLAG_NULL | \
> @@ -3475,12 +3469,6 @@ ALLOW_ERROR_INJECTION(vm_bind_ioctl_ops_execute, ERRNO);
>  	 DRM_XE_VM_BIND_FLAG_CHECK_PXP | \
>  	 DRM_XE_VM_BIND_FLAG_CPU_ADDR_MIRROR)
>  
> -#ifdef TEST_VM_OPS_ERROR
> -#define SUPPORTED_FLAGS	(SUPPORTED_FLAGS_STUB | FORCE_OP_ERROR)
> -#else
> -#define SUPPORTED_FLAGS	SUPPORTED_FLAGS_STUB
> -#endif
> -
>  #define XE_64K_PAGE_MASK 0xffffull
>  #define ALL_DRM_XE_SYNCS_FLAGS (DRM_XE_SYNCS_FLAG_WAIT_FOR_OP)
>  
> @@ -3863,15 +3851,6 @@ int xe_vm_bind_ioctl(struct drm_device *dev, void *data, struct drm_file *file)
>  		err = vm_bind_ioctl_ops_parse(vm, ops[i], &vops);
>  		if (err)
>  			goto unwind_ops;
> -
> -#ifdef TEST_VM_OPS_ERROR
> -		if (flags & FORCE_OP_ERROR) {
> -			vops.inject_error = true;
> -			vm->xe->vm_inject_error_position =
> -				(vm->xe->vm_inject_error_position + 1) %
> -				FORCE_OP_ERROR_COUNT;
> -		}
> -#endif
>  	}
>  
>  	/* Nothing to do */
> diff --git a/drivers/gpu/drm/xe/xe_vm_types.h b/drivers/gpu/drm/xe/xe_vm_types.h
> index b5108d010786..a7a9e80777f3 100644
> --- a/drivers/gpu/drm/xe/xe_vm_types.h
> +++ b/drivers/gpu/drm/xe/xe_vm_types.h
> @@ -25,16 +25,6 @@ struct xe_user_fence;
>  struct xe_vm;
>  struct xe_vm_pgtable_update_op;
>  
> -#if IS_ENABLED(CONFIG_DRM_XE_DEBUG)
> -#define TEST_VM_OPS_ERROR
> -#define FORCE_OP_ERROR	BIT(31)
> -
> -#define FORCE_OP_ERROR_LOCK	0
> -#define FORCE_OP_ERROR_PREPARE	1
> -#define FORCE_OP_ERROR_RUN	2
> -#define FORCE_OP_ERROR_COUNT	3
> -#endif
> -
>  #define XE_VMA_READ_ONLY	DRM_GPUVA_USERBITS
>  #define XE_VMA_DESTROYED	(DRM_GPUVA_USERBITS << 1)
>  #define XE_VMA_ATOMIC_PTE_BIT	(DRM_GPUVA_USERBITS << 2)
> @@ -512,10 +502,6 @@ struct xe_vma_ops {
>  #define XE_VMA_OPS_FLAG_HAS_SVM_PREFETCH BIT(0)
>  #define XE_VMA_OPS_FLAG_MADVISE          BIT(1)
>  	u32 flags;
> -#ifdef TEST_VM_OPS_ERROR
> -	/** @inject_error: inject error to test error handling */
> -	bool inject_error;
> -#endif
>  };
>  
>  #endif
> -- 
> 2.43.0
> 
