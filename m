Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC308D6162
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 14:09:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24E4210E721;
	Fri, 31 May 2024 12:09:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FoI2mVUb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BF2B10E5CE;
 Fri, 31 May 2024 12:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717157368; x=1748693368;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=6zwRWS6RHZ0pn7FXaYgGyxTeOC8PBEdMar3HnotPUN8=;
 b=FoI2mVUbkCj+g3iTlRe60kLl86tQUk4PLIZ+4UzS+2GDPOM/ydU3vbY4
 XlTsYsVn5bKeZcVXDVZJg55WAMWVU+Vv6hBGs77dd3sOQrlFkbiqTmBzw
 x2FCY35H6hBEmer02ru7nW4OsBsmainfjHBiVFH5zGRNJbWjxDhHR4Kt9
 kQ8l3FPbkCt9HYo2c6ArX1RkEmyM+fb+5IwfP5rsqt4D/gksjrNZlPVPX
 SZIBXDbvavEMNevU+YJ+6sI6JqdssOHxpj3ShrTiKq/EuuEW7aWYzwU81
 NqkO9/As/3vh0F2mA5gdkSULCpoQbU//a0/Nc/WMj0nLArn9dzE0T9oNF w==;
X-CSE-ConnectionGUID: 3iZ3ic/cRLGcwGD3fTKnAA==
X-CSE-MsgGUID: IXKLRogxR9yYCEr/VgkvnQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="24325418"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="24325418"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 05:09:27 -0700
X-CSE-ConnectionGUID: de/7N0FFRvirmj6/m/+eAA==
X-CSE-MsgGUID: 2mS7nvsbQMeFFTmE5JPv5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="41061112"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 May 2024 05:09:27 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 31 May 2024 05:09:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 31 May 2024 05:09:26 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 31 May 2024 05:09:26 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 31 May 2024 05:09:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mQMAkqNgaaAiFnumuF9mj65RdE2BL7NpOIQjKt2x9Odd147+bNZQGxJGO9FOTf+t1MR5VRmC79xFphJ789UwrB2buseNc38vL7dg+QYJagAR8WthP4H6XSkDR8k1i6+gYs9hz4oROmwqyUwk9ScvcZMPustsBE2XILfZNHXbO0jUxu9bVxtkyMmeUK72xhwNlStqpGwNTQP1GFZ1o55pZmOGgzl7N8frEhaZ2fFsiUsyWqSqTbK9Ydrd5sh3u4gmN/AizBZqzLvk9MuZ1VIsqGKGV+NmhNql/UV/m9HK9gVD6lRgk4Q0+rv23mAc82X/Vy863TQ9QR327b+abVQ0NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wi8q5lHlKusm/DA4wp39/bCQY8pr5Ov89Fsibslxr4w=;
 b=iXpaAra/hNiZT/yeQGUVr3c1B0QVxrw6LMo/fEVZuTXhxGp9JmByyF429T4VYMIeRgWrm7MDVBIHfLFyirlaFyjEjTXB5zgzHr69vyWLid0oX/OH8JPkqj8a5E9pZRIIKC9hGSQTvDn0IgOVvSef21lg9bHvkb1+8Ys759zO8HCWC8hTNKac/jfdjuRDCcbwp7A8foLm/V9rx8cI08nScn1BIVfV7JfUQXMYzpcXDQt1kY0sbMVQjPMrJCN8+V8t1Fj7C5x1RKlqxNugSzbEl2Kj9FKZxWgPDYZRVirUsjKvUtepL5/fXZnzdnLQnkg1nwbYuwtzaNi1l0dC9mPa6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB8319.namprd11.prod.outlook.com (2603:10b6:806:38c::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.22; Fri, 31 May
 2024 12:09:20 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%4]) with mapi id 15.20.7633.018; Fri, 31 May 2024
 12:09:20 +0000
Date: Fri, 31 May 2024 08:09:16 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 08/10] drm/xe/display: move compat runtime pm stubs to
 the correct file
Message-ID: <Zlm97LLP_H_ATJsy@intel.com>
References: <cover.1717004739.git.jani.nikula@intel.com>
 <edefb6ef02920528eacdf01b828cfc45ce55e061.1717004739.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <edefb6ef02920528eacdf01b828cfc45ce55e061.1717004739.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY3PR04CA0017.namprd04.prod.outlook.com
 (2603:10b6:a03:217::22) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB8319:EE_
X-MS-Office365-Filtering-Correlation-Id: 950c2c7b-20b5-4ebc-3ff8-08dc816a805e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?Pwu2ywiey0pOub6Qf7et1A2dSbsyEs+8RehwE42txBJdWtPgCzbtZ7KP7G?=
 =?iso-8859-1?Q?93qfuy9xhtRue8HjDC5cymN4uvH5qxlXO7cDYGGRbdAA9GvU1BKP5XbaVD?=
 =?iso-8859-1?Q?tj4pPN6bcwoQqJ5ymE8iQ3nWyENIkjHm5y68c/DWP2qFUleyMWvpT730u2?=
 =?iso-8859-1?Q?m+4BYHwClKdEQrFuh/Sq5gWLy1a5W/BFMqohyCQUCpkU82WRxFjy7RmSc8?=
 =?iso-8859-1?Q?Sm20wm99j+TYiECZenqQ8RhslrUaXyXrlF0xaETfn0Cuw+7bu3Gkj9XZwx?=
 =?iso-8859-1?Q?ctj09mh2BD4fbyIxTFGPFHct3SWF/t6qeJ7hgvZgVhnWVm3r0seqv4xLL3?=
 =?iso-8859-1?Q?tf7kwRNtOJvmCG14jfKZq26LCdlMpHzbs+3/YQlRQU8d8dWb9uOgijnC6q?=
 =?iso-8859-1?Q?FKaSPybYtp24eXQwjgr7X30Srg9tCT7aqZjHOepFNBVdGC+kU1jTxotzTZ?=
 =?iso-8859-1?Q?cLdoCND0U8kG/IDwyeCgFF57CrWm6PpGpwLrPEPiEq/mIi7Sb7CZqpXGGC?=
 =?iso-8859-1?Q?1f8JDLoqpozAdu9h9f01OiG/RNxRTMXtwFUvAmjH0zvcLSWOq7FnDRCUak?=
 =?iso-8859-1?Q?VhHGSrgvYZ6tqu48Lh0V6r07FgQMC3usIuYbljSxBpwUHU/JGBiee2JwEc?=
 =?iso-8859-1?Q?jrzTXm0E8UresGnTm2gylAUeEdbM4MrvuVgkYuMld1ZJQk1TEs8DymIZU5?=
 =?iso-8859-1?Q?/Irvi1lc39Ltdpv9j/ybyKKs2zWaE1cUJ9qx+A2lMW/s/Lu7IFc3lpOAqS?=
 =?iso-8859-1?Q?mJm6GLzT2bhhmFMXTG/Q/jdECPkJeCR6t5j1L/gScwti+JFdj/MjjAIpiF?=
 =?iso-8859-1?Q?FZjlL1l0lSgh3aDl6GmcfGwUahXskHnVWkpXqPTsdRVtWhRgXGTTug4BV+?=
 =?iso-8859-1?Q?F5CY3xKOFWAuVFlUUU2NKl8cgnJWznvWlcUdUMi68KyhdHnIsu7Ia9p8yC?=
 =?iso-8859-1?Q?inegNauYD5TmDjHzCg/Ud5xH7TyuMKCX+zocnbpxIfruBveMXB4k481Fei?=
 =?iso-8859-1?Q?ZtjeJsDJAZicXOgYYOeleQQFVtHEfFOB5fxrQbWNX9a3NnXt7S2TVeAXdS?=
 =?iso-8859-1?Q?wRwuGB8bliKyDCas+L2Y+wC/4zmkyOemBHljum9XsTHZ1lD42UdMgCXDRC?=
 =?iso-8859-1?Q?lVO6r2oIbMoV82q87tL8w8yZ9WwWAUf0UVWt4HB1tAcw82EZfV3p2SP4q2?=
 =?iso-8859-1?Q?u5EJSY1bhQlFWfqAl1AR5BbnhD8x0ck+lxU7bm2qjhdPtSo8CzxfsR1lhN?=
 =?iso-8859-1?Q?wb4pxAO8tqWbQw+tRamfr+VxG6mN9cSQovwnOJDrHu7wbLthU4O4O/rWSr?=
 =?iso-8859-1?Q?yugc69VJxe8HLTTJhWdpRBEKXg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?Hk63cUUq5o/jzOzz0gMPb6VKPG7OhSRkUXN+19eLX9GaE4MzasNTeXiGq3?=
 =?iso-8859-1?Q?EGV7f0EJG3WSOquj2R1Qz9n5mtYo64Xl+IyusoZBC+o0DX1iS/dLra5odM?=
 =?iso-8859-1?Q?a+9ptj9YopEICNI7sCb/etJAvliuM0rDxtUbWeQXmJsEfxUocyFTcL3KLM?=
 =?iso-8859-1?Q?oyOw8RUZLy8y45bSolGbk1li6emPsMjIryJmKAOHGw0Lsxw122l/BNfz1W?=
 =?iso-8859-1?Q?+Q7hnmIyZ3ppP4TXPyAuLwLYRmA29En+zWYN+xQNkljFW5VM7OuDZATk/r?=
 =?iso-8859-1?Q?CVjT0UHiiUxuoLMDB/DUezzOt5K1nBo10FKcFFpZhYig0dYzlHA1QCo/nW?=
 =?iso-8859-1?Q?WSTaxn7qtdOjQQ0QQWlYa+ENttjUZuoKIr4H1RUMEFnLF+Z7QL5aox65sZ?=
 =?iso-8859-1?Q?bsQ1JWGhh8DHY7sLyNJdXZFOTE5Gb6/wpIglGCCfdLWFZr+BYPBTLy4rYT?=
 =?iso-8859-1?Q?CUXwr3t9dKLAbHvcSDvxdRsXH/hHUTv3CJPsusFm/YXC5BtSrJKWY5sZNg?=
 =?iso-8859-1?Q?559TsCPZ7sNrBeF+v79Y4K6tyMygJFfe1CmG+C9GjV0amMcsN7ghZ6dy7A?=
 =?iso-8859-1?Q?D/cBCN0i1Ui5cITBOpm3LFYwmDGMcjmtqqFksG9m8wLxuoRj0njWhtUZVf?=
 =?iso-8859-1?Q?Z4rirM+wQev43bl9ebXXe7z6aGWXpnB3/Njdwa7xf4R1oHPb9DOG0OdH2y?=
 =?iso-8859-1?Q?vjvbjbbZp7v3khC8rjQLNd/cIC8xjM2uM7fMcBnkkqpvMRpx3jM7G/N4d9?=
 =?iso-8859-1?Q?SVDPFfsWjWglFmlKvy9dleT55qOK2PX4aNdRpmieVA6uyZTSMr3qhJMi7D?=
 =?iso-8859-1?Q?55yqB8gHE7qQVy6PNCYwuhCTXzVpT/pEW3+JicE2OpvO2kfRQI5WGj0DX0?=
 =?iso-8859-1?Q?a5OKXc9VSv1ntkP2P5RZunHFZ1BBGSFVtmec1eNQfF4rD2mfJ7cYCGV7qJ?=
 =?iso-8859-1?Q?RJs+r9NsCXmYWuRM0hKxxig0oIZGOFD1D6gthPAj9V5RfZKf38/T21Lozg?=
 =?iso-8859-1?Q?3jSmvD7eBuYqppJs/6hAW6dJsemuqNk0Z7eBVsjY50mbyI8cfzXxQICsFx?=
 =?iso-8859-1?Q?ILen1DZCHBWsLiiODWDD2t0hZmJNdlohwN2sk0mMgLx5FeTA5KubnkZU11?=
 =?iso-8859-1?Q?RCsV7Vl783sAnS/BivTnlOY4CVlSkRvDFjg+SGgkCPbRGG1v1cgolONGtu?=
 =?iso-8859-1?Q?MOhPJkfWy1K0UlzngXXIXKP0yD/DnDNobZiOghpwFsu3SlqeRlP0n+8W13?=
 =?iso-8859-1?Q?VbZXF0eTnkyhB2KTI+7DRZFKJWnvJTgyLMvuMiLhQSw+kFZYpCokULwjfo?=
 =?iso-8859-1?Q?l6I7/O9RYmCYQorOjfg8R2KHdN/j4LkIAGWLRg4qHm1SEb0ryLXzxRcdC+?=
 =?iso-8859-1?Q?npGEzoV8NzWkltM6iOXUbHiHRD8jrSte6vbrVj6Phdi72JgjSHxwMuEs+2?=
 =?iso-8859-1?Q?JTdseyE561d6FdMzrAtatfak3lVMg2tL6y1DEdbuPs4PqSwsvCh5xOnm6g?=
 =?iso-8859-1?Q?nRgIume0ugSInAQ/R5zCwf2enUhs9RHWxmiV+i+6vbtfjLk77bLbfn+4JO?=
 =?iso-8859-1?Q?3x2pd+YKKsaeQ2m11GWp2usXpOLX1qNED1AXD1ndJRAgkmkJ1honQK9z4f?=
 =?iso-8859-1?Q?Q60xFG2auuWnW2hvedZH6pl71yYcCjbNxh?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 950c2c7b-20b5-4ebc-3ff8-08dc816a805e
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2024 12:09:20.1544 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wQpy2PUTVgDJHnOplxyAMFROsK1HUbMnOxLYI+3Lkx7C9L1MZBWM2s8JO2laCmWaxyYwLiqP0uN622py8eG8zg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8319
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

On Wed, May 29, 2024 at 08:48:12PM +0300, Jani Nikula wrote:
> Move things that belong to intel_runtime_pm.h to the correct place. Add
> missing header guards while at it.
> 

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/xe/compat-i915-headers/i915_drv.h | 48 -----------------
>  .../xe/compat-i915-headers/intel_runtime_pm.h | 51 +++++++++++++++++++
>  2 files changed, 51 insertions(+), 48 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> index 60544633ddf7..fb37da4850c5 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -14,11 +14,9 @@
>  
>  #include "soc/intel_pch.h"
>  #include "xe_device.h"
> -#include "xe_pm.h"
>  #include "i915_reg_defs.h"
>  #include "i915_utils.h"
>  #include "intel_runtime_pm.h"
> -#include <linux/pm_runtime.h>
>  
>  static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
>  {
> @@ -113,58 +111,12 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
>  
>  #define HAS_128_BYTE_Y_TILING(xe) (xe || 1)
>  
> -#include "intel_wakeref.h"
> -
> -static inline intel_wakeref_t intel_runtime_pm_get(struct xe_runtime_pm *pm)
> -{
> -	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
> -
> -	return xe_pm_runtime_resume_and_get(xe);
> -}
> -
> -static inline intel_wakeref_t intel_runtime_pm_get_if_in_use(struct xe_runtime_pm *pm)
> -{
> -	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
> -
> -	return xe_pm_runtime_get_if_in_use(xe);
> -}
> -
> -static inline intel_wakeref_t intel_runtime_pm_get_noresume(struct xe_runtime_pm *pm)
> -{
> -	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
> -
> -	xe_pm_runtime_get_noresume(xe);
> -	return true;
> -}
> -
> -static inline void intel_runtime_pm_put_unchecked(struct xe_runtime_pm *pm)
> -{
> -	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
> -
> -	xe_pm_runtime_put(xe);
> -}
> -
> -static inline void intel_runtime_pm_put(struct xe_runtime_pm *pm, intel_wakeref_t wakeref)
> -{
> -	if (wakeref)
> -		intel_runtime_pm_put_unchecked(pm);
> -}
> -
> -#define intel_runtime_pm_get_raw intel_runtime_pm_get
> -#define intel_runtime_pm_put_raw intel_runtime_pm_put
> -#define assert_rpm_wakelock_held(x) do { } while (0)
> -#define assert_rpm_raw_wakeref_held(x) do { } while (0)
> -
>  #define I915_PRIORITY_DISPLAY 0
>  struct i915_sched_attr {
>  	int priority;
>  };
>  #define i915_gem_fence_wait_priority(fence, attr) do { (void) attr; } while (0)
>  
> -#define with_intel_runtime_pm(rpm, wf) \
> -	for ((wf) = intel_runtime_pm_get(rpm); (wf); \
> -	     intel_runtime_pm_put((rpm), (wf)), (wf) = 0)
> -
>  #define pdev_to_i915 pdev_to_xe_device
>  #define RUNTIME_INFO(xe)		(&(xe)->info.i915_runtime)
>  
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
> index 89da3cc62f39..8c7b315aa8ac 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
> @@ -3,7 +3,12 @@
>   * Copyright © 2023 Intel Corporation
>   */
>  
> +#ifndef __INTEL_RUNTIME_PM_H__
> +#define __INTEL_RUNTIME_PM_H__
> +
>  #include "intel_wakeref.h"
> +#include "xe_device_types.h"
> +#include "xe_pm.h"
>  
>  #define intel_runtime_pm xe_runtime_pm
>  
> @@ -14,3 +19,49 @@ static inline void disable_rpm_wakeref_asserts(void *rpm)
>  static inline void enable_rpm_wakeref_asserts(void *rpm)
>  {
>  }
> +
> +static inline intel_wakeref_t intel_runtime_pm_get(struct xe_runtime_pm *pm)
> +{
> +	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
> +
> +	return xe_pm_runtime_resume_and_get(xe);
> +}
> +
> +static inline intel_wakeref_t intel_runtime_pm_get_if_in_use(struct xe_runtime_pm *pm)
> +{
> +	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
> +
> +	return xe_pm_runtime_get_if_in_use(xe);
> +}
> +
> +static inline intel_wakeref_t intel_runtime_pm_get_noresume(struct xe_runtime_pm *pm)
> +{
> +	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
> +
> +	xe_pm_runtime_get_noresume(xe);
> +	return true;
> +}
> +
> +static inline void intel_runtime_pm_put_unchecked(struct xe_runtime_pm *pm)
> +{
> +	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
> +
> +	xe_pm_runtime_put(xe);
> +}
> +
> +static inline void intel_runtime_pm_put(struct xe_runtime_pm *pm, intel_wakeref_t wakeref)
> +{
> +	if (wakeref)
> +		intel_runtime_pm_put_unchecked(pm);
> +}
> +
> +#define intel_runtime_pm_get_raw intel_runtime_pm_get
> +#define intel_runtime_pm_put_raw intel_runtime_pm_put
> +#define assert_rpm_wakelock_held(x) do { } while (0)
> +#define assert_rpm_raw_wakeref_held(x) do { } while (0)
> +
> +#define with_intel_runtime_pm(rpm, wf) \
> +	for ((wf) = intel_runtime_pm_get(rpm); (wf); \
> +	     intel_runtime_pm_put((rpm), (wf)), (wf) = 0)
> +
> +#endif
> -- 
> 2.39.2
> 
