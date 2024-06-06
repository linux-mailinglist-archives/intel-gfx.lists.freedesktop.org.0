Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2808FEDE2
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 16:40:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 238E610E97D;
	Thu,  6 Jun 2024 14:40:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nSGpP/wI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E94710E97D
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 14:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717684823; x=1749220823;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=vwtoM2FXNA0SS0EDnHTeZSInacg8rqhPJuU7LBdacU8=;
 b=nSGpP/wIMTWnvLPQ1MjbAn63dTN6CvqLJ71+pikHhmfXMQImEVRQMslb
 e9TMEwXp0A7MfXQPd+yUmj+x2lpQ8BhbNxwg8ee+SFXd6rBiaia0xWrRQ
 iyTbCRnS3TvezPiFIaX2/yDLaMzA9ZXHNf0Gyr18NaDSA0+KMim6PtOU9
 zMq0G+DaIV6Iws4d0w/TvqbJClz1vHKuT93eTKVOvAjMg+lMrPWmGFnK+
 RWN6G4uIBDUgUmLbZWe9OZrXQ8RX84LSLxNC8zrc/ifj5mG2eNIS61KWm
 gJ0rMd5kqzlZttk56sX4PbmNyez0+T2jGYi34aSmj8U3YPJaVfN/SZWEF g==;
X-CSE-ConnectionGUID: p1/oeDaqRk6RMlcl5UHBLQ==
X-CSE-MsgGUID: gfVhhaZiSz694HxwgiTZ9g==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="25013057"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="25013057"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 07:40:22 -0700
X-CSE-ConnectionGUID: mvqC5jjYR2y/88QewN0CBA==
X-CSE-MsgGUID: mzswCxYwRqaBro58ojjMRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="43094847"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 07:40:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 07:40:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 07:40:21 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 07:40:21 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 07:40:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CFB1X+cSPekEn4q1g3GrxYhZSpacujHE4HIZOgHzksVFTje+Duph0kDdDWSAYm3SSpOU3CauMq1gnzrCpd/cp3r1vZ4qiJoCdGOTgtSm0Olq6+8TEgIq29MoYyr0TyRTM5phUo1ly1HUapwRnwJIqvQAhykblwcsKXe9oJ7Z8lhKp5k5IvSFuh8T7Uyqi0VMsmcXTgA51iRG1NLzai9WTWAZpUNcrSSXqiNgVFuKTqxjvPIizK8ckzcEdlQtIyvb21QH17mu0fj83TOlCA0Grlh3nEkHdNhjzQI2HGjMDYQrV6ZWhnz4U+SNZpmsCVyp/jy1BE8QkiW25GppTL+i9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GmHv+U8wacRma2E00o1fmMcg9zjY5QW8LyyEyirnEP0=;
 b=UFLVT1QiuL80GqSrYbSwkZpHvssWaBBLve9KZGl97Tv9OD4KjUuK7QJnCGMYVHC47PdDjcj5Stwnh6qWhyNQb09gnCeS+mEnyGJQiUTJFW9lvE/3HD3DRoj6EQeMrIeJWheuIF8uD4iZhgZAMdoKE9uHalF4beCLwKnAnXkPF0ZvWsK1ssKKVneQ87qXV5k1f3whLwB3wwGjqblGnBmnnwz/j5F9hWYe7dqwNYKZWllLHmbBbmTdl6B7WzWPjpXVg15oGHF5dNdEkm2m+OozLfhOszXAqH1pgzqFu5S4VBg5hpI8UmMI+XZPcK/HMYgHJynNb4sPagGRu0eIW7VcSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH7PR11MB6723.namprd11.prod.outlook.com (2603:10b6:510:1af::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.31; Thu, 6 Jun
 2024 14:40:19 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 14:40:17 +0000
Date: Thu, 6 Jun 2024 10:40:15 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 03/65] drm/i915: pass dev_priv explicitly to TRANS_HTOTAL
Message-ID: <ZmHKT3v6OSBAZSC0@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <4bdba7417341782b74b89753b7db7fdc3edf932c.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <4bdba7417341782b74b89753b7db7fdc3edf932c.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0208.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::33) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH7PR11MB6723:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c325c16-1bd3-4541-a763-08dc86369554
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?s3Xv+H8YUsfJ/zGjB9GCaCRGudBz8RdTnl4nddRefhXbptayvkZaJ+SghT5v?=
 =?us-ascii?Q?ybr1Y5R7ENq8r5VsIM0w6nLV5mBhaOeKsHip0GZfCIzlEeuBV2tvfElz5A9/?=
 =?us-ascii?Q?oXXwIICurv42brq/o9NKiplBLGmzocKssQVd8ht2DKT4RIMbsmj3Wwm6RKAU?=
 =?us-ascii?Q?ZT2SlhrrRNOG655zJQidw2urBpjI+i/p/Jcc2qwUUbW32WpJk8E64EQxET6f?=
 =?us-ascii?Q?siqxES1LLc3uJqupyENvF4GJsjU6Ufn2PtIbuwXNqnCPdd1pc6Gnk7Zj2SSt?=
 =?us-ascii?Q?fn0VkbYTVE3xDAI7q0KyB+gEiRNd8n2TWKRbWRJXT/iDnGrdqEs+Jd9jnLX5?=
 =?us-ascii?Q?lDwRBj33UVGf1iuV+x7xLSdUKUDwuPsZyGP6OlqnLKexxj0VUlNv+eo3BoPt?=
 =?us-ascii?Q?4QpAF5L8lhpAmBbp8IXpRaqbl2gtfWlh1m8RiNCEdM6wDQyyKV/roxcvONYh?=
 =?us-ascii?Q?wRXF8qjBRy79ZhzSZ9RT7X2mEl3lrDrUw4BOliVsLMPNdWsmJ0TLkEq9Y/O3?=
 =?us-ascii?Q?kEYlPXkUKr0qZQE2LCg6y9vw5B+V+TJQwYs14/zDzccO6CX732n07Iag97Y9?=
 =?us-ascii?Q?As+3xF+yWvQNvZ0ZemCHwWs0CryV/jx/ishHYyRYNuhyabRl7cCK/x74X80q?=
 =?us-ascii?Q?Yuj4/AQv0KGTjsqMSLNbadJkkinNOTTsdNSIJePb4DpabDrsNB7OC60x37fo?=
 =?us-ascii?Q?4OH4Vm4f9Uwp6xX5SpWyXJltJLHy40Ypzx3tHuqUDAR/7aYIvf41A5Ux7WdS?=
 =?us-ascii?Q?rahnbDrUAmEBdHfV7gHKP/mBtlq4e3QMU8u3/xxOAEPL0heikF5MFIhcl9Fr?=
 =?us-ascii?Q?kVraUJ4b1ySqXRWRMyqAREMpV6ezK0BsewBo/9M7SWhiE6cSF4Fbo9XmIATE?=
 =?us-ascii?Q?h4EELL9qqZoSRqGEExU+YZJX4Ebvp0Q7Bduhz52B+hRpIcOQx88ibh5e53fm?=
 =?us-ascii?Q?jC2ZsDBSY2H+2Vfm9AsqOJwW2uvVIdCmq8WKZpSoSSF8SXm9uGZ+0SJY4IZ5?=
 =?us-ascii?Q?55Uft5urExcavrXsfMyW0t/WCAnraNfo/TJ1ir1rpMLD37k2DtkUqVt9UtEi?=
 =?us-ascii?Q?fbPHGPx0Fj5Ehi0kURGk9iKLcxLNmQyemCTuh8g4DW486pVScck3b5IQDjch?=
 =?us-ascii?Q?ybg+DtHKHiaZURtXjcdpLYq0qW1sK+wjOUn8BPgbUNlvaU2akT80UZTZG6Si?=
 =?us-ascii?Q?Bo4pDDfDVukkuFUyVev/wKQLhG0maIhx2OQQaxdxyF7acZ2AcEjRE/xDJHeV?=
 =?us-ascii?Q?45io89urlo29jmYbYswnRxs56KfTdflTzdoJ/Dit2dP3xiH+dVGIesKn0pEO?=
 =?us-ascii?Q?r81EfoNeKdRXRY8ioROttDZ0?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fJGOpkszvq3/upvDxTJE3KiAxGWnVIXVmLapwzMhB9wO0ESvFhohNWLEdv2v?=
 =?us-ascii?Q?0d2jEpEECIk9kgT2CPW3tSXng1f8oHDOTcYzVZABpxe+vkEybrRzsd9vNBkF?=
 =?us-ascii?Q?SVxAgY3k0tSyqoIuwv69o9GGi7eeoExSDZiOVoYHcai64h7WEbDslutw6Szc?=
 =?us-ascii?Q?ULeJSxQCoQ3DwapsOuZ9DXo/rhRXfrYr3UNcnWMqE5yE9egfC2MO/RB70InG?=
 =?us-ascii?Q?gAmvfMahaRFPKz6JNy9yYEZ+2EoQdh083fMRuQhJRu6hKXP2dr5RVT6B51Wb?=
 =?us-ascii?Q?x3Zr/zHz68VTP+Siku+WHg0oDkBVhQQyvn+1bV23zWNdtN/2jqJpRvIlIlky?=
 =?us-ascii?Q?aHdgrUK2Vulb3cC95DBbK6+GxWeR6YHqTEgcMawGUiPfwyUJI/JUg4f4QAxe?=
 =?us-ascii?Q?HkJmDIykuWLmguOub9ZBV2tMs9LQ6qHYkjEjzJUGpq6uHpCoJXejn79AxUNT?=
 =?us-ascii?Q?VY3Yzv6s8a6dAUFNIm7e5tPsiGj0mwt/GvVULpLWpOkCdlp8i3Wy556FLG03?=
 =?us-ascii?Q?bTFL+J04qOT3vKN48zerNH+iV+2c4jWrysrG93wB0M2SlritKI2gNEN3Fgrp?=
 =?us-ascii?Q?Uw75+QK1rlRVeb09FxJCEFGqiNHDky/8wcWiPMf+Tui5ArvuFCCRzQ18lEMl?=
 =?us-ascii?Q?qQWhIcuEly1jLcNlIr9aHZNiF+TJpLX66RrdyqtgC4xhZxBER9Bm/P7yKQsq?=
 =?us-ascii?Q?kLMvZaZbAVLj1D0gbo4vVs64fLYgCM8C+uRwOrzJBXcxoIFwel+bkq2nAQP+?=
 =?us-ascii?Q?sIUmeTYKiT4BOCvJczkPoPm8XF6vNSFhBndywLaDYnLd90mYLGVbCKJ8Ay71?=
 =?us-ascii?Q?0qsVON2FzHZjDPE3xfiDohv2BrnsPZACTXafnkgeeoB9S+D8Qnbi0jmOZxBN?=
 =?us-ascii?Q?gm6/vbVM7GM6hrOE8ZsFEOEEqWNSoChfUxsr5RHR7I22DdkzGNCXiwYtCB/f?=
 =?us-ascii?Q?UF8CYbe8KC/t4JK60mTQGQAk6VCgUlTs2zLY8zJ13mpDL07j6s1Jb65LhoXK?=
 =?us-ascii?Q?4kH+y8yTFCflgPhOEe/7urM5xIeTrinBVdD4y15thae1tkX1FMBuE/xGBNtR?=
 =?us-ascii?Q?kChKrAYghfJjoD2vpgk9SHzmAzos/RORufOYe1mtY3hKEiKg8GHaur/bNmcv?=
 =?us-ascii?Q?nEwx5xyRtLfezYCrDRv0SFbDajGDMeqld61iKnxUFKIeUmDgo9hwRddC+NJ3?=
 =?us-ascii?Q?SjWxMJzyCkwXDaKscc+QafL1RZ8WRBCIM3S8JD4FV9kPUbO6SQXbm6HqOY/v?=
 =?us-ascii?Q?l6SmGSGssfXo09bsoLwqNc09qCrMYf1sAVr6lSM+NRh9YhJkwu8ZjuAze4aM?=
 =?us-ascii?Q?Pxd6yBxxgmcPpf5xArFNkK6lc2vxzVqfxJ6D16uGWDsBdqTpxip2lZFH4L20?=
 =?us-ascii?Q?bKGlDOuJx/wMa+mI4yhdaW4ADBefXgw2O+ZxYYrnLsFQvVHK9mn98jzblnNl?=
 =?us-ascii?Q?fspWS2dbPbHDtkPZCuX4cVK6r62Hk48f2H5d4AUu+Kp7BtdtNZHxddXDC40u?=
 =?us-ascii?Q?A8GhfHI3sb842h7HL+ZB8BjZdWo6UgD1rxLK9/dg3DlJqa5E2PFBbAH7xEZZ?=
 =?us-ascii?Q?N/eC5XqfYt6XYce5iQuU0hhk3QrKIkIuYJpGorMB?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c325c16-1bd3-4541-a763-08dc86369554
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 14:40:17.3279 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B6XkM1ipB7BOoTMpOUhn+S6XceDelbR/3z7Ckk4SI/8C4Y0OYkS2+85P7Bj/IZmPsBGRNlJI1XbsNHOTIaGytQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6723
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

On Tue, Jun 04, 2024 at 06:25:21PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TRANS_HTOTAL register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c           | 2 +-
>  drivers/gpu/drm/i915/display/intel_display.c     | 6 +++---
>  drivers/gpu/drm/i915/display/intel_pch_display.c | 2 +-
>  drivers/gpu/drm/i915/gvt/handlers.c              | 2 +-
>  drivers/gpu/drm/i915/i915_reg.h                  | 2 +-
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c      | 8 ++++----
>  6 files changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 79ecfc339430..af0d3159369e 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -915,7 +915,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
>  	/* program TRANS_HTOTAL register */
>  	for_each_dsi_port(port, intel_dsi->ports) {
>  		dsi_trans = dsi_port_to_transcoder(port);
> -		intel_de_write(dev_priv, TRANS_HTOTAL(dsi_trans),
> +		intel_de_write(dev_priv, TRANS_HTOTAL(dev_priv, dsi_trans),
>  			       HACTIVE(hactive - 1) | HTOTAL(htotal - 1));
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 42e2d884c98e..481e076b17e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2710,7 +2710,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  		intel_de_write(dev_priv, TRANS_VSYNCSHIFT(cpu_transcoder),
>  			       vsyncshift);
>  
> -	intel_de_write(dev_priv, TRANS_HTOTAL(cpu_transcoder),
> +	intel_de_write(dev_priv, TRANS_HTOTAL(dev_priv, cpu_transcoder),
>  		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
>  		       HTOTAL(adjusted_mode->crtc_htotal - 1));
>  	intel_de_write(dev_priv, TRANS_HBLANK(cpu_transcoder),
> @@ -2811,7 +2811,7 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
>  	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
>  	u32 tmp;
>  
> -	tmp = intel_de_read(dev_priv, TRANS_HTOTAL(cpu_transcoder));
> +	tmp = intel_de_read(dev_priv, TRANS_HTOTAL(dev_priv, cpu_transcoder));
>  	adjusted_mode->crtc_hdisplay = REG_FIELD_GET(HACTIVE_MASK, tmp) + 1;
>  	adjusted_mode->crtc_htotal = REG_FIELD_GET(HTOTAL_MASK, tmp) + 1;
>  
> @@ -8189,7 +8189,7 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
>  		PLL_REF_INPUT_DREFCLK |
>  		DPLL_VCO_ENABLE;
>  
> -	intel_de_write(dev_priv, TRANS_HTOTAL(cpu_transcoder),
> +	intel_de_write(dev_priv, TRANS_HTOTAL(dev_priv, cpu_transcoder),
>  		       HACTIVE(640 - 1) | HTOTAL(800 - 1));
>  	intel_de_write(dev_priv, TRANS_HBLANK(cpu_transcoder),
>  		       HBLANK_START(640 - 1) | HBLANK_END(800 - 1));
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
> index 826e38a9e6a4..2bf00d5336e3 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -224,7 +224,7 @@ static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_s
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  
>  	intel_de_write(dev_priv, PCH_TRANS_HTOTAL(pch_transcoder),
> -		       intel_de_read(dev_priv, TRANS_HTOTAL(cpu_transcoder)));
> +		       intel_de_read(dev_priv, TRANS_HTOTAL(dev_priv, cpu_transcoder)));
>  	intel_de_write(dev_priv, PCH_TRANS_HBLANK(pch_transcoder),
>  		       intel_de_read(dev_priv, TRANS_HBLANK(cpu_transcoder)));
>  	intel_de_write(dev_priv, PCH_TRANS_HSYNC(pch_transcoder),
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
> index 708b99be02ac..06ba39b2b103 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -677,7 +677,7 @@ static void vgpu_update_refresh_rate(struct intel_vgpu *vgpu)
>  	link_n = vgpu_vreg_t(vgpu, PIPE_LINK_N1(TRANSCODER_A));
>  
>  	/* Get H/V total from transcoder timing */
> -	htotal = (vgpu_vreg_t(vgpu, TRANS_HTOTAL(TRANSCODER_A)) >> TRANS_HTOTAL_SHIFT);
> +	htotal = (vgpu_vreg_t(vgpu, TRANS_HTOTAL(dev_priv, TRANSCODER_A)) >> TRANS_HTOTAL_SHIFT);
>  	vtotal = (vgpu_vreg_t(vgpu, TRANS_VTOTAL(TRANSCODER_A)) >> TRANS_VTOTAL_SHIFT);
>  
>  	if (dp_br && link_n && htotal && vtotal) {
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index ea8181abf7fd..8398826e9c2d 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1217,7 +1217,7 @@
>  #define _TRANS_VSYNC_DSI1	0x6b814
>  #define _TRANS_VSYNCSHIFT_DSI1	0x6b828
>  
> -#define TRANS_HTOTAL(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HTOTAL_A)
> +#define TRANS_HTOTAL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HTOTAL_A)
>  #define TRANS_HBLANK(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HBLANK_A)
>  #define TRANS_HSYNC(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HSYNC_A)
>  #define TRANS_VTOTAL(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VTOTAL_A)
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index f5c4e4e2f11f..2bc90909d980 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -231,7 +231,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(SPRSCALE(PIPE_C));
>  	MMIO_D(SPRSURFLIVE(PIPE_C));
>  	MMIO_D(REG_50080(PIPE_C, PLANE_SPRITE0));
> -	MMIO_D(TRANS_HTOTAL(TRANSCODER_A));
> +	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_A));
>  	MMIO_D(TRANS_HBLANK(TRANSCODER_A));
>  	MMIO_D(TRANS_HSYNC(TRANSCODER_A));
>  	MMIO_D(TRANS_VTOTAL(TRANSCODER_A));
> @@ -240,7 +240,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(BCLRPAT(TRANSCODER_A));
>  	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_A));
>  	MMIO_D(PIPESRC(TRANSCODER_A));
> -	MMIO_D(TRANS_HTOTAL(TRANSCODER_B));
> +	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_B));
>  	MMIO_D(TRANS_HBLANK(TRANSCODER_B));
>  	MMIO_D(TRANS_HSYNC(TRANSCODER_B));
>  	MMIO_D(TRANS_VTOTAL(TRANSCODER_B));
> @@ -249,7 +249,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(BCLRPAT(TRANSCODER_B));
>  	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_B));
>  	MMIO_D(PIPESRC(TRANSCODER_B));
> -	MMIO_D(TRANS_HTOTAL(TRANSCODER_C));
> +	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_C));
>  	MMIO_D(TRANS_HBLANK(TRANSCODER_C));
>  	MMIO_D(TRANS_HSYNC(TRANSCODER_C));
>  	MMIO_D(TRANS_VTOTAL(TRANSCODER_C));
> @@ -258,7 +258,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(BCLRPAT(TRANSCODER_C));
>  	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_C));
>  	MMIO_D(PIPESRC(TRANSCODER_C));
> -	MMIO_D(TRANS_HTOTAL(TRANSCODER_EDP));
> +	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(TRANS_HBLANK(TRANSCODER_EDP));
>  	MMIO_D(TRANS_HSYNC(TRANSCODER_EDP));
>  	MMIO_D(TRANS_VTOTAL(TRANSCODER_EDP));
> -- 
> 2.39.2
> 
