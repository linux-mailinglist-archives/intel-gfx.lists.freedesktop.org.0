Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FEC8FF0CC
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:37:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5124F10E998;
	Thu,  6 Jun 2024 15:37:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y7JfqBNd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACCBA10E9B1
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717688243; x=1749224243;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=b9altVMh4omuPgKMutiKwKtL9Ee/RuR0oHoywMMn0u0=;
 b=Y7JfqBNdYM3j/ftK7HKWK4L5C+HIJXdhILACmsGlxRE4LiOPfxZ1r4AE
 nG/d071U63fMC9HItSnDVqT8t9qq5DMEHJdyGB0BJK584IkPEMK+jqdIv
 CEj0AsGjte6iADYFw7WWI2NrJlvE6mtkHy4wHUpm0LgUT9uT7Gu5fkEUG
 EIPMpd233OdElTK9BflICjvgCNV/kdX4eGt46fRGkWnSgDLrPhBUmHQ3c
 +mGrUj225rtG7wJMjUNFcQrLfB3vtrnid67oI49G+nyQB2wd2GvgIAPH0
 NOoTtD0iHaWaL700X/LV0hnqaDHYx/dPZwOP4R8IeR79j6f2wicyRB0dQ A==;
X-CSE-ConnectionGUID: T+dK7lOOSHCqzkVvNMXPkA==
X-CSE-MsgGUID: 6emD7pstQGuRInBGflvMfw==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14107184"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14107184"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:37:19 -0700
X-CSE-ConnectionGUID: HR4hnHwHRLyygfszo2WYMA==
X-CSE-MsgGUID: GgKIv3ZjTTCSnBMyYP81Ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="37957062"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:37:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:37:18 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:37:18 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:37:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FOQFLGFW1g6YaY4OVlYy58fSrsXqu1be4L26vcomO5ZhaLyT7IOHqKPA498dp7LedH4HIUilQS37eYeqpOzGD4GiaP6Av4BBZ0JTMbumnjkWHWl2pwUgDsviQkciZxNeg4CamvO4jr82XM/hiOArdA5eAlu+Q3BkBFI58vxjkDqGVUXDrFv5s2kW5Tpi7y+sOpMyZkXjawwZlLenbLOW8RsF3iK2EsLLbrPOY2ctSS4xAoULC3vJptNH8F88y0tlJT1ygeNQnZhwa8aR5M6Yqh2mWRNp0IN9/lMRo0D8vjf9b6Tob+fecti9Gfs0t6XFuL6z1CwNtaJQ0DghygVp3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dAUnHY4GnX34Eqalpx5jXrTyqcCvNtSsS6aL16mvGv4=;
 b=UrgPxUD4aaTSvJydxVOcUPyhh4miFnuR2h8muK8iJOaznZjGc+8bkEGYik4NlpeYbsglcwu/YjPYvwcsdCny/bb8LRrYKzXUOlbzpiaViVec7Fpl8EIf7EDl6mufs5AK9uJ3KsOrZqL3UIm7V6qEauEBgFz64EoGIuwsVtDe8pFC9lX85pQxVS5OSKlcOvyWPZxHNQtEGdIRDvMjpWY7v860ELTdemDYJzb626RZbJV/BQx6+ZnzclVfXgJzyJwvWj9dcus8DSEzQurO6w8DrZlbkDuvbULaUcZIvftoN3PEjBB6tSdea/cxYMFRUDKlO04M9cKWvjP56DuMdm4YXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DS0PR11MB7459.namprd11.prod.outlook.com (2603:10b6:8:144::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.27; Thu, 6 Jun
 2024 15:37:15 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 15:37:15 +0000
Date: Thu, 6 Jun 2024 11:37:13 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 08/65] drm/i915: pass dev_priv explicitly to TRANS_VSYNC
Message-ID: <ZmHXqcpvdKJ0go04@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <eed30cb59cc45955a88cdf951023b0e695095760.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <eed30cb59cc45955a88cdf951023b0e695095760.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR02CA0039.namprd02.prod.outlook.com
 (2603:10b6:a03:54::16) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DS0PR11MB7459:EE_
X-MS-Office365-Filtering-Correlation-Id: e44b9ad8-c15d-4a78-b8a7-08dc863e8aa9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?a19wFBPcPTBdMm89ZPoUgLZl2ECWqykcnK7TbQQU1Fe4i8RbjujV5+Y8dU62?=
 =?us-ascii?Q?eCecvo/ekf1+8HxmqBq4pTXG+cxA/6bz7mZPZP7ImXyA5yuhCYEfcDcXkqtS?=
 =?us-ascii?Q?OK4OtcKuCzbxXFYRtk3oHXjmoX/1Ctl9CUnxUishpJ9Y2aEaiIOePtWKR7I4?=
 =?us-ascii?Q?rPt6hpIwGaasUtC513MfxZzpaDAt1cB2ItShh2kXLjKrAXuH/1Lal+mRrlBr?=
 =?us-ascii?Q?/QlXhxsMOdmVgKY+Vxf632lW20xpnbronYoTy+FuLyE8gRDe6pqR7zajcD2Y?=
 =?us-ascii?Q?tiqCIETqaPiDynI46hzsZxqB+IbVn9C0HMYfmcRgoEXWFB1+of6oXf/raBA+?=
 =?us-ascii?Q?t//ghafJt2eYguaXjFeSPBg35Pg37WrV2YtUT9L+VoHHRateQGJYzvkFW3kX?=
 =?us-ascii?Q?EBrmJSLX22opco/Hsk/O79QRdXLahhP17YlCer+DxaLGTJxRx148w+PGB7eO?=
 =?us-ascii?Q?m9zS8XZZbz48wK9LdUvdAnhXGg7i9XSrwImnpzcrw4UGevRokbDeYtGZvZTR?=
 =?us-ascii?Q?6eBcw8RqAOZEF4QZVC7tZbJc0XPuY71fsKDMgR3YNtOZQfEb3HzkG5ANhCGy?=
 =?us-ascii?Q?a5OFcf5t631M3V6FCBoBu+dsYVTFiLNg4KRQRF819XQcZbbEc2By8mjbX7MC?=
 =?us-ascii?Q?LrL5aERwWS/FaCHKEHFOxGL0mK7E7IbBNlpp4wChw5kxe3CWgThLcgwu7J+s?=
 =?us-ascii?Q?crHhjipbj4hiaCdwvADrhE/TQyEM4jlJb0tzn5hU6h9JHNdePWcz4AQl1v5y?=
 =?us-ascii?Q?rj8twvdeDi0a/DlGH1qAFnzHSTTyWn1QuUG+gruxSwrCgxAYFgSf/C95Ogx4?=
 =?us-ascii?Q?ZPtnRILdC/nH/4v0vDQF3TRu4ZJWM/lrZgD9FE3fwY7XAAQXnI5wHMZUz/XB?=
 =?us-ascii?Q?ueFTE+f9IOvRlRQYfWKIiTdQJ8dYMJBHP0y43rNfhGutFoMiTsE+54SFlRU+?=
 =?us-ascii?Q?8EwxhaQiEBe1tObXjNfSYK1L2eFtr0d1rNxbPGVpoa6qTfikq9BoS5zgfXb3?=
 =?us-ascii?Q?8Fh1LWSLv9lWls8UXuFO6oI+Q/QvY5easc3wQ7t79rQqNolo0Y+UD1yyvEqI?=
 =?us-ascii?Q?AwPH8ksbOY6DLjH7tXL7l/E5fqa/KrfxDhseKzU4XTVEXg58CGg6Dva2qWNV?=
 =?us-ascii?Q?X5I8ZTpiS6IYa0+GZfALJTT3h3jeyfNimYAD+xis0L8s1hIZm8zOAU01TCyd?=
 =?us-ascii?Q?hRKAs8YR1lGBbKjJRrrv40p/HSDUvE2R46dIfXZwtX/4DPhNq10pG4TzHHvK?=
 =?us-ascii?Q?IROL471GOQwbiXgssLXKpOZwcJqcaPIs3sepKCp6VNKXpabDx0cjYOtMGJo/?=
 =?us-ascii?Q?jVQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?l90Fh1IbKrCRoJnN0ewU8CS1UWfpekaGR1F8CEP5k8IEgV3GVM6lC4VvvEkQ?=
 =?us-ascii?Q?xyh8AOISiC/bo4SvyHW1V/GVoYaHejPocemxSPWNo9GdxPAkUUpfFAEP38Ux?=
 =?us-ascii?Q?0dQ5dQaGSlgyk5gAE6rn91pbjh/WayJFuK65c4NslWS//16pr4+Of2yM+0vN?=
 =?us-ascii?Q?63z8BPTH+hkaAj7XsgcTVHfMRe1gAfVroFmlldQhrrEzf5kxaq1XQGiO9MAj?=
 =?us-ascii?Q?gTybL42r8BqFXv/yEfGMkxpfiRue0NHqiyZmg0BRo89JzAAxd+zXbzD73ILx?=
 =?us-ascii?Q?onXulSBqVRAWa7SPVjRskY9CJefoVLz/aIkUlTxoOdD/w9MYpfLo0IgUMzGh?=
 =?us-ascii?Q?zFwHQ7zQW8IRFxfsq6jdQu+qggeNEIlEGezxiyrMgMPBD6KWaqsP1L1/IrCc?=
 =?us-ascii?Q?n4VXCOsR0mtmRJWltvG3wSG1GTyJQpRz4y1sS8y9e5irfHUow+A6IPUkRWQh?=
 =?us-ascii?Q?+PrPf2Yl4VF/O4DOZNyo6oRBKMT3nfQIRoW7D8devI9LU/tJpjxlcEhyRyVm?=
 =?us-ascii?Q?UsGRDRUEx99Pby9I5ziOH0Bo9rP4tWerqhB1CgKC/QcqUVGDYoQqIICXjsgL?=
 =?us-ascii?Q?NZ/HPYmWCZADySb+37xZOST8d8+5p7Orz38mkhnb2lXLTMZWPPl68HtA2iha?=
 =?us-ascii?Q?8i8Gv1MpZcVJ/oDnL24dvRLlRk0w8B3SAU2gAljaU+IBuwnqpMHxz4lKibTZ?=
 =?us-ascii?Q?37eqp2ul4GCxfpjO3UnJ1P1+Xcku0g4ankwane5Il4Fg+SuUX5fqOx/hqC7W?=
 =?us-ascii?Q?zAmtzCtIs6k5C5kNCozwH6tLvgXZ3AlG+DLo/4/PY78xnMagy66HNZTbgyRj?=
 =?us-ascii?Q?3mkgR/CGY7VZmubzqozXa7yTHn5LMB5o9c8OI5BvKaWMk+MNSKKpc03tMYHv?=
 =?us-ascii?Q?61xPMvWdjjKLqrsgDq9v9p95DDrPbPyFHvMtWNCbbb86YxjmefB3+96rejcx?=
 =?us-ascii?Q?5anaFrTAC+9c/00/BazK4dCnsJ73oFzjVseCxLf/GadsoEuDpT1rFfDMHZ1Z?=
 =?us-ascii?Q?wDc2qJZocayMY2F3SxZIkkd31qmXh0kk2DkgwzH4e2GvTq32uY/VQftVCkMl?=
 =?us-ascii?Q?o13GZRRhRD3ochcUwUZaTbAHS1zoK1qtu6MiUCGJNcY2tfv24qAsfWe0JA3M?=
 =?us-ascii?Q?fyYM4xnCQMh7sg2NrEYKQrK5cv3/xjbsEIaOASj5LRqi5Flip3dGRTDuVmQf?=
 =?us-ascii?Q?BhrDPC30psmWsVKX6TwPVTsOALnPfw8vv+QTJrAcRW1vCZiRHkUCVeP6ZZcs?=
 =?us-ascii?Q?UhYlGW4quA+IiBjqma28Fag2zXOTbLeu4x4LhzOHSp/e/YexyeSNCv5vR6RD?=
 =?us-ascii?Q?FcsKFvqY40dpZNv9Y9xi8L794UuDJd3XosVIyMqkw/guE7VdUbpZCIhL/JGG?=
 =?us-ascii?Q?GFJRkfFdclZmec9BnBi4rpaVt2+YlKq6A81AzfzjYF2717U4mR/LLjCyzxEl?=
 =?us-ascii?Q?OKicje7843qFzQ8c/9obh4ucPWE2W1gGDL9L9RbaCL8aLtudzEYKicq8vBYU?=
 =?us-ascii?Q?Ulkui+7S4AvPDm581SEZt4jpjMWUpot+zZGBFVgrsTc2HIr+OLT+ihI6xeeE?=
 =?us-ascii?Q?baDmzny2ljfC1Hhu9slE5HBsypIDCBDKSrKCUBG8?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e44b9ad8-c15d-4a78-b8a7-08dc863e8aa9
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 15:37:15.4043 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uX8ImAvUToYyrCJFj3kV+dRao4OyIYOrPGXRUO7ZuGKVSrBTx3tJzxsBYveq3gujI/MxlByyb9zIutpRGIcz0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7459
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

On Tue, Jun 04, 2024 at 06:25:26PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TRANS_VSYNC register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c           | 3 ++-
>  drivers/gpu/drm/i915/display/intel_crt.c         | 3 ++-
>  drivers/gpu/drm/i915/display/intel_display.c     | 6 +++---
>  drivers/gpu/drm/i915/display/intel_pch_display.c | 2 +-
>  drivers/gpu/drm/i915/i915_reg.h                  | 2 +-
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c      | 8 ++++----
>  6 files changed, 13 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 0ee42954054f..b267099fde8a 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -967,7 +967,8 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
>  	if (is_vid_mode(intel_dsi)) {
>  		for_each_dsi_port(port, intel_dsi->ports) {
>  			dsi_trans = dsi_port_to_transcoder(port);
> -			intel_de_write(dev_priv, TRANS_VSYNC(dsi_trans),
> +			intel_de_write(dev_priv,
> +				       TRANS_VSYNC(dev_priv, dsi_trans),
>  				       VSYNC_START(vsync_start - 1) | VSYNC_END(vsync_end - 1));
>  		}
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index 54549d2cfcff..15569cf96c9c 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -746,7 +746,8 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
>  		* Yes, this will flicker
>  		*/
>  		if (vblank_start <= vactive && vblank_end >= vtotal) {
> -			u32 vsync = intel_de_read(dev_priv, TRANS_VSYNC(cpu_transcoder));
> +			u32 vsync = intel_de_read(dev_priv,
> +						  TRANS_VSYNC(dev_priv, cpu_transcoder));
>  			u32 vsync_start = REG_FIELD_GET(VSYNC_START_MASK, vsync) + 1;
>  
>  			vblank_start = vsync_start;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 87a690cf5808..776e4450e4af 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2726,7 +2726,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  	intel_de_write(dev_priv, TRANS_VBLANK(dev_priv, cpu_transcoder),
>  		       VBLANK_START(crtc_vblank_start - 1) |
>  		       VBLANK_END(crtc_vblank_end - 1));
> -	intel_de_write(dev_priv, TRANS_VSYNC(cpu_transcoder),
> +	intel_de_write(dev_priv, TRANS_VSYNC(dev_priv, cpu_transcoder),
>  		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
>  		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
>  
> @@ -2837,7 +2837,7 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
>  		adjusted_mode->crtc_vblank_start = REG_FIELD_GET(VBLANK_START_MASK, tmp) + 1;
>  		adjusted_mode->crtc_vblank_end = REG_FIELD_GET(VBLANK_END_MASK, tmp) + 1;
>  	}
> -	tmp = intel_de_read(dev_priv, TRANS_VSYNC(cpu_transcoder));
> +	tmp = intel_de_read(dev_priv, TRANS_VSYNC(dev_priv, cpu_transcoder));
>  	adjusted_mode->crtc_vsync_start = REG_FIELD_GET(VSYNC_START_MASK, tmp) + 1;
>  	adjusted_mode->crtc_vsync_end = REG_FIELD_GET(VSYNC_END_MASK, tmp) + 1;
>  
> @@ -8201,7 +8201,7 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
>  		       VACTIVE(480 - 1) | VTOTAL(525 - 1));
>  	intel_de_write(dev_priv, TRANS_VBLANK(dev_priv, cpu_transcoder),
>  		       VBLANK_START(480 - 1) | VBLANK_END(525 - 1));
> -	intel_de_write(dev_priv, TRANS_VSYNC(cpu_transcoder),
> +	intel_de_write(dev_priv, TRANS_VSYNC(dev_priv, cpu_transcoder),
>  		       VSYNC_START(490 - 1) | VSYNC_END(492 - 1));
>  	intel_de_write(dev_priv, PIPESRC(pipe),
>  		       PIPESRC_WIDTH(640 - 1) | PIPESRC_HEIGHT(480 - 1));
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
> index 03a33ff2653a..9f8269705171 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -235,7 +235,7 @@ static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_s
>  	intel_de_write(dev_priv, PCH_TRANS_VBLANK(pch_transcoder),
>  		       intel_de_read(dev_priv, TRANS_VBLANK(dev_priv, cpu_transcoder)));
>  	intel_de_write(dev_priv, PCH_TRANS_VSYNC(pch_transcoder),
> -		       intel_de_read(dev_priv, TRANS_VSYNC(cpu_transcoder)));
> +		       intel_de_read(dev_priv, TRANS_VSYNC(dev_priv, cpu_transcoder)));
>  	intel_de_write(dev_priv, PCH_TRANS_VSYNCSHIFT(pch_transcoder),
>  		       intel_de_read(dev_priv, TRANS_VSYNCSHIFT(cpu_transcoder)));
>  }
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 155259c11c88..c47aae3f70cd 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1222,7 +1222,7 @@
>  #define TRANS_HSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HSYNC_A)
>  #define TRANS_VTOTAL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VTOTAL_A)
>  #define TRANS_VBLANK(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VBLANK_A)
> -#define TRANS_VSYNC(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNC_A)
> +#define TRANS_VSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNC_A)
>  #define BCLRPAT(trans)		_MMIO_TRANS2(dev_priv, (trans), _BCLRPAT_A)
>  #define TRANS_VSYNCSHIFT(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNCSHIFT_A)
>  #define PIPESRC(pipe)		_MMIO_TRANS2(dev_priv, (pipe), _PIPEASRC)
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index baeedcdfdcab..e618a16eafac 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -236,7 +236,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_A));
>  	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_A));
>  	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_A));
> -	MMIO_D(TRANS_VSYNC(TRANSCODER_A));
> +	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_A));
>  	MMIO_D(BCLRPAT(TRANSCODER_A));
>  	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_A));
>  	MMIO_D(PIPESRC(TRANSCODER_A));
> @@ -245,7 +245,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_B));
>  	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_B));
>  	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_B));
> -	MMIO_D(TRANS_VSYNC(TRANSCODER_B));
> +	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_B));
>  	MMIO_D(BCLRPAT(TRANSCODER_B));
>  	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_B));
>  	MMIO_D(PIPESRC(TRANSCODER_B));
> @@ -254,7 +254,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_C));
>  	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_C));
>  	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_C));
> -	MMIO_D(TRANS_VSYNC(TRANSCODER_C));
> +	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_C));
>  	MMIO_D(BCLRPAT(TRANSCODER_C));
>  	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_C));
>  	MMIO_D(PIPESRC(TRANSCODER_C));
> @@ -263,7 +263,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_EDP));
> -	MMIO_D(TRANS_VSYNC(TRANSCODER_EDP));
> +	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(BCLRPAT(TRANSCODER_EDP));
>  	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_EDP));
>  	MMIO_D(PIPE_DATA_M1(TRANSCODER_A));
> -- 
> 2.39.2
> 
