Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9144690F612
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 20:30:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA46210ED78;
	Wed, 19 Jun 2024 18:30:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fDCfpqfz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9873B10ED7B;
 Wed, 19 Jun 2024 18:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718821848; x=1750357848;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=auNcsmS3c+4nJQK5BmEU6wm0oDfTmMFyBCGeVHIb4+Y=;
 b=fDCfpqfzwwg4Hzl21DM0Waq23WX399obwDDYpFOO21JhLSbmq31h+M33
 Cdfw55MPIogrMI0kcP5Mwvp9IChuflCIuHDzFcYMOB7rVF/mt4UpgasKM
 k2UwjhY6G94Ho7NUOqZsQtU+oW4BK+qSOXOC5Xy9H2ZLw2fCXh4zoWfC3
 zGFYXKne96wEDotDYFJSXhf+RdOnxNxK+/vfOC5026M/MMybBJa2HTtJ3
 H44UARrRhpATD9McGIlqmRRJuLZOJWT1BK0PWz3sDrHQVvT3Qxn0qMMpV
 kW3oypBrBOp3BnHaOdAAgcdwz015kXZGPbJzY8yVRkcefdMxGmFy8BdkF Q==;
X-CSE-ConnectionGUID: Sk2lRSI0T8e7LjlvwZuZUg==
X-CSE-MsgGUID: XQUBSl96RFOtBdUGiHSUUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="19652774"
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; d="scan'208";a="19652774"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 11:30:47 -0700
X-CSE-ConnectionGUID: J1TYryhESSaB60DmHJaXTA==
X-CSE-MsgGUID: x6nKyKizTFORGoOGJwtFVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; d="scan'208";a="42090092"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Jun 2024 11:30:46 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 19 Jun 2024 11:30:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 19 Jun 2024 11:30:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 19 Jun 2024 11:30:45 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 19 Jun 2024 11:30:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NsD9/i+70FBvx6Og2+ESJpLesng0L1UZ/c08On93dXwlgg5cXqbMiTOGyAYWNu+L+p3MbPMzKZriDOU8y2+dsLV/cAx7GEuUnD4jA4M5TaZcighlHpEldiXSAAApE450cKusdNp8kq+u5SByFlAMMAjJkNNVqKQ5mkPiITcXqg/DVpvI3uAoKAPexRnzjBgo6Y11s3VlIhOtbnzjCIUf+zgvuW8s+8AYa1vHxqbBP2Mpg9bGeVmK/Tnl3fz7gUdn//Rb1aa04Q2oMcY6mcNAcD4isuReAXqYOkd5cpngUks/yfvxMjaSgmdx2Wds+dKzRecOeQr00JeN7BJCvuphpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AyAHjiv2JfMUsgO0M6LiYYiM7+cHkhBQoo0ehfBSoVs=;
 b=FvyV7Z9OZzewW+JwO5ezLDdRoqPo8If6Oc2zRBkXMRg7En82W4MSYmNzAnf7jsjaU/ksAWB426xYtc8MEJgC8t0KtNTn/CzViylCIYi9jAaAQRUg6ySLIRG8KvsSiVc84N6WgYNVnMfZsqZUA7cjKnzQ6ck/Iv00bIe2IAbAFepMT07GKS+nY1Aw2wsXEgJTWRlxEC4vmONrsqfb29WXyYhWs0eaMqDx/Z+l3HHHJPGuQ3FERKInHomUWi4IeoRVA5IQY4vTqAg+Too2qTJ0UeDux4LeUZIIylKLYxgSKc6e4qN8M3AwJ56aCYwR5uBkyFqj6btteUprRt8dpzlV3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CY8PR11MB7874.namprd11.prod.outlook.com (2603:10b6:930:7c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.31; Wed, 19 Jun
 2024 18:30:43 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7677.030; Wed, 19 Jun 2024
 18:30:43 +0000
Date: Wed, 19 Jun 2024 14:30:40 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>, <maarten.lankhorst@linux.intel.com>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 6/6] drm/i915/display: remove the display platform enum
 as unnecessary
Message-ID: <ZnMj0ExM2pFLVG9G@intel.com>
References: <cover.1718719962.git.jani.nikula@intel.com>
 <323aa570a2cf58cede7fa0ca8bb46a273bad3395.1718719962.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <323aa570a2cf58cede7fa0ca8bb46a273bad3395.1718719962.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0065.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::10) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CY8PR11MB7874:EE_
X-MS-Office365-Filtering-Correlation-Id: c65a957a-13ff-4c9d-65ef-08dc908dedb4
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|366013|376011|1800799021;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?mHGquCGSyFDxr1Du5Jxqovl/Sc1Jq7qGr9usOjF8vX34XQtjcnqdQC9jbKym?=
 =?us-ascii?Q?WHgV+flNGf787K2CYP6yZiTkyKI2H/JLb+1DOBHsLt7TxLd149XYCQ3zmXKa?=
 =?us-ascii?Q?qMk6h85kLk5nhhRjp/y5UU40Fx4Dbv9WF2KI0+9+tJy2v8yxo9C22sP0ujrp?=
 =?us-ascii?Q?PtZuB2jjBfjhyMHHyUdy4pHu21+m864ab5W/xf8WYWavnYErTE2fcq/Srh1G?=
 =?us-ascii?Q?ZKm+BuSiNI8QFR0nKGEo7EudSMEUwNwbhYqihMdTGs6ANDtW0VaLK8RXxJk5?=
 =?us-ascii?Q?EymSO2h8Kj+eJ318dviu8JOIzXPcnmNLNr/hqFiJ3QFylVmeGZVmQQcsNFwR?=
 =?us-ascii?Q?RPc6YWjWuUitQcIroIjYTQ/0Arb+VghRDnX7ub2mSJb66kuF6pal6EjJC79O?=
 =?us-ascii?Q?IuSjTDnrwiDx+Lg3tjkK5azHg2Mal3DEF2B6VLnTlajqjSVcTTfjd+BrV8QC?=
 =?us-ascii?Q?ODv5uqcwfP5Wy6Wi3/EpmLuVKeqtzzv7n+SnHH6pKjkNAWvUW+iOxu8TaT+Q?=
 =?us-ascii?Q?7rUryCrcosJwCrvNHKEecv/57pD9Y6iZ0TtJAOpv3kVt1xvK3e752L+3L+R5?=
 =?us-ascii?Q?SSgi/5yDIU1TRMsQxBFNmxrE8wpvO92Orjq4XTaqXzUsy5xn0TI0Io5pj8Or?=
 =?us-ascii?Q?Sk6iG0i2CrWo9QTRZlKWJAqnnYhQuwYw77Neb2OsjwtJ88/6vrslQI/tESSl?=
 =?us-ascii?Q?t1jERuMgSuB0zr/1X6cJYurXvxBZs7W3KtEZRoanG3W0A0zWYXh8EXrRnnDp?=
 =?us-ascii?Q?HiA/GJ5Xd96wkDPbxpRiJq7PD6iP2VyhVTC5D1SjxpTTuBd8OkU+2zfaG6j3?=
 =?us-ascii?Q?rbVIcOxv9Tc6JgzDHb2jxuRje/oUgtjRWfVpo/HGQe2XD+tYNG+7fnF1sd+S?=
 =?us-ascii?Q?T4oMncwfxzzsL5pmQ8bsE6wkzGuLJ3chE07D8cgPeYgYsAyCVbtHgoorxetg?=
 =?us-ascii?Q?1G9oC9hcBp9Q42s0pbwHQCAhHwt9XveFkNGovRxMMhd8V2j22NSHCI4sG4Qn?=
 =?us-ascii?Q?KWdRUF1GE92xlB0STnRaa4fB0oNd5AYVYEaOaSfJ0+kOf/lBaiXMsYIjUWda?=
 =?us-ascii?Q?H0E7UfkPRw7XJo2WR4sATsE+mayLMNyVZk+Mc3ewItmgtQrQoGTCstgm5Nsm?=
 =?us-ascii?Q?BlxKK3QRyV3HzRX3hkQduAGIyifbMbFFNbQUnMc25EznZvhDv/Xpqs0IN7sv?=
 =?us-ascii?Q?EZ4J+NkgNh2vqTY3xpkBE2nQaWuCAjUCxJm++JVK0ShuZRAhHYP5JE0Eize1?=
 =?us-ascii?Q?JN5kHveotCHS5bRlD3rCXgcu5vRDC6DWOy0Js65ul2fC9Ub3yTvwIQN9a1DM?=
 =?us-ascii?Q?zgmzS+ZNZvIciDVchGgdURv3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(366013)(376011)(1800799021); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JVTYPSNWBy2eTrkO32xLKNXhe86UlajmsHCv9aXWOpmDI+fI/SkU1oVfEC6S?=
 =?us-ascii?Q?BbOh1yqQjAmNixoJQAiOu1Ju9DwUxDg1rNlZvWeRDxkXpx7rgzMAB+DVFxRj?=
 =?us-ascii?Q?klrBQ2PRa1kl9e/h10uKQBvnn9N81owuqyzJpte+POvsgRq41AsTXrCbSF9n?=
 =?us-ascii?Q?br0WoE3FngjcYSySOuZHauw8JVw68SuGKReHcITT1vBUnOr4uMqxk8fXRqer?=
 =?us-ascii?Q?hk/ywOzXrJfSxUqJkUiIqbVev+vqdzuccEeiPxJEykbbzM+XJRGzz0x0LcAW?=
 =?us-ascii?Q?4yBG3cFTYUAe4Kd0Bz9XLuCnQANhAQJwAyaA9RglRzhkLjlpD+67YhWFwCUr?=
 =?us-ascii?Q?sxq9hln4/Cg+QNhnPgfDe8z1rbluG+eJ1v3lQCa0bXP9wTvAA4iAnlD0LrGU?=
 =?us-ascii?Q?lGgA/T7p33bxg+ccJuO/LxaTqqF7WfjBKvqlKA3EW/UGPLi4a3CKHRcVsxgI?=
 =?us-ascii?Q?cLzu8XvHFeVad+w+Q7WQrn18CctkQk/WHD5Lk6XXeubVuoHxqk/is2T3TOEc?=
 =?us-ascii?Q?dXS4sxaf0JNjZg2oN0nURPXJJUZARxvp545zB/yeREk7rIhlw9L4mxEPjpkD?=
 =?us-ascii?Q?xdSJVaK3tJPowUcInWu/DLq6wIOq2T3HF6eNiopAbHpj7cRZ6jsNEYE5QIrt?=
 =?us-ascii?Q?OUtzVMolpYVftrKTtYWj51GwURUm0BwnK7J1BbB9/vdHT7kNfB7p2Y6eeFT8?=
 =?us-ascii?Q?U7b2phdenL163Img1JuWVfYWHHwEyuCA0epkGtJGkHNj0QWBVRsWRcABEBCy?=
 =?us-ascii?Q?OkY8QOM0A2+ebbo5ksizvOBjsoly6TqNTj2SFxc01yheh1bo/z9R4x0dviIh?=
 =?us-ascii?Q?Y3xWvcHGF+Nq5ky27kBNQI6OwVj+EAtVmvcPNo0cBrY5RT0xN5YLhEhH7A18?=
 =?us-ascii?Q?Bg+yQxXiDQd2zwBO3yc9s/oiZ3i7uYSBY4W+6NA+gbtTHjHxsOngbmK+tstz?=
 =?us-ascii?Q?97wpqYSyJk85aSFVj6GlD7KjIVuTjss3jRvMyuKA8kdeQiDXMJCg8i2bg2hO?=
 =?us-ascii?Q?KVlWvbzHb50kmVlsy6GkAPwAkd7y3QH0mtCCR9SRByEgioGf5SwH7V3fTkWv?=
 =?us-ascii?Q?csG+wMyXCyoh/ueBPsBTject1hjrEVi1F1dIskkl84pziSx7s7Hwyz7Kdq/i?=
 =?us-ascii?Q?/AjS64sDh6ZHer10Jfb8moWsTCPCNoZxaNovryVSxfYHxePBxjb9lAcISz4M?=
 =?us-ascii?Q?2tR2gPEKLr2mGePOwEhHBsvFT50QhqjS1FVlDlXrAnIUHbkxx6apH+sx5d4i?=
 =?us-ascii?Q?aaZ7UTGLLH7dJvoxmz/1m625WXgrJxbSCsVqX9FHoMxwVorKT5H21+jmACdB?=
 =?us-ascii?Q?eihjdUTrjNgXT+seF5xOGmueHQr3PWvVcyH5DTQxlSZ0LzsQN6ioW58ZFRrS?=
 =?us-ascii?Q?jtxVcaNtUWuHxuf/Xx33UepdLotAN3Y6483qG5mWJiKwg5af+CpNdOhbeW8A?=
 =?us-ascii?Q?CPiLJBW+/hSftb1Ncm47QEC515yLL1bcPdmxW7g6LroT3lsaj6gmjiLIzbZ3?=
 =?us-ascii?Q?ps4ic1mUPGzelVn2tLHVrPNKy636oIodSZ52uMbIK7xOvPIRdr5lYFqeYQZq?=
 =?us-ascii?Q?GOPvqd7LkGIA/X2efPDzeiL6TtfjGQ9ZgWsUd57rpoLoaZTTcrw2O46qR/RD?=
 =?us-ascii?Q?9g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c65a957a-13ff-4c9d-65ef-08dc908dedb4
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2024 18:30:43.4292 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YwFScROi6BPzMdWF6oCx6+CK8+NSX87QWm6hwZ1NbVewGV+O5hbrN1RL1d+/8HlemiPQXBb8BgsYeFlkM/eQJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7874
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

On Tue, Jun 18, 2024 at 05:22:56PM +0300, Jani Nikula wrote:
> The display platform enums are not really needed for anything. Remove.
> 

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 12 +++---------
>  drivers/gpu/drm/i915/display/intel_display_device.h | 11 -----------
>  2 files changed, 3 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 954caea38005..6a71e7a8b686 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -22,26 +22,22 @@ __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for d
>  
>  struct subplatform_desc {
>  	struct intel_display_is is;
> -	enum intel_display_platform subplatform;
>  	const char *name;
>  	const u16 *pciidlist;
>  };
>  
>  #define SUBPLATFORM(_platform, _subplatform)				\
> -	.subplatform = (INTEL_DISPLAY_##_platform##_##_subplatform),	\
>  	.name = #_subplatform,						\
>  	.is._platform##_##_subplatform = 1
>  
>  struct platform_desc {
>  	struct intel_display_is is;
> -	enum intel_display_platform platform;
>  	const char *name;
>  	const struct subplatform_desc *subplatforms;
>  	const struct intel_display_device_info *info; /* NULL for GMD ID */
>  };
>  
>  #define PLATFORM(_platform)			 \
> -	.platform = (INTEL_DISPLAY_##_platform), \
>  	.name = #_platform,			 \
>  	.is._platform = 1
>  
> @@ -1261,7 +1257,7 @@ find_subplatform_desc(struct pci_dev *pdev, const struct platform_desc *desc)
>  	const struct subplatform_desc *sp;
>  	const u16 *id;
>  
> -	for (sp = desc->subplatforms; sp && sp->subplatform; sp++)
> +	for (sp = desc->subplatforms; sp && sp->pciidlist; sp++)
>  		for (id = sp->pciidlist; *id; id++)
>  			if (*id == pdev->device)
>  				return sp;
> @@ -1323,14 +1319,12 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>  	       &DISPLAY_INFO(i915)->__runtime_defaults,
>  	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
>  
> -	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name);
> -	DISPLAY_RUNTIME_INFO(i915)->platform = desc->platform;
> +	drm_WARN_ON(&i915->drm, !desc->name);
>  	display->is = desc->is;
>  
>  	subdesc = find_subplatform_desc(pdev, desc);
>  	if (subdesc) {
> -		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name);
> -		DISPLAY_RUNTIME_INFO(i915)->subplatform = subdesc->subplatform;
> +		drm_WARN_ON(&i915->drm, !subdesc->name);
>  		merge_display_is(&display->is, &subdesc->is);
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 73070c8487ff..97033d26c1b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -93,14 +93,6 @@ struct drm_printer;
>  	func(DG2_G11) \
>  	func(DG2_G12)
>  
> -#define ENUM(x) INTEL_DISPLAY_ ## x,
> -
> -enum intel_display_platform {
> -	INTEL_DISPLAY_PLATFORMS(ENUM)
> -};
> -
> -#undef ENUM
> -
>  #define MEMBER(name) u32 name:1;
>  
>  struct intel_display_is {
> @@ -207,9 +199,6 @@ struct intel_display_is {
>  	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
>  
>  struct intel_display_runtime_info {
> -	enum intel_display_platform platform;
> -	enum intel_display_platform subplatform;
> -
>  	struct intel_display_ip_ver {
>  		u16 ver;
>  		u16 rel;
> -- 
> 2.39.2
> 
