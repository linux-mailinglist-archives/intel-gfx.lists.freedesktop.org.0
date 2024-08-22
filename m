Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 643F495C064
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 23:43:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F069A10E0F1;
	Thu, 22 Aug 2024 21:43:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KprCG4YC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A294010E0F1;
 Thu, 22 Aug 2024 21:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724362981; x=1755898981;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=QGrFWuuiwEyEQMbT62Xv0IuShRqQY4A2l/806kE3N5k=;
 b=KprCG4YCp2qormAT7wFxPLjckHyI+UfNlak+q/sfrrdUpJHqb4sSbRPa
 bdysKTLXOwIJYpIfac1nfoi3QFpR3XNAaSxd3al8MvuHII6O4O2UmRgcE
 Im9df3CmRs2cxJgzegN8CFmpt30U+Utg0o6AvsadzmMGdDRCHAP3gBR4l
 b1bP9iE2qgdeVo9YFwXTQNxgo10MrFmMdiX3sFvk246VC5TtkF2csFFnq
 XvZcH6zZxbCBx0vSIstAgex+eAQrtLcOj69oY9z1xDW2DaFQSpMGl4xZx
 TlIowP8PTBOoTkCXf/CATSgERrq2BYQYWlgxPzC2CpCjLzc9TooSzLxww w==;
X-CSE-ConnectionGUID: l7p9yPpSRWOhmJg66zWTlQ==
X-CSE-MsgGUID: /fqCBvkSQj6ap62rUS/gsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="33967599"
X-IronPort-AV: E=Sophos;i="6.10,168,1719903600"; d="scan'208";a="33967599"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 14:43:01 -0700
X-CSE-ConnectionGUID: dCoJL6D6TFmpiL8Ay+Fz0A==
X-CSE-MsgGUID: BMTtniGQRsKBFM0RiS01RQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,168,1719903600"; d="scan'208";a="66517546"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 14:43:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 14:42:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 14:42:59 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 14:42:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SP9y7e1uxUBZp9leWXXWVsaqv/KpqCO1soQ2GuNrUhz+eBdoR9jiTENZ287aXm8ya6qiLtVTIsFuIXNPR92aKrQxkdX0oWfq/acRiSqWdrk3mO0KlQ0aCmz9lxpOKJqQXY1NoUfRq0IJpRVQ+WlkXEmu5WIcgF/NYwxcept0RbvS1b/xaET3iH6gHAB/9+srz6ZNuOQxeXOGf5sQHP49WN+CFwAPWslDnLq3Ku9NE0qJDEELWC2UhPhPU0b2RMm1r6O9XF34S48WA2T0oH/WPo4yuKJq8/+pAU/+OBeK5IYPrMD4l39HerCitq57ugWZWMe2N6QUmbl0+wHclsCtsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pQz9M/DQFUQS7KFQL/W5dIaT6B/ygsmbaM2KGu+mjg0=;
 b=HYHxQJwKVZBvb1TXYINxi8iJtGhMWM57MfSnnAqo2oKvvRrTAtypVBz7pYYPqG0mie3jQcLxqtUficQtKENI4TLVyTO2xGBHbVGzBthwWjoWffJGG6/j9Z4AjiFoRqLu0VptUDbLsqV85C5HQ8rmME2TTb/d8eFhbzFArpdow648suFDErLZuJFwdfBRDGWQ+fSKMVtCwyCcsz4GN9siiPsLopcHWvS+1thHCElvHREu/MF4XsldvFI79vx5f+2Vzc8t6C6Fhx4Q52t92efuqPYwMNw+Vx7RtL06ScDALD9pF7eR7NLTEeiExOB7Lws3sKVM21aaWjSY9L1GL9kqHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.16; Thu, 22 Aug
 2024 21:42:57 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7875.019; Thu, 22 Aug 2024
 21:42:57 +0000
Date: Thu, 22 Aug 2024 17:42:54 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 3/7] drm/i915/vblank: convert to struct intel_display
Message-ID: <Zsew3qUTK-qjhcuC@intel.com>
References: <cover.1724342644.git.jani.nikula@intel.com>
 <40430651a45ddd9e350a1fd7938fe4054492f6ea.1724342644.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <40430651a45ddd9e350a1fd7938fe4054492f6ea.1724342644.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0050.namprd04.prod.outlook.com
 (2603:10b6:303:6a::25) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH0PR11MB7424:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a52a999-40d7-4d2f-8fc3-08dcc2f362a5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?YMfsg0aqxK1fkpeLlFMbTHMBwWT4SxPPsW911NauulxRGgNar2tQKk3apLni?=
 =?us-ascii?Q?hZBm5q9AutY3W2Xolv9sruueDSOrkeBRrDNXdMoS3EJsSYK2dTZPLfc1rccj?=
 =?us-ascii?Q?I1c3k7oZXKcAyd+7T1ERRCBEZYEcr/3Y4p3/H4tBFh1cmiQyyYPmBM+WXW8D?=
 =?us-ascii?Q?PBirF9sYC028krajljGIhKUROD0ERiYAnm7wXvNgtIw6lYEk2k6y+WL9KnBX?=
 =?us-ascii?Q?BeKmXT7+HPKGS12rPSWJyPxSM2bQvDOnmsHGYVprZ05FK4nKcqVjWy+cnMc8?=
 =?us-ascii?Q?+gX0keK4BV8dHsiXOvGssrK2GU6H4mHq7o2NlY4EYiENOlcEbdzRqYBEow84?=
 =?us-ascii?Q?b535DqFusCfzqhQWHggs5p50n8h+febNJfVzzqdUh5y+H9fM+0Kyu9HolqwP?=
 =?us-ascii?Q?nSUV7PiiEwzHZ8ong/KkrW9t7SxHW8oBgA0YJS4ZnTb0G7BKII5xbZJT8JOr?=
 =?us-ascii?Q?o4rXM3WZwSBP16DF+z9nLEtDtEE88DMrtlBxQD4Dl0k2kSzuNUzCPCNRL+iR?=
 =?us-ascii?Q?PCMCYCyeHxyx1dalLRnQkmeGVFx2luTqoJP2ydkHs48x0NUd4n/SvpmkU+yG?=
 =?us-ascii?Q?EZ+wuVqtJgUuAeiaRMn0U/C2UMHlPB6YtemOPRM4R2b/HBElu2nnxoJ3Zxd3?=
 =?us-ascii?Q?Ze07sDkNQDpEOrGpbxoEZhkkBVduSf2l0fMDKQCsKZoX9nCP25gqWYn/Q7sH?=
 =?us-ascii?Q?jxgPtyOJ8lVydsoqToRdW9VtvzIJfl3l1WaQPUoZtUMlsGnENPzck5I4y4dy?=
 =?us-ascii?Q?xJ0Eg7YOyEef/b+xTCJ/cxuy7eLl2Dza45mqV7FwbFuVgyc5N1xBboy+wQG/?=
 =?us-ascii?Q?zOcNVNY/t4Sz70idd/O4dPGxdLGnlwb6bKluMUamkPkM8U9ZIONP7j1ldh7Z?=
 =?us-ascii?Q?QC+G34Ct6+4bVjMtEsWxBAlyjXfP3hZPP/R9ClvONjw9glYOguqRaCIXpFkt?=
 =?us-ascii?Q?elx9WWn7jtw1AKPshPQXq/67JzwvcG2eULmR3xPyy3SNSr/PJJNNVNo5z0O6?=
 =?us-ascii?Q?OXRppxX7RJFr1TDoMJ+UcwX39FU8h0tNDZ6lWtq6EZI/kyFnq0EMMjgiJteF?=
 =?us-ascii?Q?92NuzMPQdt2DTUH2BF2vk3buOph3Po7DfO10RSCurSgr1oY5DejZFSQAT3gl?=
 =?us-ascii?Q?zJZkUG0UXL1soBDWyJ8IL0Ck7OygIuJDoH8NgFvJ8eILaKJb+lVMwgycvSzx?=
 =?us-ascii?Q?DsQiqCoGYfCRAPhZ7FEyIFVfjI5VR+ZvtXO+bWNgUCEPPIUf3mTbe4aajrcq?=
 =?us-ascii?Q?D5DnbZEBfKUbv2f9jyR0H5U41sSYIQ1a74r4rRZRPyt7305/cGFyBskdo/ba?=
 =?us-ascii?Q?MtaSZbXtXMCSGD2cvj0UZLUmJ6g0ZRP6gzOmercPwuVQZQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LSt8UseY+02PhHA+Syn3/FeqW6AKaTFFm81j/PZDLWN2GB1+FhV/UjVOCDIJ?=
 =?us-ascii?Q?9lciphffvMEwvyf1gBwDlUddKaWMDoKgmrxAIKhM8QXca1lqPRyX+/ISp5oF?=
 =?us-ascii?Q?Et2PT+BHKpJD+vMPsv9tPqY2RQ0gMdGqajHSyh41Jer3ShykAejpVlJQWAGl?=
 =?us-ascii?Q?x6tWngY6uE3nDYlXz/xENX5Zp9yrrQo5lwQIj/307MD2v8N9oDV4F2tf/b5h?=
 =?us-ascii?Q?IFQHVcUdUBQTJ9/XDFQfrb2fk9vuEe2Wb6+TzGufMHPNXooKpN1rmpgly18S?=
 =?us-ascii?Q?rr3Cak1heL++2oPH1/pISYgWJncUOM7ZUbr4ON2l7njsEgOC1nrcX70l5hZI?=
 =?us-ascii?Q?5d3ogKbKHjJ6e0MMPOS8tYPOG7V29JgS7/zzJgNdDfj5yUJaFqNeDTa5Iuic?=
 =?us-ascii?Q?OkpyGgwn1WgZZ511A/EjCbF+VA5+9hjPDP+SaVzCwkrIO1U8kj+xcUUTi3NA?=
 =?us-ascii?Q?sjVFYtul2G7LWoj9A0AGFx+WuNhMI1EixC9aQxgeLHN7ZLD5Wzqon3ytvX+w?=
 =?us-ascii?Q?+FgfbXe2lR4Ca0/bxhcq4FaKQjRbhCjgvJArr+Ren5mZ7BASB9HNTms4HWCI?=
 =?us-ascii?Q?mMUD1sHEEJL2NzXyV1WjvOO5RwX+BJlZcE2n3uqZaqWYGxMaQKaylaXH8vN+?=
 =?us-ascii?Q?aKixRFJvuekICdGykJMxulkCHearnD7NRRb/NkwPQC2/IzxMZ55CYh9cRhbI?=
 =?us-ascii?Q?b+Ez5v08WHRY5VpTF+v2tpNJvpRXq/dSb6zX1Hmw0troRUvEsmJ3h43vfRqp?=
 =?us-ascii?Q?adapmL+WznTJ592MSC2rMgIupxF3iR4Q0iT/wT9YZOLTa2Rv6fCO2ZcJVq5x?=
 =?us-ascii?Q?IJLtWkXcm9cKeIQjawVuSVDz2t/DAh2Ab4RGXLcHd489DUwdic+jT/RgK33R?=
 =?us-ascii?Q?fWBPOfLcEf+fqOp6oOZxo2EXwTgvv6kL+cqC5Rju3LpHYqQriFDDwOcMIBHc?=
 =?us-ascii?Q?2OlqRq3q1YZPuRaFUZoBKvolOcoIXJ10P9QhZeWnQjwd3hUVeAV20M3GVKBF?=
 =?us-ascii?Q?ya6c6ce5R9MxzTy2CKS5XlOy/5052BlkqDFcYUM4l8JOYBveny+b6hN0MC1i?=
 =?us-ascii?Q?hCJZj9h6pjz1D26YapZObewZZ6edkxu+km/ocLvRsF2N4ILuRTOJ6GbEjgM2?=
 =?us-ascii?Q?8W3pZ34EJN2ntLY4f+YnBDbskUrQ/Krd5tKtsx/5NFQ2HITk0YQIeupIy/PW?=
 =?us-ascii?Q?DZHmaxI6Gwh1f8nyA9+sAli7pgcAGSLgys4W0KPqbOKC4X8PYcNJLTQO7Dra?=
 =?us-ascii?Q?UhT0AwkNu0UhYJG5tEoUTufS4N1inUARuNca9wsC4DGq2/th2HziKGWgBeQ2?=
 =?us-ascii?Q?laO6b/8YkQo5rTX7GNNcub1UEE+H5bqs1WGgTr8jH8DYguwaUVIHVyzHWZQi?=
 =?us-ascii?Q?e5ZgbX3BP0vU2B4R2QyNJhKABewFd2TbB6utEdXwtOiqdJcGYPwABH9pvDOd?=
 =?us-ascii?Q?go0czzHKiZS462g3st3n0EiZdSdH1P/r2D5Vd+xL6zToRcEha68eZO2rWjpV?=
 =?us-ascii?Q?nUR+in+sa2TJmIul+Qkh5oMlNabEIr3F0W6OKSvWDGfj1J1Cc8TJaZ8lYWVF?=
 =?us-ascii?Q?s37qhngBM8luT5dR6bIVropmAUD9qgzcRtGdLZ2xEY4z2AmjhsB7a8PfvUmY?=
 =?us-ascii?Q?lQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a52a999-40d7-4d2f-8fc3-08dcc2f362a5
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2024 21:42:57.0205 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B0VAFFTYjPPvEuDjOv2hQ+9Rnc7qAKmnMceXvHxikuJeijm4iFi1gny6Q6wFJdu8EcwO6zYLRUTJ5UQFTSPC3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7424
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

On Thu, Aug 22, 2024 at 07:04:51PM +0300, Jani Nikula wrote:
> Going forward, struct intel_display shall replace struct
> drm_i915_private as the main display device data pointer type. Convert
> intel_vblank.[ch] to struct intel_display.
> 
> Some stragglers	are left behind	where needed.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vblank.c | 97 +++++++++++----------
>  1 file changed, 50 insertions(+), 47 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index 2073e8075af4..838b55ecb1d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -67,7 +67,7 @@
>   */
>  u32 i915_get_vblank_counter(struct drm_crtc *crtc)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
> +	struct intel_display *display = to_intel_display(crtc->dev);
>  	struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(crtc);
>  	const struct drm_display_mode *mode = &vblank->hwmode;
>  	enum pipe pipe = to_intel_crtc(crtc)->pipe;
> @@ -103,8 +103,8 @@ u32 i915_get_vblank_counter(struct drm_crtc *crtc)
>  	 * we get a low value that's stable across two reads of the high
>  	 * register.
>  	 */
> -	frame = intel_de_read64_2x32(dev_priv, PIPEFRAMEPIXEL(dev_priv, pipe),
> -				     PIPEFRAME(dev_priv, pipe));
> +	frame = intel_de_read64_2x32(display, PIPEFRAMEPIXEL(display, pipe),
> +				     PIPEFRAME(display, pipe));
>  
>  	pixel = frame & PIPE_PIXEL_MASK;
>  	frame = (frame >> PIPE_FRAME_LOW_SHIFT) & 0xffffff;
> @@ -119,19 +119,19 @@ u32 i915_get_vblank_counter(struct drm_crtc *crtc)
>  
>  u32 g4x_get_vblank_counter(struct drm_crtc *crtc)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
> +	struct intel_display *display = to_intel_display(crtc->dev);
>  	struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(crtc);
>  	enum pipe pipe = to_intel_crtc(crtc)->pipe;
>  
>  	if (!vblank->max_vblank_count)
>  		return 0;
>  
> -	return intel_de_read(dev_priv, PIPE_FRMCOUNT_G4X(dev_priv, pipe));
> +	return intel_de_read(display, PIPE_FRMCOUNT_G4X(display, pipe));
>  }
>  
>  static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc *crtc)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct intel_display *display = to_intel_display(crtc);
>  	struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(&crtc->base);
>  	const struct drm_display_mode *mode = &vblank->hwmode;
>  	u32 htotal = mode->crtc_htotal;
> @@ -150,16 +150,16 @@ static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc *crtc)
>  		 * pipe frame time stamp. The time stamp value
>  		 * is sampled at every start of vertical blank.
>  		 */
> -		scan_prev_time = intel_de_read_fw(dev_priv,
> +		scan_prev_time = intel_de_read_fw(display,
>  						  PIPE_FRMTMSTMP(crtc->pipe));
>  
>  		/*
>  		 * The TIMESTAMP_CTR register has the current
>  		 * time stamp value.
>  		 */
> -		scan_curr_time = intel_de_read_fw(dev_priv, IVB_TIMESTAMP_CTR);
> +		scan_curr_time = intel_de_read_fw(display, IVB_TIMESTAMP_CTR);
>  
> -		scan_post_time = intel_de_read_fw(dev_priv,
> +		scan_post_time = intel_de_read_fw(display,
>  						  PIPE_FRMTMSTMP(crtc->pipe));
>  	} while (scan_post_time != scan_prev_time);
>  
> @@ -192,6 +192,7 @@ static u32 __intel_get_crtc_scanline_from_timestamp(struct intel_crtc *crtc)
>  
>  static int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>  
>  	/*
> @@ -220,7 +221,7 @@ static int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state)
>  	 * However if queried just before the start of vblank we'll get an
>  	 * answer that's slightly in the future.
>  	 */
> -	if (DISPLAY_VER(i915) == 2)
> +	if (DISPLAY_VER(display) == 2)
>  		return -1;
>  	else if (HAS_DDI(i915) && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
>  		return 2;
> @@ -234,8 +235,7 @@ static int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state)
>   */
>  static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
>  {
> -	struct drm_device *dev = crtc->base.dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> +	struct intel_display *display = to_intel_display(crtc);
>  	struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(&crtc->base);
>  	const struct drm_display_mode *mode = &vblank->hwmode;
>  	enum pipe pipe = crtc->pipe;
> @@ -249,7 +249,7 @@ static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
>  
>  	vtotal = intel_mode_vtotal(mode);
>  
> -	position = intel_de_read_fw(dev_priv, PIPEDSL(dev_priv, pipe)) & PIPEDSL_LINE_MASK;
> +	position = intel_de_read_fw(display, PIPEDSL(display, pipe)) & PIPEDSL_LINE_MASK;
>  
>  	/*
>  	 * On HSW, the DSL reg (0x70000) appears to return 0 if we
> @@ -263,13 +263,13 @@ static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
>  	 * problem.  We may need to extend this to include other platforms,
>  	 * but so far testing only shows the problem on HSW.
>  	 */
> -	if (HAS_DDI(dev_priv) && !position) {
> +	if (HAS_DDI(display) && !position) {
>  		int i, temp;
>  
>  		for (i = 0; i < 100; i++) {
>  			udelay(1);
> -			temp = intel_de_read_fw(dev_priv,
> -						PIPEDSL(dev_priv, pipe)) & PIPEDSL_LINE_MASK;
> +			temp = intel_de_read_fw(display,
> +						PIPEDSL(display, pipe)) & PIPEDSL_LINE_MASK;
>  			if (temp != position) {
>  				position = temp;
>  				break;
> @@ -304,23 +304,25 @@ int intel_crtc_scanline_to_hw(struct intel_crtc *crtc, int scanline)
>   * otherwise they may hang.
>   */
>  #ifdef I915
> -static void intel_vblank_section_enter(struct drm_i915_private *i915)
> +static void intel_vblank_section_enter(struct intel_display *display)
>  	__acquires(i915->uncore.lock)

I'm surprised this works!
thought we would need to have something like
	__acquires(to_i915(display->drm)->uncore.lock)


but anyway, if it works let's move on

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	spin_lock(&i915->uncore.lock);
>  }
>  
> -static void intel_vblank_section_exit(struct drm_i915_private *i915)
> +static void intel_vblank_section_exit(struct intel_display *display)
>  	__releases(i915->uncore.lock)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	spin_unlock(&i915->uncore.lock);
>  }
>  #else
> -static void intel_vblank_section_enter(struct drm_i915_private *i915)
> +static void intel_vblank_section_enter(struct intel_display *display)
>  {
>  }
>  
> -static void intel_vblank_section_exit(struct drm_i915_private *i915)
> +static void intel_vblank_section_exit(struct intel_display *display)
>  {
>  }
>  #endif
> @@ -331,19 +333,19 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
>  				     ktime_t *stime, ktime_t *etime,
>  				     const struct drm_display_mode *mode)
>  {
> -	struct drm_device *dev = _crtc->dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> +	struct intel_display *display = to_intel_display(_crtc->dev);
> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	struct intel_crtc *crtc = to_intel_crtc(_crtc);
>  	enum pipe pipe = crtc->pipe;
>  	int position;
>  	int vbl_start, vbl_end, hsync_start, htotal, vtotal;
>  	unsigned long irqflags;
> -	bool use_scanline_counter = DISPLAY_VER(dev_priv) >= 5 ||
> -		IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) == 2 ||
> +	bool use_scanline_counter = DISPLAY_VER(display) >= 5 ||
> +		IS_G4X(dev_priv) || DISPLAY_VER(display) == 2 ||
>  		crtc->mode_flags & I915_MODE_FLAG_USE_SCANLINE_COUNTER;
>  
> -	if (drm_WARN_ON(&dev_priv->drm, !mode->crtc_clock)) {
> -		drm_dbg(&dev_priv->drm,
> +	if (drm_WARN_ON(display->drm, !mode->crtc_clock)) {
> +		drm_dbg(display->drm,
>  			"trying to get scanoutpos for disabled pipe %c\n",
>  			pipe_name(pipe));
>  		return false;
> @@ -361,7 +363,7 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
>  	 * preemption disabled, so the following code must not block.
>  	 */
>  	local_irq_save(irqflags);
> -	intel_vblank_section_enter(dev_priv);
> +	intel_vblank_section_enter(display);
>  
>  	/* preempt_disable_rt() should go right here in PREEMPT_RT patchset. */
>  
> @@ -393,7 +395,7 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
>  		 * We can split this into vertical and horizontal
>  		 * scanout position.
>  		 */
> -		position = (intel_de_read_fw(dev_priv, PIPEFRAMEPIXEL(dev_priv, pipe)) & PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;
> +		position = (intel_de_read_fw(display, PIPEFRAMEPIXEL(display, pipe)) & PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;
>  
>  		/* convert to pixel counts */
>  		vbl_start *= htotal;
> @@ -429,7 +431,7 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
>  
>  	/* preempt_enable_rt() should go right here in PREEMPT_RT patchset. */
>  
> -	intel_vblank_section_exit(dev_priv);
> +	intel_vblank_section_exit(display);
>  	local_irq_restore(irqflags);
>  
>  	/*
> @@ -464,42 +466,42 @@ bool intel_crtc_get_vblank_timestamp(struct drm_crtc *crtc, int *max_error,
>  
>  int intel_get_crtc_scanline(struct intel_crtc *crtc)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct intel_display *display = to_intel_display(crtc);
>  	unsigned long irqflags;
>  	int position;
>  
>  	local_irq_save(irqflags);
> -	intel_vblank_section_enter(dev_priv);
> +	intel_vblank_section_enter(display);
>  
>  	position = __intel_get_crtc_scanline(crtc);
>  
> -	intel_vblank_section_exit(dev_priv);
> +	intel_vblank_section_exit(display);
>  	local_irq_restore(irqflags);
>  
>  	return position;
>  }
>  
> -static bool pipe_scanline_is_moving(struct drm_i915_private *dev_priv,
> +static bool pipe_scanline_is_moving(struct intel_display *display,
>  				    enum pipe pipe)
>  {
> -	i915_reg_t reg = PIPEDSL(dev_priv, pipe);
> +	i915_reg_t reg = PIPEDSL(display, pipe);
>  	u32 line1, line2;
>  
> -	line1 = intel_de_read(dev_priv, reg) & PIPEDSL_LINE_MASK;
> +	line1 = intel_de_read(display, reg) & PIPEDSL_LINE_MASK;
>  	msleep(5);
> -	line2 = intel_de_read(dev_priv, reg) & PIPEDSL_LINE_MASK;
> +	line2 = intel_de_read(display, reg) & PIPEDSL_LINE_MASK;
>  
>  	return line1 != line2;
>  }
>  
>  static void wait_for_pipe_scanline_moving(struct intel_crtc *crtc, bool state)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct intel_display *display = to_intel_display(crtc);
>  	enum pipe pipe = crtc->pipe;
>  
>  	/* Wait for the display line to settle/start moving */
> -	if (wait_for(pipe_scanline_is_moving(dev_priv, pipe) == state, 100))
> -		drm_err(&dev_priv->drm,
> +	if (wait_for(pipe_scanline_is_moving(display, pipe) == state, 100))
> +		drm_err(display->drm,
>  			"pipe %c scanline %s wait timed out\n",
>  			pipe_name(pipe), str_on_off(state));
>  }
> @@ -517,8 +519,8 @@ void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc)
>  void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
>  				      bool vrr_enable)
>  {
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  	u8 mode_flags = crtc_state->mode_flags;
>  	struct drm_display_mode adjusted_mode;
>  	int vmax_vblank_start = 0;
> @@ -527,7 +529,8 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
>  	drm_mode_init(&adjusted_mode, &crtc_state->hw.adjusted_mode);
>  
>  	if (vrr_enable) {
> -		drm_WARN_ON(&i915->drm, (mode_flags & I915_MODE_FLAG_VRR) == 0);
> +		drm_WARN_ON(display->drm,
> +			    (mode_flags & I915_MODE_FLAG_VRR) == 0);
>  
>  		adjusted_mode.crtc_vtotal = crtc_state->vrr.vmax;
>  		adjusted_mode.crtc_vblank_end = crtc_state->vrr.vmax;
> @@ -549,8 +552,8 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
>  	 * __intel_get_crtc_scanline()) with vblank_time_lock?
>  	 * Need to audit everything to make sure it's safe.
>  	 */
> -	spin_lock_irqsave(&i915->drm.vblank_time_lock, irqflags);
> -	intel_vblank_section_enter(i915);
> +	spin_lock_irqsave(&display->drm->vblank_time_lock, irqflags);
> +	intel_vblank_section_enter(display);
>  
>  	drm_calc_timestamping_constants(&crtc->base, &adjusted_mode);
>  
> @@ -559,8 +562,8 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
>  	crtc->mode_flags = mode_flags;
>  
>  	crtc->scanline_offset = intel_crtc_scanline_offset(crtc_state);
> -	intel_vblank_section_exit(i915);
> -	spin_unlock_irqrestore(&i915->drm.vblank_time_lock, irqflags);
> +	intel_vblank_section_exit(display);
> +	spin_unlock_irqrestore(&display->drm->vblank_time_lock, irqflags);
>  }
>  
>  int intel_mode_vdisplay(const struct drm_display_mode *mode)
> @@ -666,7 +669,7 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
>  int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
>  {
>  	struct intel_crtc *crtc = evade->crtc;
> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	struct intel_display *display = to_intel_display(crtc);
>  	long timeout = msecs_to_jiffies_timeout(1);
>  	wait_queue_head_t *wq = drm_crtc_vblank_waitqueue(&crtc->base);
>  	DEFINE_WAIT(wait);
> @@ -688,7 +691,7 @@ int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
>  			break;
>  
>  		if (!timeout) {
> -			drm_err(&i915->drm,
> +			drm_err(display->drm,
>  				"Potential atomic update failure on pipe %c\n",
>  				pipe_name(crtc->pipe));
>  			break;
> -- 
> 2.39.2
> 
