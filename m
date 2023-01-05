Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C4565F45A
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 20:23:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D319910E130;
	Thu,  5 Jan 2023 19:23:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0B9410E130
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 19:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672946587; x=1704482587;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9fhEz9mv9QOl2ghaJpPs5eQWbNNrhWaaivW9UGFq1Rc=;
 b=YPY8YGd662QmoxUJIbZk5DTDt3/T893fQFRUqlvmkW2LneWT6XEIcdmu
 MK+7CcHISlDp6cFo/C86ZH3ITe5oED89sH3QEwec1fBjsliEn1HYmZBd3
 OyNmtQvkbOk3YP8Tin7dzWLWu2eKjWxMxbOKKs18HOfyLoXAWhTitTmKT
 ZqnthcBac3UjYxLwbo1YyBysV9O1fj55efz0G57Jt825OI1Y000xs6ZaE
 tTGE6Jkaxt8VCWTCweqb+mOqJXSs/OSgzxOgEKZ6gZu7LDvpWbGdWwcm+
 YiP4AiM6qCO1iKVgXprdbpBSMdb81/QL9kcgkQ7pgKrJmJrsYh8340qdN g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="305822810"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="305822810"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 11:23:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="657643838"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="657643838"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 05 Jan 2023 11:23:07 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 11:23:06 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 11:23:06 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 5 Jan 2023 11:23:06 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 5 Jan 2023 11:23:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xk5heA16LG784QBfxG8MVtk7T5GaPYNn2UT821hG9rLPNlAl5TyIcPTh0ev9KpBonMj+tHjcqkDYoo8PT81PhBnvXirKhN59By/AxemsWkYHsOkWMbDGu+ZvidKt2TAWgkz6sC6NVe5x074FpaYChzWt9+StGfPf9671Ttd0NQqWhWvHiORDoYE+h9E1Ong4dtIGZXEQHUvciOrJjJ4gKFdCkXmo4XZtZVeE/0spl7qAaOd5GifPVftbHNzN/J88BBDKwGKezzjoMhOBW+T3TErpaMQ9kEp9EOc2vBZ8rbSdgf51/3+dWfsEPU6xtMhuzIjI2QYTZg76CVTxlNvqLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yl03SPzORCc37ZDCziCOGzIA6qdz7+39Xs3+UxPfeL8=;
 b=WcOHnld/keRiRdYaM+QsRXITfhTIsL6bP657m5Sn3r3xIRyNyfJrWpJq6dfVy7y2TNug6ET5mJ0pm0kkRPwIWrYuvOMLFDLQTfdJlAMg6f/dzOqTO7+OX0vCU3PfBfkjecz1r+PPbKRtRdSlkYk7cfJP8FYF5f2p+8wVhDagC/QaI3dUj4TeHkCWTR+WYTAMiGA6NyaJhlxXcvdds5qDwC8PSBUOD0TzISyKNFNIOWqHKM2hZJawuaCjd6zcb2oklb54TaulZucx9BS+l0+lEdPrj9/TU4RmU7nydv+NkjNbBviujuDtAjXx8ocCFuxCY9vG8JYtd/Qxt6psC2IRcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM6PR11MB4626.namprd11.prod.outlook.com (2603:10b6:5:2a9::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Thu, 5 Jan
 2023 19:23:04 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%8]) with mapi id 15.20.5944.019; Thu, 5 Jan 2023
 19:23:03 +0000
Date: Thu, 5 Jan 2023 14:22:59 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y7cjk5v4aHLey3fb@intel.com>
References: <87tu16y6yi.fsf@intel.com>
 <20230104185546.1568277-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230104185546.1568277-1-rodrigo.vivi@intel.com>
X-ClientProxiedBy: BY5PR16CA0035.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::48) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM6PR11MB4626:EE_
X-MS-Office365-Filtering-Correlation-Id: c8bd6795-a3bb-4089-68db-08daef5243d9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 29FPW86UTfanhDILZJ9HQrgJ/l9QBPcp2Cd5oDUtcQlOIMQJpTWH4COZhZ6FoOj4yAWMREPf6Wm+uhfYPz3mI1azs5jpMCUF18zzlv3ZppxrFJO0Sl+85C2ItkmSDui3EUrRQf1NuS0QuXDi+D0KwPvsZijrJL9vt2E9/mnEB9mbavh5wnjJ/Jq6LFddA2JEBHpNC+/hu+75v0rjsekHwFLfPcrSNt+9llsHoDBZrRTzGwe/oDSEzl0zlaEqzv0GQYdmb5jYxWe+Fjs/WOKBn3sVaquCtopsyTQUZ1844gyz7s3KSWDh9k3r0G/Td91B4FrVx7XVEDiS7rFZSz9vABRG6HXHkVSuf6PbqnbT7iAcD++WRHloJ53MJMw1AEwXLVpE9yFtSLDKs3oYvA1Z8Y999WKUvLokunD8WHpBNBMlLl85fiqP7t5ngra3MSYwj7fbol58OB7Qm/PdoR99mZUhiTW6Xf3lbInPxFF9QE00gpwIrHG6VZtTPVAKoglQUsJOQPor1lRxMzzeJULD1hYhG0CjVSDRk1IJOrattD6YGWOLxeHZiOviF/oKeGIa+QPW4PutxX3C8S/wWsxqOuVx6LLbMcVTKpbbGtfW6C5+VtvM2496AWOMjjDF5GwqeCPWWDIb9TpdYV9tQXDSXA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(136003)(346002)(376002)(366004)(451199015)(83380400001)(2616005)(6512007)(26005)(186003)(6506007)(107886003)(6666004)(86362001)(36756003)(82960400001)(38100700002)(4326008)(8676002)(5660300002)(2906002)(8936002)(44832011)(316002)(66556008)(41300700001)(478600001)(6486002)(66946007)(66476007)(6916009);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RyvXWV/8oKize27I0Tfs7bAZIwF0ILfDVzd+9TNkze9lmFKqostqLUUFx0QB?=
 =?us-ascii?Q?5x/smHmR1KrEmUuXRd8HKHirkUbbGntbjjsWxAToI3fPPfodvcMrsFM7bx/p?=
 =?us-ascii?Q?BW5qnqoGNXMHFTH5ilzKBRtKgQ2a+HzqnqH1vZU/6Py7wq1va9c0m8JG00l+?=
 =?us-ascii?Q?n4XiUsCy+S03f2G3mbofoZPWpzIPnorIGfan8X0S+XBYiH9TOcEjaSTTKjvx?=
 =?us-ascii?Q?1WBO4kDJD5dpY8V9W4sAYHkfl6ixdH6ngdxXuFwBTwyUYuvqezCGjtXE7ZXK?=
 =?us-ascii?Q?c4HNH5FCQzx4K66Dgc+2D5USK5/yr8QpD+TBmiEK+fyrbUpX6kz8rEnTVw2J?=
 =?us-ascii?Q?lcs7WSM0Ldzna1Miph31nkhOHkVtLMj2zVqSGXAprmOy/YMfNqmqAR5W0qo8?=
 =?us-ascii?Q?KjjxOKQVPyYlVTBfWT7MR1DlG5X/4QAAsIb76XGA9Ujw1oAFryB1JIAntoL4?=
 =?us-ascii?Q?/maYDLZ58djxGgn2G39mZKvBDOur3Ns+HB7a/2ZWbE2XAQiQHetTatxsRf1h?=
 =?us-ascii?Q?Rp4RDIAMgfM17pfFThVsHRCZJRA6G2BJd7OzI9AIzUq8FBrK3QgvqNbALHvu?=
 =?us-ascii?Q?C7/brwHO/IcyZZoTGSjTa2MQ8bQTkf3iVS6JVMdH2xNgL1bItQrRkpUagP3H?=
 =?us-ascii?Q?SLiknfZs5PKYIoNkxN1z8iJv60KYyVPJfTbKWuLonWjzp7JU7Au0PQdneDki?=
 =?us-ascii?Q?Ly5gRE1h8IZ9+269zfAktR4VldlncV2XQZPTCFMTVhLD6KN9cHtWaubeqKJZ?=
 =?us-ascii?Q?tw4n3kgjltI2CZRrrXpYyJR+Ip87314MjFEo1HI3Kr6WN5vq46M1HDUOGB6g?=
 =?us-ascii?Q?MeCdjADHC43y+GrKo0gzSiPYhoVV5n9vSnapZ76qxnxyPhJ443Oe2ie7aDVi?=
 =?us-ascii?Q?Rl3e9j/dd3ZFkdLLlNQEv/wDboA9vYoUSRYae8v/oD2z1jOyM/gJ1PZIFmqi?=
 =?us-ascii?Q?bx0+bcVfuJ2yPZmZSWOzrvGwl4Ww4HHzViD5+9mWgQeKywjU1M5pdyccu+/k?=
 =?us-ascii?Q?Hj6xQaY282cIuLO6FxfSlsZ8MXcvnoM2OsLi4Ehx+BECpFhDN2WGfiPImGbr?=
 =?us-ascii?Q?lyTNxmMXxDZZ5yuA8PNSVr58BVdlAWo7o6SrKd4Fpi2381jCKHSthN9pQvH3?=
 =?us-ascii?Q?M3ie66e16iYiayQlC3iAJN+vq5rSREh4VW7p+7nUH4APy6Yp+Mj0UTXB2vZ/?=
 =?us-ascii?Q?sWXJAppVGALEuD4345l7rkXtuGXW/PrO87rwxEEzn0fNRHnf/qq/PsVTehVr?=
 =?us-ascii?Q?qwWJzbSd1VtZJFVuuOaPJu0ebs734RUdnWjXb2GhspYeQVINlM/xGxKNzQvk?=
 =?us-ascii?Q?uEU5mt6+yg2VHysOqovFSGEjKJ4xy+p5HZyok6JTWWEwE2C81/2kZPprmYcM?=
 =?us-ascii?Q?m462XUJLPXozvlz93PTcz+kdZXjcoNXtEdYf6lAr2QOlDoNRTHrHnEXCOu9g?=
 =?us-ascii?Q?ZOwTuOmh7TFswZaA9wJEXdZu8l8L6FmSFAqaC4o92296o66xyBZNWeavgCJt?=
 =?us-ascii?Q?1yIlHRah/Ptnhdf6ZKCDyGGKXuQaIXPvMo74evEx5COpYmFD45Y9iG7sJXWL?=
 =?us-ascii?Q?lM6DoiosK1RLZ6yuxDeKvTJgGPiwtYbvsWk7vPnSOa+mlV3teNZgcb5RNrl5?=
 =?us-ascii?Q?KQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c8bd6795-a3bb-4089-68db-08daef5243d9
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2023 19:23:03.3524 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vf2KlgOT/TDUgsXQUoMbDrwCODKnNgwWh1xjGN2dbM806FJEoh6yogzRnM1aU4xTjIOsths1lGb6CRfZZmSRxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4626
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Expand force_probe to block probe
 of devices as well.
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 04, 2023 at 01:55:46PM -0500, Rodrigo Vivi wrote:
> There are new cases where we want to block i915 probe, such
> as when experimenting or developing the new Xe driver.
> 
> But also, with the new hybrid cards, users or developers might
> want to use i915 only on integrated and fully block the probe
> of the i915 for the discrete. Or vice versa.
> 
> There are even older development and validation reasons,
> like when you use some distro where the modprobe.blacklist is
> not present.
> 
> But in any case, let's introduce a more granular control, but without
> introducing yet another parameter, but using the existent force_probe
> one.
> 
> Just by adding a ! in the begin of the id in the force_probe, like
> in this case where we would block the probe for Alder Lake:
> 
> $ insmod i915.ko force_probe='!46a6'
> 
> v2: Take care of '*' and  '!*' cases as pointed out by
>     Gustavo and Jani.
> v3: Information message improvements by Michal.
>     Documentation improvements by Jani.

Please disregard this goofy v3. Pushed the v2 with the commit message fixes.

> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com> #v2
> Acked-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> ---
>  drivers/gpu/drm/i915/Kconfig       | 21 ++++++++++++++++---
>  drivers/gpu/drm/i915/i915_params.c |  2 +-
>  drivers/gpu/drm/i915/i915_pci.c    | 33 +++++++++++++++++++++++++-----
>  3 files changed, 47 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
> index 3efce05d7b57..3dfc1f5ce4de 100644
> --- a/drivers/gpu/drm/i915/Kconfig
> +++ b/drivers/gpu/drm/i915/Kconfig
> @@ -54,24 +54,39 @@ config DRM_I915
>  	  If "M" is selected, the module will be called i915.
>  
>  config DRM_I915_FORCE_PROBE
> -	string "Force probe driver for selected new Intel hardware"
> +	string "Force probe i915 for selected Intel hardware IDs"
>  	depends on DRM_I915
>  	help
>  	  This is the default value for the i915.force_probe module
>  	  parameter. Using the module parameter overrides this option.
>  
> -	  Force probe the driver for new Intel graphics devices that are
> +	  Force probe the i915 for Intel graphics devices that are
>  	  recognized but not properly supported by this kernel version. It is
>  	  recommended to upgrade to a kernel version with proper support as soon
>  	  as it is available.
>  
> +	  It can also be used to block the probe of recognized and fully
> +	  supported devices.
> +
>  	  Use "" to disable force probe. If in doubt, use this.
>  
> -	  Use "<pci-id>[,<pci-id>,...]" to force probe the driver for listed
> +	  Use "<pci-id>[,<pci-id>,...]" to force probe the i915 for listed
>  	  devices. For example, "4500" or "4500,4571".
>  
>  	  Use "*" to force probe the driver for all known devices.
>  
> +	  Use "!" right before the ID to block the probe of the device. For
> +	  example, "4500,!4571" forces the probe of 4500 and blocks the probe of
> +	  4571.
> +
> +	  Use "!*" to block the probe of the driver for all known devices.
> +
> +	  Please be aware that '*' cannot be combined with IDs. For example,
> +	  "1234,!*" will result in the global block, even for "1234".
> +
> +	  Also, the '!' case supersedes the regular case. For example,
> +	  "1234,!1234" and "!1234,1234" both block 1234.
> +
>  config DRM_I915_CAPTURE_ERROR
>  	bool "Enable capturing GPU state following a hang"
>  	depends on DRM_I915
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
> index 61578f2860cd..d634bd3f641a 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -122,7 +122,7 @@ i915_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
>  	"Default: 0");
>  
>  i915_param_named_unsafe(force_probe, charp, 0400,
> -	"Force probe the driver for specified devices. "
> +	"Force probe options for specified supported devices. "
>  	"See CONFIG_DRM_I915_FORCE_PROBE for details.");
>  
>  i915_param_named_unsafe(disable_power_well, int, 0400,
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 7fd74cc28c0a..1bcbca38ce5c 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1253,7 +1253,7 @@ static void i915_pci_remove(struct pci_dev *pdev)
>  }
>  
>  /* is device_id present in comma separated list of ids */
> -static bool force_probe(u16 device_id, const char *devices)
> +static bool device_id_in_list(u16 device_id, const char *devices, bool negative)
>  {
>  	char *s, *p, *tok;
>  	bool ret;
> @@ -1262,7 +1262,9 @@ static bool force_probe(u16 device_id, const char *devices)
>  		return false;
>  
>  	/* match everything */
> -	if (strcmp(devices, "*") == 0)
> +	if (negative && strcmp(devices, "!*") == 0)
> +		return true;
> +	if (!negative && strcmp(devices, "*") == 0)
>  		return true;
>  
>  	s = kstrdup(devices, GFP_KERNEL);
> @@ -1272,6 +1274,12 @@ static bool force_probe(u16 device_id, const char *devices)
>  	for (p = s, ret = false; (tok = strsep(&p, ",")) != NULL; ) {
>  		u16 val;
>  
> +		if (negative && tok[0] == '!')
> +			tok++;
> +		else if ((negative && tok[0] != '!') ||
> +			 (!negative && tok[0] == '!'))
> +			continue;
> +
>  		if (kstrtou16(tok, 16, &val) == 0 && val == device_id) {
>  			ret = true;
>  			break;
> @@ -1283,6 +1291,16 @@ static bool force_probe(u16 device_id, const char *devices)
>  	return ret;
>  }
>  
> +static bool id_forced(u16 device_id)
> +{
> +	return device_id_in_list(device_id, i915_modparams.force_probe, false);
> +}
> +
> +static bool id_blocked(u16 device_id)
> +{
> +	return device_id_in_list(device_id, i915_modparams.force_probe, true);
> +}
> +
>  bool i915_pci_resource_valid(struct pci_dev *pdev, int bar)
>  {
>  	if (!pci_resource_flags(pdev, bar))
> @@ -1308,10 +1326,9 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  		(struct intel_device_info *) ent->driver_data;
>  	int err;
>  
> -	if (intel_info->require_force_probe &&
> -	    !force_probe(pdev->device, i915_modparams.force_probe)) {
> +	if (intel_info->require_force_probe && !id_forced(pdev->device)) {
>  		dev_info(&pdev->dev,
> -			 "Your graphics device %04x is not properly supported by the driver in this\n"
> +			 "Your graphics device %04x is not properly supported by i915 in this\n"
>  			 "kernel version. To force driver probe anyway, use i915.force_probe=%04x\n"
>  			 "module parameter or CONFIG_DRM_I915_FORCE_PROBE=%04x configuration option,\n"
>  			 "or (recommended) check for kernel updates.\n",
> @@ -1319,6 +1336,12 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  		return -ENODEV;
>  	}
>  
> +	if (id_blocked(pdev->device)) {
> +		dev_info(&pdev->dev, "Probe blocked for device [%04x:%04x].\n",
> +			 pdev->vendor, pdev->device);
> +		return -ENODEV;
> +	}
> +
>  	/* Only bind to function 0 of the device. Early generations
>  	 * used function 1 as a placeholder for multi-head. This causes
>  	 * us confusion instead, especially on the systems where both
> -- 
> 2.38.1
> 
