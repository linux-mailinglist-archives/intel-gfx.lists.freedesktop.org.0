Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF309127DB
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2024 16:32:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8D2810F1B3;
	Fri, 21 Jun 2024 14:32:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eODN6cs6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E7AA10F1B3;
 Fri, 21 Jun 2024 14:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718980336; x=1750516336;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=tzrot6dGVJWuLxdfk4pQ98yEKUl915qLTz3bYRaodAE=;
 b=eODN6cs6h0WVwypPhXEbRP+TY/Oc5fziHUIWAcR++2wUuSg6Q3Y9PPRB
 8RJPest7cghsh6mgq2mbW+btJGb+68rnygVehjJPXdz3Mh1rlnadwxLl1
 ft+Fjuxl8mXWk3oWgATDf5mdESRxo7K7xNicsqit4jwIiJA23JoIk02FE
 OCgyOv99jGzeFk8DasDsr/Yg1rXOsVEkaCU4sfQJCB3JCCDQz0MAsUNd7
 7pTCyTlexOXhRKB0MgRSctAL4yVTBsmJngZjyMV+zUJvXuQzaOUwCMWoI
 F3pYqJ6beUJVBPT3ivrVnFSo/Z6wHu3889kxuW2d6iUGa45bJqHbR+Uts A==;
X-CSE-ConnectionGUID: YMOOjR4iTWOxyBoqPY+SlQ==
X-CSE-MsgGUID: pLkscD6QQwOQ03O1Rp5fOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11110"; a="19824868"
X-IronPort-AV: E=Sophos;i="6.08,254,1712646000"; d="scan'208";a="19824868"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2024 07:32:15 -0700
X-CSE-ConnectionGUID: vfpDEuVsQfidnF0Xkgw0yg==
X-CSE-MsgGUID: vitgAEZvQaGaS5oqL6M22g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,254,1712646000"; d="scan'208";a="42579219"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Jun 2024 07:32:14 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 21 Jun 2024 07:32:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 21 Jun 2024 07:32:13 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 21 Jun 2024 07:32:13 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 21 Jun 2024 07:32:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ex6AgWYTWPdeGghmEn1iXUEwG/CTdot+MkS6xTGaHNhj84J2L86fe/r5PtyGX6PqMUhLpN+i8RKSnE/NCqoqKcU+M4KEVmOWBxp25bNkxDk8tl0XAza+jIVgQOwAgsnj9P7+5MBXJGvPvhkR0A+tR1yHiYttOaJVurv5e1uowCpxB4H60NIhXfc6uEPfUzU6b6R+7JkmYs14mJY9ARGl6xZL/EJszZdrSiGV0cPvRcSV+PS/T9SOOXYdF8EvCz4Ar9PMwGxrnyj4XTfFbhUW/p391JEwrAY0MfxvCgoNX8vAQ3m2r8xtCUc+dP1xmOJ6QcpZb/6iEwoM5r8JOf4oUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F1LxttJo1YFI/Hm6Px0Pmtxn4d7VQuqVprEnYmDFa/o=;
 b=BwryVATYON4KkKDACX7DQBF+MjggD4C0BclcKawtzfzGRP1vQywWjLOkr9ouJpfbe8ZZ4B49eptHD/Ea11b7DUwcYqlHjw+4RgM7tluNwlMnIrZMjz5Zaa93OhkCj0j9zt6gIpcDbzqZSDzWaqepptWr/KC5fuTDFuCjwa+8RjutessUVu4Bg7xZWLb2g67fV92CB8cHiZjP5+WHYlyQmpHiuLZu2hIH30HvEasMZOzlbYxV9UMxc5QqMAZu7NsFvtPKYH4JMcFBnjlp5mHgVmjNoHoxPy6G7NVJUFpHPWJyd7gDWIlZcigIx34UHmik2PgQbqDTGcoMcPgNczp8aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CY8PR11MB7748.namprd11.prod.outlook.com (2603:10b6:930:87::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.19; Fri, 21 Jun
 2024 14:32:11 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7677.030; Fri, 21 Jun 2024
 14:32:11 +0000
Date: Fri, 21 Jun 2024 10:32:07 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <suraj.kandpal@intel.com>,
 <ankit.k.nautiyal@intel.com>, <nathan@kernel.org>
Subject: Re: [PATCH] drm/i915/display: Consider adjusted_pixel_rate to be u64
Message-ID: <ZnWO5yVY6-ase3_0@intel.com>
References: <20240621073454.1421676-1-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240621073454.1421676-1-mitulkumar.ajitkumar.golani@intel.com>
X-ClientProxiedBy: SJ0PR13CA0088.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::33) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CY8PR11MB7748:EE_
X-MS-Office365-Filtering-Correlation-Id: 7bd636f3-b46a-492c-f0bb-08dc91feefa5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|376011|1800799021|366013;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?l8N4w9vaSFs2Ws5R6abLNYMpthkkdFrty1TGa7Kqi3uxooqEPMkDfQlIMT2o?=
 =?us-ascii?Q?ltoZj0g1j9TMgBl9h6ILR57gUpYOVTU8lgA70l8y7QPxCj9Dx81rgnTGXOIW?=
 =?us-ascii?Q?zs5Jd2xix1/WBZmGtfq4wI5Ty28Gku3BGCxqrJ0BX/k79ZeMLF7bXY2AeIjq?=
 =?us-ascii?Q?wsU+EhMn/URM0SQR2gNK/nN8koD60Y678XkXgDDGra3lzF/t1T3SErCKdcgA?=
 =?us-ascii?Q?jK6U+rF1UuyMeRoAsq9r4mVDybjrjsNMTtfDAkUlu9cdaqVQA6hMGFy8g7Kj?=
 =?us-ascii?Q?oYxySCgZuv3C7Zzwb16a6i67mgaxz16yYJ1KyNW1QgUeOZ4jIZAcc2Wqmsf6?=
 =?us-ascii?Q?2q6VXILOAa61FnZfOHkiD/jDf792X7393AGd2LPgLsN94cXZ36Zr1H3NK6zi?=
 =?us-ascii?Q?JVQ7ZM1l4y/WYLmKIlCIpEEIlvC+JB+jRMpdpMcXoiS4wq3PTSGn1Dx7nCVU?=
 =?us-ascii?Q?jmznKpL94O/H5t/CWtl1MerCSl15ocbNjSdMwvli2Y0lV7wUnsmr8aPFY4jw?=
 =?us-ascii?Q?GTegVJ4w6S/hiqvkawRNf72pDcL0tEojzpEk4Sd3Tqv9b6y8Wi0H2dUQEkwP?=
 =?us-ascii?Q?tgIYal7SluBKHfM0BLiI8MVF+dRM9gMkuK/G33uLa/gaehhDlrF2lbO4lxH8?=
 =?us-ascii?Q?RyrfV7f0vJ1aeMOJvn/VbYuWQGqQ1Qp1tt7DZADuHlIHPmXiM8yCilEccNn/?=
 =?us-ascii?Q?3qAbBFYXeCYLw6akw4nc4jdMOlIvNv8Piy1B9wJrHAKWBFzZv/wAYV5bBoe1?=
 =?us-ascii?Q?XExz0fHUSEb3P0XIgpz6gFriwrWLkuTcGr82AYPrKe9IJS38P3AakkDJjHAo?=
 =?us-ascii?Q?HxOpwaSyOwWhcidKjHp+6wNe04gqLD3V+hRbytpBB1UhljoyMZgqfec5ggbG?=
 =?us-ascii?Q?HaeVOMKhWTTcK40iumWbg2Z8E36keZz6XhNlPswCzBFjDCHTtVVXhKFf2mfC?=
 =?us-ascii?Q?d8FrRgqcKwPYEVkGv2JC9EsmeGmzGF9NwF6WetBLGo8Pxd7TDxeoJeSKYwOl?=
 =?us-ascii?Q?OpjCet97IUK9kx5EXdganaTqd0axHM4obB33jgn7f6V2k7ZxFNSnVXQMy7tm?=
 =?us-ascii?Q?/hAaXujzt19xrCR1zY1XXf+0nvhPQE0MH1i2EBdSnbbODfFHyAk87Dc6OuT7?=
 =?us-ascii?Q?oY4zXuwd0tKvGL99ZUxwcwEA//pyeuGGrTiboJcM7jfzvaCoVD/BmVHgWYG0?=
 =?us-ascii?Q?/lI3rmp8oVhtzYBWvP8N1b2V0LTSMQmIehv6RTTErI7HvlI8/QOZyiLUFmJt?=
 =?us-ascii?Q?LVViDZyLzcj88FyrfyUam8YBhjiagRA+NkVMpCVBeVe7yVHXxH1oFg23Y43F?=
 =?us-ascii?Q?DJXgtjqiqzZUVXQz9nxoYbnH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(1800799021)(366013); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oOzq+KBfBGpLZiDdKaJN4YVwsg53NQlbpkY4D1OvaA27dbJfXSesUKYRIk8q?=
 =?us-ascii?Q?ZCsfsWk2bko03Xa4UA31L7K7KvxVwEgGAw5s/vFRrhVcCk9WaC96SdeDCK4L?=
 =?us-ascii?Q?vtmjQVyoDqLxU1hAbs6HDJ7eIZYVQxAAVv1TmvoTQURSfRSqzjxxCtmlzkEL?=
 =?us-ascii?Q?RGK8ZRDlPEWvmoJchuHZjdaP+py02s8ByzVy3QEE9qgz9qDg8Go9fhnRSfse?=
 =?us-ascii?Q?8vxtgqi73RxJR9L+DTL7Cq0OvWfEtcvcItv262A8Fj1BpM0M1F3uef+g8UjG?=
 =?us-ascii?Q?49fwxsjx54UJAHFowUFKZe+2PFiIKb3Jg8qXcMiv6KYzKZWPj6cIYAOgpfuP?=
 =?us-ascii?Q?EDbJukN/RQ0lieHcPrZsEHojYhMgnk8IWAsKdXPDFh7VqeXd7hcBb0qPelFo?=
 =?us-ascii?Q?bbb4Iy5VYYImETq4cTqc5ecVi9nQyF1CR3H8MsOfwoDrmj4GFmrEj3x6qj9B?=
 =?us-ascii?Q?O7Oez0f8Ghid514+DxG9rm/oAX1aNrDWjju0a+uZV1yEFx+mPD/E/WybvoDb?=
 =?us-ascii?Q?yECNQTOMvHr869nfL7REz+uK/8CilPhLcGfwuTodPyVRgI0FRaUy0qNI3emz?=
 =?us-ascii?Q?Ma6roquUlpJ+duoU6F8a/QU/doZ/6xeaQSx2o6jjXlHXqE0GA8ULMYKL0r4u?=
 =?us-ascii?Q?ILjfUrfP1ub9aZzCD2rMOWX6bH+4fABG2gDZvo0zYy1pxdv14O68CQ8ukSBm?=
 =?us-ascii?Q?DsdSJ7MVO/CFEa2PrefpygRQmuHska/7Lv0QvAmFTUOVa0fbOQWySf86rMAQ?=
 =?us-ascii?Q?FAer2PX7RFv2QUkpTDvyCg3mW/Pr+3IzwznDLZJ9q1d2Ga2HaTuFcNucvqRT?=
 =?us-ascii?Q?U8aT8YG8+FiVOqGG6+8ks0g24NLp53fffkodMQCjmgO+W6uU1uiTxKmX3tbC?=
 =?us-ascii?Q?4KZVJG2TvYxzq+2rWKDKOoF6XPTVHqjqBiHKle86FROXhiqOERVrxsQZG4r5?=
 =?us-ascii?Q?Wbe0IdD5p10kIvbvCMEPOxZDbI+ukfNRNKCudUNHK0Hi2hVpYrtdsrebv+lV?=
 =?us-ascii?Q?Xis5R7D5qlUVp5JhLykbUnLC/s6CEIYLKyiS8sYhFWFZc46/jTHbP23N9eKG?=
 =?us-ascii?Q?Psupu/55/5BOfHNkAUzQ6NCFYr0OT8xBgwxWS1pJOnl71oV6hE2es16UQv0P?=
 =?us-ascii?Q?iD/TsDu3yQ0rnDsLf4lz+Q26uvl09AI7tb6AmSDwcr0iOKK1cO2IvSeMtU5g?=
 =?us-ascii?Q?qrJghtIgQonwgV7kZV0d0iDmYfp4yUdLPVyXTrJaX3dC7XP5OjVAeacUXfNc?=
 =?us-ascii?Q?uTGT5q5XpqL+1HAOeB8hLiN/5aqsQ6BZYXRBvAWul/GkYQBSdkwujJ4EddTc?=
 =?us-ascii?Q?gSAkVb6wWBkIIBkVp8jke6Fc+GpnOHW2HoZ1kJn8xPNtjllaxZm+5yhsKa25?=
 =?us-ascii?Q?6IRaEayjE9FVRNUANIjcQrpfM1df2s0BvNavop2sA+xNdMPXUANJyTJGQFsr?=
 =?us-ascii?Q?3tkHRSLxun7i9dmtFNtMh0zbODgtrHJ2F8JnPKDiEbKEJvP174rOU1ZzMMU5?=
 =?us-ascii?Q?l3cz7nybPzX8LOgeSxMS/sTNvE3IH+p5XbJmu5VEVwZmAQhyz3vbEaiF9gI4?=
 =?us-ascii?Q?NUbPbm7Dp3bkRaAYO35kLkAqoZp1/U5SHkQ8NSZ7?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bd636f3-b46a-492c-f0bb-08dc91feefa5
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jun 2024 14:32:11.0293 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /V6pSj/eLNh6r9ie44jd73r2TWrA7WITPp2/G0thbLRHZpHs9BdZbM86WyrY1NmGRdkHv2/v3GWnelIFrVL+Ew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7748
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

On Fri, Jun 21, 2024 at 01:04:54PM +0530, Mitul Golani wrote:
> Consider adjusted_pixel_rate to be a u64 to match the return
> type of mul_u32_u32() and avoid any compiler dependency for
> do_div.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Fixes: 1676ecd303ac ("drm/i915: Compute CMRR and calculate vtotal")
> Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Nathan Chancellor <nathan@kernel.org>
> Cc: intel-xe@lists.freedesktop.org
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 6430da25957d..5a0da64c7db3 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -137,7 +137,7 @@ static unsigned int
>  cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
>  {
>  	int multiplier_m = 1, multiplier_n = 1, vtotal, desired_refresh_rate;
> -	long long adjusted_pixel_rate;
> +	u64 adjusted_pixel_rate;
>  	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>  
>  	desired_refresh_rate = drm_mode_vrefresh(adjusted_mode);
> -- 
> 2.45.2
> 
