Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5EB8865CA
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 05:34:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BD4810EED8;
	Fri, 22 Mar 2024 04:34:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eTXbprJ7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A82110EED8;
 Fri, 22 Mar 2024 04:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711082081; x=1742618081;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Okvxr+CAeUtbhXubQFC+hFJryzf57o0JDeXuk1WKM0g=;
 b=eTXbprJ7zTBp8DAu3bD/psHul4LCg2642xnSTf7iOZ3sV+YofUy24cm6
 NPd74ZgpQJeEd3U5bueRJ63+Cx75kQjT+p9J4S1ONam57buTqXYLUddUq
 19DjeoXbbaVpG4p8GGG/cK3vvlVVn+By5KA+8iVk7mH+n+0tkL5f5mIEt
 VcDu54OtQZl6crOGjqoa2rDRr1xRRO8V/ZY7DZahGdxRyIUx24tJ4MY1O
 7RRvXqZVKI4He+Ce/YSbvueAvcbkz2zh86QlO8Wg4rDq/rHx0Q6xUXHmT
 wA0UoZ9w+crQx7Z8hC/CRvyre+8hLatJ+I31fdiHf+LWy/6YSaSJEZ/DV A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="6050198"
X-IronPort-AV: E=Sophos;i="6.07,144,1708416000"; 
   d="scan'208";a="6050198"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 21:34:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,144,1708416000"; d="scan'208";a="15408992"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Mar 2024 21:34:40 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Mar 2024 21:34:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Mar 2024 21:34:39 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 21 Mar 2024 21:34:39 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 21 Mar 2024 21:34:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KvoXo6Ai1vl9Kh7M8gqDs0Xc7lw+U5CKH4WdYqi/dynW/BMx0ulXANPvqHakjsTsM8H7lUo72vlRgrku66Tn9AaLRERcgRMtJsczsU6n4jk+G6lqPBrYzwpATnv/9/VjjxqgIodnZhZUlavEQfKIHncuq/Ij+8bN0UUrV+O+mAR9J/RrrM7X6N/Hu/WJAsf3F+15/WpRMjqs8ype7SNr1Qi0+z6PwN3A4HLsvdQiTlFy0vm9PZM4sx4rgfYtWQ+yuWtY1ZvwTDxEr1jBhy3y0ucGDHr4kEHptWcKj+z0S54u3Lqe07vVKCYK2u+97T5/OqnFpn9HEjNdAaVpka9aqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C07NNqgkFMv2VXLGjUA2tSFQav61EzLsRktJcyFv18w=;
 b=DON1XDy7FVjkPTpg4EGklZmNfAXbLB+WX3mvG2hsR1IiAgyWEPXqxAAskjDP+VkkrcNSmqs62gI/V+kJKDN56XSkI1z1Ph2Lx0Hly6S9oxIuN0qen1YOaV3ILqTe1nUqnHUwMPqzHDwM9UXKX4+8/VU7+yGNYEJctr5SjBQgTFornCq7uVCA8v9aNS0OZL4MJalGJ46nUV3Vsg3/FIsYlHIzNPEObXdEl2/HfZiKl0A7RLA1kOxpBNYc1ftzybeFQvND4XDqihgFQvq8V9V+n1OhyWqPFKIptdsBYNCeNVLZzO2CVltbW6/B/Pc9ug2U0hTArSNHG/t6IOBEZHI1lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM6PR11MB4740.namprd11.prod.outlook.com (2603:10b6:5:2ad::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.24; Fri, 22 Mar
 2024 04:34:29 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7409.023; Fri, 22 Mar 2024
 04:34:28 +0000
Date: Thu, 21 Mar 2024 23:34:25 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: move dmc_firmware_path to display params
Message-ID: <64loxwpkjgu2nf4up554hfuqd6oi2quguozom2p2gowem26rbj@rszc3ubdda6u>
References: <20240321161856.3517856-1-jani.nikula@intel.com>
 <87y1ablfo6.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <87y1ablfo6.fsf@intel.com>
X-ClientProxiedBy: BY3PR03CA0029.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::34) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DM6PR11MB4740:EE_
X-MS-Office365-Filtering-Correlation-Id: ef24bcd4-0fc1-4f84-a752-08dc4a295c63
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: biuho5BdzKSWn7dHU56y8t4uUNN+Bcg8CJLwEK5ykWNYDoJi0ssjsXf/K5307FhrCLqQFV5SatDf21tD4pm8FlcFEmfWwHwMR0ayJJQIOHeHUeuWAABOJDVK1ZR0T3zjksaJClj33hZHin+pBiGuXnWkvByT9g+CnzgmvA6B3b7VLzlemkx1mO4pIOBggI5WG/U+BYQGWdrKcEzydLp2vhMZoOqPvlbIZ0d2SrHxo40uNUP2rFI8z44OyrOiANncg10AkUy8pAedfFQeiuvHBUubWIYEiZ/vOnbNlvsP/Q5bpndcF+3DXCWmXGsUx0RfAml5MmaRg75rC1vcCjQNk1+rm9rGyYoBn0T+n739Lic6nMSr6oxDoBoVCzNlQ6pmLnrHxHc85h0563oaayCtQqVntq2GeU5ubx0Uxu4gXTDAH2tFnDplRk49XQgJj89X/QyOVMStj72x1HDqNZyE92+9Hgte7rwdOdXim79aK+gAWUM68KESL/Uss9Plmo1oD9JqDZ1b4G+9G+Xra34BhXimZU2ntSxLLOF4VJohC821joXviSczuEBLuz4g2T1rjUJ/GHNEbadUbIOyC+utno6cGKhFFfariF0h1iGDr0NkiLbX8Dp6KBDHFgTQdgUCdJK4RBGawjqqv2e2AO//OYFbo11xwiIWZT2d2DT42Fg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cGSTqSXqHNFhKm+U9hEhwCc8QynTYVI4ZW1dhm5dSrw4UFaAzlA8P9zCnEJW?=
 =?us-ascii?Q?jfagYzRVH+CAUvBkVbWOJ8Bra0xxEQnTqT1ZbB7sR7BSS1CpcRZ3zZfIVETE?=
 =?us-ascii?Q?AjMmiBt4Xie9mS8O8tyF4scF4iKeq1B4AT2HlDzkyrQGqC21HmMGryMErD0y?=
 =?us-ascii?Q?B8kILfcD+uZYuVw9VqwnD07HvNd3S+GlOA0w3FNqicfQV0tw/8nY02s/N29K?=
 =?us-ascii?Q?EaTn0sc3GT1VAFwz2WWQZf8lF4IbMWSYBlvC6BIqdJpGzITlbczxWepjaTdI?=
 =?us-ascii?Q?KlNdvbu8Fi1BKFA4BivKaWj9Xleri2opU5rTtSQjDJkckYT9nbSWq0cISnE+?=
 =?us-ascii?Q?SrcFgGvScgUWioRzJRU0I+EbrE6HE5IZIIZFkl9SfnpuLrzXRs5b8qHeVvEO?=
 =?us-ascii?Q?qLaDDqyI43tx1tqxGQfB54u1w9v2jPQZcy93qJeLLqAPqvWYvd4qtk3B1Yph?=
 =?us-ascii?Q?MC2Zjc3PtXoaUk7k9Bc4q1c2GnrIljKcYxQqZkNiIxlovu/MPkEPkfyEbkXl?=
 =?us-ascii?Q?ACWsqOEXwztN8QwxT7171KM0kFnTYEDKXUWTVfgBcdd4lFTTQUOYzek6fvln?=
 =?us-ascii?Q?N3SHfVZXk42OVo+WGZns8RwFAuCCOs93PMQu0M2c6HilneLwffEQ6N6OMOxh?=
 =?us-ascii?Q?JcPcngdqfaiu9L+1PQLjojM2WBQGRhaff8QPsOww2tKh9ZvXAcoJYEDE+Rcy?=
 =?us-ascii?Q?w0Dm8IESKKEMUYTseGSeJUJL2XDPoNWYXGAhdLwvw+S0+41US1Lcb0xSbS4u?=
 =?us-ascii?Q?nVNm/n3FSW3LKq+Uu4tOZ48Ukv6bQUxKVJbnL+vBVA+NCVlCf4c9ePxeorME?=
 =?us-ascii?Q?al2javDdBWG+BcG5mDM/u8hnkF6dYee+XfBpxRh7CxdP11/ePK6BSEzIXJdy?=
 =?us-ascii?Q?yG2uYRK13Yyca3FKUH1+RziaLxpcypvyVx8PHY7x5RfrFF7/D/VO28e2gA7R?=
 =?us-ascii?Q?SdujZ3TlJXr2ZBGwu2rL23fmuUHKge23RzWeukoi8ZAeHTsJjqaEEziFlccN?=
 =?us-ascii?Q?MMqjcK9v6kR+MZtkAz9UkjQAewJwj5uDMrPQjG5KaGG7Gbl3+xDG7tzs7mbp?=
 =?us-ascii?Q?5zGOJwZOMSE06E64k7KTscqFgtXo6wk9UIWPPpuLBx1GNswzeJxGZbJa+1Bu?=
 =?us-ascii?Q?cwC0zu5n/IYmVCGUbxLnhZthaITtFhCJYo2kDlZxXADLBne7Hp5eSl2xXUBL?=
 =?us-ascii?Q?tmoMq7qq9sJoY8o5HHvXn8ueomn7En5fvLdAiZqFKysvK5Cm/BGar0bA6Wmo?=
 =?us-ascii?Q?dUAkI7p20JSJIqKhnu1iT2xF2A+VxSoiur8aRwz8Juut5GBgTXWtxE1+xIpx?=
 =?us-ascii?Q?UbBY29ul4sW07jr7+1fVyuiceg/jmjCjiTIk5+2/7klBefCx7NDGnDx2bJst?=
 =?us-ascii?Q?7B0BQ4VyMhdnBkFP8H95nYIlJO0NQRBv+ogn1pK2cshUfT7GiDf904YyCfaM?=
 =?us-ascii?Q?Xhh9NPmG/pBAsayCfUZmFvXbWAvpfZlCYQNLxGtW6fDodQSgB2pE9Tkxr2Oh?=
 =?us-ascii?Q?DJn+pQiIdZmZlDz38JDvv7hKsZJ26iL7EezmB4USjPKcV4/kPut+8SQ06U6f?=
 =?us-ascii?Q?XC7gFynlYbSNlPwZscVRvbdKgty+esrLEBaUtGoE8GrxtN4hU1J4sjIurU3A?=
 =?us-ascii?Q?vQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ef24bcd4-0fc1-4f84-a752-08dc4a295c63
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Mar 2024 04:34:28.5744 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8560peIsWjVMqEEd8SMW90N4lBa7iUOgr7a6Z8vvtn++ICXrQlIx4XJQkhEZP35p7H0gG7zF5IGD35S+ZjRPooRhGbPwO+xVvmcZkGSUY3U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4740
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

On Thu, Mar 21, 2024 at 06:20:57PM +0200, Jani Nikula wrote:
>On Thu, 21 Mar 2024, Jani Nikula <jani.nikula@intel.com> wrote:
>> The dmc_firmware_path parameter is clearly a display parameter. Move it
>> there. This also cleans up the ugly member in struct xe_device.
>
>Hmm, does this actually fix the parameter on xe?!

not sure what you meant here. Patches makes sense to me.

Lucas De Marchi

>
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_params.c | 3 +++
>>  drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
>>  drivers/gpu/drm/i915/display/intel_dmc.c            | 8 ++++----
>>  drivers/gpu/drm/i915/i915_params.c                  | 3 ---
>>  drivers/gpu/drm/i915/i915_params.h                  | 1 -
>>  drivers/gpu/drm/xe/xe_device_types.h                | 3 ---
>>  6 files changed, 8 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
>> index 11e03cfb774d..c8e3d6892e23 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
>> @@ -27,6 +27,9 @@ static struct intel_display_params intel_display_modparams __read_mostly = {
>>   * debugfs mode to 0.
>>   */
>>
>> +intel_display_param_named_unsafe(dmc_firmware_path, charp, 0400,
>> +	"DMC firmware path to use instead of the default one");
>> +
>>  intel_display_param_named_unsafe(vbt_firmware, charp, 0400,
>>  	"Load VBT from specified file under /lib/firmware");
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
>> index 6206cc51df04..f95a6f79904f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
>> @@ -24,6 +24,7 @@ struct drm_i915_private;
>>   *       debugfs file
>>   */
>>  #define INTEL_DISPLAY_PARAMS_FOR_EACH(param) \
>> +	param(char *, dmc_firmware_path, NULL, 0400) \
>>  	param(char *, vbt_firmware, NULL, 0400) \
>>  	param(int, lvds_channel_mode, 0, 0400) \
>>  	param(int, panel_use_ssc, -1, 0600) \
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>> index 3fa851b5c7a6..b4e730882ce2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> @@ -927,7 +927,7 @@ static void dmc_load_work_fn(struct work_struct *work)
>>
>>  	err = request_firmware(&fw, dmc->fw_path, i915->drm.dev);
>>
>> -	if (err == -ENOENT && !i915->params.dmc_firmware_path) {
>> +	if (err == -ENOENT && !i915->display.params.dmc_firmware_path) {
>>  		fallback_path = dmc_fallback_path(i915);
>>  		if (fallback_path) {
>>  			drm_dbg_kms(&i915->drm, "%s not found, falling back to %s\n",
>> @@ -1034,14 +1034,14 @@ void intel_dmc_init(struct drm_i915_private *i915)
>>  		dmc->max_fw_size = BXT_DMC_MAX_FW_SIZE;
>>  	}
>>
>> -	if (i915->params.dmc_firmware_path) {
>> -		if (strlen(i915->params.dmc_firmware_path) == 0) {
>> +	if (i915->display.params.dmc_firmware_path) {
>> +		if (strlen(i915->display.params.dmc_firmware_path) == 0) {
>>  			drm_info(&i915->drm,
>>  				 "Disabling DMC firmware and runtime PM\n");
>>  			goto out;
>>  		}
>>
>> -		dmc->fw_path = i915->params.dmc_firmware_path;
>> +		dmc->fw_path = i915->display.params.dmc_firmware_path;
>>  	}
>>
>>  	if (!dmc->fw_path) {
>> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
>> index de43048543e8..8c00169e3ab7 100644
>> --- a/drivers/gpu/drm/i915/i915_params.c
>> +++ b/drivers/gpu/drm/i915/i915_params.c
>> @@ -108,9 +108,6 @@ i915_param_named_unsafe(guc_firmware_path, charp, 0400,
>>  i915_param_named_unsafe(huc_firmware_path, charp, 0400,
>>  	"HuC firmware path to use instead of the default one");
>>
>> -i915_param_named_unsafe(dmc_firmware_path, charp, 0400,
>> -	"DMC firmware path to use instead of the default one");
>> -
>>  i915_param_named_unsafe(gsc_firmware_path, charp, 0400,
>>  	"GSC firmware path to use instead of the default one");
>>
>> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
>> index 1315d7fac850..2eb3f2115ff2 100644
>> --- a/drivers/gpu/drm/i915/i915_params.h
>> +++ b/drivers/gpu/drm/i915/i915_params.h
>> @@ -51,7 +51,6 @@ struct drm_printer;
>>  	param(int, guc_log_level, -1, 0400) \
>>  	param(char *, guc_firmware_path, NULL, 0400) \
>>  	param(char *, huc_firmware_path, NULL, 0400) \
>> -	param(char *, dmc_firmware_path, NULL, 0400) \
>>  	param(char *, gsc_firmware_path, NULL, 0400) \
>>  	param(bool, memtest, false, 0400) \
>>  	param(int, mmio_debug, -IS_ENABLED(CONFIG_DRM_I915_DEBUG_MMIO), 0600) \
>> diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
>> index 9785eef2e5a4..eeab2002d6db 100644
>> --- a/drivers/gpu/drm/xe/xe_device_types.h
>> +++ b/drivers/gpu/drm/xe/xe_device_types.h
>> @@ -524,9 +524,6 @@ struct xe_device {
>>  		unsigned int fsb_freq, mem_freq, is_ddr3;
>>  		u8 vblank_enabled;
>>  	};
>> -	struct {
>> -		const char *dmc_firmware_path;
>> -	} params;
>>
>>  	void *pxp;
>>  #endif
>
>-- 
>Jani Nikula, Intel
