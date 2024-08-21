Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E0795917D
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 02:01:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C499010E54E;
	Wed, 21 Aug 2024 00:01:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UQbgejZX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DF7810E23E;
 Wed, 21 Aug 2024 00:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724198486; x=1755734486;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/ENv/oHf3AU4B89QH3Mg7JRhxmyd17FURXyUSktzZak=;
 b=UQbgejZXDxAqOb7unWFe34ko1Ubi1DhAm7UCV+J5gmwMx/w2er9+Vp1u
 FcQjx1xk/+Y/oaeJLdGCz7WfJ7rr/yA1LbdIgzq36NGg9Opv5OxwO6aDA
 tATIbXZPAumhB57TDbAFP3xwfNxkxovFQ8gJEUF4ZWgrja4Vn/G5ft5tg
 yWUJtsWmju/kLkUPdIzgnmPqLXo/94ZXteVwshVvAc/P04dqG8JfZ7h/w
 3Tjqvvsv+TWU2xs4emBuas0UVFfZh98nn6cm8epjGLUWT00Gs3bO+Ke8j
 LCdHtxuBryf5wf388n8kujJQ+aIuMZZfKNkUN5vzA1NBSmsTsaVjch9eU g==;
X-CSE-ConnectionGUID: D9mcboxVSMmG9QHTND57sQ==
X-CSE-MsgGUID: YONuXiFqTtuGTfe+7u/5LA==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="13122012"
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="13122012"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 17:01:26 -0700
X-CSE-ConnectionGUID: MMBmkyxdSTKuY42Jar1RyQ==
X-CSE-MsgGUID: cOnuNwBxR6ehMbjtO+E3LA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="98375813"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Aug 2024 17:01:26 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 17:01:25 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 20 Aug 2024 17:01:25 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 20 Aug 2024 17:01:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yEyTk5QkPZnMpjiYGs7cLEObmGseaYcA5Fp5IEXbfyVm0Hd9UJNbXL5sRSIuFmPhUqhtTaDmGlqFfBFEDemMdcSN4cdMXN0oAZIJULZuZtbIXH8v1u8ytZ/KXPsFTYH1uS034rYWRnjvFib/ct9c+Lonh9IgyWGf4/5Kna8s3I9LjVcC9wvSQ0+lOLmSkVbxsZEYtIrYbuDvGKbcBWNU01u/AHSVNLFmVF8QTd1AE8iahMbPATefggD8oX3qE0KoQuaKzhPkQnK/ypPcfRNfYa3SNJBEvActaFuouEzDsVLw6prAUElAsYA0/DrzXb5R28t/HFaTRbYYoLJYll05qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5DhfqIxQ7qsCUU3IHminjceun6rfKuj5p34LBU/8UoE=;
 b=YDgbtv/jvvpThPD8mXSJmFzsE+5Ej/H/lRXkpDI/ARXwHsUC3grxIjOTzRpDsTdK74dOgZOnNyktjaMtofrAa2i4ZQgq2q3akKvDVFOHCBBssPv4XTZvJJmj/4fEo6djANX8pLmr6EYJNsfpoFd14aWchwTkBOQXL7AQwx0kEGKDaroxW1CLNLvHqVTjPsVHK/CFk1XNN5+ua/+3POZrowiiU9FnqDkxYm1IcmW+NCjfqpFIIwPXAgS4O+JZR22UgIDUFbkv35YN3dP4o2+ycVM6ebNPop/2nc4CCAVCnE5eLTuV2D78CXTfu875r51FKfFJ3hLRoBrDP9NfQAtNjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH7PR11MB5864.namprd11.prod.outlook.com (2603:10b6:510:136::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Wed, 21 Aug
 2024 00:01:22 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7875.019; Wed, 21 Aug 2024
 00:01:22 +0000
Date: Tue, 20 Aug 2024 17:01:14 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 08/10] drm/i915/display: switch to display detected
 steppings
Message-ID: <20240821000114.GT5091@mdroper-desk1.amr.corp.intel.com>
References: <cover.1724180287.git.jani.nikula@intel.com>
 <ce8bb94e1a801d3c345f1810837bdd1964c3af75.1724180287.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ce8bb94e1a801d3c345f1810837bdd1964c3af75.1724180287.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR07CA0015.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::28) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH7PR11MB5864:EE_
X-MS-Office365-Filtering-Correlation-Id: 837e4c84-9542-4a13-9283-08dcc1746480
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?LMTuR5PjeZT0rGe2kIy3L2IW0p/RNFt5K/2RjFVnk5buQ+oEM8rfj2cwuwPo?=
 =?us-ascii?Q?cNniRl1NKHuLwDjE64/9UOlM9701RvV7zIyCY+pjjlFr9Rv3o0//Mtn0Yj73?=
 =?us-ascii?Q?XTxdI3UYt46UKF/++HJn2k+YHZBud/UF7FhxHYIZ4OMzZBT1oxIGxgysuzIH?=
 =?us-ascii?Q?yGvzDsqe/2OTOZPituXV477jUkQ+0kdLI23FWAWzwcvzO80gtrFZvsa7GQso?=
 =?us-ascii?Q?LPE/Q4tJA89GCBBh9PfR/VHNpk30BFTtndYwjL76Cawf2tc1NJzPLkx8NyAz?=
 =?us-ascii?Q?X64K4F9ubBcWiaOcc3f7FoF9V2jJKWu9qIrfNeO7NWfKHri+I6gRMdrPc3k7?=
 =?us-ascii?Q?Hdaue2YjWIexH2C1tJE2Y4XRtrXdT7O0XLKskBeYg+1bl+4YFocQs78Kl8Nv?=
 =?us-ascii?Q?5MFRdpIAnfYpqauQ+zkqNuNloV2KAenxc9UIaQ4l2epZr0f3fzG2jA5FFKUC?=
 =?us-ascii?Q?pkkuJL8yriyQIwikpE6x+Tym9lEhYwKAMps/DBWuMCFCEgRYtZkZ7MzeD7+J?=
 =?us-ascii?Q?k77r2dsJA2Ts+bFB9nDFdbSH/WLnUEGJDjFQ8rami170iyjHgOf68eLgi487?=
 =?us-ascii?Q?A76slb6A8TOztWHG/Mr7aQPaz3lrTAO8v5XpXTaqFsh51Clmknm17oy7YA+9?=
 =?us-ascii?Q?IadX9VSS3ZtE1ZOnKBBvA1SLzYSdoWJ5ktNsv0m6scsHOXVCgUwC2HCh/HkV?=
 =?us-ascii?Q?tNW8PqG87CANDZi5zXVzHR822lrFoQRugKBDFkxIyDptFEbydxtzcmhzXEEC?=
 =?us-ascii?Q?w9+7s3NLb57RYgKCvsHFyQ/DjsJ0ws5r5pOcF0LdsgvXbIj+7Y9q7xo+jFkS?=
 =?us-ascii?Q?ZxkYY16mq9kTSFHQ6EKc0UEDmx2d3pgS3pNQUTrXrYNKBW63OMvt3fj4to5g?=
 =?us-ascii?Q?S879fUJyA1eSvn7uwyDbi3T6gy3peBBt9oubE0C488ASR6P7W4Xv08huUt6R?=
 =?us-ascii?Q?L9N2ScO5dh3cGpYDXpvy36iSziKkaG7zPFi26JhJbNvesubFYSvPMaUqjzhu?=
 =?us-ascii?Q?D128LQrp1K7ETcLEWTvUVPRBP8e0nGbESL28+etXGt8nmVRdUO4FJBQ77yWH?=
 =?us-ascii?Q?ncVIxJ7RKgPwN78CglBs+0y/GpXuOc8JhkexPvAEnDwVve13D50UQ6bMSqRt?=
 =?us-ascii?Q?J7ZKoMv2s5B9noRoR92V2fe/LF1wBlGfjMrUaS7JanNqDp7+kv5fUOQZtbvU?=
 =?us-ascii?Q?1ygFJcv51wa8YeXUGzZ3/cgukSqCZhE72gViXGXYgYZ231nUWeOm8uslVbyF?=
 =?us-ascii?Q?6O751j7acDT40tDRKX+J/r4XAS2pJ0nN6NjVyZT8TCU4HpYh5j8SmzDELTPb?=
 =?us-ascii?Q?s7bw7R72aSfPf/bwhIGB+k23FY8cMEkgFpY3GxOrsI4kKg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3rxexBLnwyrh1yXJxww2/e9v+L4udcNWQZhOlCZjZf3XridY5eslkC3B5bjM?=
 =?us-ascii?Q?XLAGxM8YTT5Dw5mI5o/wNN6jSZhn68lMed0suEKg1yUdrQGIrLzEdHX7mbPi?=
 =?us-ascii?Q?Ny2fXFAG7HHzblrw1o3SkVC9BPysHPj2zxLSwrxmqrUnpH5P+bX2vvnFZlKm?=
 =?us-ascii?Q?ZKhTX+R1H7Kw1UjsH3tKFEXn3ktMcPMcJ3jkvFBxT40fZnjBQj69abhmn/7t?=
 =?us-ascii?Q?O4QGDUAC7JZyJCy7dl5km1hHwM/We5bhwB4pwZg86fDzquBVZ6rRN8WQI1Rk?=
 =?us-ascii?Q?PwmA+3TAnJ8bdphdWC2/OQTdD54eg8EsDEuX9KiE6Q0+v8Nv46LXW+AfgXTW?=
 =?us-ascii?Q?E02RAomWzopqdUcuL2wQjzcOCe33P40oeSbQSWhLkU+OV18f5+0AjQeu0IJU?=
 =?us-ascii?Q?8dSuc67NBMpXN64MA/wVoaKvD31jTsyKp1IMpFHVRobJdNY8DrfrIo7/jWn3?=
 =?us-ascii?Q?Af6YXgJXOOXKg7uBTyEu1WfwvQc0h3wGXUd9FNhadecAZ2xSo/Vk2tjC7ta6?=
 =?us-ascii?Q?JmG/xk+xnsXMz6DrNMZRznVX3dojxIwdeqFrjSVf1RaKS+39jjpXcJvOFRXp?=
 =?us-ascii?Q?kVqDnZ4ceK9YonYxeVPY9mLzOGVgjpsjsIm9Vak8skR6T/60E3E0uGtDZHtP?=
 =?us-ascii?Q?X2A7se0i9o2GP3RImxP3twKakr931O77obSe/MbVJIZUvrxDOwaUF96517y/?=
 =?us-ascii?Q?xI/SaRx2xIFGCLFXUz1aslLYZ3LWc+TJs+kSq7FnLEjJV4wvUe0SYDT8BDEr?=
 =?us-ascii?Q?+OUh/TNwXQvQi3/yoyxsR9hIXN5SIVeUCy/d+zfpEegZ2xXOOxdm0MuryjEa?=
 =?us-ascii?Q?HqJJdcpp9KuH+RU0hPrKJvk4TFS7LNYjyAFa4D03TJndqF46X4oA5Qlvv3hY?=
 =?us-ascii?Q?cIwHurxuhEdSX2MB2X7BvAe+cU1WWgW5gupUEkk85by55lZofP4wfaC+bFv+?=
 =?us-ascii?Q?JJSW5c3DVe3GW8JGWtDOovFh04mtn+6BtuugGW6YDOzBms+wyXhn+5qXtIyx?=
 =?us-ascii?Q?TnXt8gJfECOcGh9mEBKhHQcIY0LmrfjJglfExic3OdaVL4hwlCXqeRXpfRlI?=
 =?us-ascii?Q?XLKxft/rHKLuvsFyuTFuGwDPPkdv3tK3qM5aaTEni5QRgeQyHU/4Iafx2/ef?=
 =?us-ascii?Q?tKrhxHMyEmPB2VIT5+HsOfCFmnHNlQAZ54tOMtajlkmVu2vGdKf634knXT/I?=
 =?us-ascii?Q?TXwUq5bEfrZU4azYikS6uohNyitRNJbppAnxN1u5tkoAA6ApauZX7EocTpf+?=
 =?us-ascii?Q?NELYeTw/d7KTMW7GEQx4EhwZTinlCVKunKHDmpF1rx8hJ93wuF5Sf4DvShZ+?=
 =?us-ascii?Q?O1Idmo/W2XekhSCXUt3XyYXQ31VQ8unUrEdEp0a9q/+w0bwy4TDevvEygvK/?=
 =?us-ascii?Q?X4ggMP7tvyK65D+eU/3Zpr9liu8ICmKEDS0A6HpC6bbJNvtVrBrL+qoWKTdq?=
 =?us-ascii?Q?43W4xS514QZ1hz6huWWdGQpOPSb5SgbylEwH7vNvveP/1aQBkHcs/SQd38gS?=
 =?us-ascii?Q?PdfRyFSoOuRZ+y4rl0M8pwKYwnKmV5KLJLoQ5677InP0okaCZDVKYsalmPeD?=
 =?us-ascii?Q?jsZckFz3h8taoZ7dZME+EKZLr45MoHOWmdtUo0+OmhzuAQzefOIOxPuBv3PU?=
 =?us-ascii?Q?kA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 837e4c84-9542-4a13-9283-08dcc1746480
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2024 00:01:22.7133 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U+Qp36P8kQNcKOkDgsa7Rq2VrG5X2yoqmC+fvJ1z/SCddWFyOSPK98I7urnZPlS0TJISCiQQtjMxqYj7Zpl94gQtyioFb4NLVmwGMeOZcDw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5864
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

On Tue, Aug 20, 2024 at 10:00:41PM +0300, Jani Nikula wrote:
> Move the stepping related macros over to display. We can proceed to
> remove the compat macros from xe.
> 
> Note: Looks like we've failed to actually initialize the display
> stepping for GMD ID based platforms in the xe driver. It does get set in
> display runtime info, but until now the compat macro used
> xe->info.step.display which was not set for GMD ID.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 2 ++
>  drivers/gpu/drm/i915/display/intel_display_device.h | 6 ++++++
>  drivers/gpu/drm/i915/i915_drv.h                     | 5 -----
>  drivers/gpu/drm/i915/intel_device_info.c            | 1 -
>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h   | 5 -----
>  5 files changed, 8 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 1ac3ab3954a1..06b55ae38a44 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1711,6 +1711,8 @@ void intel_display_device_info_print(const struct intel_display_device_info *inf
>  		drm_printf(p, "display version: %u\n",
>  			   runtime->ip.ver);
>  
> +	drm_printf(p, "display stepping: %s\n", intel_step_name(runtime->step));
> +
>  #define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->name))
>  	DEV_INFO_DISPLAY_FOR_EACH_FLAG(PRINT_FLAG);
>  #undef PRINT_FLAG
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 1c75cbd68dea..611be3fa3af6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -194,6 +194,12 @@ enum intel_display_subplatform {
>  #define IS_DISPLAY_VER(i915, from, until) \
>  	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
>  
> +#define INTEL_DISPLAY_STEP(__i915) (DISPLAY_RUNTIME_INFO(__i915)->step)
> +
> +#define IS_DISPLAY_STEP(__i915, since, until) \
> +	(drm_WARN_ON(__to_intel_display(__i915)->drm, INTEL_DISPLAY_STEP(__i915) == STEP_NONE), \
> +	 INTEL_DISPLAY_STEP(__i915) >= (since) && INTEL_DISPLAY_STEP(__i915) < (until))
> +
>  struct intel_display_runtime_info {
>  	enum intel_display_platform platform;
>  	enum intel_display_subplatform subplatform;
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 94f7f6cc444c..3b1b16e71cf9 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -408,15 +408,10 @@ static inline struct intel_gt *to_gt(const struct drm_i915_private *i915)
>  
>  #define INTEL_REVID(i915)	(to_pci_dev((i915)->drm.dev)->revision)
>  
> -#define INTEL_DISPLAY_STEP(__i915) (RUNTIME_INFO(__i915)->step.display_step)
>  #define INTEL_GRAPHICS_STEP(__i915) (RUNTIME_INFO(__i915)->step.graphics_step)
>  #define INTEL_MEDIA_STEP(__i915) (RUNTIME_INFO(__i915)->step.media_step)
>  #define INTEL_BASEDIE_STEP(__i915) (RUNTIME_INFO(__i915)->step.basedie_step)
>  
> -#define IS_DISPLAY_STEP(__i915, since, until) \
> -	(drm_WARN_ON(&(__i915)->drm, INTEL_DISPLAY_STEP(__i915) == STEP_NONE), \
> -	 INTEL_DISPLAY_STEP(__i915) >= (since) && INTEL_DISPLAY_STEP(__i915) < (until))
> -
>  #define IS_GRAPHICS_STEP(__i915, since, until) \
>  	(drm_WARN_ON(&(__i915)->drm, INTEL_GRAPHICS_STEP(__i915) == STEP_NONE), \
>  	 INTEL_GRAPHICS_STEP(__i915) >= (since) && INTEL_GRAPHICS_STEP(__i915) < (until))
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index d26de37719a7..8b3e44dd504c 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -108,7 +108,6 @@ void intel_device_info_print(const struct intel_device_info *info,
>  
>  	drm_printf(p, "graphics stepping: %s\n", intel_step_name(runtime->step.graphics_step));
>  	drm_printf(p, "media stepping: %s\n", intel_step_name(runtime->step.media_step));
> -	drm_printf(p, "display stepping: %s\n", intel_step_name(runtime->step.display_step));
>  	drm_printf(p, "base die stepping: %s\n", intel_step_name(runtime->step.basedie_step));
>  
>  	drm_printf(p, "gt: %d\n", info->gt);
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> index 7492979ac3bc..97be452f003b 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -80,11 +80,6 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
>  
>  #define IS_MOBILE(xe) (xe && 0)
>  
> -#define INTEL_DISPLAY_STEP(xe) ((xe)->info.step.display)
> -
> -/* Workarounds not handled yet */
> -#define IS_DISPLAY_STEP(xe, first, last) ({u8 __step = (xe)->info.step.display; first <= __step && __step < last; })
> -
>  #define IS_LP(xe) (0)
>  #define IS_GEN9_LP(xe) (0)
>  #define IS_GEN9_BC(xe) (0)
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
