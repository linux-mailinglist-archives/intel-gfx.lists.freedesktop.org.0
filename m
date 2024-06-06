Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE0D8FF0F7
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:43:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1831A10E9BE;
	Thu,  6 Jun 2024 15:43:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mRFsH+U/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB5EF10E9BE
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717688605; x=1749224605;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=AOxS9zsYfd7KNItXwfgPIctDQUetzffK97t1vtcJRTs=;
 b=mRFsH+U/HRbc8somVTqVWjHN7Q3vsWQYM71ysTIhawA2YwQ5HMoCJONI
 +CK0FA9+Hy1AhvuSfMfrNwfvEnGZ9L8pfGZvsu/qcpT6bSGuc5iKxy15D
 zCOZgyYhhRTe64y+Vwr2i3j3EbVt640jF6xqC3wvG+LdkE7TT0ioTmXO1
 Reu9oIfZK7jfehRBJpywuKL8+B6aImz+q6SSAdYMWwykJYKArqCUEIApD
 UYRzH3VD1KdQdozWj+LbUjxsM4NImAKrZXelZcJuMqTA1uRvd5nQYkywt
 Kyx0chVVKhdv+PP0JNgzQ/92Q2HkW/HqKkNERyRdHW1s/qrQ/zvY7TVJR g==;
X-CSE-ConnectionGUID: lcNLJ0WOTEWRjl3crf+uAg==
X-CSE-MsgGUID: Gau4rkPJRGGoFRC/qB9GxA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14108663"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14108663"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:43:24 -0700
X-CSE-ConnectionGUID: wHlfWAbTSVOgiHSqqMU4YA==
X-CSE-MsgGUID: U9Bb21W/QA2ShW82lYewIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38126629"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:43:24 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:43:23 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:43:23 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:43:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g7YRx87JLGDg0JzxOAvWsmw8pQLfsUyx679bp/+krd+7vynKHNL+GliRH3Wwj1tEInVUldGa0vEKKaqH6bTF3qPEmOKp8Da3nqkT934odJhW/J/nLVQPLbfkPpf2PmHrnrDFEdt+cRrgZKRRrN59B3/yvM8OXk+yrlvaDQ/bD7hKEvZDIS0Av5eF4ddViM2WdN0VCErIdTzsMYf3OFT45/mg4M1FRS+hp9E9vqp/6QjmxcRsQe0sKiU5qJr33UWC1b9Y+aYvD56HRytoYTTbcDj8BLMsB1+QqL/GsBxf2zbhTdMFKY9bLGzEDC2y8Z6mkySzsAX/bnCOsr7KtIt+DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=41rI/A5FZ9B4k9wnHoLk/0xJMIOabhdpeXFICN9TJU4=;
 b=PMvVYVUzh3OEbIq9TYhyn2B+hLO25y6Q6rTQXfoT0Rp4udOq+6Tx7iRc/ndOgjKiVdeJIuANSVznQ+kjjNSoBg4mFfQuEsGhwQQjJKGtCdl1HPvSGaiR6LFsgKeppudi3c+GZaujeN0PIRtnc8DO/Ml/7mF3/1Ntp2kh4Jwa1aybnSILrNJGjendZilgbyXP5ki1fCfBOYhhwhjMWwJDiGd1E959B3yadnQLV0kByCnUn+u9g+LyQCUe+yE/k5chsWq0KxbyuoOpB+xn1WRpJW32rXkIH46mvzHCYcDUgeUpt66ePAtWN1uaYKof8+dDr8rBk8N5cUxx+AZQ5U87jQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB8404.namprd11.prod.outlook.com (2603:10b6:a03:53f::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.34; Thu, 6 Jun
 2024 15:43:19 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 15:43:19 +0000
Date: Thu, 6 Jun 2024 11:43:16 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 20/65] drm/i915: pass dev_priv explicitly to PIPEFRAME
Message-ID: <ZmHZFKqf6dbeUcmL@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <7e6d1a8d3ae2a42efa3a48884e0e37357e0108c1.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <7e6d1a8d3ae2a42efa3a48884e0e37357e0108c1.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0047.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::22) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB8404:EE_
X-MS-Office365-Filtering-Correlation-Id: 165fe557-0ecc-492e-a415-08dc863f6365
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?vXzVK1MCXTCBkx1Oam6qugqpXo5dFWPi0F57HWT0Mh1lHjF6vWWyIXw8a0fB?=
 =?us-ascii?Q?rLii+PjdExXsoGrmxLBpOG9KGOgYBB+a+//azPdnC/jmXsxd3uQy4/canYuZ?=
 =?us-ascii?Q?Zwf4kQh6ma/ofaToVXAI6Bdb0sF2vKhnL8144ZrqgRC+JeYSBKZP742fESgU?=
 =?us-ascii?Q?PXNc2mI4TXACKrZGx2wiqWRfrYLGYkEs6+viMYq0erPYCsUyM7EoxnhZnCce?=
 =?us-ascii?Q?QaNG0AwC6XXc6NQJHihvgx4irQnTybEH6cCg4p76QGXzbujaElKcinCMLQVM?=
 =?us-ascii?Q?gjmSrEZaUoAl0kOFaCh+UnbHDm8LrxfROhlwzhYLQ0Rsi6N7eNVel4Fdl5CX?=
 =?us-ascii?Q?gSvsd/Ufl0vFc5FAzTazLdp7+5KPT55P5bzYz46fwgvvBhzV7zwhu+KKNzGz?=
 =?us-ascii?Q?Pc9mmQjvYojvGL5itpZcQi/EJLwlFIxQIghZKQb7x6lkmCk2piEjk83FVhL9?=
 =?us-ascii?Q?YUqTXNa4LbDa0TDgizgk2523afsWijcK3BFhO5zIfWDbrRXKRyF2YzOvsvud?=
 =?us-ascii?Q?Jk8+/qfuCMNFTY2P5c+mTs7GKxTLgql6JOq1UhV1+2Vs3U9/Llsc3gR+VDSK?=
 =?us-ascii?Q?77SXeR7PgTiSfqcr7M6tS12lMlp4WYSH10zZX3NVZyh1QjhK6WPR1NK9xtqK?=
 =?us-ascii?Q?N3zhPFWBkF8qhkxRaFiSHrniHBx4kfoNXORtjhhvCd2YcjVDsQcfSYAmV4ff?=
 =?us-ascii?Q?H/gYjShw/wLzl/9RChJmmHOavCyto4BaqPk9AR1+xN4G5MTckUL9/kfYEpio?=
 =?us-ascii?Q?Cnl8BnAZjR6s+2RXwySsTpdCmnFLQU4ij1H44qIQjMrlfnzFDsWug22Ioiex?=
 =?us-ascii?Q?aBxwPtfCBn4r0jaDQ3uo2hmRajgE9DlFJ99Qc8zJcWgZXlY++WX0kfyT0Vc5?=
 =?us-ascii?Q?NGPSLqQWQK/xdqC97WoGhahi9HelgMW4GFHZyY89nJPIGriOiH93JS0KUx1l?=
 =?us-ascii?Q?QPNWs/iisx7DFMecq4CHmgF0XudSCCfSZpwGTuRnSH3MU7cHfKvI5CI3bL9f?=
 =?us-ascii?Q?WE7jlDJb907ElyeHKx+E6NA+kMLkfyGeMyZiXAwqVCRZLbZ1MDu3Z2fHJ7hK?=
 =?us-ascii?Q?g6GIunoyiLV1dXvW/L/a4BoqBOycTUoy1b5nBsuAKohGpXKZCgouEqQD65Qq?=
 =?us-ascii?Q?pPg0d2Fmvv216IeLwviZ2BEY+2w28tfFKY6w8OjIkx3L/bT/CRyy1lyAyAYw?=
 =?us-ascii?Q?oom44+P6yVmXU1sNNl0zVVpUBEg1SNdbuq5tPLsF/0ufSnC8uEmHiVVSyXZW?=
 =?us-ascii?Q?lXxrmDz2uuq5FIjldDdZijN/q+khTY/Vu+tVf3U3xv4PTFJQ8soyeXLAoIkF?=
 =?us-ascii?Q?De9l5sPTHx+14fu7kGuQSv/P?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9EjQS0/3pQfD1zcyJdYBU1XX15VHoWsAxAh4ZxfbsOkTiDn7WF8rUdpFtibm?=
 =?us-ascii?Q?J2KS6uQCVJgQnIgBTVXlGz80OVlYWVIthhaMMjOtF+ssBf/OXinZ5DFgDIAa?=
 =?us-ascii?Q?8FOkibR9Hu3CpvHjcgVQQG+uF1DjYXGTCrarwXDB/N4nkmOCJCmFCAJk+759?=
 =?us-ascii?Q?r91WwHzQiN1WEtQ+R4GVVVLnZ5HLQLk1gdy8v6FuAPJue3jsqtGBIf7x7vXK?=
 =?us-ascii?Q?7/Y2NsOo5gqRkoxNxgSoYqMaF/beRo8/apLOme+WzkS4ClTuOOiopGfYUthY?=
 =?us-ascii?Q?xycgIu6MN72Rg+iHcxQWKmOcLF1NIBwKSoNEP6OIrhNok/zLH/cDiUxRzj7T?=
 =?us-ascii?Q?CZ5xebl2dXte+JWl2oM5mOMVqSC7Z3Z40QzYtUTO8RyShDqLIDg0AxliDipx?=
 =?us-ascii?Q?ErIjRWXpuIZi/kgu5yC6w2NlOSmhiBiXb+t8bGRuB/P3E3c7uOOkNp4D+JFB?=
 =?us-ascii?Q?gdaD5hb5BNyo7kfYTG+EOagqQbeE6EKLB+2jaQi+qAo1jMOZ0qo/303DU9+w?=
 =?us-ascii?Q?DboUgLCSqSiPSConwYQH2mknDSulOKQHAUsbJov+FqiuFSjbISB1iu1AH0R3?=
 =?us-ascii?Q?s+vUdjwXl8wlY6C/nfPtGEbomCT0EgV4O9v7I7vChZLHBq7+r71QaVkR65KH?=
 =?us-ascii?Q?amjSd9wB84cJfNXqOlWomyE+YmwAEWLWQIGd9JWpeu6uIHlrx5dJ0x98x4MX?=
 =?us-ascii?Q?eSMpYgDWXlejjqJDZjycgb08ysNK6qJnk7Uuueg9IPdsSqteADrhUAcVAkTN?=
 =?us-ascii?Q?Bwso2rfveXWiJNl2Rx60dTw89TwjrMofYHTuO02FTi65wE7eOFqFyNCzHqPR?=
 =?us-ascii?Q?1W0eZpLVMVmz/VMde3+RQBX5AELcuLm12cDdb9HRaEjexKgIiLc2YXss6xBu?=
 =?us-ascii?Q?fa0M3Fa1GQU9ObtCQpg8vUhz8EP/ukGKtsBVBWac3uPMUcsF5uh/dwBiCou6?=
 =?us-ascii?Q?40AT3IP21oeXPjyJmLAM81QIaukI79M3ah8A5Q98C9KWuVN1QvoqLfrcapSW?=
 =?us-ascii?Q?D8C+MRn5psH/WhMQK+wHkW3eo9a472KGYhswrOsH/FAa4R53uFj6wXNm149Z?=
 =?us-ascii?Q?FdoejvtfXlkJc0GC60zCdC6npxkBZ8Ti8xisGEbGmGDr8BXLZipsHd/hDlyd?=
 =?us-ascii?Q?oIb5KB6DSuKFqGm9TjF8Lq32em/UW3x8cEJxBvATHcJhad+S5w/Blq3I08nq?=
 =?us-ascii?Q?x4PPDD8ncgBpGKraKvgsuJve5s7dV4Pzaj/qpRDmEzAEKy5KyGuVkIDm4+7L?=
 =?us-ascii?Q?+9DJMv47WqK3naVA7e/tg9n26+fehI3qzOaydswonjIUsqC89ZHtOC8Vgb4i?=
 =?us-ascii?Q?ANwHwlGVkfwqMRg8QFqD4Njf8ZGJawp7RDBgqEGt+9j6XidwDJNP78sdIPpf?=
 =?us-ascii?Q?441dJCRDHHsyHrgKJVgI6BLld8EDDd7bJGqBvz3MP5gzYPFnJaM1wGbc5AyZ?=
 =?us-ascii?Q?v1FU7klkYV8tOTncLgLV6O4FyKKo4nqqWMVaF4ALezeVANGI1yYDFcIOcHTE?=
 =?us-ascii?Q?9iNb+/H4KErVzibj2ibyY+ShF5UtoNT+Fgf3RohS3/SgHvzDWpMljeI+RTK6?=
 =?us-ascii?Q?OuUoUUt86JHVgQ/X4nPp84Vn+DrlKbPQUIMFt/tz?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 165fe557-0ecc-492e-a415-08dc863f6365
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 15:43:19.0442 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BU2q08Fc5Qjt1HjczPKLTp7sFdMqQfAFkfzl53N/YHqdTP7II0S8ze6kZOo59k34QHywgd1pZ5uglLBiQXDltQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8404
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

On Tue, Jun 04, 2024 at 06:25:38PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PIPEFRAME register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vblank.c | 3 ++-
>  drivers/gpu/drm/i915/i915_reg.h             | 2 +-
>  2 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index e2d20064e68d..ac8ad3ebf4a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -102,7 +102,8 @@ u32 i915_get_vblank_counter(struct drm_crtc *crtc)
>  	 * we get a low value that's stable across two reads of the high
>  	 * register.
>  	 */
> -	frame = intel_de_read64_2x32(dev_priv, PIPEFRAMEPIXEL(pipe), PIPEFRAME(pipe));
> +	frame = intel_de_read64_2x32(dev_priv, PIPEFRAMEPIXEL(pipe),
> +				     PIPEFRAME(dev_priv, pipe));
>  
>  	pixel = frame & PIPE_PIXEL_MASK;
>  	frame = (frame >> PIPE_FRAME_LOW_SHIFT) & 0xffffff;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index fbd004bd1992..c4f8c50f61d4 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1878,7 +1878,7 @@
>  
>  #define TRANSCONF(dev_priv, trans)	_MMIO_PIPE2(dev_priv, (trans), _TRANSACONF)
>  #define PIPEDSL(dev_priv, pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEADSL)
> -#define PIPEFRAME(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEHIGH)
> +#define PIPEFRAME(dev_priv, pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEHIGH)
>  #define PIPEFRAMEPIXEL(pipe)	_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEPIXEL)
>  #define PIPESTAT(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEASTAT)
>  
> -- 
> 2.39.2
> 
