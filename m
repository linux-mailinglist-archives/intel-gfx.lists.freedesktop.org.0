Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9428FF1FA
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:15:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAEEC10EA09;
	Thu,  6 Jun 2024 16:15:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iLDSrK1O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41FE510EA09
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717690531; x=1749226531;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=B+YEsZ+23188reggI0WJz5uPExPsq4RzoDqBCRwtBy8=;
 b=iLDSrK1ORC/ds/1EK/Bx/cagvBkiDi2fKgZLM4G/yi8kWFil6mvi78pD
 VYwZ1Efo2t/2+nquNoEizX/y28JPnaI3pvWvdJBYfgvvXf7yiV2S5UGfK
 hiydj2lPgC9OcQMFhIHL2GAtMxAXex01S50S6hNWlNlTrcAiWJt+uoHI0
 huQZCIhIpMZ9zPAdnhwbYfECBuZTeeT/39pdwrR9iebM5WqVtqy1IiydE
 UYs9xtuWpBSR0jqdmmmXjgiEM5hSWMRldntOhYCanWIWmDKLcexEVQQtQ
 6rlEp+j1arkVTYg0rQM6QXS3wRFZLdYJxjkE7erD1pOEtLcAP15lJZQ3F g==;
X-CSE-ConnectionGUID: Z5w4VXHnT1ufrArPQoHjuA==
X-CSE-MsgGUID: 2CrC7zoiRcmkcOcO3jDxeg==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18201248"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="18201248"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:15:31 -0700
X-CSE-ConnectionGUID: /7EfSq4VRfazIHJEN97riQ==
X-CSE-MsgGUID: w7isSP5FQK271nWhxBMU7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="42961016"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:15:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:15:20 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:15:20 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:15:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YDDz3JxYKYIXXpoi9P5QCbsXxrxhc5tiJHVHjouK2vsim7/jLzQ1r/Vb9JPwPId1d7UOJ5N1vGVb41aXnM/asC/E6BIxWza72j9dmmnIx0+uFxhYkN25wblmuxh712+HVVAlgJpQKRo5EKtcjoiTbFLzipSqFVWp6bzzVqViy+0zK79mjZ7RknBfl2abyz+Ly6AqAJr6kLMft+5jzIqB51ZcnSM+yCXkTc+3zMr6UMU/a8fmjVC4bADvStH6SvEbblm+FFtvwq+Zj4oakng/UTUrTWtD4Owc1rtEdkPFzSOHgDq3jmOXvK84jcFIBYzT308amETm3hsMNC5J4AxZ0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cBqcbatv7qpLuQvCts0Z0dmyL6QY82bXb0Ej5eTDc50=;
 b=bC21ThNPNS70zJKh3O9W8vf6kr2Pnwy/zr4ZM9h1sAWVgne/bd4y0C6PB0YAhKi4yDqwoGPDX2p6crI+bvO5izyaUlflzLaP+FjQzJmBzjmJO9T5psPClJbReuPDzfTcFDi6Xm4xWF/ipz8nIGUnuA/9J3sekQQ0KbFdqbJKAHhS554agHPgyWF2dBesMEciNFrFt7DTz+ws0HlJ5kcbum7l4e+gDd77YabT8dBBj+fLMn0k04uh5CeTApLcEpnhugBlxb1mF0TGJVnMuiBfvkQTT78YTGtBtleeCN29vGauvBxcbEXK0X1EGdzUsuu3gTM3QXh71ZHy6A3sFO6+mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by IA1PR11MB6514.namprd11.prod.outlook.com (2603:10b6:208:3a2::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.21; Thu, 6 Jun
 2024 16:15:13 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:15:13 +0000
Date: Thu, 6 Jun 2024 12:15:10 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 56/65] drm/i915: pass dev_priv explicitly to PIPE_LINK_M2
Message-ID: <ZmHgjq5xX_aVUTJb@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <31337adcaca1333724600b0afe6e3880f0948d5e.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <31337adcaca1333724600b0afe6e3880f0948d5e.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0078.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::23) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|IA1PR11MB6514:EE_
X-MS-Office365-Filtering-Correlation-Id: 419adcdb-bc54-48da-c716-08dc8643d842
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?33ybG/2lHxBpnf8S+GBN2uxV2DcUmmUg05nvkCLgH9MtJMTNaLlIyHtT9uuD?=
 =?us-ascii?Q?CqmInBWO1Vr4yM2Shl8P94+V7CIUg6Unz+zDLLYGzzskUtPmlxAjvWJLVuH6?=
 =?us-ascii?Q?qeEsA57le4mSkpYHJnOpJtjRUfRb1cdHc+NDeAN2oCvkclwJr2TOHln5iyUb?=
 =?us-ascii?Q?ehZtx3+49wCawyu+F6wihhKl/yT2cNH6JuMreTgWhO/l4g4h3ShIcCY51yKt?=
 =?us-ascii?Q?zhfzr/BQf6BIeNEUTch8owpWY63ACmzHOCBpCYDU6UAedh2n6eBF6cLeSDcM?=
 =?us-ascii?Q?lW0G2axu8wtEcHAYyUa8RPQtDuanbg5Agyq9gru6J1DtGstIhPMQTIpzagr2?=
 =?us-ascii?Q?xEEBiNLG+nLmh79khlXTyJnKIv2AedT+mz1++gHdYG0dqRL5dJzCDJmOq8N7?=
 =?us-ascii?Q?TX5orPpdIyx1jBqlFxCG6G/zpWAXLF7LwO3uMq/bDbEVFBkZllTJqb72BdWW?=
 =?us-ascii?Q?CW1lIt0Hz/rt1B2Ktykn/HJ8TS0jRTHs9CiPWBHEqj6qGGLkRiR2bFop7FG3?=
 =?us-ascii?Q?EspmYkArgkczH5wM8wdLGmMKC/ACYNa8/SnA+NtgWvdMUzfACpG9I2Gp4ebx?=
 =?us-ascii?Q?3B31eZEkQmooDJDBs2cqCUJCxD+/Oy0Qt2lRUj+ekEpfITkGR3zaxSvxX0tz?=
 =?us-ascii?Q?hzcpEJxMGQNlaon3DXRsb3bsIpTx7+u9QUCm3FvGRSpl+LY5U51cVZHqOIg3?=
 =?us-ascii?Q?YIXSwusd6I5Pfkinaw3BdvnNPTAi1jaJ9tY27HdrGTVjGXCSZmhRDkqLgqpP?=
 =?us-ascii?Q?e5fWQyFxYcpsp2wBEDucMWSr+7l8QwgG6Y+5kKaC0J1LB1aCD43X3UlKk4iG?=
 =?us-ascii?Q?9JgOuiVs7DQ/QlbR/uJ2AANZuj93rUN3IW2RmWuysVXV0zQIanI5xtCneTCO?=
 =?us-ascii?Q?2wcSmnblzZDMgqcs2Ox9U69y1si8apJzC5SbTI/cfaBkyGrajHhDT/tJf8RM?=
 =?us-ascii?Q?MD67+1zD8K7oBpToPMp/HxCAcQTbbbX3cFtaf8579K0hYB+fYCMVqQdts6Q4?=
 =?us-ascii?Q?alq6aaXVsQusRw8s9P2JmtPTjY1dryGqySsyyO06x142d1iBTWqmbICKV8TF?=
 =?us-ascii?Q?KsucO/1C+HH0BacixKwMY6GV+8smUq8+QmAJCKEHHVcs48t58yxY1tg/WSWk?=
 =?us-ascii?Q?xHazoPUijDYSAbe9fhqdaGOyQPmb+B9wiCD7CIr/T+hPfXxqJDkV7EZ0tkDw?=
 =?us-ascii?Q?miKFW2eKPlzvFoAwhRpYxRiIr0i3sifmI47y7Y7c0dDlWaoJfryobMUstT+j?=
 =?us-ascii?Q?E69eZmZMWyEWQ6qHN27zcwIjmqrwMY94JcPbkdTYJEnOj3TOxHVAe1gwrPJz?=
 =?us-ascii?Q?aUwOCZsSYO6+DWOiWCAZqH0L?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NYeMstz0IO/r5osf0nYsVne6VygDF7WJiYeMrXAjbwvGtpMn/dzPI5g3okaH?=
 =?us-ascii?Q?5ez2faIGAmXgWyfiU97CJaAPTZZ2WOxcdJtXZAsK//gxadoaZRGHr4MGwBDP?=
 =?us-ascii?Q?IbzohD10ZwfOXZSZEQQr/D0duI6Xg6u6dC+A1B4BY/L9fEZ/HTrcpaUgnJSl?=
 =?us-ascii?Q?k81x+4VD0T9ZkiQahdAb+bPwSExPDwTmdvJCuA5Avuf8SNkuhHgy1qJdakti?=
 =?us-ascii?Q?F/Jlrp/eLOs8QJ7LpO8JSX+8LO0y9sfw9wChEZgULabZc+dBaub5JcBL/yrO?=
 =?us-ascii?Q?49NEZEXcYt9AtlQDfUayrgd2EhmHkp+oUxmWeS2gR7a790L8GIfdqFN+Ft8b?=
 =?us-ascii?Q?gYU7QPME0SEbpevrNBfYtzIMOK7OJBFn4YTazTLr82mxXaZeO8av3mAjkJdd?=
 =?us-ascii?Q?NqXpZT3GoilZNrfdPTogvUcBj6mY4yE8LKNLJufnduG9UHEFJlgVuU/P2q8H?=
 =?us-ascii?Q?ZAKTbDHe+HuSkyo34VMNPHQmHnX6XNn9CVR9gQDL/f6KfCoUCLr8ZglE3YCR?=
 =?us-ascii?Q?im9Kt+EhOBT2K0NolsVlLfTovKPmr+2z5vKx1fhSJhBrx4KYG3erpaiSn2Eq?=
 =?us-ascii?Q?thktg1zB+9L0zSN5tXiTBGM4h8ZxZGqjSfpkjsxXhhdEnU8Aa/Fb6GB0qjX/?=
 =?us-ascii?Q?FSEDXNDV/WnPI/4eoklJ3SN8JVlcPnpNz3IiqWzQ/Uz5rDhCSY9KT9XBdYjE?=
 =?us-ascii?Q?5fVQ9LaO9jcyFFAjd+BKGCQEr8apBywA3cIqmuQlof6VAFPVsxJ4Tn1MgIJD?=
 =?us-ascii?Q?hAo8ivOgACelvteCBDpli5oVHMeZa8iE03i3d2Azs5RPAT7Tkwyj9VExQn7h?=
 =?us-ascii?Q?WNsSwH5h4KfEbwmsoZ9Y8tIVCNp1GDlN/ZcYfSUfeRc0TirUxILpXxe9UIZp?=
 =?us-ascii?Q?4yCU7vzPJrpilGHNzqv+9z2mCVnUny5K2V9tVnT06HehnpEejKucXBg6kzjI?=
 =?us-ascii?Q?+YW2jeiZhPkFM7ip99TGf5v2B00KWb3/Sg4AN2/HjR4E3RkIvE+X1uAsh8AA?=
 =?us-ascii?Q?9mpumDz+XnBUH7yxGlVMA+6rPjYJnJJ3DCmAnpykn3aiYDNjpYtOzuwBGLyM?=
 =?us-ascii?Q?SZcStvL/+xaBUVC84WwOqKNwnxUzRv6KdlVEkfPdpmD++cyTu4TaDbtexjW8?=
 =?us-ascii?Q?rg5W0v92kqhQ/XVFBAdtHcC8m2gWvjiV+us0jBIbbG72TKsdcOOStcc2YdPV?=
 =?us-ascii?Q?oU9G/9zA+Hz1zIT8bVvosIviDkKX/h0M5PIX3wrAtuqvt5jBgP3gv0vbWxUt?=
 =?us-ascii?Q?AEM7yXi2xaonY6PYkSC/0MiC3YbmhHy4vRxLeruCskmsu3tmjg0D6NG13LD7?=
 =?us-ascii?Q?LzW9+gXmpkdNUJ+/DpGINE/od/edLqT9cUpqVX1czfgg+ufQHv4HpVkL1O5h?=
 =?us-ascii?Q?0v/8fMubjfvGBmehYcEtS9+MY0hGaytWSAdf55PtTTm0kNT8deLU8osx59v9?=
 =?us-ascii?Q?PNvu615kypH0NHFV72a2MuVKuWF1uBDQcpDNpxD7zOi4Wv8PGJfwQJZbl4Y0?=
 =?us-ascii?Q?khqpwa0B7ca50xlwZp6JpA2dvIIG2tavBnDifSMWdZXlAUyN5AC/w7x7K0HD?=
 =?us-ascii?Q?gkiAPGtUEFMOnKGdNq0gce+66yg6aT1fLnjYc+GC?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 419adcdb-bc54-48da-c716-08dc8643d842
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:15:13.0987 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K66H/d7IKc7h2IOMzL6ZMIhPDxqMS4XMuCaIY2gcM/OYsBbROoV3RyYs9DKrjkpDMyeXtop7yFvd+INhYivvLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6514
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

On Tue, Jun 04, 2024 at 06:26:14PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PIPE_LINK_M2 register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
>  drivers/gpu/drm/i915/i915_reg.h              | 2 +-
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c  | 8 ++++----
>  3 files changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index eef317984564..9df8e486a86e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2663,7 +2663,8 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
>  	intel_set_m_n(dev_priv, m_n,
>  		      PIPE_DATA_M2(dev_priv, transcoder),
>  		      PIPE_DATA_N2(dev_priv, transcoder),
> -		      PIPE_LINK_M2(transcoder), PIPE_LINK_N2(transcoder));
> +		      PIPE_LINK_M2(dev_priv, transcoder),
> +		      PIPE_LINK_N2(transcoder));
>  }
>  
>  static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
> @@ -3362,7 +3363,8 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
>  	intel_get_m_n(dev_priv, m_n,
>  		      PIPE_DATA_M2(dev_priv, transcoder),
>  		      PIPE_DATA_N2(dev_priv, transcoder),
> -		      PIPE_LINK_M2(transcoder), PIPE_LINK_N2(transcoder));
> +		      PIPE_LINK_M2(dev_priv, transcoder),
> +		      PIPE_LINK_N2(transcoder));
>  }
>  
>  static void ilk_get_pfit_config(struct intel_crtc_state *crtc_state)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index ac9ef4bd176e..2a73ad779e26 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2385,7 +2385,7 @@
>  #define PIPE_DATA_N2(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N2)
>  #define PIPE_LINK_M1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M1)
>  #define PIPE_LINK_N1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N1)
> -#define PIPE_LINK_M2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M2)
> +#define PIPE_LINK_M2(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M2)
>  #define PIPE_LINK_N2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N2)
>  
>  /* CPU panel fitter */
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index 00ce7147a9b6..d1a51ae042f1 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -272,7 +272,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_A));
>  	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_A));
>  	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_A));
> -	MMIO_D(PIPE_LINK_M2(TRANSCODER_A));
> +	MMIO_D(PIPE_LINK_M2(dev_priv, TRANSCODER_A));
>  	MMIO_D(PIPE_LINK_N2(TRANSCODER_A));
>  	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_B));
>  	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_B));
> @@ -280,7 +280,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_B));
>  	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_B));
>  	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_B));
> -	MMIO_D(PIPE_LINK_M2(TRANSCODER_B));
> +	MMIO_D(PIPE_LINK_M2(dev_priv, TRANSCODER_B));
>  	MMIO_D(PIPE_LINK_N2(TRANSCODER_B));
>  	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_C));
>  	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_C));
> @@ -288,7 +288,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_C));
>  	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_C));
>  	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_C));
> -	MMIO_D(PIPE_LINK_M2(TRANSCODER_C));
> +	MMIO_D(PIPE_LINK_M2(dev_priv, TRANSCODER_C));
>  	MMIO_D(PIPE_LINK_N2(TRANSCODER_C));
>  	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_EDP));
> @@ -296,7 +296,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_EDP));
> -	MMIO_D(PIPE_LINK_M2(TRANSCODER_EDP));
> +	MMIO_D(PIPE_LINK_M2(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(PIPE_LINK_N2(TRANSCODER_EDP));
>  	MMIO_D(PF_CTL(PIPE_A));
>  	MMIO_D(PF_WIN_SZ(PIPE_A));
> -- 
> 2.39.2
> 
