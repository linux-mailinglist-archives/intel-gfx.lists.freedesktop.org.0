Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE316B0668D
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jul 2025 21:10:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3468E10E63E;
	Tue, 15 Jul 2025 19:10:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BGS2k1tl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7D2A10E630;
 Tue, 15 Jul 2025 19:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752606626; x=1784142626;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=CjmNnXG3WnEJjKwnkXMgXwgupQf+zf40diPmPHhmAfs=;
 b=BGS2k1tleX712gSVnw/lVdbqCDOhjAyMIujG3HsBjK9+xO1jcU8opo79
 oDDCJ7bhZbCUErYK8T9a+GLG5xUVk5ylzqfjnQSKX36ogKU4fPmvV6ysz
 naU5G4311kEAi21kYD9aMlkMCM13Wj+MWAkj73bXVxCKUidEmWRW21CWh
 /r5HwmuWR4mgC9mDrtszLGecrSORSILdXrzM67UlaViKkH09Cu35f/EFg
 UC8PwXF0RK6XmaRs0X0EYsBCUoEJqy4wv3xUbURbiOaUAupdGKecgvUNR
 mX2v2eDmSfl8SLGDgZzejgP0HgTvT2xfThP3WtbkJVlVpcAj2OgcRt28N w==;
X-CSE-ConnectionGUID: o26V/q/5To2Rc+wx7qTnuQ==
X-CSE-MsgGUID: npUzf88HSguCOftaXVOMNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="57448104"
X-IronPort-AV: E=Sophos;i="6.16,314,1744095600"; d="scan'208";a="57448104"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 12:10:25 -0700
X-CSE-ConnectionGUID: aj2VC/qtSvGabhhYGzNXIg==
X-CSE-MsgGUID: 9b72FL5zTgqBoMWLit5C2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,314,1744095600"; d="scan'208";a="161851919"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 12:10:24 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 15 Jul 2025 12:10:24 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 15 Jul 2025 12:10:24 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.65)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 15 Jul 2025 12:10:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vUtBR8ZoZ/iiJUq6LzwN/rSy7jYSQV5rm1V4tPpDWQMrc0mQ0gvPR/V1eFw/X3GKmSi1TBOriG2Fy5emb+lp7k/CMYYVlfcz704pwn+59+otfRZHplvenMWeZraTpBHyAxphbLfvRKA1FUeRR4sKzpg9KKvcPLeI3mwO96YG7NSy2ALD6BkkIWjHrPMB7KUmNYqWOpqjv+TjMgloZF84RIag8OGNMegmKBRpe7tgkV/hjw2RzcVx/nfoKyuHVGgy9kbe5TeG6odqedoIm6hMyy1pWyaa5u+S9M8Hq9BmGf+nDWEgRH0QNBXT9L+WZc7A4jnYgP7HwDtIbSD0yNWuPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EKAwuMjkuXkTqxi6dzQgr54t77sgKJVkDLdMzJToLpE=;
 b=prcf4VZfkQRS47/DEk9hzBf2qDx+zNJGnSu2cldtE6fnhAkvRA8RSoET5OYwZeaCaDGcd/Uy4CUwt2wVv1j9nYPHARswjoD/oOvwVfsrabEKsISqy7mEaoFEtPbOnzXM9doYyha3y27BGb5U5skOEgNNoErSJUUku9+tQJnrLD1ZwOSG35ElpnLkzyfFVZh0iOvvxe+q/bxerbDPggk/2DhtySCE6W9xhAwW0s77Ygjc9IHd1/M3owU/dfIh3JrU4DwDkxSi3Gh1L0S4FrhQEqJDNB/z4UrZ460w5SnIEDFWBW2WH63LOJNy5MxiFMiTAISVrEpA1J+nNJ7BANvXHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by MN2PR11MB4712.namprd11.prod.outlook.com (2603:10b6:208:264::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.35; Tue, 15 Jul
 2025 19:10:01 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8922.023; Tue, 15 Jul 2025
 19:10:01 +0000
Date: Tue, 15 Jul 2025 15:09:58 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v4 2/3] drm/i915/psr: Ignore enable_psr parameter on
 Panel Replay
Message-ID: <aHanhngqbCol22yH@intel.com>
References: <20250715105509.4146806-1-jouni.hogander@intel.com>
 <20250715105509.4146806-3-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250715105509.4146806-3-jouni.hogander@intel.com>
X-ClientProxiedBy: SJ0PR03CA0140.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::25) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|MN2PR11MB4712:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a3f26da-14af-4109-4f92-08ddc3d332d1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?XEoAfRv8n4qKZlfaIViC3zjokCrvHAleMuOKAfLsR33uCbHUihPJWgpXoY?=
 =?iso-8859-1?Q?HinvheC5orLBpgirWb/iX5mB3OTuYstVXa81MslvHcJCWpwIWyyG0ozgoj?=
 =?iso-8859-1?Q?6N4K8WUj47zWPSzjrcpXN21ADzS6x0Tge1zOz1HxUhLT+09JeL2QQ/u211?=
 =?iso-8859-1?Q?csKRkkNB+ZrSKR3ybcMACcwVIv/I9/lStnmH8uXuvsF3kIm692a/A4HHQ/?=
 =?iso-8859-1?Q?D+X0cSXfM4riJRCzRckseYS6nnC98Xo98bIgz/qrbemhJbItb21DGMLR93?=
 =?iso-8859-1?Q?Ku+ybZkKeigv/Fj5PC2uXYVEPwmnfUEmUgVew/BKS/xqGGL64jBkaiUx7A?=
 =?iso-8859-1?Q?TOGVmEW5SyQj3nbVFkO8eQEl691mQy8QGcd+PARMFJDIZ84QOMKd0Lh+/P?=
 =?iso-8859-1?Q?Hf0fZeToh8wi3NXqKbY6cyYdkQe8azKzCWCf9XtGbr5Xs81KgDqNB/kIg5?=
 =?iso-8859-1?Q?G5XbOvJ2rNazXw3ZIaYDdM4RM1aTGXEjgvhhmNeGYABTAcxe3xsE1Hk4sE?=
 =?iso-8859-1?Q?vrapZpJN28OZIcNjXKhtkxagO9mv7tl43woHCnN2d8piqbtvrdreG65AGB?=
 =?iso-8859-1?Q?hD9rmY0WAh4nDu745AfnekTkaLYLQf8SdspPY0DZHc+Va8GrLDGGlcy0jT?=
 =?iso-8859-1?Q?CgkLdc9/AkNIiI7mNUzCvI5dB7UVKALLayyIzSTztS4g+j9Q75/S2eYQQt?=
 =?iso-8859-1?Q?g+BfksPw83YRa2J1wI02cdtLXPhqZ7sLLW+SEKfzYjpHllHpKMsdycvhd8?=
 =?iso-8859-1?Q?3Q1BPsGAy/mFUChbs62sQonne5u4RdVV20k3RbZmJlHAZDraIFZWwzoTfy?=
 =?iso-8859-1?Q?jlnPocGkclGoDqSvTDBFi7co6/5TuKfarXrIn7DJ9ibQhGw3hZhEZsnt/q?=
 =?iso-8859-1?Q?OlIu5BJD6wuerLVPQzG2dZq0+9lQtGrElbqeSaBZkT4O2tPsvMBwgny3so?=
 =?iso-8859-1?Q?eD6b9AM96W/lNzHwUriY279D1UdXnj3JBOnU2BsayobiQwbD18rEW/cwSu?=
 =?iso-8859-1?Q?85f/mAGSDuiBc509cLywsKvVlNckhbDZOyav38I0FeF6PHO4fA0WLapJSz?=
 =?iso-8859-1?Q?gXm3GlHFm7uqrz4Y1nghtljQcpd2M711vFY7qxgPTMlB1gxc/dMlWgjYo/?=
 =?iso-8859-1?Q?PgTDDM/ff9XXOsQrMJysgJ3b+aROS14gu2CIlYAmQwZy0TzOcUF7Pofxps?=
 =?iso-8859-1?Q?ClOD584ry0+BZchzhhBhB5VAcWE/6ZkUTHcpllj1Pu3lwj1KbcK+ZDb1ZG?=
 =?iso-8859-1?Q?HYdE/LjbB7FhHCABNcG1+XlxL0B+wAJjOT1cod246gI9v4guXGFwvatbjb?=
 =?iso-8859-1?Q?u/pzlSgpu/K17B312mS5DbgpbVS7C2GZ4nP02TB6lkLie+4GVSzGK0jp93?=
 =?iso-8859-1?Q?BnsnhAb8X5+hJo/1vhf8E4yyH0L4Y/5KXGRxDp2NCWqNoV9AzHyePZfQNs?=
 =?iso-8859-1?Q?MdXLlr8vFX4eT8SGxbqFxLbWRl6h2ITfPec0GdP03PntB4ucQU1GhOgWCQ?=
 =?iso-8859-1?Q?A=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?pfHVca1AH/NYCAKzWmpJY/J2Kq/DZNGz1xnNxXnd1w+mVw4olHWuBeTS9+?=
 =?iso-8859-1?Q?qQWXyLxEsIeX8oRka/YwFPyYON/Y02ie7KGcfMndqDkoBbyp7szsqZ3jll?=
 =?iso-8859-1?Q?veK+KYzt9CIisA0CD6GmTkIFGrnq2OP+XxsiAjPetQTD7r4JLGSdNfFDdw?=
 =?iso-8859-1?Q?lXZWcaobL4Sb/p53rz0ypEi1YWK91OFAUh5VQfSc6JyDFx1oxgNRN0OOK8?=
 =?iso-8859-1?Q?S/Wg64zQ3dUNX2QNnW/Gjkv1xpYTN9qsLWW4SZ8IYixy6cyHKjNLJlLOMj?=
 =?iso-8859-1?Q?5OHJi+MEWigL9EzXVcSjPmFjQrhDf6r18jNNi5zWuhH8OsjbV430YP9CMX?=
 =?iso-8859-1?Q?c035zmu7nFYAy0vdKpDITpNcGQo7biQQ3iaItZN3DEagz+Sknqmm/KGvbY?=
 =?iso-8859-1?Q?03eomzhUrOxAo7CuuifLKKLsE1Uxsjycsh6tiwNOGiaYHKvGmAqXEhxlx8?=
 =?iso-8859-1?Q?LW2/2fehE/2TdOkzhK4NPvVWkwUWmhiDZ/WI7AqpSrj4+VJN33kmE0H6rJ?=
 =?iso-8859-1?Q?BctMk4BIpZBAeUxgOeFrNN4OG/AwMSU4oUgIT43/ulhA0EDob34OVjENnD?=
 =?iso-8859-1?Q?ZtBtIPLtJ/KhsTRX3fd78DtlDFE/7KWltkvnbZzoAZxebTcKxfAHqVwbb3?=
 =?iso-8859-1?Q?sCPqol2eFpln4WkvfsTeTY7xPNUoeDiIAPltBs6kbqK6323U+ETyxd7zp7?=
 =?iso-8859-1?Q?nRFcOlk03uZfinx+/X9/znBvW2mjbxpYdUY1ORn4ttM5UcVTwEjXtS7Zkz?=
 =?iso-8859-1?Q?bA0xMWczqin0MP37GRWBc8EJ1IOYipeqOitZwAgOD4HZbZ+6fQT51Oyh9k?=
 =?iso-8859-1?Q?aOw9DbOi8Qps2PIy4ji/yhqFt0f/vym/Gjv08WzdYAFN5HK8FKeVS6aVFf?=
 =?iso-8859-1?Q?p8mJTv/7uPXZjzOFGJhv4U//88F2lqEnfPt4dMTPvXKusF4rY4skbM/hlA?=
 =?iso-8859-1?Q?iVsTIBrVhvBUdvSQQ/7iKSGJdfuBMyR+8c8jFrJ7BIWC5Oqq38eyMgJ6F+?=
 =?iso-8859-1?Q?S+JEoXQrn1ziMe8j13tcFvmzk9XxEGjviowNsUIJlg/Q4zG05wXMGtLBpT?=
 =?iso-8859-1?Q?984FgHRmfEMI5IltcDHxCzo+voyaGW6r7KPCHUmqrsbVGdhAyzQ1WXsRR5?=
 =?iso-8859-1?Q?z1Eh7Jm3fpJL5NY4tPIj4UQMr7bt3Dom6bDU89TSi8j2Se01guUmp/jn8n?=
 =?iso-8859-1?Q?5W2CsZQCjSe2kp1VjZ4+NsIGXwP9j3iQY1fhD6FPPLh8ENqLv/bBU9inN8?=
 =?iso-8859-1?Q?k+zwnJdQdVxTAzOZ7vJztrd4GkRg6q40BzniMjCSy0spBQWE6PhJwDiIAJ?=
 =?iso-8859-1?Q?KZI+Kmmq9z1WJLp6Uy41pHaSkXzNd6fKkrgWsoOWQaLJ3nUO3Cfxux4Iq4?=
 =?iso-8859-1?Q?+t+Wlwugs2s4MbdYTY6+egIzfF1i1cSd4ZhPnh8uj763Uf/Zq0kh07nTM4?=
 =?iso-8859-1?Q?FXNjfkIQdJksb/cIeecxbE478QndbbGQ1o35bZOh6+t9ywJDUvUIfRnym1?=
 =?iso-8859-1?Q?6JummOgQ5WJgH7Hu8DS7qf44nnr3ZCmCqJgq/Wah77erfvaBnV6dZ6jiQR?=
 =?iso-8859-1?Q?B8O8gS5uM07/2dHAFRYg0sZJdMWciG7mXt72oCPestsccTUWwx3Y01fGMR?=
 =?iso-8859-1?Q?wvFrllKnrZO1YCWxsm5W5LxZuBysSSnyD2WG0SYkvhS8URrD4YuzeaKg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a3f26da-14af-4109-4f92-08ddc3d332d1
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2025 19:10:01.7373 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vk9tVc7mbQpcRQ3rzpqgIf28e89p9ElN7VvOqYiF4IRYCz4GCdA/SQkCZq0yYDD3qFJc2Vdkc8hdiZoQ9ZOhzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4712
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

On Tue, Jul 15, 2025 at 01:55:08PM +0300, Jouni Högander wrote:
> Currently we are disabling Panel Replay if enable_psr != -1. Lets ignore
> enable_psr completely on Panel Replay.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 27 ++++++------------------
>  1 file changed, 7 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index a2b5688f0c82..ee1f9a240283 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -233,16 +233,12 @@ bool intel_psr_needs_aux_io_power(struct intel_encoder *encoder,
>  
>  static bool psr_global_enabled(struct intel_dp *intel_dp)
>  {
> -	struct intel_display *display = to_intel_display(intel_dp);
>  	struct intel_connector *connector = intel_dp->attached_connector;
>  
>  	switch (intel_dp->psr.debug & I915_PSR_DEBUG_MODE_MASK) {
>  	case I915_PSR_DEBUG_DEFAULT:
> -		if (display->params.enable_psr == -1)
> -			return intel_dp_is_edp(intel_dp) ?
> -				connector->panel.vbt.psr.enable :
> -				true;
> -		return display->params.enable_psr;
> +		return intel_dp_is_edp(intel_dp) ?
> +			connector->panel.vbt.psr.enable : true;
>  	case I915_PSR_DEBUG_DISABLE:
>  		return false;
>  	default:
> @@ -250,29 +246,20 @@ static bool psr_global_enabled(struct intel_dp *intel_dp)
>  	}
>  }
>  
> -static bool psr2_global_enabled(struct intel_dp *intel_dp)
> +static bool sel_update_global_enabled(struct intel_dp *intel_dp)
>  {
> -	struct intel_display *display = to_intel_display(intel_dp);
> -
>  	switch (intel_dp->psr.debug & I915_PSR_DEBUG_MODE_MASK) {
>  	case I915_PSR_DEBUG_DISABLE:
>  	case I915_PSR_DEBUG_FORCE_PSR1:
>  		return false;
>  	default:
> -		if (display->params.enable_psr == 1)
> -			return false;
>  		return true;
>  	}
>  }
>  
>  static bool panel_replay_global_enabled(struct intel_dp *intel_dp)
>  {
> -	struct intel_display *display = to_intel_display(intel_dp);
> -
> -	if ((display->params.enable_psr != -1) ||
> -	    (intel_dp->psr.debug & I915_PSR_DEBUG_PANEL_REPLAY_DISABLE))
> -		return false;
> -	return true;
> +	return !(intel_dp->psr.debug & I915_PSR_DEBUG_PANEL_REPLAY_DISABLE);
>  }
>  
>  static u32 psr_irq_psr_error_bit_get(struct intel_dp *intel_dp)
> @@ -1412,7 +1399,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>  	int crtc_vdisplay = crtc_state->hw.adjusted_mode.crtc_vdisplay;
>  	int psr_max_h = 0, psr_max_v = 0, max_bpp = 0;
>  
> -	if (!intel_dp->psr.sink_psr2_support)
> +	if (!intel_dp->psr.sink_psr2_support || display->params.enable_psr == 1)
>  		return false;
>  
>  	/* JSL and EHL only supports eDP 1.3 */
> @@ -1517,7 +1504,7 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
>  		goto unsupported;
>  	}
>  
> -	if (!psr2_global_enabled(intel_dp)) {
> +	if (!sel_update_global_enabled(intel_dp)) {
>  		drm_dbg_kms(display->drm,
>  			    "Selective update disabled by flag\n");
>  		goto unsupported;
> @@ -1565,7 +1552,7 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
>  	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>  	int entry_setup_frames;
>  
> -	if (!CAN_PSR(intel_dp))
> +	if (!CAN_PSR(intel_dp) || !display->params.enable_psr)
>  		return false;
>  
>  	/*
> -- 
> 2.43.0
> 
