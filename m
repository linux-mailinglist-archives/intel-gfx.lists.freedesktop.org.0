Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6DD95B950
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 17:07:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2C6C10EB1E;
	Thu, 22 Aug 2024 15:07:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vk+yZCmz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13DE810EB1E
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2024 15:07:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724339244; x=1755875244;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Ytv1YK+scj7dNHpWbYyJVmd0rl3UKGIT9FeLVUJ6Z8A=;
 b=Vk+yZCmzfLj9cMiCUKEN7gAhIBV4yBhw9cXIvVVekpdQ1BP5Nwfn8eDx
 QdsVdQmvCpwPBIMUsQfrpgcIKXt1LDAQhJZn7DRMFqK7bHw3ewWQv8NGd
 /f0jVxMR23/z/DeySvpHFykkE0xXOjSR0EXjeDVqgX+Avpo+kZa3/cQx5
 QZ1bVurfEByPHt2YYIMVMbv9ve/fxH6IgZSurt6PwgPSjWsyTObmqpt2L
 V5NET2XNnwGijfEFCUS67YFJfSpoBVskK2DIOH0fseRT2GiWEErWiYudQ
 PPFrjvXWeXtiw1voewlijeVWzovawuFmvYk39WU4u+IBT53bOwwNa/rfT g==;
X-CSE-ConnectionGUID: W5ptLGoWQvmubqn6+DkCBQ==
X-CSE-MsgGUID: 6Ch+PdN0SUif1vLDTvKFpw==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="22923222"
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="22923222"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 08:07:24 -0700
X-CSE-ConnectionGUID: gUFcv2XfSxeoX3biw4Id1g==
X-CSE-MsgGUID: Iuu6d+edRCu6aNYfQdch+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="66306018"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 08:07:24 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 08:07:23 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 08:07:23 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 08:07:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ujh9ySNHfMkO4Att63YiuB0d0nHH7QpxxX3Fh/Ui7mOO9TdkMySHPc8sKZIISlaqc/VKKs7f3hFoSWwBfc1Q34eH9U9rdrqmOEyAQGG/SVPdkkXziC6yoZMf2d4f9XJ/dhc2HoenJYKv7tEebu5e14mc1fGcDDEBUI29y9o9JCXVHpftnyD7gLWboM+uJf0lHmei6vRZtg0OJJeF5as4l6eA/jGgx/TLnpZhT+5JFON7/83hWgh/2C/wWVR+5QuVwiCYNkY89/sG0kN6dhZ3saOHAr1d9Ac5fNyWhWxDEwiDtTgd18bmiJj5YQf7WO+Uf4gMq4EOb4FbDCPeMKdyXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CidNVKO5YQmJSgxOhADetf9MeU2Ige2x5yCIJr3W/XE=;
 b=ZlQGKjJbTRj3PvV/JTW9ns8U4Tzb2qKdQ4Mibxrf2QDhMWA4qLBFlubYjeasO1N59PqJoMLuh8nzi4AgEqal99uz54n/dm6hc6cpG8djcGZEglJOSX5eRjm4ny77nErYxIpCpZmWK6SNF+TMJeBpShN8IhGnjkUBfZWyJ/ViJ3dVxGcspJphexUUkleXwFWek+WS4lSIReLXcgT2bjmHp+zLFK1E/wUKvv1SmHnh5a7UD3+qJYm+BQLy51Mx5gX5GxZ6mhRPgiwubZROiKRNI6Ii1TQ6DmvrEnigR5tXuA9AYVNH1b4Eb8VfPppwDr5sGKjpVlXxYw+rC72vQP4weg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH7PR11MB6329.namprd11.prod.outlook.com (2603:10b6:510:1ff::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Thu, 22 Aug
 2024 15:07:20 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7875.019; Thu, 22 Aug 2024
 15:07:20 +0000
Date: Thu, 22 Aug 2024 08:07:16 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915: remove unused leftover basedie step code
Message-ID: <20240822150716.GL5774@mdroper-desk1.amr.corp.intel.com>
References: <20240822143946.2526425-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240822143946.2526425-1-jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR01CA0054.prod.exchangelabs.com (2603:10b6:a03:94::31)
 To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH7PR11MB6329:EE_
X-MS-Office365-Filtering-Correlation-Id: 699793fd-b559-4a7b-64a9-08dcc2bc1e70
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?xDfeLU1B/I3UeKa0DR7UyjmLAWWQKDIeoFrUdv1MXPkQFCkQQ7/bu3nRAbOu?=
 =?us-ascii?Q?/NzKttJb0k5d+VyG5VBc6rNKhYiCKnhre8LukZtpgw0J2T2lCmCuJMamyNBn?=
 =?us-ascii?Q?K9LQSWqrKZWAnKIz79NpTMKimlS8WVzxKdrhpJMudSS3ysa1xltl/oIqxn37?=
 =?us-ascii?Q?d3tz3iNa7pBcLaIz/Yg+bUFFujFCKAyfsj2VbI3GCabq5ETl20ItkT6HdRc8?=
 =?us-ascii?Q?uM4dMtencnFiSpI0DYa6ipOZsnYl4cd0Z5TC+crR9HWhj86OxHunlXn2oqh8?=
 =?us-ascii?Q?5vmGTdm66RbCWCL1QT7HFHNIhm4v6cMHzHoB2rvPZMdQ9W6Mz1F2Y/FHdBIb?=
 =?us-ascii?Q?TcV86ONi8yFcWUzBZfh8iaKTMnuLQom8MHx2IoRum96o+KzLNykXynGsOAfV?=
 =?us-ascii?Q?gWeXey1GZO4yzzc5gOGv4zFPzIGgxzibtko3plCOw+VtJLW+XOI4oC4G+HvV?=
 =?us-ascii?Q?8HRdZpqybf8JE71xpKB73zXVYHudCeUKuqo0LF/JwZwXGVCvWa3EOmlZ7Agu?=
 =?us-ascii?Q?02zv+Xsdrh9mjJmPUjFmLcUBvxsH/8I25b2yKr9DQ1tZiiF0ndVx05Vzltfz?=
 =?us-ascii?Q?7GlV3CXKbcZ8McLmY+xvUx+h37EzGLg8ltP6Y4rDHLS2tFFNMbvGtH5yvAXq?=
 =?us-ascii?Q?F66ScPLQ1ntaK1mkzlcXu01+zL7+L1rbfEnMuUWTQarDx5MYmRVlLDHFjiZn?=
 =?us-ascii?Q?RLuOHJYqCN8WfVW1+LVSsWgSpAByiIRkPF81q7v2ysQVml4zMkUf+d1UOxxS?=
 =?us-ascii?Q?PWElgfab06yc7lvl/h2viAiR/rnc0/an/EqipCtRKtLcGmC3sqr/8dJYJVZE?=
 =?us-ascii?Q?KS3J7rOIdEjH2zz5scNat8Y15R31tPqVoXjcu2V5CBcVRy//krCRuwWFpIVs?=
 =?us-ascii?Q?OToe3zPFhDqNF8Qmc1aSPoSjDwWZVQ3E8gAM1rUe4yTfE3VQcE1nexdJ7fps?=
 =?us-ascii?Q?xQBHvwCIAgeJAYHeLNHz5YZZHPEDMkNc4aDpBPUeclWYjx6WXTUAroywCc7w?=
 =?us-ascii?Q?m8przd5Dij3XdN7CCiX+LNoBJI70iEFJG/hl/R6phCRs+Bdb+tj+lf8Nk4Ab?=
 =?us-ascii?Q?xMlJWEp0RMW7Mt9JJ6QRr6AAb7BHNKF46RntSm2Cw9z8tJrTnDd9WDFtDIar?=
 =?us-ascii?Q?s+rKkrEobUwUqHJdSWm7drOQDHycrbHWR8oU1exdy1bvZqbQ+cb5oGZnP31J?=
 =?us-ascii?Q?YPQ41HlVnEdw4rHrv/SrtRoqW15OwRk+bCP0ihRbZb3k6Tt6dsSd7xqK5wWK?=
 =?us-ascii?Q?KIXTvyCUBEZrDs/yyvkK5zLB3+BJGTBwQQ6ZwfDaGXzIpn5nF1mpg8M8xU7n?=
 =?us-ascii?Q?NkfOqoI+eDTNhHOHZgNbCDifw1hh+wnbplFe6ug4SdAQRA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xuGqgq5OmZKKQJIH2OwVbVJWjbk/gfn56i1Q8/v6nROgMQ1nI4ntJvsCT3/B?=
 =?us-ascii?Q?cIyzclWGc+0fGsWbaAkLx/O/vqvB8ZVnrrhRIFVdb+QT/ZsFl6sX+8n2UXeW?=
 =?us-ascii?Q?/rwQ9Kgzrief7MbRpXUnCTkhk9ixvYIecUaGNuxTvbx3RvHmcMV+4c0TcJz7?=
 =?us-ascii?Q?dBduJVP6XLGg1UhkC6w2FO+c4jKpzAeM5jOaJPrMQtKGtlQMpqKEOg8LgqEJ?=
 =?us-ascii?Q?csZ4fxw4tHoRn4EO/fiwzNmMeVTNspGmLELGAEte4hy4UE/xr68PIWoWZYqK?=
 =?us-ascii?Q?7aV4wax6vrFOSVNUgSJ0SnaBFkANVbHZUvLi5QDZm00fcZPfuQtl9RCPjOlp?=
 =?us-ascii?Q?ttqmow7wIqsOFc9Qftw1uYprMWNUNC2ZdVcWXbEzMTQvCAkVCvC7QQDT92vM?=
 =?us-ascii?Q?0DM544cZ1j6l0mdT5YaeCLf/OMAkv5KgSWD+0rcKkAHoQcqdpu9tEaq6viYq?=
 =?us-ascii?Q?ka4FM1kXa2UwJvsLpZfIag697wmatxmCviTfZGE3ersrx1/gSOMeCyDJUgJF?=
 =?us-ascii?Q?jPVEcpsx5Z3wb0otLcH6xGGvLtmflNgAVpTSNFnaEq2uOmgprQ7OwFCzzGk+?=
 =?us-ascii?Q?mFqAQvW8ntbKdWfGcBZ9eJvXn4lQZ4QnLquCD8dUVZADjmlLIXSpqvjEgeSj?=
 =?us-ascii?Q?bCuEDrlXwtd1LZiz+QdPAyo0RrNY5sCEl/a0K6KDnk/w2/QRk29o7P/o/xA/?=
 =?us-ascii?Q?AMJqSmjBK4U+pxHoQo2t4Q2TzZmqfMWkBDvefAGd3B0+08PYkxavOFFDDroH?=
 =?us-ascii?Q?5/2wr1K/XLHYyj78c0h1odxqwDo0P41Fj7+diE4jCee/ZWwOXRXBNUvakFsl?=
 =?us-ascii?Q?kYQUZx0sAtLip4WujHETdd322rQ9KfT65kS8GEedOULV3VOqJEMd1uWCC0tk?=
 =?us-ascii?Q?00o2GVv0BTtGrosY5ebiqOIkh+1oLbnor5LoJiKRTxYhCiKsevlplcnJfmuy?=
 =?us-ascii?Q?SLZetXX6aQkvmSzRB4Odky4M/z7+yxUr6Sz6KqqJyCiEg60g8ffd3X4M5N/1?=
 =?us-ascii?Q?bz9/YdIVf4C0U3YsesqUiuq90ohOHnsHE2wGm9hlAlONwh/gpfRMxc3qSlt/?=
 =?us-ascii?Q?dBP22u0viScdiIJgdqsMfwKL7D82lElqyKSuxIBr6ZfilXTJLZZAzME9hTYy?=
 =?us-ascii?Q?MGQLevb4RgTXoV4Cfjtk2t1FrhPgcCUSTxqXxHjloM9sie44/uZOYIfst85S?=
 =?us-ascii?Q?auZatX7a+QdriNWR1MXzg+B2jnAfhga1kIjBV7eEyh8n4IIOikZVGwR/JxT/?=
 =?us-ascii?Q?tlUe9NLYOFiJSf/DlXuDVSuyjVx1THvYQyD4mNKhOlU9qIc4V8Bkueyvo5bn?=
 =?us-ascii?Q?eZgpD7GfFvLrnZEdbf9cBHWgHWt8xrIgXJXzAk/Kp/fiF9Zpd5MdRqWsMSoz?=
 =?us-ascii?Q?KTAwWzgtDLSA/46DOtnrFEEGncf8Gfo6DgVmwy51BVlTsH81In/20bIXR0uI?=
 =?us-ascii?Q?taKVDy/DBYU217XixcVSN1IajSXrfFcRA0frAS6kcfEbubAWGy9NHzqfgQ4b?=
 =?us-ascii?Q?RknSVCjqF4BprXKK6rJ0KQje9SRMgBcsrLa87WJyPDl7mi277w5+tDRzcF7M?=
 =?us-ascii?Q?nboXtQh2/uUGkHd23Np0MWWJ/bsQbYxri/tbDLJLhYRmhLDaZWdyAVj6yTAN?=
 =?us-ascii?Q?eQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 699793fd-b559-4a7b-64a9-08dcc2bc1e70
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2024 15:07:20.1440 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3QjKOjwB0yfkLxN4W8/nfFe7GJshtQiiUl8mNjD8d76M107wTgpta5T3Gp7vMLfmKHZ8TfG26NQwCQ1vOF5umy4SjbryZd7k89ZxmRLy2cg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6329
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

On Thu, Aug 22, 2024 at 05:39:46PM +0300, Jani Nikula wrote:
> The basedie step initialization as well as its last users were removed
> in commit 326e30e4624c ("drm/i915: Drop dead code for pvc"). Follow
> through with removing the unused macros and struct member and debug
> logging.
> 
> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h          | 5 -----
>  drivers/gpu/drm/i915/intel_device_info.c | 1 -
>  drivers/gpu/drm/i915/intel_step.h        | 1 -
>  3 files changed, 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 3b1b16e71cf9..eb4c33e83c7c 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -410,7 +410,6 @@ static inline struct intel_gt *to_gt(const struct drm_i915_private *i915)
>  
>  #define INTEL_GRAPHICS_STEP(__i915) (RUNTIME_INFO(__i915)->step.graphics_step)
>  #define INTEL_MEDIA_STEP(__i915) (RUNTIME_INFO(__i915)->step.media_step)
> -#define INTEL_BASEDIE_STEP(__i915) (RUNTIME_INFO(__i915)->step.basedie_step)
>  
>  #define IS_GRAPHICS_STEP(__i915, since, until) \
>  	(drm_WARN_ON(&(__i915)->drm, INTEL_GRAPHICS_STEP(__i915) == STEP_NONE), \
> @@ -420,10 +419,6 @@ static inline struct intel_gt *to_gt(const struct drm_i915_private *i915)
>  	(drm_WARN_ON(&(__i915)->drm, INTEL_MEDIA_STEP(__i915) == STEP_NONE), \
>  	 INTEL_MEDIA_STEP(__i915) >= (since) && INTEL_MEDIA_STEP(__i915) < (until))
>  
> -#define IS_BASEDIE_STEP(__i915, since, until) \
> -	(drm_WARN_ON(&(__i915)->drm, INTEL_BASEDIE_STEP(__i915) == STEP_NONE), \
> -	 INTEL_BASEDIE_STEP(__i915) >= (since) && INTEL_BASEDIE_STEP(__i915) < (until))
> -
>  static __always_inline unsigned int
>  __platform_mask_index(const struct intel_runtime_info *info,
>  		      enum intel_platform p)
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index d92b3050ac78..b485e959f064 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -108,7 +108,6 @@ void intel_device_info_print(const struct intel_device_info *info,
>  
>  	drm_printf(p, "graphics stepping: %s\n", intel_step_name(runtime->step.graphics_step));
>  	drm_printf(p, "media stepping: %s\n", intel_step_name(runtime->step.media_step));
> -	drm_printf(p, "base die stepping: %s\n", intel_step_name(runtime->step.basedie_step));
>  
>  	drm_printf(p, "gt: %d\n", info->gt);
>  	drm_printf(p, "memory-regions: 0x%x\n", info->memory_regions);
> diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
> index 83bd1190edf5..22f1d6905160 100644
> --- a/drivers/gpu/drm/i915/intel_step.h
> +++ b/drivers/gpu/drm/i915/intel_step.h
> @@ -17,7 +17,6 @@ struct intel_step_info {
>  	 */
>  	u8 graphics_step;	/* Represents the compute tile on Xe_HPC */

Looks like we should drop the comment on this line too (Xe_HPC is the
name of PVC's IP)...


Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

>  	u8 media_step;
> -	u8 basedie_step;
>  };
>  
>  #define STEP_ENUM_VAL(name)  STEP_##name,
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
