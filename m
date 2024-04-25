Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 030218B2822
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Apr 2024 20:23:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FA1D10EE74;
	Thu, 25 Apr 2024 18:23:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E1ZyZwHi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18D7A10EE74;
 Thu, 25 Apr 2024 18:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714069390; x=1745605390;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=yE5LUD/hGOt1QlaGkfCFJtNhTStTuSouCoAImIEvzj4=;
 b=E1ZyZwHi7yLqcZe3xLWYAuZ7LIyCJsCQgVDnwcYm6Oln5tmYaI3PSC07
 dJYcRcK+8VFhKW0KHuu9YuG7sy0q7RXkYhdFbyx16WlHghrOgBgifrUsP
 6BM27sdcCLfH0nU8daHjllS60PnNvgJRZNWWMFP+ApCbEY2dL045TQfk6
 yCJlWhbwpWt1Z1yf0lx32wN++qRudUg40YE1v2y8hzwlYqti+ZS5Gyc/c
 SShd2/nBMJMYExxhIpkisH2rhvDWCSdRKhgr15kLZ3a/Tme5t0uwWPnoE
 L899VN+IijVQstTgsTJAnjVu2dN8yomWccl1bqO3Gt3/rqPGFVOSTo/Jz Q==;
X-CSE-ConnectionGUID: wBjZ0VdKTUSOCBHrw4jeJw==
X-CSE-MsgGUID: 3q8HFKeTT82IchbqkYOFow==
X-IronPort-AV: E=McAfee;i="6600,9927,11055"; a="9942828"
X-IronPort-AV: E=Sophos;i="6.07,230,1708416000"; 
   d="scan'208";a="9942828"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2024 11:23:09 -0700
X-CSE-ConnectionGUID: bF8GI/pqTNCC1YeYg7naMw==
X-CSE-MsgGUID: dXIJkuxoSXeCebxUNYhwdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,230,1708416000"; d="scan'208";a="25175017"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Apr 2024 11:22:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 25 Apr 2024 11:22:44 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 25 Apr 2024 11:22:44 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 25 Apr 2024 11:22:44 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 25 Apr 2024 11:22:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XLHWE+rlF97SpERd2MDO9XKSA0MZ/IUcSXAv6FJZMws7Jf88uZe3iG9Sb18/T0Kc9OMPWciGVTj6+lNLAlokqeFh/y/FwUiia/F9TO9Fx4j2ecMo+buQNMY4Aih1Fb3H9memUNBSZMabeBUaoL4xyUj09lhw/86LLr/AhuN9r8/imNJgHNmZ+dQAdK+oWYjyRartcN/QFyjranP+zeWgRN5aSvRJpOAci1RYBfefdR0RsHtv/YxfJ9tq0zS4hT+WFiJ6XLLsLHYB91wSzit7cLsytV0oXeIMAyzWHoM0HLGFW+66Q1UGUvOauFHD8c4tzYTGPoyVR4ksbHAf6r2lWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OdH3RqRjvOpWu56s/c+1iyOrwXM6m2S785lIz1Znaio=;
 b=XrtNg0rQezwq98WPbvsP28l4VEzza+Uku/XzYFvjy5PQ6+CRzgQwT3pyL9xrQC0IL9ZuXZfUdBafUNmlatJ0ruy2hF+btMeceAhF/aXTL1sQ16bcxRQQv7MzpvJW01KzEPiutyRWQlvEPG8ZjBd3/ZsrgYBj/vzseZxvZIv64f5DiB8Jr3JTlVt5oh4wfmC38elbUc3iVS6YRcEkuXY6+IcX+kCoHKVg+InXcblWKYr7GM28+Q+cfcnlIoty+3yEppUw48936NClUDxjc07y/rp3QCGEazocmbTnXebEM+C2LS9hir4ofkTr/DwO+JufioEYIDCuERmcYAuAhRCPjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SN7PR11MB6557.namprd11.prod.outlook.com (2603:10b6:806:26f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.21; Thu, 25 Apr
 2024 18:22:39 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7519.018; Thu, 25 Apr 2024
 18:22:39 +0000
Date: Thu, 25 Apr 2024 11:22:30 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH] drm/xe/display: Fix ADL-N detection
Message-ID: <20240425182230.GB7068@mdroper-desk1.amr.corp.intel.com>
References: <20240425181610.2704633-1-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240425181610.2704633-1-lucas.demarchi@intel.com>
X-ClientProxiedBy: CP5P284CA0041.BRAP284.PROD.OUTLOOK.COM
 (2603:10d6:103:96::10) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SN7PR11MB6557:EE_
X-MS-Office365-Filtering-Correlation-Id: 9f789df6-94d2-4084-372f-08dc6554b04b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?+mzvG38/t1LE/z8odvZ3aWpDyk9Z5kzHRY88P37zLU72aeUY9hugU5T6QNRv?=
 =?us-ascii?Q?+5TJy7ShCdbbsOjZgsJhg9tIBpo5C7fcL2oUQXZZcRXDRnpE0yRigV6Yufeu?=
 =?us-ascii?Q?+ol5ndghQFWLERg4KPGv9l23d+8S22s0/Byh87WEddQDeWlnH5pd1ANg6Nqv?=
 =?us-ascii?Q?a55SVd0i5ZwIyaGynW0Lvjh6kc8ofYohUPVBHd7i+wVDf9hYCRcakQZ/Lxrg?=
 =?us-ascii?Q?/ZJCzU7UyKhyxt5VPacPtq5OSgCaKKpiSe7/PIZxYilqIVfaPeKd/hAHgbVQ?=
 =?us-ascii?Q?oBgrCfWVp/YHpLVbnbd7zuvK3Qd+p04KKmd0gYXT69/hb69F6adNMkDr2Ixp?=
 =?us-ascii?Q?UouFSCm5ybKiFhJihk/ptPHrmddj+D+K8pNhXnLm6ZxZNgKG4C3dBq5zUoAJ?=
 =?us-ascii?Q?YJpbQGZUuUkPSQ8bFgLDg4SGRzmv6F1H2dQnTh5KFuj9UiQHyTJtW++/F/DX?=
 =?us-ascii?Q?okfBgz5gvLL2DQWw8/JSlz/Dcdn94yYhEouugmvRj6huvGSFrCetr8B4gjXi?=
 =?us-ascii?Q?5zZWXuHAPp1NPPjCUl3XJhWL4xlQ758fAs8wN6UcKhRxs8zvdRVAdKzv8A24?=
 =?us-ascii?Q?EMs7s72e08FnTaI4Bm9t9DAgTdvvAhXM9Ndl6VyWxrac1BB5u2ARrMbhhDUm?=
 =?us-ascii?Q?XWR0grqHPYQxuCfQFMMbpK7+1O86vNINyVHHTuVt90bgVzsTIbjg1+vAUyuL?=
 =?us-ascii?Q?SJjDtjEZw1tmeCOc0bt3ZdUn0zb8U2T4HlcMoZ+6OsDvnE9fW7IQV0iR1UNo?=
 =?us-ascii?Q?yzY/aX4/hFBOexEQM13oO5ST02N9m6jAzq+mDY9PcDa60S08p6FBotLxs/0t?=
 =?us-ascii?Q?kJaDGUMFZhWEKwrFxwl8pfwKS1F82t5CTj4CGM9LMRRo0W34Jfmli1QZhR6F?=
 =?us-ascii?Q?3x8G4lwJdZDFmYImv3Ntjpr7spfDzG97XCj3Q4Lzy1wJoipmHP+Y6VlKMic6?=
 =?us-ascii?Q?2geVRAUec5xc7qkRo8wmtr8rnW5ssD0zbBH8pyMGesVPlKX3VdVbkXU7Tz/v?=
 =?us-ascii?Q?ycl47RCkZGretNFh/GAM07zIfBa/fn3qE6dhT9TYhQWWoyb/28ATqHtIE7Fu?=
 =?us-ascii?Q?TEgS3d50HsUx5JWdV+dKUPYJlzVGEHRqU5YZvl/p/KnvLDGszNEidjIR4dFR?=
 =?us-ascii?Q?ii4gxU0gay1w15DPhTI36Juser+F1NIjkHNMK0+pmCaZcvgmnVSDpC842XB0?=
 =?us-ascii?Q?zxnVZsQ3nwJdCEg+9Iv3S3Rr9StFTJkvhnhpxVjTjC6SCe26pulGQ7XwlN4d?=
 =?us-ascii?Q?0x/4NoftXasKgVbPqSh6s+8EXhiXjrcTs3OFmYrkqw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lNoDosv7+QAUtJP7C6C03AWznDva2K+QgyEcy8sdQedYHvbNID33b5DVMY51?=
 =?us-ascii?Q?uIwdUYi7BnTvZCsNJegkgJTneZMNcWl7DzeCICRAVn901l9c2BqGxdE5ZNtV?=
 =?us-ascii?Q?COXacOUDLUzEKYT7K8UKGaEq3GTubZvpVlGujX0D76/UnOHKBOgPmvS5s1Gc?=
 =?us-ascii?Q?utuydT6+W+4lQ4rzOt3Gp3GDvjqXXsBcsjP+gGeVWRSnMkx6Z/1mSOXvlSIS?=
 =?us-ascii?Q?WVsaC3q+5BCOZO+wr/QDHY4zC1ZoS8zvsolUaoZ3FDeaw+kKmP5hDgkQJP7W?=
 =?us-ascii?Q?EWfLEHcZZy8WIZ26GHtdbxU3SC0Nvvu5BAS0qvUxTJXExo/oxs/4uMxfVTS+?=
 =?us-ascii?Q?rbSUnfZOV+uAmg+wQxuUuk+eW0KeWokjnJQHrZS3m/AxfOJpCvCzFSlkPfmK?=
 =?us-ascii?Q?ON8sSUsRvAXKDB93cjCTPHMAnjhCBVFY39kcWL3kZxyCMthlI37A69oRWj4a?=
 =?us-ascii?Q?xVI1zCj+94OqRUO8+GhHLDzZrVuLCcNx8634m/ZhD7YKIixtmUm9bZM7hitw?=
 =?us-ascii?Q?cVYl++RJsBiH6HobOguDJeAy6cN6Se8vr9S5zBQb8pBfLDYNY4Yx4OWBywY5?=
 =?us-ascii?Q?AW7PZNupx/SGVupYPyZUeQCj8XRmRvd/dyugq5WT11Zy8tZU+9K2Jes0mjYF?=
 =?us-ascii?Q?qDqCFX21UTA7euyDdT9P6YUqVqITqeZkWzJd3pC76YEntYNrXtGKHDkH/1lJ?=
 =?us-ascii?Q?tn46jCUC8zuLoqygUJ+htXXH8NmX4x5giziT9hBXHj1rX8iAq18M0MaRIGaJ?=
 =?us-ascii?Q?O280FgkB4NFisVJ6CIvIrd2w3pfrIGdrA5dWWnp3VEA59sl0FpMVSSXizCMa?=
 =?us-ascii?Q?dUb2p6tu9RNyT/75TqNN35Z8c9axaA5GOb3Xs/xvlb7D1HMVzxZju5rQ3TgF?=
 =?us-ascii?Q?l9CS2CzkNeCxGB/J9tBHowVnEDLl57ofL4q1csYRrW+1S1dcKU1rYRuVNrfN?=
 =?us-ascii?Q?kRU28Af3avHsSioh1+ld27KXCbEk/4Xqj1GSD7OCtwPQ9TFyx9vHjjtIaOFR?=
 =?us-ascii?Q?LBHNfi3JqxuNjcfxTWRCqc1dCpInNEnhBo9/sbrINt5PjE4yWQTv/AZlHa4X?=
 =?us-ascii?Q?ln2zlOQeVfbfPQWZfCqGdHbjqXcGs5dOv3+tPdO8my8kevgvc1Mt7h8y3m2B?=
 =?us-ascii?Q?6jaZfRS7zDVdA+xtrpA93jEPif4Js3RqqUNuAjAVSWU1XZJLPLlWjefYyPHw?=
 =?us-ascii?Q?3sJYtYs2QF4TYpVRLRrStjC3iq1IIRjPQBwUa9yh3Vbhdq0xO7m4Bdeaa7w4?=
 =?us-ascii?Q?OzcW8zJaGRCTgw+o8yiprDuB++BZbWpYjGV1ka/m/aMCwr/dKiBl1AUAcC5z?=
 =?us-ascii?Q?K/+YNq8J1MBuwLFQFLeYESfURiEeLvQ+2exQsaLpC5oCxTSX0/YIljkrR61o?=
 =?us-ascii?Q?aHBSZktOFRbgYItgdZgyzG/5eiSkSmRb94CEWKPgkSS0uV6HdaE3XGuQCZBA?=
 =?us-ascii?Q?cz7pAWotx5LdMTWoTOtbO6jwvQCu+Mi1W9j5ThBDNcfVUA0m9ebMm8BQDu7I?=
 =?us-ascii?Q?llSBCJkxKQcvONk3sW7kNEvSZC/i5q4HnCdLIu01G2SP5bR5buOUiz9HRyA4?=
 =?us-ascii?Q?j3ksoTj73I5OMogrSursXWJ8JLA+BeLJv6YFHPpHdvnbahy0Gl3+9KfT/GIw?=
 =?us-ascii?Q?TA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f789df6-94d2-4084-372f-08dc6554b04b
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2024 18:22:39.0485 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GW9bWqYJC9UjuQCuTvgPCk6i+X3z9LRrNZQ48WuRegCCNVRJ9LnZ1LnH/tD78Ktq7CtZqKn38HTDSfTe6/4mUw66NXe9TtmEabc03rU/CQw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6557
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

On Thu, Apr 25, 2024 at 11:16:09AM -0700, Lucas De Marchi wrote:
> Contrary to i915, in xe ADL-N is kept as a different platform, not a
> subplatform of ADL-P. Since the display side doesn't need to
> differentiate between P and N, i.e. IS_ALDERLAKE_P_N() is never called,
> just fixup the compat header to check for both P and N.
> 
> Moving ADL-N to be a subplatform would be more complex as the firmware
> loading in xe only handles platforms, not subplatforms, as going forward
> the direction is to check on IP version rather than
> platforms/subplatforms.
> 
> Fix warning when initializing display:
> 
> 	xe 0000:00:02.0: [drm:intel_pch_type [xe]] Found Alder Lake PCH
> 	------------[ cut here ]------------
> 	xe 0000:00:02.0: drm_WARN_ON(!((dev_priv)->info.platform == XE_ALDERLAKE_S) && !((dev_priv)->info.platform == XE_ALDERLAKE_P))
> 
> And wrong paths being taken on the display side.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

ADL-N uses exactly the same display IP as ADL-P (unlike on the GT side
where they differ), so

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> index ffaa4d2f1eed..cd4632276141 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -78,7 +78,8 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
>  #define IS_ROCKETLAKE(dev_priv)	IS_PLATFORM(dev_priv, XE_ROCKETLAKE)
>  #define IS_DG1(dev_priv)        IS_PLATFORM(dev_priv, XE_DG1)
>  #define IS_ALDERLAKE_S(dev_priv) IS_PLATFORM(dev_priv, XE_ALDERLAKE_S)
> -#define IS_ALDERLAKE_P(dev_priv) IS_PLATFORM(dev_priv, XE_ALDERLAKE_P)
> +#define IS_ALDERLAKE_P(dev_priv) (IS_PLATFORM(dev_priv, XE_ALDERLAKE_P) || \
> +				  IS_PLATFORM(dev_priv, XE_ALDERLAKE_N))
>  #define IS_DG2(dev_priv)	IS_PLATFORM(dev_priv, XE_DG2)
>  #define IS_METEORLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_METEORLAKE)
>  #define IS_LUNARLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_LUNARLAKE)
> -- 
> 2.43.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
