Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59AF99BF36B
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 17:40:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3A6910E729;
	Wed,  6 Nov 2024 16:40:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gLcTTKib";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDFC410E729;
 Wed,  6 Nov 2024 16:40:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730911236; x=1762447236;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=a1K8Tf1fMlNNI1fmBHCXGHjKvFv0iC7r1a94iU2dFRk=;
 b=gLcTTKibE/PhlNB5VJ92xjbO/hMAFYrmHatgquvAedSHY9KrYobrB+XA
 C3K6puSFhI/JZ34szCwUFpM989MeEqYEG4Aw4/n6TySdnhlNwYB7w3af2
 UcKSWmtgXhpLZNISq6ClaBTWRu6PzzcrAbx/FNS0hgHDXgyPzIUps3kGc
 15RebVQNaqHfV/xhSUO4fIz1biTc5dw2BIXp2TP4PPXa4f/G4Z3Gci3x5
 LAKgefu4kTDleuRb4cnm+AOI9huSSVihHHYbTGWiqK6LBKSdAY3TbvTXE
 JimzRcThaq0AA344pgBQ8JD1eRxeWyDgtbUlB4TFdJHtGXMiHNMthMuVq w==;
X-CSE-ConnectionGUID: d3j+4ATKSieMc/aC0Yd9qg==
X-CSE-MsgGUID: 8bI8yTtTQvOSkwt2xjnc1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="34500748"
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="34500748"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 08:40:36 -0800
X-CSE-ConnectionGUID: vZuJUuLfTuq5UF36uKnITw==
X-CSE-MsgGUID: K5Qfag1sQMesdepE7THJDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="85458273"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 08:40:35 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 08:40:34 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 08:40:34 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 08:40:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vS/Mq0IB7Yb7YMWj0VqsK4sU+quqdMdThYFWNtywrqIZlpPmxK7dTxpB34IFcjhpfQL48hrJD/E4ueyVbVwto6Q+HJgcf1HFVboFgMrxe8yZo+Ib4m7qY7MccaliZ8Go0E63y0XdYLNbxgzINWfDp2sRoqNoV088ssGCraMdHY3/6fwTn3SNvK8jT4Ezrxi89zNnZN34HlhFXmvswUpQihb3FkQWxSWBKn2BLF8ogu2foxz6mB8OJExCmZ220sVNNjpDg+EJSeaV++CFdGmMVH9ASc9i+U8yWO+HgR8cn+gSKpQz3rO8Yn0HXgE333Zu+aDhIFD1sppswvtUeRukLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y+KGTbm0XliX369sZOOw4LxWrrb0IqETmGwkr1Tva7E=;
 b=CsX6sVnV/UE+tOcWAiC9M1b5Sj3OVFHFpBe35oUAa53ruSuG4KHUnghSICyWHNs4HClhk9g1l89rmpGcpiiQmGEiG+yQGbE7/QByulb4STuOz3LHcajhe1bK7QmOdafnWb0DdUbRojBS6BoHMYVS/uBv8e5kudVkF4Embb9LaCEAM6czeHmLIB95wZiBbGeIACSGk/7kHihLjLXY5B2M7DjkYDfU5ebsGdQiP/MpAJvHe7KdvIjqrZtFIeTmyLPRVBXnPc9J4M46mN0PGBTH7QZ3x6wVbbqcUQnO4JU/xzjcYTxvGdETA3MQSIig7X2l21yBNl6SZ6V26LIB46o0Wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB8513.namprd11.prod.outlook.com (2603:10b6:a03:56e::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Wed, 6 Nov
 2024 16:40:32 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Wed, 6 Nov 2024
 16:40:32 +0000
Date: Wed, 6 Nov 2024 11:40:28 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 15/15] drm/i915/display: add mobile platform group
Message-ID: <Zyub_ECW7cCu5HPc@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
 <e9277a5635fc02106ca69b9071928c2249323500.1730740629.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <e9277a5635fc02106ca69b9071928c2249323500.1730740629.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW2PR16CA0060.namprd16.prod.outlook.com
 (2603:10b6:907:1::37) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB8513:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d1446d2-5d33-4761-0c66-08dcfe81bae4
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?PqrAalnREgAakl0DAk0uIsfKheVoyQLa62Zrk1Ep8tTJqvUapZyp98pdMtKr?=
 =?us-ascii?Q?UKtqCz05gqBsOF2O6VSVDu4QKO0b+9zP3Eab6wdMHNGRWCTM4nLTlhR7rEor?=
 =?us-ascii?Q?iwuiaXeo4wA6ECl5JIaHR4wIF9pTpER3rpJdBIlfhXoQSlAYKxGKugGCmUml?=
 =?us-ascii?Q?d/MY9G4SxL1X11cdUoU/kf80sV+8sm4OdTVLa8aPtArO0OXzZRkWR0aEEoEN?=
 =?us-ascii?Q?TQcIwDMPwsQuND3pKZ//V0lH/f5ZoiXlGNvrsdmuJwYnBnnnadzBLLHqE2z5?=
 =?us-ascii?Q?zWuyTSRk/UpnwmvWQvJJ1SR3muAPl6Zb+aU/wO2gaef1cW4VnPxhtNqdFKLx?=
 =?us-ascii?Q?42zKKNidOyro9Fo7LkmHvQkfHnp2zrxgeQguIQiRGYGbwAemobW8+rXe8Xhw?=
 =?us-ascii?Q?VkSaEGOhsnHKHBdUl2g/1TtXKe6UfoXdkDVksqu5RPivHRpwEO+DOBcdn4yK?=
 =?us-ascii?Q?tuV91UTuype7z/6GhzTXAbtnMT3FM1N+gSUi5mcp2c4b8fbFRNqmCMVZknNR?=
 =?us-ascii?Q?xUWLDgo+w/9lY8yH3wl+g1bLEb6Y+k1n2/rnCQK0vFcZePkI5lzxe3VSNWKE?=
 =?us-ascii?Q?tDWhZxBEDvVNcfeRJvGpFV9Re3e2tyEm3lM+gmcjUNw02MIjVINUzldyhXTU?=
 =?us-ascii?Q?O2SlzBrzxYMR8454JkrQXXW3yCm5REQ25QhlZmUSkdS4nDqZaKvWu40UGqMJ?=
 =?us-ascii?Q?LArVAjLVlr6A+WEeltbgjfm65BYlTDxIsTqe+a2tjLcXmsb1zAT7CcsZIcnH?=
 =?us-ascii?Q?EJNU81u3tJpyqR84dKfV3iYHRkqEWUF4VTFdjMnqGepbh6U5YuBVAi1La52M?=
 =?us-ascii?Q?DYTDRUGeLAjsPNp8y+38Ebg857aG4NbNY1I4YKLYWXw0v66+rK++urKMw8/6?=
 =?us-ascii?Q?kc4C2d6pVuG40j4KTSchyHk4MbwGUoNt8VziIPheH613mDR16F5fX89zjhPv?=
 =?us-ascii?Q?/+0fzIf854c/MJyAYZOxBQBsegqWHt8lqhZPYpWJ4aN0zyBpOnPoVU6VBO+k?=
 =?us-ascii?Q?xin+N0AetqP6hwX0fcKNdNAjtW6d/BIjAqMRyNmI+yWo4eSFsNkKhCfkryau?=
 =?us-ascii?Q?kLPohWVq6KNXxbjJ2FmmESPg8VpRlKeWLyEZmLsF9CfiFEpJevLnIRHd3A1C?=
 =?us-ascii?Q?okBh6xHWEFa2IuGU42s5deiCNyTVhlPLMFx9mBm/Gn+lcbOMbCGoq6vcUOFc?=
 =?us-ascii?Q?RzmF+PkZ+QLEBSij/Yz7enMGKXCN1pDcqR+oZyDzAASC2yRUsxB8bxXKsECv?=
 =?us-ascii?Q?iFuU9zorm2y9F6UvoNaIYBH/h31i61L44CFHxNZbvPvUkPDikjNSd+y7A1+v?=
 =?us-ascii?Q?5JpZpQ6vksXdIQ4E1aFI1F3/?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cijymRUZ0R4VvnIl+NS7Wvc8pJ1rqtJ9Q3McEK6W3MzGNlCXM5kuWdqpgKHe?=
 =?us-ascii?Q?H7Ycy0rTfHTlOYZR553/19mjD5tkdhJ2+LQgWW8wRndRJ/0/7DF+omMi2a5Z?=
 =?us-ascii?Q?NarV83Xlwpwbpt4EQm234+tv4qenAeTjJ0x50dUZ9ZHVop3imHcSkm3iEk/S?=
 =?us-ascii?Q?eIoVzucquFxdWQvIK2LW5HaGGtoooxRsA3sHUVZUurN1ddPcGvelEaPbdyQP?=
 =?us-ascii?Q?HFwLOi1N2vLHwRUJZ9Vf0JVoSEQv/xaWLzcgmv6izs31tWfAE/FoEoKMds7y?=
 =?us-ascii?Q?36ob39yZHvVdQ0gKz3XMLCoPi479IeyM9QyYmNoAQQ1oPL5YtyUey97TQQzT?=
 =?us-ascii?Q?0Elp1u4TkrLUCCYKljcuXPzMChJLLQye/n60/ftePbap909fEKP4dcbUB+z5?=
 =?us-ascii?Q?2O4zvPT+QOEWJzGroAA7qBA3Me049cTWPy1HakpsVg5Pcb7dXDNbMEXQpya2?=
 =?us-ascii?Q?D70llYEh/Sj6n1BQ+k47s4EvwtVb0aHs9P8WAbrcGf/1X9UfWcOBF5Ypg5yT?=
 =?us-ascii?Q?vDlsOkf3NqoHqc4uNQzc55UUvZLAk13xSqpXpNgfNNrYKL8EEhRRf7jca1qe?=
 =?us-ascii?Q?YQhnV1AK4bOxYtkthT6dZRHAVHyC7iOHOCFi2KmRfClq2BcZLP8wGBVLklb4?=
 =?us-ascii?Q?Tu6bl15y/Q4QyG5B8S4uRRCBElLZMslSZ48aFs2PI8wiH4meAKS7lHc/ADrc?=
 =?us-ascii?Q?wJ6YsFnjnDT0u3pUqbz7i439RtP6V57cTcqqMSdIAoXNdPHUi5JnR1JGKLeR?=
 =?us-ascii?Q?5FQn9je2VdvAAmyriI5qoEHpiGzIMh4iPSl7wKH43qu+9VhL8pkqrX3bEk2A?=
 =?us-ascii?Q?sTWi9xXehGrXYUtvz6ZlIM62tPKnw/4DDzrdUQD/t2bJLKgzmZiiwAxWDpdI?=
 =?us-ascii?Q?LEG1uBHlO6HZ11vQNGbP1m6tiYjNubmATtxMAD+uo3KZFo0yTY5BM+yH9/bO?=
 =?us-ascii?Q?+es+Vwv2n2clXoYs1BAPgb/M9QAMjPMc+XGVNNsXghzLnSaoylkV9HfsKOYL?=
 =?us-ascii?Q?0VGtKmQ+ZaKHtRSxjwxkLODn3q6Aaqvo0WnkMLkEq6XWdkxzWCrRBoY6ZOrZ?=
 =?us-ascii?Q?XF7pmByxGPVwfF7DOW805229m7R8YJbzEIvN3ZRqjLaivuhBhhqF46XFJB++?=
 =?us-ascii?Q?3jLqaf5gVAou+70jRodxbK9HXx5P+wmFWjg2WEM8UUwJib1VFQv1EytVONao?=
 =?us-ascii?Q?eRQ0MlB8Upo3StmLwo8Qdg30MDvJDwuOQAjcuglfhXajods8fBkkCuwv44aL?=
 =?us-ascii?Q?VTSVTQuX1eaWD3l9w3fe9YcYA04IjI/bZolI5ajJ3TJs0cCPocXz7hb/KSBC?=
 =?us-ascii?Q?0HdOJyJs45EDPSPKHUzcWhk1S7O5y4J6e1pxn4GVlAc1hlBWckanfC2RwN1K?=
 =?us-ascii?Q?jKQ99NJko+LKBNuSqG1LB0eJTPFW0OnM6apw26/C5LX/Fg+AiCRlRK0Je/Iu?=
 =?us-ascii?Q?27tdAfURmxIBoHV53AWWxlryTmYMDHm7h2AZsdXSnASefC6SldNYtOhpSsg4?=
 =?us-ascii?Q?SPb49D3a7JE0mErGTSnjzPIRUZPelOiwLxCrsSGa6NT0scqxYzcLhYpZbDNV?=
 =?us-ascii?Q?mwclsIlVedgfw9x8DcddGd4b5Cj4eZHy1e3SigqkydKciqlyeWqPGO+yOZNs?=
 =?us-ascii?Q?UA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d1446d2-5d33-4761-0c66-08dcfe81bae4
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2024 16:40:32.4145 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LG0gqAxOpRMGynYmVYy1Drs4xwu514bb+tMBKxUcam8RN4kjlVInVR/rp7d37T8BDyep1RChWBQ1v1O6muYSeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8513
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

On Mon, Nov 04, 2024 at 07:19:29PM +0200, Jani Nikula wrote:
> Identify mobile platforms separately in display, using the platform
> group mechanism. This enables dropping the dependency on i915_drv.h
> IS_MOBILE() from display code.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.c   | 104 ++++++++++++------
>  .../drm/i915/display/intel_display_device.h   |   1 +
>  2 files changed, 70 insertions(+), 35 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 8ba1b4652ca9..5689c5e5db0e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -253,6 +253,7 @@ static const struct intel_display_device_info no_display = {};
>  
>  static const struct platform_desc i830_desc = {
>  	PLATFORM(i830),
> +	PLATFORM_GROUP(mobile),
>  	.info = &(const struct intel_display_device_info) {
>  		I830_DISPLAY,
>  
> @@ -271,6 +272,7 @@ static const struct platform_desc i845_desc = {
>  
>  static const struct platform_desc i85x_desc = {
>  	PLATFORM(i85x),
> +	PLATFORM_GROUP(mobile),
>  	.info = &(const struct intel_display_device_info) {
>  		I830_DISPLAY,
>  
> @@ -313,6 +315,7 @@ static const struct platform_desc i915g_desc = {
>  
>  static const struct platform_desc i915gm_desc = {
>  	PLATFORM(i915gm),
> +	PLATFORM_GROUP(mobile),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN3_DISPLAY,
>  		I9XX_COLORS,
> @@ -337,6 +340,7 @@ static const struct platform_desc i945g_desc = {
>  
>  static const struct platform_desc i945gm_desc = {
>  	PLATFORM(i915gm),
> +	PLATFORM_GROUP(mobile),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN3_DISPLAY,
>  		I9XX_COLORS,
> @@ -358,13 +362,21 @@ static const struct platform_desc g33_desc = {
>  	},
>  };
>  
> -static const struct platform_desc pnv_desc = {
> +static const struct intel_display_device_info pnv_display = {
> +	GEN3_DISPLAY,
> +	I9XX_COLORS,
> +	.has_hotplug = 1,
> +};
> +
> +static const struct platform_desc pnv_g_desc = {
>  	PLATFORM(pineview),
> -	.info = &(const struct intel_display_device_info) {
> -		GEN3_DISPLAY,
> -		I9XX_COLORS,
> -		.has_hotplug = 1,
> -	},
> +	.info = &pnv_display,
> +};
> +
> +static const struct platform_desc pnv_m_desc = {
> +	PLATFORM(pineview),
> +	PLATFORM_GROUP(mobile),
> +	.info = &pnv_display,
>  };
>  
>  #define GEN4_DISPLAY \
> @@ -391,6 +403,7 @@ static const struct platform_desc i965g_desc = {
>  
>  static const struct platform_desc i965gm_desc = {
>  	PLATFORM(i965gm),
> +	PLATFORM_GROUP(mobile),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN4_DISPLAY,
>  		.has_overlay = 1,
> @@ -414,6 +427,7 @@ static const struct platform_desc g45_desc = {
>  static const struct platform_desc gm45_desc = {
>  	PLATFORM(gm45),
>  	PLATFORM_GROUP(g4x),
> +	PLATFORM_GROUP(mobile),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN4_DISPLAY,
>  		.supports_tv = 1,
> @@ -444,6 +458,7 @@ static const struct platform_desc ilk_d_desc = {
>  
>  static const struct platform_desc ilk_m_desc = {
>  	PLATFORM(ironlake),
> +	PLATFORM_GROUP(mobile),
>  	.info = &(const struct intel_display_device_info) {
>  		ILK_DISPLAY,
>  
> @@ -451,38 +466,54 @@ static const struct platform_desc ilk_m_desc = {
>  	},
>  };
>  
> -static const struct platform_desc snb_desc = {
> +const struct intel_display_device_info snb_display = {

get static back here as test robot already pointed out...

> +	.has_hotplug = 1,
> +	I9XX_PIPE_OFFSETS,
> +	I9XX_CURSOR_OFFSETS,
> +	ILK_COLORS,
> +
> +	.__runtime_defaults.ip.ver = 6,
> +	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
> +	.__runtime_defaults.cpu_transcoder_mask =
> +	BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
> +	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
> +	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> +};
> +
> +static const struct platform_desc snb_d_desc = {
>  	PLATFORM(sandybridge),
> -	.info = &(const struct intel_display_device_info) {
> -		.has_hotplug = 1,
> -		I9XX_PIPE_OFFSETS,
> -		I9XX_CURSOR_OFFSETS,
> -		ILK_COLORS,
> +	.info = &snb_display,
> +};
>  
> -		.__runtime_defaults.ip.ver = 6,
> -		.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
> -		.__runtime_defaults.cpu_transcoder_mask =
> -		BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
> -		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
> -		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> -	},
> +static const struct platform_desc snb_m_desc = {
> +	PLATFORM(sandybridge),
> +	PLATFORM_GROUP(mobile),
> +	.info = &snb_display,
> +};
> +
> +static const struct intel_display_device_info ivb_display = {
> +	.has_hotplug = 1,
> +	IVB_PIPE_OFFSETS,
> +	IVB_CURSOR_OFFSETS,
> +	IVB_COLORS,
> +
> +	.__runtime_defaults.ip.ver = 7,
> +	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> +	.__runtime_defaults.cpu_transcoder_mask =
> +	BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
> +	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
> +	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
>  };
>  
> -static const struct platform_desc ivb_desc = {
> +static const struct platform_desc ivb_d_desc = {
>  	PLATFORM(ivybridge),
> -	.info = &(const struct intel_display_device_info) {
> -		.has_hotplug = 1,
> -		IVB_PIPE_OFFSETS,
> -		IVB_CURSOR_OFFSETS,
> -		IVB_COLORS,
> +	.info = &ivb_display,

now I'm wondering 2 things:

1. is info really the good name now?
2. does it deserves a separate patch refactor other then this one focused
on the mobile group?

> +};
>  
> -		.__runtime_defaults.ip.ver = 7,
> -		.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> -		.__runtime_defaults.cpu_transcoder_mask =
> -		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
> -		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
> -		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> -	},
> +static const struct platform_desc ivb_m_desc = {
> +	PLATFORM(ivybridge),
> +	PLATFORM_GROUP(mobile),
> +	.info = &ivb_display,
>  };
>  
>  static const struct platform_desc vlv_desc = {
> @@ -1385,11 +1416,14 @@ static const struct {
>  	INTEL_I965GM_IDS(INTEL_DISPLAY_DEVICE, &i965gm_desc),
>  	INTEL_GM45_IDS(INTEL_DISPLAY_DEVICE, &gm45_desc),
>  	INTEL_G45_IDS(INTEL_DISPLAY_DEVICE, &g45_desc),
> -	INTEL_PNV_IDS(INTEL_DISPLAY_DEVICE, &pnv_desc),
> +	INTEL_PNV_G_IDS(INTEL_DISPLAY_DEVICE, &pnv_g_desc),
> +	INTEL_PNV_M_IDS(INTEL_DISPLAY_DEVICE, &pnv_m_desc),
>  	INTEL_ILK_D_IDS(INTEL_DISPLAY_DEVICE, &ilk_d_desc),
>  	INTEL_ILK_M_IDS(INTEL_DISPLAY_DEVICE, &ilk_m_desc),
> -	INTEL_SNB_IDS(INTEL_DISPLAY_DEVICE, &snb_desc),
> -	INTEL_IVB_IDS(INTEL_DISPLAY_DEVICE, &ivb_desc),
> +	INTEL_SNB_D_IDS(INTEL_DISPLAY_DEVICE, &snb_d_desc),
> +	INTEL_SNB_M_IDS(INTEL_DISPLAY_DEVICE, &snb_m_desc),
> +	INTEL_IVB_D_IDS(INTEL_DISPLAY_DEVICE, &ivb_d_desc),
> +	INTEL_IVB_M_IDS(INTEL_DISPLAY_DEVICE, &ivb_m_desc),
>  	INTEL_HSW_IDS(INTEL_DISPLAY_DEVICE, &hsw_desc),
>  	INTEL_VLV_IDS(INTEL_DISPLAY_DEVICE, &vlv_desc),
>  	INTEL_BDW_IDS(INTEL_DISPLAY_DEVICE, &bdw_desc),
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index e1398689cda5..84378c787923 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -24,6 +24,7 @@ struct pci_dev;
>  #define INTEL_DISPLAY_PLATFORMS(func) \
>  	/* Platform group aliases */ \
>  	func(g4x) /* g45 and gm45 */ \
> +	func(mobile) /* mobile platforms */ \
>  	func(dgfx) /* discrete graphics */ \
>  	/* Display ver 2 */ \
>  	func(i830) \
> -- 
> 2.39.5
> 
