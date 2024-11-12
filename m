Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3519C603F
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 19:20:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C8AA10E62A;
	Tue, 12 Nov 2024 18:19:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mGOf0Vks";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A867C10E610;
 Tue, 12 Nov 2024 18:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731435596; x=1762971596;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=0Km44nS6oucLEIrJaBh70otpsrT77+zyqOSDXiB5IhQ=;
 b=mGOf0VksbcEdZCGjwfuurqoV1bZnMaJtXEYhNltJ2JyvolR2FB/99Upp
 4ZTJroN/WtBkDu1xz0EHKNEsHxbJU9OHL3qMPKe3vw5krLAUtFEb/ITn9
 WCr7oOTLgoIF2dL81KUKEa8ihCj3Bqkd1OBQ/dO5sxqbQZTjONrjViVUO
 YWOtLPiGaBn1H0uAQDvPNG2auzNdXbd8OQeB9khVTyIjbl4GTaWjz8vhi
 mH+baVP/lf5QRc0oNtN0iTDf06ndxosCaNSrMLeJJXO+5lKVH0D+U78Kr
 9pp5HHN9Ts0UchyH6I0+MvkjHtij2AxorqrRZzD6z+Bp1TCtTW1CWNbuZ g==;
X-CSE-ConnectionGUID: vs9E5mSPTt27BF3jJVjXMQ==
X-CSE-MsgGUID: Q4I200l1RrWO4HkusUC6YQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31461308"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="31461308"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 10:18:35 -0800
X-CSE-ConnectionGUID: fmVgCtYMTlKmlERLF8MY8w==
X-CSE-MsgGUID: UeHE6sVkTiqqHcr3v3aujw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="92540846"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Nov 2024 10:18:34 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 12 Nov 2024 10:18:34 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 12 Nov 2024 10:18:34 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 12 Nov 2024 10:18:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PXYQH5t2nq1IhKiFO8tIuE/YKN5gG8gYlyBuCkl7nF0qJSGAu/O68otPRNjWB+3sJxRqJDGgQB30I6FXuLfSW7g6UcwFzduM0MJxJgt/4fd4S3wnWtmd06RnbP8qlOkye8NwpAQtDgf2j32g3Y91476FCk1C6qVboF/Mu2j9aPEv+Y91xELEm9RgR+qRJ83cK//dFypLwf5QH0i1Shz6dmmKOyPRqpUFmSsSqmHjyvzvuZhm8zVKTy/txKtoj/bymTrPVKyTievSJC2G1Yfeao9NPr8mcYLEiCf1HX5VP9hJzhmXtaVi9lgePtn34CvnbU2I23OpIyGzpiigy2a1kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jboQUTAPWMN8ng12UCBlmJUNIDEG8ADaQumhAlI+Qfw=;
 b=I+sggKv88pMU6ApLGB/lVbEqsX19IH9xcOsq6z6l6DSdv0j+/ijEAPd5HRO6VuDhagkUHBaYDKi/3aCzaLJn8NDtWRnHclrb7M+Et290mR2A29aP+BzL1w1fhYRgdOZqYhwftZnL7YE3Vz4jwkyfjthB60lvaXr3fCODWARJjA9guru1zqlqU+7edzVOCSGNT+sJmIL7EPgZF9zMWhxIK/lnHUmUaYHRR1tOd9vHLwRQ8AmaReXuzEK4SLJEu3Qk56Bd+YbKafH450cbPARW4GAkzPtkJ3gFjgPwYS45pS7Kerrr62fjTqDn8Ejztaxmn75ufJHHSHRQ33fby4F6fQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MN2PR11MB4680.namprd11.prod.outlook.com (2603:10b6:208:26d::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.17; Tue, 12 Nov
 2024 18:18:31 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Tue, 12 Nov 2024
 18:18:31 +0000
Date: Tue, 12 Nov 2024 13:18:27 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <Maarten@mblankhorst.nl>, <Lankhorst@mblankhorst.nl>, <dev@lankhorst.se>
Subject: Re: [PATCH 3/9] drm/xe: Move suballocator init to after display init
Message-ID: <ZzOb81v534fU5eTf@intel.com>
References: <20241107100140.292928-1-maarten.lankhorst@linux.intel.com>
 <20241107100140.292928-3-maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241107100140.292928-3-maarten.lankhorst@linux.intel.com>
X-ClientProxiedBy: MW4PR03CA0137.namprd03.prod.outlook.com
 (2603:10b6:303:8c::22) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MN2PR11MB4680:EE_
X-MS-Office365-Filtering-Correlation-Id: 2acb696f-eb4c-448d-bf96-08dd03466987
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6ermvT0qd3gK/EtBsjD72mAGz4ApazmJMB3rdLJ1Vfq+4CksoTtpKWqyyoER?=
 =?us-ascii?Q?HTjDyVo7c9D3Vfn2t1j/vdijKtRy8598CD5mOkbWHmzEdYnyuBs2LJ1to9Lk?=
 =?us-ascii?Q?69hBXhpBhJOFNSIuS+yWDTExHcJoOFLwXMEqbLOZIXwQ6MUvGGslm5jew/bG?=
 =?us-ascii?Q?1wX6scwdQjsb63obJ1Cq+f7p1pJ5Rjfim+PJ1rJsirsH/M8gxph86qn3N1u+?=
 =?us-ascii?Q?TeSc+ChOo0U9GlvSmvWZwajRB5io2NCEONAX7lv77HKdlwYPYDHNL9kKJO9h?=
 =?us-ascii?Q?n3pB2LxKRY/BjIQEJAx7c/sw65xW6SxEXb8uB7M0sqPEMVpZMsMRHBjvsd2v?=
 =?us-ascii?Q?lsKK1iQ1XMee4bPRzQbI4i9y355t1ySb1J9/q10ssyJYTxYuSj2nrTDd/CkM?=
 =?us-ascii?Q?3EztmusxV3VAFbNe0hglw0HgcOnTJhk+5rtQgV2VnjrRRBY2ZClsLxoY/fou?=
 =?us-ascii?Q?UbyJAZhnEVBoDN9CGVEi3oA2fEW73pBQwmdu5Tf4KnWgAsOiZJVuPHKkdFrb?=
 =?us-ascii?Q?caUVb2V25+dLN2G89F8Zl0G50xZ4t4FrCtLKv6FaDpXLj6KXEAcukq+KsgNf?=
 =?us-ascii?Q?t+etv/pKPFhUP96juNu9+7A/YTKQjnZ/wyjJYVt4a8yg50RdjZLod8PmZr1H?=
 =?us-ascii?Q?5DlEYe5upWX4Lc4M4H5zY8yqy0E4zxW6AcHPI2OAD35f6hwoCwHzkLPp7wdj?=
 =?us-ascii?Q?ZkkQtnkxlZrvALRd9/82JTYID7bF8Yb7xLlFWnMDkBeD1YioUotUlKlymyC4?=
 =?us-ascii?Q?YbWKY3C2KA7eEXA3g0E/eJvjARyvL+YBgJ9NSQvjGwztFB+H4xhSaziLriCW?=
 =?us-ascii?Q?ESjt+JQ4frcKf2fbDfGOYhPndAPXVvklSNqWWYVQiKptToG0mlUEjnJ4/kfh?=
 =?us-ascii?Q?wcReKVaf6zilqMSRXW+NlDoB4cfTCMcCcDfkjnbQIBl3lZVHbGBu7IKcADXL?=
 =?us-ascii?Q?+3wrV8wqF+AhsrASJ+ZjDrzq+EAj9VVyW6DHSWzsRJmvJ5p64sNCA1iq67mQ?=
 =?us-ascii?Q?q//vp60INDRwwDV9+dzbT7O1gpmLCpasG1KXRd7ZHv3GYctHfdG6RrBzy8jv?=
 =?us-ascii?Q?iqe48ETrGKl9z6wjmD6n44HN+ZpOVylfPLbU+AcmBVDCla+A9SQZRN6A5mtR?=
 =?us-ascii?Q?ki6IrSBEkmTk+QGKmuwF7FvhGe4AHvBEbjF2DlcN1+TPmUzGkqmafREzZQuf?=
 =?us-ascii?Q?rDqEgajclDn7W4m1S/A7uUoXT3FRylJSIS4YgCz/0lysVieqLrBkf5TUMN/G?=
 =?us-ascii?Q?cP88EKMQBMSVNcjhJMpqSPrfg11smy3LhKN2zbGXLA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AagaFKfrSHsdPjhE8DQFz1un03lZuzluMejrqtrCyRCRKpPVH6NHIeDQZukg?=
 =?us-ascii?Q?lHYr8P8y8jDDkmAAQu0pSMMvjj6JwkuY5EpZ1/gMdUwV1dxVAzUS9XQuuml/?=
 =?us-ascii?Q?2YXMVrn6QVBRaVJy2h+V8fyolFgjC6tFO+N5E/yw18+Pu9aS/VtPvmtJbWyo?=
 =?us-ascii?Q?0K+cWj+plM6hErBaGo6/Yuu8AdzscGWaVWWUdByP9lXFE+xNpcWafP4zHFrz?=
 =?us-ascii?Q?HsRJbPFLAy8UmF4/Pats6BaPsxxZd2Ymm80R1GkSXVCmbGRRkCExmvbWGCFC?=
 =?us-ascii?Q?C26NsNxBFez6SybZ+WROVUB56b2ezFh/F+Lvkz6TsH8tL2Mj1wcwBQk9/7HK?=
 =?us-ascii?Q?K4suXb7QfspKpT/Zv5/8JmuobvYH3O7G5vRRitasKXPJj4ilA0xrnWREbECN?=
 =?us-ascii?Q?Fq6OLmQ7JVFsu8Eo8RvxeMgIFuMobrp1M4nQRx1qI7YSqCpEZPl887CyKJSF?=
 =?us-ascii?Q?oUgx3bOk3gQwfDJSWPnE84KdGusGPRD7NVDXNnNj7UsTvUWq4b689WCEwohn?=
 =?us-ascii?Q?Nhop0fC/5DSngIeK1f4POSvsFoDYD7IyTolWvzOxC0UqI6jlQwLGaUhcAY6C?=
 =?us-ascii?Q?aUBIDJ0gzhxET/7rg8C1eisgh+mlEnxzR2/5GmQKOxF5zReXFI6oUTffnQTo?=
 =?us-ascii?Q?jGMgR1Gcctl2cm9KoFAqldWSFLQ4C+F78XFkCT41vGoctzp1GM7LBCguZY/9?=
 =?us-ascii?Q?GdugwIW6NdAVe7JOjXaOcBNUmnlzf9VnFnBEMGmCUeq/EjMlzjw5r9C2ZWRM?=
 =?us-ascii?Q?sCeAOgtl+i95ykjDZQCoxWvV1RDPaUYeuHlFL6vFgHu4gve0qGTbFxlDPSBa?=
 =?us-ascii?Q?HdwKkykZC8mcxmr4xVC6hDU9QFTInHYJkp5RGc4TssX4p3M+fpWbQ8mQrlcI?=
 =?us-ascii?Q?aPNYwc6gPwd5EAA3iM3XftQs/JG4xFC7ROQouxNAefSHJlUNWy41zOdTjaWw?=
 =?us-ascii?Q?0QbC6XF/VLBpENDPJ2lG2JJ+u/0ZqE/OgJPPjd1DwSwmvpvFRb3vDsWwVphM?=
 =?us-ascii?Q?duFDY5UZYgbta77AJTJPE9oZrnlolyZwlmyJ3c9QRci3xAlhpfnjyTtoLl6z?=
 =?us-ascii?Q?3uEbu+T3yE7llcJH++x72GBJSN7OtHXy5AZuvOSKIotaXkygLZZ0UYiER35s?=
 =?us-ascii?Q?70mFwg2SwUCXUIg9HkZRLUyIvZzEWu4m9OIYyYUHIWvaMyKDBBk88NT+UndM?=
 =?us-ascii?Q?2M229dl5GsyZS4FkBJqvsR/VwCxVL2YWZJa/ltgR/pBcD5s+ptKNQxG+4bTv?=
 =?us-ascii?Q?SnMBlUgVc6KA+iWvaCyIhwEw+oi5AJbPvhdH6uICUQlVEBcOmT5zKNinM5De?=
 =?us-ascii?Q?eeESs803qgwT8WbgiJUZYD2kpsqvIvRintrHCocWUwHha41LdHM7OLiPw0ay?=
 =?us-ascii?Q?SHuPE+JEanbxhDMgDfQBp8sJSqVwwjtgPQNo0YXTsHRDnfSl/olYrmrwOY2+?=
 =?us-ascii?Q?AxvUa9YFXHIZXrChuMgZsEV87rPBYHYRgFNMiQu0DvI0yMzKUXWjNS8cBQ5i?=
 =?us-ascii?Q?ufh5Xl55F9GiVkGdq5vlTjKAlQ+M4IwYCL+qD2/kWFuoaEiRIxv3nOXHd+bB?=
 =?us-ascii?Q?n9LNoPOb6oPv0PwITiu3EweR0KulGuH2L2Wsu0cH0AD5lS+q367SDLpik67I?=
 =?us-ascii?Q?fQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2acb696f-eb4c-448d-bf96-08dd03466987
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2024 18:18:31.4611 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hHBPrrd/4fAKRHR5oaqChXvX2RybQVaxxQEJ0c45L9l/tei//j1uXbCNqd0CH1asIYhB8VI4D/PnhP/rl/KSFg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4680
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

On Thu, Nov 07, 2024 at 11:01:34AM +0100, Maarten Lankhorst wrote:
> No allocations should be done before we have had a chance to preserve
> the display fb.
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Link: https://patchwork.freedesktop.org/patch/msgid/20241105121857.17389-3-maarten.lankhorst@linux.intel.com
> Signed-off-by: Maarten Lankhorst,,, <dev@lankhorst.se>

extra commas in  your signature?!

so, the patch looks correct to me. As Lucas had pointed out already the
xe_tile_init_noalloc shouldn't do any alloc as the name and its doc says.

But please add the Fixes tag and the new function documentation as Lucas
had already requested:
https://lore.kernel.org/intel-xe/66lrio7qieuvevgzkdsmgjt46swaxzxgvdnnch6w472uzjdsu4@xvn7pvrfpiih/

with that, feel free to use

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/xe/xe_device.c |  6 ++++++
>  drivers/gpu/drm/xe/xe_tile.c   | 12 ++++++++----
>  drivers/gpu/drm/xe/xe_tile.h   |  1 +
>  3 files changed, 15 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
> index a0d29d5cb7b70..cef782f244e1a 100644
> --- a/drivers/gpu/drm/xe/xe_device.c
> +++ b/drivers/gpu/drm/xe/xe_device.c
> @@ -730,6 +730,12 @@ int xe_device_probe(struct xe_device *xe)
>  	if (err)
>  		goto err;
>  
> +	for_each_tile(tile, xe, id) {
> +		err = xe_tile_init(tile);
> +		if (err)
> +			goto err;
> +	}
> +
>  	for_each_gt(gt, xe, id) {
>  		last_gt = id;
>  
> diff --git a/drivers/gpu/drm/xe/xe_tile.c b/drivers/gpu/drm/xe/xe_tile.c
> index 07cf7cfe4abd5..2825553b568f7 100644
> --- a/drivers/gpu/drm/xe/xe_tile.c
> +++ b/drivers/gpu/drm/xe/xe_tile.c
> @@ -170,10 +170,6 @@ int xe_tile_init_noalloc(struct xe_tile *tile)
>  	if (err)
>  		return err;
>  
> -	tile->mem.kernel_bb_pool = xe_sa_bo_manager_init(tile, SZ_1M, 16);
> -	if (IS_ERR(tile->mem.kernel_bb_pool))
> -		return PTR_ERR(tile->mem.kernel_bb_pool);
> -
>  	xe_wa_apply_tile_workarounds(tile);
>  
>  	err = xe_tile_sysfs_init(tile);
> @@ -181,6 +177,14 @@ int xe_tile_init_noalloc(struct xe_tile *tile)
>  	return 0;
>  }
>  
> +int xe_tile_init(struct xe_tile *tile)
> +{
> +	tile->mem.kernel_bb_pool = xe_sa_bo_manager_init(tile, SZ_1M, 16);
> +	if (IS_ERR(tile->mem.kernel_bb_pool))
> +		return PTR_ERR(tile->mem.kernel_bb_pool);
> +
> +	return 0;
> +}
>  void xe_tile_migrate_wait(struct xe_tile *tile)
>  {
>  	xe_migrate_wait(tile->migrate);
> diff --git a/drivers/gpu/drm/xe/xe_tile.h b/drivers/gpu/drm/xe/xe_tile.h
> index 1c9e42ade6b05..eb939316d55b0 100644
> --- a/drivers/gpu/drm/xe/xe_tile.h
> +++ b/drivers/gpu/drm/xe/xe_tile.h
> @@ -12,6 +12,7 @@ struct xe_tile;
>  
>  int xe_tile_init_early(struct xe_tile *tile, struct xe_device *xe, u8 id);
>  int xe_tile_init_noalloc(struct xe_tile *tile);
> +int xe_tile_init(struct xe_tile *tile);
>  
>  void xe_tile_migrate_wait(struct xe_tile *tile);
>  
> -- 
> 2.45.2
> 
