Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7428CDA0F
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 20:37:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7D8D89FEA;
	Thu, 23 May 2024 18:37:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uxqyzwfm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CA488825B;
 Thu, 23 May 2024 18:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716489467; x=1748025467;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=tyXwRq4ebSYu7CXhMkxpw+Xynm6YOjWJgFPSqkG8Vm0=;
 b=Uxqyzwfm0fhNZ5NJZCFQHpHvQaZ6wloR+LVCEzl+AmyOVLV1HxygUjab
 GEzIdWVHOBBbFg+0f+qPTJRnjSz6yDNCfeITQ9eBpKn65EMI62KOG7en7
 T250simKJWD5PrKGuBEdiQugSySwSAbLUPNbdDUq74akVqGgn6QoLGxY4
 iZeJy7emYun5kerghmu/W+49IMPpOZPWLOxdhXKFyALWtydif4nJSGh/o
 MNLKAS1UWi44yRNthPn+ZNrjUSAomQ9TQ4mhSpnepCQ0WSSl9CrOeDZe+
 E7TRbidhyXzYnzxqjTLsKJ311/McbMk9siGaCFdUuVNXUXoSdYQ3csVfT Q==;
X-CSE-ConnectionGUID: dX95lE6uQYyMSgBEF3ll4w==
X-CSE-MsgGUID: thReC3kpQyKR/83rTpEr0A==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="13009691"
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="13009691"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 11:37:47 -0700
X-CSE-ConnectionGUID: 8vv2kn0NSKimXxx6sGmOAw==
X-CSE-MsgGUID: avJQJUHETw6t+QPexPwBUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="33881174"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 May 2024 11:37:47 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 11:37:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 23 May 2024 11:37:46 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 23 May 2024 11:37:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GVR61ZnpxIoZ0fQNpv2I3vBJD/dxuH4LDb4YanqODCGMlg18duqRKlUNLDnEtbjstL1ZyzLjM52C+DZcbhG+d0COI1ltaAeIXhRfu9eau0mDTDxtD8f/RCRnN6e1ZXo3XeWz0bdFJftH9yyndEha9Y+96z/oxhuwCYM/W8xAUoab0UqVXpmFLdZMYSfpcPnVgRno3xtNVb00bpUK1bFjt/mIvTzcsEr9bRpGyjmcDX/oQ+XP7QdxKWtZBYQ5bwYbKQ5ORaZnVDGVDxOjgBUGkBPjCbIZCjFHQ9ASjk0hmEYxZJb9UgTpC2RZO63/cWvPW0XHVvFSb8pCQSXXamqOyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lFjhjNYvoFeV6eIxn0IITmcvf8tmT+XyaBDAs7qVtMg=;
 b=VLCz/II1dgwEUMyDSPFTlyMEpuNmxNpo3Cy3XylHcJBzmjVF01zIJt0q17OPYjP/laOWpRdV04psN4quN5sNAaXFixxerZhqnNB1bHiLN+I5Nw04oftPqcipZqyqYD3gUdV3anrbAlrghu2QEQ9F83cIwvusmu3msDZhNvaW4bZG/j3h5Tnu2WRa518qDc/KXMuH/IPFuISfIeBRNU4+s0e2U5LWA0My0WfujoUreJLxYVrgwkyEmTo6yK64NkPdTNvw/PUTG213rpg9C/FnJZS6OaeGUMxUSmLgOe9kNzoMEuJ9N3y4aeQr4n+bZk8f75hVn/8oWk/6xD+ZsBA26g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS0PR11MB6445.namprd11.prod.outlook.com (2603:10b6:8:c6::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.35; Thu, 23 May
 2024 18:37:39 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7587.035; Thu, 23 May 2024
 18:37:39 +0000
Date: Thu, 23 May 2024 14:37:36 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 09/10] drm/i915/display: add support for subplatforms
Message-ID: <Zk-M8Enoc7MjT67V@intel.com>
References: <cover.1716399081.git.jani.nikula@intel.com>
 <8c04e32648395c0b745bc31a1edd4ef6f574bb70.1716399081.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <8c04e32648395c0b745bc31a1edd4ef6f574bb70.1716399081.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR11CA0055.namprd11.prod.outlook.com
 (2603:10b6:a03:80::32) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB6445:EE_
X-MS-Office365-Filtering-Correlation-Id: 3172af3d-c66e-48cb-6382-08dc7b576c67
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?/Glb3rR3YXe4vBGOgr+8MJNf1DbgGcD8l2O/j9vXdcYd8IdmsfHkHDuT4hF+?=
 =?us-ascii?Q?L0wvstyBTcwmSKUIPN9rXMAuV9DykkpxN9nuCC4wfQg9R2hjfvT7Wx50R+tz?=
 =?us-ascii?Q?gTlBrO1N37oWM14m/ZSN/phohio1xjEeqlLM4VnYY3HJQm8pT2Pb2z8Lh+bU?=
 =?us-ascii?Q?huoEFP4qoKXTS45wmZkWAefUMsgxGvnLiloTkpD9lvesCtmBv63BYJ/bS831?=
 =?us-ascii?Q?ERQ+t8pJjMLyklvjc8vmN8tw92avau8wQfgfqTUT6zWA69yJC3AG5sSoLSSv?=
 =?us-ascii?Q?G80XK9Kg+Nm1meJoyxZnyWNZL0ik8YJAM8fG59kyhBmcmojI4OB68XLcOI13?=
 =?us-ascii?Q?4VxbOxrhSO/YQcPsbZ2QKEsAKT5fwuOwja5fTsf7HSr2Gnhef7K39GmSGAhx?=
 =?us-ascii?Q?OreTFQl5xhJb31bcAvrjIFmfZZjdVhIstVhKpVSPFNp5JkJjlQ/m1YeIdUWl?=
 =?us-ascii?Q?U+uohupccBocMZzfqZ8lmgiiFH8kSskZWhrV/ZW9SDjqiUhKYqahfzgoyNs0?=
 =?us-ascii?Q?OaF/wFa61Dsc/UCtTpibH6ANOEjyYA53rqpm239aAlQISqSwZn4xF8KQ1696?=
 =?us-ascii?Q?fJ031t8rypBRPckXM5+UVq8RqFxIeOT5hyTW9v7Z7yEvrZ6H4Is95MYZMyxs?=
 =?us-ascii?Q?jSPE5kwy7Q5kbaWg9yIEPRa0GloUO7aZmOFwXvvFxb0tXpIiapC/oVs8sPTe?=
 =?us-ascii?Q?z3BDsFA1Tmq0/GwnOp6WriInIB4oK7mruunnF95pXB9hZCWbwDJBNK7e25OY?=
 =?us-ascii?Q?/64GnsaSX0b4bmzTP8nuuf8lSBnePxuJB2A/DBvrIzgdODtdyP1hD0sAFFZu?=
 =?us-ascii?Q?HRXL2sBmIRxxdiELbM9eLSkQBKhQ/I95bC4v3wU8ugdVXh3fPGNs14+tle5k?=
 =?us-ascii?Q?BARyOe3IpE9r1CcjkmDj5h6d7rvFSSrYvFMqn7xGHSE+8SD3fcaCKlgVsU86?=
 =?us-ascii?Q?1VyntlkAkrDZPPuMnBsfi04PBWRsGLgHYg0BMkL1iK/HcyyN7wYOXN5bnFQ9?=
 =?us-ascii?Q?9U17K9fnaiCKsKHnexT9yJREMbsq+W4KC8i7f8YUsewChCdkc4JputpBuWWP?=
 =?us-ascii?Q?g06MOES6ybfUFYEew3wtkvfQa3tl7LmKrk2BWdqT+42mTsNE9e5TF/JIHWai?=
 =?us-ascii?Q?RK5MNDMzZRHkCS3jGPg1WTDR5Pd7BTy4Qqdxs16G5RnY1K+aRkGz7+NCtcwq?=
 =?us-ascii?Q?aQrMnTE37LnUT0HQ8bxDNBgl/KdBLsQP8acOt9aPA6NvyYEhxv8F3V999q9G?=
 =?us-ascii?Q?3FCEwqW57t7eedQrtLEq1cne4w04MrSVnrJ899NY5A=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jqIZyXlFeg6rZxhlyYUUtr+EG4BUScXOU/jY0LZejGbhVG5nTZGVqxAaXfkQ?=
 =?us-ascii?Q?hGBTyqWfu6sYGeTflfN9ag+R3qAZzuTwmBj5acKUgNafgRv912w5L9hAIM+8?=
 =?us-ascii?Q?il+eF2y12n/9AEODUSgPn0a3BtW+Z+yoy0uXGk+qO8g5BApva2vapy9mT4EL?=
 =?us-ascii?Q?yf98UFcz9I+KKveq1zec/mROAN8vcLzCFmsbKvuWzDqjKRgYLlIPx83V4RKa?=
 =?us-ascii?Q?ejuwN1Q/Jo/zA2ZNOJni/Dlt6bbm02E8Bl7krWYZF81jJ+7tB2bJM1SJYAUA?=
 =?us-ascii?Q?R1y4RYP3e/J4dyRfjagC9soZWetQT/vvG2HsIlTjNpJ/jP/QucS4n9xJptgl?=
 =?us-ascii?Q?vKOYgd1w91JT4QaVHsj8DjYTiJxmjPQYUM7VR0YCEetn+VHOP4TRrFpcLpko?=
 =?us-ascii?Q?c2NJEjHKK33tyfZvd6B6+qq9RBsHRlOx6qv3vOVqow1AMfknv1fwRRrEtOT/?=
 =?us-ascii?Q?3Q3ecQqSdg0gF0jDFPOegUcZd5CEvLpAxqfTDx3ECAHuLsrAUiIKP37iIAhV?=
 =?us-ascii?Q?TQRV2eUyQjTaxLncpWNz8tPgjfkeUA0as74IXMP9sryO4rC6kQvQftGNXUKk?=
 =?us-ascii?Q?PHsWmQrhbFNYFh8GbvIQ2vOrQPOrHYV4RAiY6+eU6oh2n1poPfMlKvBQ6KL5?=
 =?us-ascii?Q?tkQnSHHrdzBHl9Y8fTv5XlFScrYEFDbIzjsRGCMCcW2zH+VGkSHPfiEi7GQL?=
 =?us-ascii?Q?BL2IbF1q6iQWKpww6ACkSmvofoxCZ8ou+LcsV2B5NUOhBjWQIypM/rIq2tgP?=
 =?us-ascii?Q?McKnXdN88J5JkoKJwu9RMMH/lVSrQBEbpX1P4imecJPPq51/t1E99mgngfhB?=
 =?us-ascii?Q?V5Haf53Hx9kSyYzInfs6qvlIt6BYxgMw87ZWpsyjG9YSajPJA7pLEFFh9jrt?=
 =?us-ascii?Q?xai4kvDzcu3fxx3HRrjQh5FRnpGh5Zu6Xs17Giet501+uyHtzYalByZji1tF?=
 =?us-ascii?Q?wCymh50RaoOIq8juu2Un8VXfVbq3tGhe1PD0JPKkwZOZdn9/uyHlIsrvRJAH?=
 =?us-ascii?Q?fCD83316L+YNpVboeESvQ8J9GHfKoN2qPhupxQpad/ICW9Gsf2DNTB38huXl?=
 =?us-ascii?Q?rrsHx0e9jm4cYaYXpAuNYDj5bENBlfhyu+4WJAvBoedj/ibffzXj8LCRROyi?=
 =?us-ascii?Q?UaTEDqaVcnthgydooiR8DmKW9x9EdFSccpjQ8Z1CWYlXRzORQd3rH+6ZZsXx?=
 =?us-ascii?Q?Im5tlPyRmmFtVpL5dYnMagjQtsh6uTY24qSSQsXNpwvvl8eIc15OeiuPWA3v?=
 =?us-ascii?Q?5U2bB1wEWHULhEpMNFUR8OsJxPxCC6eldy7E1SZWTzWITi+piBAJbQ3StyFX?=
 =?us-ascii?Q?iOJo6Zbz6UNpYTzdOqlwtZsGb7D/FeUSJdQkGpSdlou4oxQk/ws/Mabsyz0i?=
 =?us-ascii?Q?jusb1f9eTzBk96cjHbzHVo+hz9wDxbLdbl1WebfjGVCX8/gLzDlz48VBnsbe?=
 =?us-ascii?Q?dOBh4nILxI4rx8INq+GbpWtuqx3le5RZucs/ZtgbG1RDc3mjDkDHvMdcrBI+?=
 =?us-ascii?Q?eV+fBk58LomenzNfV/M/7gJPdtiqpy1uJ73sozNtPeH9k+pK+4E+HCZtmg9x?=
 =?us-ascii?Q?2jKFI2dMWSIgpitXzT6U9qKnq7fo7g4g0PcXND8iK3EdKt6rFqwRTw/2dX3N?=
 =?us-ascii?Q?Fg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3172af3d-c66e-48cb-6382-08dc7b576c67
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2024 18:37:39.3239 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WbDhzIMHFf8DKeBF7RnFxin+BnB9tKPMJ9KGElu2NcUyTVukjCUPfM4NIebuYKR5sIHY/GEdfBFyNqSemL60+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6445
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

On Wed, May 22, 2024 at 08:33:46PM +0300, Jani Nikula wrote:
> Add support for subplatforms. This is similar to what the xe driver is
> doing. The subplatform is an enum and it's exclusive, i.e. only one
> subplatform can match, and it completely identifies the platform and
> subplatform. This is different from i915 core, and is notable in the
> handling of ULT/ULX and RPL/RPL-U.

Only used to print information in the next patch?
But I guess other future use in mind as well?

anyway it is a good organization by itself.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.c   | 204 ++++++++++++++++++
>  .../drm/i915/display/intel_display_device.h   |  26 +++
>  2 files changed, 230 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 7c5cead1fe15..59b8ca174ef8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -20,9 +20,16 @@
>  __diag_push();
>  __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for display info");
>  
> +struct subplatform_desc {
> +	enum intel_display_subplatform subplatform;
> +	const char *name;
> +	const u16 *pciidlist;
> +};
> +
>  struct platform_desc {
>  	enum intel_display_platform platform;
>  	const char *name;
> +	const struct subplatform_desc *subplatforms;
>  	const struct intel_display_device_info *info; /* NULL for GMD ID */
>  };
>  
> @@ -30,6 +37,8 @@ struct platform_desc {
>  	.platform = (INTEL_DISPLAY_##_platform), \
>  	.name = #_platform
>  
> +#define ID(id) (id)
> +
>  static const struct intel_display_device_info no_display = {};
>  
>  #define PIPE_A_OFFSET		0x70000
> @@ -460,8 +469,26 @@ static const struct platform_desc vlv_desc = {
>  	},
>  };
>  
> +static const u16 hsw_ult_ids[] = {
> +	INTEL_HSW_ULT_GT1_IDS(ID),
> +	INTEL_HSW_ULT_GT2_IDS(ID),
> +	INTEL_HSW_ULT_GT3_IDS(ID),
> +	0
> +};
> +
> +static const u16 hsw_ulx_ids[] = {
> +	INTEL_HSW_ULX_GT1_IDS(ID),
> +	INTEL_HSW_ULX_GT2_IDS(ID),
> +	0
> +};
> +
>  static const struct platform_desc hsw_desc = {
>  	PLATFORM(HASWELL),
> +	.subplatforms = (const struct subplatform_desc[]) {
> +		{ INTEL_DISPLAY_HASWELL_ULT, "ULT", hsw_ult_ids },
> +		{ INTEL_DISPLAY_HASWELL_ULX, "ULX", hsw_ulx_ids },
> +		{},
> +	},
>  	.info = &(const struct intel_display_device_info) {
>  		.has_ddi = 1,
>  		.has_dp_mst = 1,
> @@ -483,8 +510,29 @@ static const struct platform_desc hsw_desc = {
>  	},
>  };
>  
> +static const u16 bdw_ult_ids[] = {
> +	INTEL_BDW_ULT_GT1_IDS(ID),
> +	INTEL_BDW_ULT_GT2_IDS(ID),
> +	INTEL_BDW_ULT_GT3_IDS(ID),
> +	INTEL_BDW_ULT_RSVD_IDS(ID),
> +	0
> +};
> +
> +static const u16 bdw_ulx_ids[] = {
> +	INTEL_BDW_ULX_GT1_IDS(ID),
> +	INTEL_BDW_ULX_GT2_IDS(ID),
> +	INTEL_BDW_ULX_GT3_IDS(ID),
> +	INTEL_BDW_ULX_RSVD_IDS(ID),
> +	0
> +};
> +
>  static const struct platform_desc bdw_desc = {
>  	PLATFORM(BROADWELL),
> +	.subplatforms = (const struct subplatform_desc[]) {
> +		{ INTEL_DISPLAY_BROADWELL_ULT, "ULT", bdw_ult_ids },
> +		{ INTEL_DISPLAY_BROADWELL_ULX, "ULX", bdw_ulx_ids },
> +		{},
> +	},
>  	.info = &(const struct intel_display_device_info) {
>  		.has_ddi = 1,
>  		.has_dp_mst = 1,
> @@ -549,23 +597,89 @@ static const struct intel_display_device_info skl_display = {
>  	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
>  };
>  
> +static const u16 skl_ult_ids[] = {
> +	INTEL_SKL_ULT_GT1_IDS(ID),
> +	INTEL_SKL_ULT_GT2_IDS(ID),
> +	INTEL_SKL_ULT_GT3_IDS(ID),
> +	0
> +};
> +
> +static const u16 skl_ulx_ids[] = {
> +	INTEL_SKL_ULX_GT1_IDS(ID),
> +	INTEL_SKL_ULX_GT2_IDS(ID),
> +	0
> +};
> +
>  static const struct platform_desc skl_desc = {
>  	PLATFORM(SKYLAKE),
> +	.subplatforms = (const struct subplatform_desc[]) {
> +		{ INTEL_DISPLAY_SKYLAKE_ULT, "ULT", skl_ult_ids },
> +		{ INTEL_DISPLAY_SKYLAKE_ULX, "ULX", skl_ulx_ids },
> +		{},
> +	},
>  	.info = &skl_display,
>  };
>  
> +static const u16 kbl_ult_ids[] = {
> +	INTEL_KBL_ULT_GT1_IDS(ID),
> +	INTEL_KBL_ULT_GT2_IDS(ID),
> +	INTEL_KBL_ULT_GT3_IDS(ID),
> +	0
> +};
> +
> +static const u16 kbl_ulx_ids[] = {
> +	INTEL_KBL_ULX_GT1_IDS(ID),
> +	INTEL_KBL_ULX_GT2_IDS(ID),
> +	INTEL_AML_KBL_GT2_IDS(ID),
> +	0
> +};
> +
>  static const struct platform_desc kbl_desc = {
>  	PLATFORM(KABYLAKE),
> +	.subplatforms = (const struct subplatform_desc[]) {
> +		{ INTEL_DISPLAY_KABYLAKE_ULT, "ULT", kbl_ult_ids },
> +		{ INTEL_DISPLAY_KABYLAKE_ULX, "ULX", kbl_ulx_ids },
> +		{},
> +	},
>  	.info = &skl_display,
>  };
>  
> +static const u16 cfl_ult_ids[] = {
> +	INTEL_CFL_U_GT2_IDS(ID),
> +	INTEL_CFL_U_GT3_IDS(ID),
> +	INTEL_WHL_U_GT1_IDS(ID),
> +	INTEL_WHL_U_GT2_IDS(ID),
> +	INTEL_WHL_U_GT3_IDS(ID),
> +	0
> +};
> +
> +static const u16 cfl_ulx_ids[] = {
> +	INTEL_AML_CFL_GT2_IDS(ID),
> +	0
> +};
> +
>  static const struct platform_desc cfl_desc = {
>  	PLATFORM(COFFEELAKE),
> +	.subplatforms = (const struct subplatform_desc[]) {
> +		{ INTEL_DISPLAY_COFFEELAKE_ULT, "ULT", cfl_ult_ids },
> +		{ INTEL_DISPLAY_COFFEELAKE_ULX, "ULX", cfl_ulx_ids },
> +		{},
> +	},
>  	.info = &skl_display,
>  };
>  
> +static const u16 cml_ult_ids[] = {
> +	INTEL_CML_U_GT1_IDS(ID),
> +	INTEL_CML_U_GT2_IDS(ID),
> +	0
> +};
> +
>  static const struct platform_desc cml_desc = {
>  	PLATFORM(COMETLAKE),
> +	.subplatforms = (const struct subplatform_desc[]) {
> +		{ INTEL_DISPLAY_COMETLAKE_ULT, "ULT", cml_ult_ids },
> +		{},
> +	},
>  	.info = &skl_display,
>  };
>  
> @@ -654,8 +768,17 @@ static const struct platform_desc glk_desc = {
>  		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
>  	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A)
>  
> +static const u16 icl_port_f_ids[] = {
> +	INTEL_ICL_PORT_F_IDS(ID),
> +	0
> +};
> +
>  static const struct platform_desc icl_desc = {
>  	PLATFORM(ICELAKE),
> +	.subplatforms = (const struct subplatform_desc[]) {
> +		{ INTEL_DISPLAY_ICELAKE_PORT_F, "Port F", icl_port_f_ids },
> +		{},
> +	},
>  	.info = &(const struct intel_display_device_info) {
>  		ICL_DISPLAY,
>  
> @@ -722,8 +845,17 @@ static const struct platform_desc ehl_desc = {
>  		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
>  	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A)
>  
> +static const u16 tgl_uy_ids[] = {
> +	INTEL_TGL_GT2_IDS(ID),
> +	0
> +};
> +
>  static const struct platform_desc tgl_desc = {
>  	PLATFORM(TIGERLAKE),
> +	.subplatforms = (const struct subplatform_desc[]) {
> +		{ INTEL_DISPLAY_TIGERLAKE_UY, "UY", tgl_uy_ids },
> +		{},
> +	},
>  	.info = &(const struct intel_display_device_info) {
>  		XE_D_DISPLAY,
>  
> @@ -762,8 +894,17 @@ static const struct platform_desc rkl_desc = {
>  	},
>  };
>  
> +static const u16 adls_rpls_ids[] = {
> +	INTEL_RPLS_IDS(ID),
> +	0
> +};
> +
>  static const struct platform_desc adl_s_desc = {
>  	PLATFORM(ALDERLAKE_S),
> +	.subplatforms = (const struct subplatform_desc[]) {
> +		{ INTEL_DISPLAY_ALDERLAKE_S_RAPTORLAKE_S, "RPL-S", adls_rpls_ids },
> +		{},
> +	},
>  	.info = &(const struct intel_display_device_info) {
>  		XE_D_DISPLAY,
>  		.has_hti = 1,
> @@ -830,8 +971,29 @@ static const struct intel_display_device_info xe_lpd_display = {
>  		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
>  };
>  
> +static const u16 adlp_adln_ids[] = {
> +	INTEL_ADLN_IDS(ID),
> +	0
> +};
> +
> +static const u16 adlp_rplu_ids[] = {
> +	INTEL_RPLU_IDS(ID),
> +	0
> +};
> +
> +static const u16 adlp_rplp_ids[] = {
> +	INTEL_RPLP_IDS(ID),
> +	0
> +};
> +
>  static const struct platform_desc adl_p_desc = {
>  	PLATFORM(ALDERLAKE_P),
> +	.subplatforms = (const struct subplatform_desc[]) {
> +		{ INTEL_DISPLAY_ALDERLAKE_P_ALDERLAKE_N, "ADL-N", adlp_adln_ids },
> +		{ INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_U, "RPL-U", adlp_rplu_ids },
> +		{ INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_P, "RPL-P", adlp_rplp_ids },
> +		{},
> +	},
>  	.info = &xe_lpd_display,
>  };
>  
> @@ -846,8 +1008,29 @@ static const struct intel_display_device_info xe_hpd_display = {
>  		BIT(PORT_TC1),
>  };
>  
> +static const u16 dg2_g10_ids[] = {
> +	INTEL_DG2_G10_IDS(ID),
> +	0
> +};
> +
> +static const u16 dg2_g11_ids[] = {
> +	INTEL_DG2_G11_IDS(ID),
> +	0
> +};
> +
> +static const u16 dg2_g12_ids[] = {
> +	INTEL_DG2_G12_IDS(ID),
> +	0
> +};
> +
>  static const struct platform_desc dg2_desc = {
>  	PLATFORM(DG2),
> +	.subplatforms = (const struct subplatform_desc[]) {
> +		{ INTEL_DISPLAY_DG2_G10, "G10", dg2_g10_ids },
> +		{ INTEL_DISPLAY_DG2_G11, "G11", dg2_g11_ids },
> +		{ INTEL_DISPLAY_DG2_G12, "G12", dg2_g12_ids },
> +		{},
> +	},
>  	.info = &xe_hpd_display,
>  };
>  
> @@ -1059,12 +1242,27 @@ static const struct platform_desc *find_platform_desc(struct pci_dev *pdev)
>  	return NULL;
>  }
>  
> +static const struct subplatform_desc *
> +find_subplatform_desc(struct pci_dev *pdev, const struct platform_desc *desc)
> +{
> +	const struct subplatform_desc *sp;
> +	const u16 *id;
> +
> +	for (sp = desc->subplatforms; sp && sp->subplatform; sp++)
> +		for (id = sp->pciidlist; *id; id++)
> +			if (*id == pdev->device)
> +				return sp;
> +
> +	return NULL;
> +}
> +
>  void intel_display_device_probe(struct drm_i915_private *i915)
>  {
>  	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>  	const struct intel_display_device_info *info;
>  	struct intel_display_ip_ver ip_ver = {};
>  	const struct platform_desc *desc;
> +	const struct subplatform_desc *subdesc;
>  
>  	/* Add drm device backpointer as early as possible. */
>  	i915->display.drm = &i915->drm;
> @@ -1098,6 +1296,12 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>  	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name);
>  	DISPLAY_RUNTIME_INFO(i915)->platform = desc->platform;
>  
> +	subdesc = find_subplatform_desc(pdev, desc);
> +	if (subdesc) {
> +		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name);
> +		DISPLAY_RUNTIME_INFO(i915)->subplatform = subdesc->subplatform;
> +	}
> +
>  	if (ip_ver.ver || ip_ver.rel || ip_ver.step)
>  		DISPLAY_RUNTIME_INFO(i915)->ip = ip_ver;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 8accd680a61e..e1d9947394dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -70,6 +70,31 @@ enum intel_display_platform {
>  	INTEL_DISPLAY_LUNARLAKE,
>  };
>  
> +enum intel_display_subplatform {
> +	INTEL_DISPLAY_SUBPLATFORM_UNINITIALIZED = 0,
> +	INTEL_DISPLAY_HASWELL_ULT,
> +	INTEL_DISPLAY_HASWELL_ULX,
> +	INTEL_DISPLAY_BROADWELL_ULT,
> +	INTEL_DISPLAY_BROADWELL_ULX,
> +	INTEL_DISPLAY_SKYLAKE_ULT,
> +	INTEL_DISPLAY_SKYLAKE_ULX,
> +	INTEL_DISPLAY_KABYLAKE_ULT,
> +	INTEL_DISPLAY_KABYLAKE_ULX,
> +	INTEL_DISPLAY_COFFEELAKE_ULT,
> +	INTEL_DISPLAY_COFFEELAKE_ULX,
> +	INTEL_DISPLAY_COMETLAKE_ULT,
> +	INTEL_DISPLAY_COMETLAKE_ULX,
> +	INTEL_DISPLAY_ICELAKE_PORT_F,
> +	INTEL_DISPLAY_TIGERLAKE_UY,
> +	INTEL_DISPLAY_ALDERLAKE_S_RAPTORLAKE_S,
> +	INTEL_DISPLAY_ALDERLAKE_P_ALDERLAKE_N,
> +	INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_P,
> +	INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_U,
> +	INTEL_DISPLAY_DG2_G10,
> +	INTEL_DISPLAY_DG2_G11,
> +	INTEL_DISPLAY_DG2_G12,
> +};
> +
>  #define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
>  	/* Keep in alphabetical order */ \
>  	func(cursor_needs_physical); \
> @@ -168,6 +193,7 @@ enum intel_display_platform {
>  
>  struct intel_display_runtime_info {
>  	enum intel_display_platform platform;
> +	enum intel_display_subplatform subplatform;
>  
>  	struct intel_display_ip_ver {
>  		u16 ver;
> -- 
> 2.39.2
> 
