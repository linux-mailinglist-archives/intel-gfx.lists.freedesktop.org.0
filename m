Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD626523568
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 16:26:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0410A10FB04;
	Wed, 11 May 2022 14:26:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30F5310FB04
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 14:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652279212; x=1683815212;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=29kN4nhZrk/q14IYGf2SVlgh7sg9emBslVNk8HAOlmA=;
 b=E7O6OeMMEB3KCEFAQVqdo1KqQKIo9xcLUNvBBSmk7R039XXWi9C5398j
 /2NX+0cTolSqTkHwBriqph2gnXIowbde0IpX78IqTCwzASf3koDHPWNJL
 Vhu3dl0LgtcZBQE4ED6ogaUiNx2yjfycf0y9yDRRT/9dwGi8a01fy3WqG
 jV97nun9YClKIAJ6Q+G76nY/Rb7i1LmVPkhEG3G6F+x/CcInQ+tYTx/OM
 UyI5xSacd72LEtMopCi6kMl0fgFlsajhG1KRs2GVcqC+rTHdgT2LK2uHy
 hpzKBxv6De8de3g7BED52rCTq9/KtoentDcE6v/eJ6/7hNSVCsyXJdo1N A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="332749016"
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="332749016"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 07:26:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="670404906"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga002.fm.intel.com with ESMTP; 11 May 2022 07:26:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 11 May 2022 07:26:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 11 May 2022 07:26:49 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 11 May 2022 07:26:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OVMNV7QkS8FFgpXl+uj2B/TFIxVQPrh49gpzf3uMQd0Be+EayQpUTA/Tyx/YPW7tvDyWcGmFeDUVlx+rC/6lfFkZr3xte3okb1HM7Er/FTermhN1Kr4xvDMnOLiRU3y4Ee8XyXjqLFpTdBkHjufhFCAugkD226OktsFaqkZnZ6PK4xmRgJZ4nYzOH7cANRB5uEjkwkmtdyThuc8TYFkf3HvIcR2QYvuXp7owd/T7FXZup4hnE2RGatsAS1ESD3GQAEYxFSfbhTjGh0sf9CsUQkQNAouJqVmKSs/zyBQpDKwHaZvDjaACgNfvOflNt1YwxELFuvxgpZd3NWVS0gOivA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OB+tQfUAfFrxL3fQzEyDtdRCf1pT3d2M0GcaS2gR0Ds=;
 b=WYf+GBUGzkmnchSKjFchdf523a+ifKZoG51+ueFb/MfjA8tS4JY6A6SrSVD+w28olG7G427f0YhQWaJhsPVE6G+zpxB3diL5KShmN57zTmCLWWun4ThM4j14CeozJB373Fg3wUogQPqK3cc1xXSVpcNC6+lBEouNRTGJTv8ddl7o1yS4NKUqQl+mkYkmw+UxA9fjhJpYo+eF8hfXvsTv1es49zd/b1dnJAhh4gDoaHuOQlC/0zdkaCM5t/TIWtpS8sJa70szySsoR73jHj5iQbu3I9U7tERpy+mbrjNW6YVOX2uWmJ2PQGDKsEM46Di4DwAnEq0BDEvSFNlhcSkVYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by SJ0PR11MB5165.namprd11.prod.outlook.com (2603:10b6:a03:2ad::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.20; Wed, 11 May
 2022 14:26:47 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::b070:728f:be36:cbe]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::b070:728f:be36:cbe%6]) with mapi id 15.20.5227.023; Wed, 11 May 2022
 14:26:47 +0000
Message-ID: <207e3cd3-9a59-65e3-5e77-ea7b153f9d6f@intel.com>
Date: Wed, 11 May 2022 16:26:42 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
From: "Das, Nirmoy" <nirmoy.das@intel.com>
To: <intel-gfx@lists.freedesktop.org>
References: <20220511142222.2325-1-nirmoy.das@intel.com>
In-Reply-To: <20220511142222.2325-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM5PR1001CA0018.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:206:2::31) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2bc1b330-86ae-4f57-37da-08da335a478d
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5165:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <SJ0PR11MB516512944D2FA27B3CF99D4E99C89@SJ0PR11MB5165.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zICrDkVLdE4Qu8/84tHB73qt5tvnabf/DucqzaHvCKi60xH/G3C5BM31MmxLdJJkK4Pe5e+F5MXlh+6xSzFVRYNAQwQybjt1PKxMW/106Yj3PLUvpsLbN9TUkhmvaApVdIq95zNmcgd3fSePDdH/HpXg5qOGc2zcG9Ha5Z/RB/Kx8+UFsjKak2djo7sBCdt7FYUP6FaDV3SaWq2AT18P4Vk0AcXItKoZ0wXKzA+zY6t6K6b3yvooDvONCIQTg58DP1PdtExJDRANuesceVATcKtLQ9gEgVega6v5lI5+yKJYHm6V5pSiM3VaE/eWAagbeTMdSW79vM203iYiqQXiO8rde2o7mK2oc5dYGZ4H/Nx3S0flIyc2VCDj5D/UNSb6c4Gf6ZvlwHZy4wGKmCMlFodB0dzC+3rIe4OUX5mHeP3UKNcAMfp63irx458rl9p/Rs4IMjZjCUTj02OKV6fU83LEUfio6WJPJ70D5bxdqT70+uZS9U5R++wGoNnp5kjBYOwXH1zp2tplHx8HS+y0QeSmREPgM7XyjXpYfZJzW+v90pvjyqRRf92nkSDBGO8krQfH8pNfSfoT8pv7g7OnJQVfMuizk28HTAyOUCCt0iLb9/zZIJHrOYK1qwtW7WMX6foq8pMK4esEvRe2jVgT4sntIjOkNI7sLGmgnRZ8LISaYRrIUMdNf5zSxCcZ2YTQOUp3msP7kLd7T2NaIWf3k03W9/R2LcV4ExeBZFL8KCk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(508600001)(86362001)(6506007)(31696002)(8936002)(6486002)(966005)(6666004)(2906002)(53546011)(30864003)(83380400001)(6512007)(26005)(82960400001)(38100700002)(107886003)(2616005)(186003)(66476007)(66946007)(66556008)(316002)(6916009)(31686004)(8676002)(4326008)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cGpkbHI4Wm9wTnpIUWtFT09kQnFlQXFqcXJNaFlyVlNuQzBmOUV2WFB1Z28w?=
 =?utf-8?B?Y2NFcmdQZjBvcGJ0MVU3Z0htdFl3WENTTFAySXJqQ1JWa2JQMWxsLytuMnVM?=
 =?utf-8?B?SkRMRVZieXhBQXFsZGp1MUNLODU5Q05GV0hlWVNFdnA2cXdNYzUvbmxrRXMr?=
 =?utf-8?B?b2srMk4vVnA5OE5TaTlCZkt1VDFYWWovdWdScVppYWlYR2s5bXFHdkZLVzI5?=
 =?utf-8?B?bjIxb0NLZDl1elNKY3AxUVlkT2Y2RkJzLyswRDNFT3VLajhWdFlNU0QwVE5z?=
 =?utf-8?B?SjBmZi82aWp6dEN5OHZ1VTRuTWVNWENlaUdJNi93cDl3MXEva1piWjdvZFdz?=
 =?utf-8?B?dmNWdExMazhZUDVWRUFVZitOYS81dUdEUERsMk9LWGhnSlBacEtZUjFyNzdz?=
 =?utf-8?B?b0ZCYTFhQUNoOFZOYmRKKzYwVkE0bEVLVmRjVmkyd1J6R3FLTW9XU0xIRzBV?=
 =?utf-8?B?bjMwZDEwVmRESkEwL0xtTHdYQjNXWXpxVnFtTFg5QU5ySW1RTTlYMXVrZDVZ?=
 =?utf-8?B?cmt1aHhhb0o4aVQ4MzU2VUdHVFo2ZW5FcWdCNllqK0FuaTcxMDJ6NE5PWVYz?=
 =?utf-8?B?NTZrc2NLYk9QZWVDR3VVZWF5TitUcnJ6MENkOHhDcS8xekxZb2FtSDNPTTRr?=
 =?utf-8?B?WUdPOW92SXk1RTVIaXg2VWdyNUtzSUpXNjhMc0JqZmhOLzFqMVNHeHZnM1NJ?=
 =?utf-8?B?eXFENlJLSTF5VWVsVGdERGE3RERyNjlmZ0NNc2duTU8xN2ZGMGxFVjFUUU5m?=
 =?utf-8?B?RlJVREhxdE1nUFhEai9ESVZGVXU2ZjEvT1dINkZ1cUpOVXVaZ0VId0MyTU5E?=
 =?utf-8?B?dGVoeWtZOGVyQkZJTW9wT0FkUkNxbkx5Qk5BRVNYeWJYSkI3a0FqSC8wMFVp?=
 =?utf-8?B?cGlzS2pzWWFDT2VXV3FjTHAzSG1sd0puUWUrekJoRjZEcG9rZzRSM3VEY1hh?=
 =?utf-8?B?Z2ExaDNGeGRTSTFGMDRRRmFQZmxMSEhNMmJveEhmZWsvRVB0MmhsNGRkbkRs?=
 =?utf-8?B?ZlNLUVRRWTk2dGE4byt2c2d1SllySTJsdUJPQ1BhTkROb0FmQ1RrQW9Qazdv?=
 =?utf-8?B?MmZmM1krbUJ1THE5OGxmNEhQR010elBDZ1BJc0p4amU1ekFpQ3Z0VDVyaGNQ?=
 =?utf-8?B?WjNsVzN2Y0xWL0wwUVJweHU5YmFXODk3cDFncmhaSjFqbjI0dGJFdUlvYTJ3?=
 =?utf-8?B?eVNpQXVpNWNHWWNHNU1IcDdPZHFyeE5ZQ3hSOFdFK1lZTmRRSURuYTVGcGtm?=
 =?utf-8?B?Y28zWUw0NXVDSXhCa1pxekhXWUxua3ZtT1oxRVhwTTY3bmVBMWpqczl2N0g1?=
 =?utf-8?B?R0gvRXNxOXZMWDYvYlpLcnhyYUV2SGlmS0c1WjlZQ0dUQ3hibjBxNUM4bi9z?=
 =?utf-8?B?Y2ZSb0pMRkF3eXdkZkt6MlZmOHZkNXZud0d5Mm5qeWxqbFl4Z3UzUEl6T0hL?=
 =?utf-8?B?V2M5Mmk4d0lMUHE3QmtsdmIwb2owb1FoTFhQUkZmQXhHQ0RVa1pHRUNyYXRG?=
 =?utf-8?B?SkVWTGtvWlc5bE03dnk2US9oeGg3Z2U0dDNKWVhhZmNnbzZIajBwWm9rNVRG?=
 =?utf-8?B?d3JMRTFadTFkdm1pVGRucTBCeUh4bFNDZ2QySm43Z0s4Sm1tRllkQ2JXbk1s?=
 =?utf-8?B?RytzRExaWXhDRHlyZkw2ZEZkVE0xdkhoazZyczIvbjBmZ2UwajdsNVNFeE92?=
 =?utf-8?B?VXkwQ2M2WmRjS2pVN0trMFMxbURjZWV5UjY0bk0raG9IelkzNkduMnZ2TmlP?=
 =?utf-8?B?ekdiOGdxblR6bWVuUTk1bDJxcGhWdkhibG9yVUI0UHZGOUFUZ29vc29IZ3Yv?=
 =?utf-8?B?SGl6cGRRdlpuU1RBV0haYy9QcHc3SmtyemJKV0pKcmIycFhlZnpMSDg5ekRO?=
 =?utf-8?B?bnpCbG5CT0hrUXdxVmU4V0tXRG4rRE9pUCs1Y0N1OVNOOVJtdWo2aForclgv?=
 =?utf-8?B?WGlhUzhTYUQybFVZRlpmMmswbThKQTRMK2RUcVpDOTA2R2hsdEh5RkNnZ1pX?=
 =?utf-8?B?blNaSnFOK3ZuTXF5QzZ5VHVjamprL1JLaUFaWVEvY3p6U1ZpcmN1bUVHcGRM?=
 =?utf-8?B?UkR3cERwMTdPQ2ZZaWpjVFo2SHpKZWpyZG10Z0Z2V3R2WmorN0RUQkJ3dHVL?=
 =?utf-8?B?cW95OUhmSW5qNlpwYlB4bDZtN01rTDBIYmU4c3dYUU9mUlJNNXdyWCswQk1J?=
 =?utf-8?B?TkJOekdnS0YrR0VsTU54VmRUbUc1bm5BN0lVeHV2bGk4eEkvMzFvNFlCSHVO?=
 =?utf-8?B?T0FrbjVxdm50Ui9nbWZ1ek84OTM4aklUdzNubWxJZkcvUGtmMytaRkFBVlJL?=
 =?utf-8?B?OTJVWDdiVmdyRDEwM1pRTDdHcFRWcUI0Q1p5Z21QUlRicVRQTFcvdz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bc1b330-86ae-4f57-37da-08da335a478d
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2022 14:26:47.2012 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1Uktk2FE2/XD10lI0kZGpjuQNXzwWMGa1n//EaJfXj3O6NJTBNZIRqAtL56o7LIOytVzEQOBNVHC11mWXffBvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5165
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Enable Tile4 tiling mode
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
Cc: krishnaiah.bommu@intel.com, matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This also:

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5879

On 5/11/2022 4:22 PM, Nirmoy Das wrote:
> From: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
>
> Enable Tile4 tiling mode on platform that supports
> Tile4 but no TileY like DG2.
>
> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> Co-developed-by: Nirmoy Das <nirmoy.das@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   .../i915/gem/selftests/i915_gem_client_blt.c  | 238 ++++++++++++++----
>   drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |  22 ++
>   2 files changed, 214 insertions(+), 46 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> index ddd0772fd828..71d7e4afa136 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> @@ -6,6 +6,7 @@
>   #include "i915_selftest.h"
>   
>   #include "gt/intel_context.h"
> +#include "gt/intel_engine_regs.h"
>   #include "gt/intel_engine_user.h"
>   #include "gt/intel_gpu_commands.h"
>   #include "gt/intel_gt.h"
> @@ -18,10 +19,71 @@
>   #include "huge_gem_object.h"
>   #include "mock_context.h"
>   
> +#define OW_SIZE 16                      /* in bytes */
> +#define F_SUBTILE_SIZE 64               /* in bytes */
> +#define F_TILE_WIDTH 128                /* in bytes */
> +#define F_TILE_HEIGHT 32                /* in pixels */
> +#define F_SUBTILE_WIDTH  OW_SIZE        /* in bytes */
> +#define F_SUBTILE_HEIGHT 4              /* in pixels */
> +
> +static int linear_x_y_to_ftiled_pos(int x, int y, u32 stride, int bpp)
> +{
> +	int tile_base;
> +	int tile_x, tile_y;
> +	int swizzle, subtile;
> +	int pixel_size = bpp / 8;
> +	int pos;
> +
> +	/*
> +	 * Subtile remapping for F tile. Note that map[a]==b implies map[b]==a
> +	 * so we can use the same table to tile and until.
> +	 */
> +	static const u8 f_subtile_map[] = {
> +		 0,  1,  2,  3,  8,  9, 10, 11,
> +		 4,  5,  6,  7, 12, 13, 14, 15,
> +		16, 17, 18, 19, 24, 25, 26, 27,
> +		20, 21, 22, 23, 28, 29, 30, 31,
> +		32, 33, 34, 35, 40, 41, 42, 43,
> +		36, 37, 38, 39, 44, 45, 46, 47,
> +		48, 49, 50, 51, 56, 57, 58, 59,
> +		52, 53, 54, 55, 60, 61, 62, 63
> +	};
> +
> +	x *= pixel_size;
> +	/*
> +	 * Where does the 4k tile start (in bytes)?  This is the same for Y and
> +	 * F so we can use the Y-tile algorithm to get to that point.
> +	 */
> +	tile_base =
> +		y / F_TILE_HEIGHT * stride * F_TILE_HEIGHT +
> +		x / F_TILE_WIDTH * 4096;
> +
> +	/* Find pixel within tile */
> +	tile_x = x % F_TILE_WIDTH;
> +	tile_y = y % F_TILE_HEIGHT;
> +
> +	/* And figure out the subtile within the 4k tile */
> +	subtile = tile_y / F_SUBTILE_HEIGHT * 8 + tile_x / F_SUBTILE_WIDTH;
> +
> +	/* Swizzle the subtile number according to the bspec diagram */
> +	swizzle = f_subtile_map[subtile];
> +
> +	/* Calculate new position */
> +	pos = tile_base +
> +		swizzle * F_SUBTILE_SIZE +
> +		tile_y % F_SUBTILE_HEIGHT * OW_SIZE +
> +		tile_x % F_SUBTILE_WIDTH;
> +
> +	GEM_BUG_ON(!IS_ALIGNED(pos, pixel_size));
> +
> +	return pos / pixel_size * 4;
> +}
> +
>   enum client_tiling {
>   	CLIENT_TILING_LINEAR,
>   	CLIENT_TILING_X,
>   	CLIENT_TILING_Y,
> +	CLIENT_TILING_4,
>   	CLIENT_NUM_TILING_TYPES
>   };
>   
> @@ -45,6 +107,19 @@ struct tiled_blits {
>   	u32 height;
>   };
>   
> +static bool fast_blit_ok(struct blit_buffer *buf)
> +{
> +	int gen = GRAPHICS_VER(buf->vma->vm->i915);
> +
> +	if (gen < 9)
> +		return false;
> +
> +	if (gen < 12)
> +		return true;
> +
> +	return !IS_DG1(buf->vma->vm->i915) || buf->tiling != CLIENT_TILING_X;
> +}
> +
>   static int prepare_blit(const struct tiled_blits *t,
>   			struct blit_buffer *dst,
>   			struct blit_buffer *src,
> @@ -59,54 +134,109 @@ static int prepare_blit(const struct tiled_blits *t,
>   	if (IS_ERR(cs))
>   		return PTR_ERR(cs);
>   
> -	*cs++ = MI_LOAD_REGISTER_IMM(1);
> -	*cs++ = i915_mmio_reg_offset(BCS_SWCTRL);
> -	cmd = (BCS_SRC_Y | BCS_DST_Y) << 16;
> -	if (src->tiling == CLIENT_TILING_Y)
> -		cmd |= BCS_SRC_Y;
> -	if (dst->tiling == CLIENT_TILING_Y)
> -		cmd |= BCS_DST_Y;
> -	*cs++ = cmd;
> -
> -	cmd = MI_FLUSH_DW;
> -	if (ver >= 8)
> -		cmd++;
> -	*cs++ = cmd;
> -	*cs++ = 0;
> -	*cs++ = 0;
> -	*cs++ = 0;
> -
> -	cmd = XY_SRC_COPY_BLT_CMD | BLT_WRITE_RGBA | (8 - 2);
> -	if (ver >= 8)
> -		cmd += 2;
> -
> -	src_pitch = t->width * 4;
> -	if (src->tiling) {
> -		cmd |= XY_SRC_COPY_BLT_SRC_TILED;
> -		src_pitch /= 4;
> -	}
> +	/*
> +	 * On GEN12+ X-tiled format support is removed from the fast blit
> +	 * command, so use the XY_SRC blit command for it instead.
> +	 */
> +	if (fast_blit_ok(dst) && fast_blit_ok(src)) {
> +		struct intel_gt *gt = t->ce->engine->gt;
> +		u32 src_tiles = 0, dst_tiles = 0;
> +		u32 src_4t = 0, dst_4t = 0;
> +
> +		/* Need to program BLIT_CCTL if it is not done previously
> +		 * before using XY_FAST_COPY_BLT
> +		 */
> +		*cs++ = MI_LOAD_REGISTER_IMM(1);
> +		*cs++ = i915_mmio_reg_offset(BLIT_CCTL(t->ce->engine->mmio_base));
> +		*cs++ = (BLIT_CCTL_SRC_MOCS(gt->mocs.uc_index) |
> +			 BLIT_CCTL_DST_MOCS(gt->mocs.uc_index));
> +
> +		src_pitch = t->width; /* in dwords */
> +		if (src->tiling == CLIENT_TILING_4) {
> +			src_tiles = XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(YMAJOR);
> +			src_4t = XY_FAST_COPY_BLT_D1_SRC_TILE4;
> +		} else if (src->tiling == CLIENT_TILING_Y) {
> +			src_tiles = XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(YMAJOR);
> +		} else if (src->tiling == CLIENT_TILING_X) {
> +			src_tiles = XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(TILE_X);
> +		} else {
> +			src_pitch *= 4; /* in bytes */
> +		}
>   
> -	dst_pitch = t->width * 4;
> -	if (dst->tiling) {
> -		cmd |= XY_SRC_COPY_BLT_DST_TILED;
> -		dst_pitch /= 4;
> -	}
> +		dst_pitch = t->width; /* in dwords */
> +		if (dst->tiling == CLIENT_TILING_4) {
> +			dst_tiles = XY_FAST_COPY_BLT_D0_DST_TILE_MODE(YMAJOR);
> +			dst_4t = XY_FAST_COPY_BLT_D1_DST_TILE4;
> +		} else if (dst->tiling == CLIENT_TILING_Y) {
> +			dst_tiles = XY_FAST_COPY_BLT_D0_DST_TILE_MODE(YMAJOR);
> +		} else if (dst->tiling == CLIENT_TILING_X) {
> +			dst_tiles = XY_FAST_COPY_BLT_D0_DST_TILE_MODE(TILE_X);
> +		} else {
> +			dst_pitch *= 4; /* in bytes */
> +		}
>   
> -	*cs++ = cmd;
> -	*cs++ = BLT_DEPTH_32 | BLT_ROP_SRC_COPY | dst_pitch;
> -	*cs++ = 0;
> -	*cs++ = t->height << 16 | t->width;
> -	*cs++ = lower_32_bits(dst->vma->node.start);
> -	if (use_64b_reloc)
> +		*cs++ = GEN9_XY_FAST_COPY_BLT_CMD | (10 - 2) |
> +			src_tiles | dst_tiles;
> +		*cs++ = src_4t | dst_4t | BLT_DEPTH_32 | dst_pitch;
> +		*cs++ = 0;
> +		*cs++ = t->height << 16 | t->width;
> +		*cs++ = lower_32_bits(dst->vma->node.start);
>   		*cs++ = upper_32_bits(dst->vma->node.start);
> -	*cs++ = 0;
> -	*cs++ = src_pitch;
> -	*cs++ = lower_32_bits(src->vma->node.start);
> -	if (use_64b_reloc)
> +		*cs++ = 0;
> +		*cs++ = src_pitch;
> +		*cs++ = lower_32_bits(src->vma->node.start);
>   		*cs++ = upper_32_bits(src->vma->node.start);
> +	} else {
> +		if (ver >= 6) {
> +			*cs++ = MI_LOAD_REGISTER_IMM(1);
> +			*cs++ = i915_mmio_reg_offset(BCS_SWCTRL);
> +			cmd = (BCS_SRC_Y | BCS_DST_Y) << 16;
> +			if (src->tiling == CLIENT_TILING_Y)
> +				cmd |= BCS_SRC_Y;
> +			if (dst->tiling == CLIENT_TILING_Y)
> +				cmd |= BCS_DST_Y;
> +			*cs++ = cmd;
> +
> +			cmd = MI_FLUSH_DW;
> +			if (ver >= 8)
> +				cmd++;
> +			*cs++ = cmd;
> +			*cs++ = 0;
> +			*cs++ = 0;
> +			*cs++ = 0;
> +		}
>   
> -	*cs++ = MI_BATCH_BUFFER_END;
> +		cmd = XY_SRC_COPY_BLT_CMD | BLT_WRITE_RGBA | (8 - 2);
> +		if (ver >= 8)
> +			cmd += 2;
> +
> +		src_pitch = t->width * 4;
> +		if (src->tiling) {
> +			cmd |= XY_SRC_COPY_BLT_SRC_TILED;
> +			src_pitch /= 4;
> +		}
> +
> +		dst_pitch = t->width * 4;
> +		if (dst->tiling) {
> +			cmd |= XY_SRC_COPY_BLT_DST_TILED;
> +			dst_pitch /= 4;
> +		}
> +
> +		*cs++ = cmd;
> +		*cs++ = BLT_DEPTH_32 | BLT_ROP_SRC_COPY | dst_pitch;
> +		*cs++ = 0;
> +		*cs++ = t->height << 16 | t->width;
> +		*cs++ = lower_32_bits(dst->vma->node.start);
> +		if (use_64b_reloc)
> +			*cs++ = upper_32_bits(dst->vma->node.start);
> +		*cs++ = 0;
> +		*cs++ = src_pitch;
> +		*cs++ = lower_32_bits(src->vma->node.start);
> +		if (use_64b_reloc)
> +			*cs++ = upper_32_bits(dst->vma->node.start);
> +	}
>   
> +	*cs++ = MI_BATCH_BUFFER_END;
>   	i915_gem_object_flush_map(batch);
>   	i915_gem_object_unpin_map(batch);
>   
> @@ -181,7 +311,13 @@ static int tiled_blits_create_buffers(struct tiled_blits *t,
>   
>   		t->buffers[i].vma = vma;
>   		t->buffers[i].tiling =
> -			i915_prandom_u32_max_state(CLIENT_TILING_Y + 1, prng);
> +			i915_prandom_u32_max_state(CLIENT_NUM_TILING_TYPES, prng);
> +
> +		/* Platforms support either TileY or Tile4, not both */
> +		if (HAS_4TILE(i915) && t->buffers[i].tiling == CLIENT_TILING_Y)
> +			t->buffers[i].tiling = CLIENT_TILING_4;
> +		else if (!HAS_4TILE(i915) && t->buffers[i].tiling == CLIENT_TILING_4)
> +			t->buffers[i].tiling = CLIENT_TILING_Y;
>   	}
>   
>   	return 0;
> @@ -206,7 +342,8 @@ static u64 swizzle_bit(unsigned int bit, u64 offset)
>   static u64 tiled_offset(const struct intel_gt *gt,
>   			u64 v,
>   			unsigned int stride,
> -			enum client_tiling tiling)
> +			enum client_tiling tiling,
> +			int x_pos, int y_pos)
>   {
>   	unsigned int swizzle;
>   	u64 x, y;
> @@ -216,7 +353,12 @@ static u64 tiled_offset(const struct intel_gt *gt,
>   
>   	y = div64_u64_rem(v, stride, &x);
>   
> -	if (tiling == CLIENT_TILING_X) {
> +	if (tiling == CLIENT_TILING_4) {
> +		v = linear_x_y_to_ftiled_pos(x_pos, y_pos, stride, 32);
> +
> +		/* no swizzling for f-tiling */
> +		swizzle = I915_BIT_6_SWIZZLE_NONE;
> +	} else if (tiling == CLIENT_TILING_X) {
>   		v = div64_u64_rem(y, 8, &y) * stride * 8;
>   		v += y * 512;
>   		v += div64_u64_rem(x, 512, &x) << 12;
> @@ -259,6 +401,7 @@ static const char *repr_tiling(enum client_tiling tiling)
>   	case CLIENT_TILING_LINEAR: return "linear";
>   	case CLIENT_TILING_X: return "X";
>   	case CLIENT_TILING_Y: return "Y";
> +	case CLIENT_TILING_4: return "F";
>   	default: return "unknown";
>   	}
>   }
> @@ -284,7 +427,7 @@ static int verify_buffer(const struct tiled_blits *t,
>   	} else {
>   		u64 v = tiled_offset(buf->vma->vm->gt,
>   				     p * 4, t->width * 4,
> -				     buf->tiling);
> +				     buf->tiling, x, y);
>   
>   		if (vaddr[v / sizeof(*vaddr)] != buf->start_val + p)
>   			ret = -EINVAL;
> @@ -504,6 +647,9 @@ static int tiled_blits_bounce(struct tiled_blits *t, struct rnd_state *prng)
>   	if (err)
>   		return err;
>   
> +	/* Simulating GTT eviction of the same buffer / layout */
> +	t->buffers[2].tiling = t->buffers[0].tiling;
> +
>   	/* Reposition so that we overlap the old addresses, and slightly off */
>   	err = tiled_blit(t,
>   			 &t->buffers[2], t->hole + t->align,
> diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> index 556bca3be804..e53db7c1bdc0 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> @@ -236,6 +236,28 @@
>   #define   XY_FAST_COLOR_BLT_DW		16
>   #define   XY_FAST_COLOR_BLT_MOCS_MASK	GENMASK(27, 21)
>   #define   XY_FAST_COLOR_BLT_MEM_TYPE_SHIFT 31
> +
> +#define   XY_FAST_COPY_BLT_D0_SRC_TILING_MASK     REG_GENMASK(21, 20)
> +#define   XY_FAST_COPY_BLT_D0_DST_TILING_MASK     REG_GENMASK(14, 13)
> +#define   XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(mode)  \
> +	REG_FIELD_PREP(XY_FAST_COPY_BLT_D0_SRC_TILING_MASK, mode)
> +#define   XY_FAST_COPY_BLT_D0_DST_TILE_MODE(mode)  \
> +	REG_FIELD_PREP(XY_FAST_COPY_BLT_D0_DST_TILING_MASK, mode)
> +#define     LINEAR				0
> +#define     TILE_X				0x1
> +#define     XMAJOR				0x1
> +#define     YMAJOR				0x2
> +#define     TILE_64			0x3
> +#define   XY_FAST_COPY_BLT_D1_SRC_TILE4	REG_BIT(31)
> +#define   XY_FAST_COPY_BLT_D1_DST_TILE4	REG_BIT(30)
> +#define BLIT_CCTL_SRC_MOCS_MASK  REG_GENMASK(6, 0)
> +#define BLIT_CCTL_DST_MOCS_MASK  REG_GENMASK(14, 8)
> +/* Note:  MOCS value = (index << 1) */
> +#define BLIT_CCTL_SRC_MOCS(idx) \
> +	REG_FIELD_PREP(BLIT_CCTL_SRC_MOCS_MASK, idx << 1)
> +#define BLIT_CCTL_DST_MOCS(idx) \
> +	REG_FIELD_PREP(BLIT_CCTL_DST_MOCS_MASK, idx << 1)
> +
>   #define SRC_COPY_BLT_CMD		(2 << 29 | 0x43 << 22)
>   #define GEN9_XY_FAST_COPY_BLT_CMD	(2 << 29 | 0x42 << 22)
>   #define XY_SRC_COPY_BLT_CMD		(2 << 29 | 0x53 << 22)
