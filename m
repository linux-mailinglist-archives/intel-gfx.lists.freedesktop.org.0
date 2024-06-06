Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64DFB8FF180
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:03:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA1C410E9DC;
	Thu,  6 Jun 2024 16:03:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EayXMyMY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B66A10E9D3
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717689813; x=1749225813;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Kwcx8BKKOBbpgP51gu5qKkgJ74aWdBGl5U5B35M62Uo=;
 b=EayXMyMYEJrv48IYNLlOPk7xdbJ5n3ZDjhV88v2B1VLh0LIGR8dw9pB0
 WhJAz3ijSxAn7/PQ1sOcGz1qdgthe0uX1Gr8GTjvqAFQeT6Qg846J3T3k
 ffRTP8Z1CszHFwaTWRYvgOfC0oVB1cMhMNO60mwqG6ybIa47hJHHNDXnV
 xkiTkKTtp6s6Xb4M3ozIkxwxCvcLIwWN5q3nhGIF8YFaNt8dIu7zKbxcr
 9PeMvcr+d7InXHeDsc5OfyTRchNe1ZMfX6RDMYKfExhk+0HCsFWBe5hmQ
 8tvDQjSF4MFNovZ96wDFPedPYQR8MtCFK8U8FO034Y3krcf9B4y1R3nPf A==;
X-CSE-ConnectionGUID: fil4mu4rSEyf19i8xsFHkw==
X-CSE-MsgGUID: olI1ibiwRym+NzHOYv3KyQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18198649"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="18198649"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:03:33 -0700
X-CSE-ConnectionGUID: iDWs0KT3R+aJBIWi6hQg/w==
X-CSE-MsgGUID: uJbQOU69S76XFmPzAsK3mA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38136692"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:03:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:03:32 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:03:32 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:03:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oYbozptsMdbyFUjre9g6Vo8Num85ToIp/CA0AlsYWY9lePOPQug+0/TdJICoN9twGXMuyQszAvZM2vHu+bTuGgod07sUmZBJ3pev6ZjQQvVYs19Qau2L84U68Do0/2Txy3W+9AOpbnUCNwD0c8gY39vMpDyDo50EgkxYXe8/9cSaDGAtjLJy4Z69tFezWuTq8QKwVdNapu/gRqi8VE3JsQyRsqlNc9xGd6lhea0CIJKTyxm7TMpk+R2odS8MIR1rBaxD74UhUxZeKUgWmh+Y/dv8hJwUQPrGaF7F3mAKGVhlHwmKjB1zXn3bZR+hzrn8k8OgqImB4NXTGmhC+P+4xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XwqDixbXBv80KOyzhboh8Z8jULkdIHCQ8O+IULoQlAE=;
 b=Rgc0pXA8aWVSvHjj/AXwbhM+4X3uq22kmp6wbYBPt/9uwH53cWX/TMGwQ2oibHfoRUPETk5r7IVQKZiyt9x8nhdaD9jww+dorObUWFVUimcPpAWBvkA7sl6JOT/OuEacmFpzmjAL2PRbQLbQWW8uOs6FbQWm0sQBSEwRYYIz+n0dcBwmDD+zL3vldv1hdbamDcdUkPyzUNItq2HqPniZuA+RNoQ2ImcZxl4YInzN7mLYcJGGlRCnXTb+BWGFPEMdN+sT5onXeFVHhmNq1rJ8Aw1uWmdjWRRGPOOBxMzS8EsRIwVqdJKfg/cCCXB5G2XH7so3aNbQ79Rq0L+HravCHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SN7PR11MB6825.namprd11.prod.outlook.com (2603:10b6:806:2a0::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.22; Thu, 6 Jun
 2024 16:03:28 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:03:28 +0000
Date: Thu, 6 Jun 2024 12:03:26 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 34/65] drm/i915: pass dev_priv explicitly to SWF1
Message-ID: <ZmHdznY00t_pkrhn@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <cd31efc114325e61e357b0f8a1106f2eb7819fff.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <cd31efc114325e61e357b0f8a1106f2eb7819fff.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0230.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::25) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SN7PR11MB6825:EE_
X-MS-Office365-Filtering-Correlation-Id: 14768444-75a5-4bc0-9173-08dc8642344d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?oMgSLEbJ+yo9XzoCsOmi+7r2dfWAJ9N8eLV33NdL4VLNxAViIJ8HyeidVPeO?=
 =?us-ascii?Q?YaLwB2S4O/pKraTdmWSIuQpB6+0NGOQHC/vq/0ZyVN8FnCaKYis1ji7O9Xdr?=
 =?us-ascii?Q?gksz52hHDOr56/bNfrkuE1g3ELZZ/Selgp0Vz3VDIBXsoctdYKqdBcoUNUa0?=
 =?us-ascii?Q?gUVYBUeAm2pGM+6aU/pyiKU/6/2KKkU7YJBKL620hirXLwRuEVrl24l05pQc?=
 =?us-ascii?Q?nTsO2o9brCGoNoe9LVFUU4KpxJKESoS8o+52vQxxz/Bwkl2rQKD9Arr8Jqzy?=
 =?us-ascii?Q?TYGPX0eHaQWLsNSzSliz8F6wI6NDm7KuO2RjV7IXr23ksxzX0iInGdzZfJMv?=
 =?us-ascii?Q?DQ3RXxwHfmPjwPKddjRvSkSSUxfnFziqhsMl4ThjgyvAoMjgq7TEdM2fuFTz?=
 =?us-ascii?Q?/d+vrrzkPQCr9pBloQv3Hj9/KQEI7EsRI6OuM0w563s6dvqGbjxaR2UJBrXL?=
 =?us-ascii?Q?4kGl/NmXP3gool9pPwyvijQhB4hk8xnh8Syyej3/baAxvcrFPXkTt0HG8FK+?=
 =?us-ascii?Q?veKeJTUgJl7NhYyIO8U6Ba+LaPqJ0oInXNeS5tCU4j0iqCetKi1ppMiLsXJ2?=
 =?us-ascii?Q?dpUhunvpzbW3tfc//4nAkBdMZJqp0QYGmGBS1MFtvl5K5C/yECPgxu8viQ20?=
 =?us-ascii?Q?pCQDSiV+5ayQtaeHtXG6RN6xJSz/OHhtTVaxF6r47vHa8325HERfWADpnx/n?=
 =?us-ascii?Q?Yvp8hvilGWU4Sbs1Xz/NEvEQJc8B4M8GAcPYdCtGpo1CPZeaKYsFBLnsHICR?=
 =?us-ascii?Q?RP3CZe3Rr5nhNirhelQ72hb5ArYBkx5a81HB3WfF4YjsEAJHWX3/GmPHlqJ8?=
 =?us-ascii?Q?v0XjBMGsLX5gPMQRGR1L0P+D8FMLk9MCSMrwqW+Q3fS0wG8/NUkInVONrxzE?=
 =?us-ascii?Q?pDZ9xzqmD5/LqRUMhDD1Eh7zaN825amTPd/AfBOt3iW1Hz1CNfjy4IDV/vga?=
 =?us-ascii?Q?J7lHGlLJobC3LCpjO1gh+Y+XUZ8QOp6jn/Z4VE0Ykg/Ec7G7OZhn17SWg49H?=
 =?us-ascii?Q?F8p2IdNAD9ml65CfwzCye9Pzyo76xouEvu67KY8JEQtfV0HrQ5csMh33yhCR?=
 =?us-ascii?Q?uh4LBVUrL2oeCtOC1lWcse05DKVFpzdUqXqfMOQHCc/p7Bp4EW3vHMoQ1NC2?=
 =?us-ascii?Q?ISgUfrHJnkaEzx8zyzUZT8Shw6UEHdvkl3578zJnYATdTNdSm3S9SF3sUTa2?=
 =?us-ascii?Q?rPFEodbOyInB/07YeHV5lwqcuFb7xo/u9sr241T1ag8/VSisQbwyQgj3VVHh?=
 =?us-ascii?Q?q5pXmeYuZnz/JBWVKMVSsN/8ALZgissskuMfSp0NKcMF+GD1vd15wnVCVJgB?=
 =?us-ascii?Q?3QCaXxGhYF2KEb6UYa7lqcZU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Z1jy1FkvAmY1ZsYyIjinJbTefrC2Yy8DyXUUw0NuTADWRmQ2MphsI/cMqBBS?=
 =?us-ascii?Q?UGR/am8JNvQ8oqJtUvWJlFIxgJQNJ+m5G4/EtSQQRYmGk0ZprFLfTb+tU0yL?=
 =?us-ascii?Q?/VpUj+1tMoeda72l97V5DF2eKOCHPYytnjCqrKIdZkiX2jbkVpFV5Z/IYdyM?=
 =?us-ascii?Q?fyJ0pWYeryNWiQpRgyH6OGRMJe3pufv1eRMOWwibtS2UfutpeWrbWTMVb/qD?=
 =?us-ascii?Q?/uFmPvLXjtBH3ElPcf9aGm5obz+sGJ8KsLmw62RYTW5mrxP0ULjJ+UMr4Lok?=
 =?us-ascii?Q?VtebrbU6PeLGwhWkxU1PR8SSBbBmG0Eup+Dlrm2tY5yx4HYswc2r8SXH6Tny?=
 =?us-ascii?Q?Dtsz4SeiI4wRIxV49yeOaeet7OINVDJVsunrGNGAxz2Rx2+m09vKAq/UUnUz?=
 =?us-ascii?Q?QkOqCSqgxdEUuGSdm+mY1G7txlnlGVssvesasB2TqU2dHahHgdvNvdJ5VToM?=
 =?us-ascii?Q?yH+4UCcTynjA7zhbscoHdYCbg4vWugf8q4e8SjIyzSSj1tSkoBYjR33vLsnH?=
 =?us-ascii?Q?QDRtRY2wOxkBmb0fVN0cAs/GRzPu0XquglmNf83cAhkh6t4qb7SYoETIp/U4?=
 =?us-ascii?Q?eKHAiKZ11O22gAaSc7xAgpc2senAikjqLpdWYDFQfNg1Oosj8M+PKmqgEPuP?=
 =?us-ascii?Q?OBfqpMk6p/Rp4b1Q+RUVeXs12NHQx9WEQBP6RhXaO1JoNBkXBux15cys8vOk?=
 =?us-ascii?Q?CQBTCOqMAmOFtwcCBz7/T/C8iZiVUO4QO2JP7eUd3XBZyVKyMeS/myjEFx26?=
 =?us-ascii?Q?7l0hHagDxZASmoRHO8pbwU5j6nGjgl2WTpPGZSvXDDn8hYGgVgcHVCzKJgrf?=
 =?us-ascii?Q?xtCO1OEIRiQSDgXHfreMQaShs6IHxlrnZrNMD/zHDO3o9EVyUg59Tftgq8Gn?=
 =?us-ascii?Q?0tTA+jRFCJ4eJr8fcjpwhHBbe6UCImKcgRsdMD+IUke9X4ZRFY0zTPzma64G?=
 =?us-ascii?Q?7vL4MRs73IRh6xV5eOMKohIGACJCMF9rNvr/0nuE6HNQCnnCH/X8eZ8SesI2?=
 =?us-ascii?Q?THwzUP8sgdLQIEFlcnNEeCbS8FupK5ZDiafd5oqAn+oKvC13XOjxg3M/xcjV?=
 =?us-ascii?Q?Dfd9upRKsb24PmMOe8Cx9UT5YAFzx8XqdP8spqeULcHk1u7omzxYF+FWIwD+?=
 =?us-ascii?Q?tmHdbpUhOWHB09gUUsinqlZo/7Axvx5rxnTvUSmo5UXzRnO/WyyFBjADzmXQ?=
 =?us-ascii?Q?WBjbtLa6rGfkFdO1Ubq/UqPcxk2BwKpYcTdJC3kc25JBzeAAOe4xk0qoPxaw?=
 =?us-ascii?Q?XMacfZX6niovzq6KVRdhsKy9Sm6YIZyyav+GbcsMMV+Bi/UoOaUGRUCkrgWk?=
 =?us-ascii?Q?aLFgX6MVz0TLejF3eIx7zlqXPg6LOgn9QRv11Pl/NrazP2oqsqHow1jLd4DP?=
 =?us-ascii?Q?0WdGIMxIjxgwlwVYhSqwH0io+AZ7jSC51JoDy8brsh9YdGyZK4TIAk/RhwNS?=
 =?us-ascii?Q?yQK14UNeli+hQZuQEqVyn2BAy28QSXk6CDadUaAmvqQ5hdcfajtr4+bhnojM?=
 =?us-ascii?Q?0L9XZlNtrHocPnsGXbxlba7HsVi+sbF0B9fDXn6fb7d7ZtqACJMBaryFkrXO?=
 =?us-ascii?Q?G1h1ah75GurgU1LprL/LR83LlpqlTzHYOZCkSGBb?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 14768444-75a5-4bc0-9173-08dc8642344d
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:03:28.5304 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WSlbb7Lv4m69mR7lBIxyo6h4pmHTBoCNtC98UTSfl+UufYUI2QgszQ5pfV5KFjiUoo2M9e1xyFHhGhRb7CgJow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6825
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

On Tue, Jun 04, 2024 at 06:25:52PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the SWF1 register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h     |  2 +-
>  drivers/gpu/drm/i915/i915_suspend.c | 18 ++++++++++++------
>  2 files changed, 13 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 8b379ff60070..81f1b491d7af 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2291,7 +2291,7 @@
>   * [30:32] all
>   */
>  #define SWF0(dev_priv, i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70410 + (i) * 4)
> -#define SWF1(i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x71410 + (i) * 4)
> +#define SWF1(dev_priv, i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x71410 + (i) * 4)
>  #define SWF3(i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x72414 + (i) * 4)
>  #define SWF_ILK(i)	_MMIO(0x4F000 + (i) * 4)
>  
> diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i915_suspend.c
> index ac8221ae97f3..8a71c1f52cb4 100644
> --- a/drivers/gpu/drm/i915/i915_suspend.c
> +++ b/drivers/gpu/drm/i915/i915_suspend.c
> @@ -42,18 +42,21 @@ static void intel_save_swf(struct drm_i915_private *dev_priv)
>  		for (i = 0; i < 7; i++) {
>  			dev_priv->regfile.saveSWF0[i] = intel_de_read(dev_priv,
>  								      SWF0(dev_priv, i));
> -			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv, SWF1(i));
> +			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv,
> +								      SWF1(dev_priv, i));
>  		}
>  		for (i = 0; i < 3; i++)
>  			dev_priv->regfile.saveSWF3[i] = intel_de_read(dev_priv, SWF3(i));
>  	} else if (GRAPHICS_VER(dev_priv) == 2) {
>  		for (i = 0; i < 7; i++)
> -			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv, SWF1(i));
> +			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv,
> +								      SWF1(dev_priv, i));
>  	} else if (HAS_GMCH(dev_priv)) {
>  		for (i = 0; i < 16; i++) {
>  			dev_priv->regfile.saveSWF0[i] = intel_de_read(dev_priv,
>  								      SWF0(dev_priv, i));
> -			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv, SWF1(i));
> +			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv,
> +								      SWF1(dev_priv, i));
>  		}
>  		for (i = 0; i < 3; i++)
>  			dev_priv->regfile.saveSWF3[i] = intel_de_read(dev_priv, SWF3(i));
> @@ -69,18 +72,21 @@ static void intel_restore_swf(struct drm_i915_private *dev_priv)
>  		for (i = 0; i < 7; i++) {
>  			intel_de_write(dev_priv, SWF0(dev_priv, i),
>  				       dev_priv->regfile.saveSWF0[i]);
> -			intel_de_write(dev_priv, SWF1(i), dev_priv->regfile.saveSWF1[i]);
> +			intel_de_write(dev_priv, SWF1(dev_priv, i),
> +				       dev_priv->regfile.saveSWF1[i]);
>  		}
>  		for (i = 0; i < 3; i++)
>  			intel_de_write(dev_priv, SWF3(i), dev_priv->regfile.saveSWF3[i]);
>  	} else if (GRAPHICS_VER(dev_priv) == 2) {
>  		for (i = 0; i < 7; i++)
> -			intel_de_write(dev_priv, SWF1(i), dev_priv->regfile.saveSWF1[i]);
> +			intel_de_write(dev_priv, SWF1(dev_priv, i),
> +				       dev_priv->regfile.saveSWF1[i]);
>  	} else if (HAS_GMCH(dev_priv)) {
>  		for (i = 0; i < 16; i++) {
>  			intel_de_write(dev_priv, SWF0(dev_priv, i),
>  				       dev_priv->regfile.saveSWF0[i]);
> -			intel_de_write(dev_priv, SWF1(i), dev_priv->regfile.saveSWF1[i]);
> +			intel_de_write(dev_priv, SWF1(dev_priv, i),
> +				       dev_priv->regfile.saveSWF1[i]);
>  		}
>  		for (i = 0; i < 3; i++)
>  			intel_de_write(dev_priv, SWF3(i), dev_priv->regfile.saveSWF3[i]);
> -- 
> 2.39.2
> 
