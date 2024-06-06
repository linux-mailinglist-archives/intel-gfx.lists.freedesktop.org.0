Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FB48FF182
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:04:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40A8610E9D3;
	Thu,  6 Jun 2024 16:04:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XgQbQr0n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D84A10E9D3
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717689842; x=1749225842;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=pH8HmQytWLjzniEVxFIrYsns63uFv6G1DEhC5TFhDFo=;
 b=XgQbQr0ne6DKgglFiwuPAHGqnWodAxr53amy4h6VO1qWT/hBD4fQF0BM
 +pshEWZn8o8BHge6qX7f8ye/ZyPAbXI8aggJud5Dkok+oSPJpgEjOQsN6
 brwjYfQHQvJkN2jHY1txeczXwpjAuGCkEvrx5+4wFShlwI0Y4423j2xTi
 fD52JLiekYnZW3uPdX7akFTn6DTtBn8gGIXLwhEXYVlZvfRRltgv9xQeK
 6Wu3dlmGjZXV4UKGWDK8O03Va8K2DRJXUExA29KRwt6KrDf04CXlfjIDz
 Q+oSreUkOARYSgvtzbX/VDG1iVr5N3TRjJ2zxk2n/wPTWQb4ugyZhxbo6 w==;
X-CSE-ConnectionGUID: E5BnkWgTSZKUAwB0c32D5w==
X-CSE-MsgGUID: acA/V7DuRSOwEbvCBFh9Jg==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18198722"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="18198722"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:03:47 -0700
X-CSE-ConnectionGUID: QO8Cjcr6QLatEQP9KoCHkQ==
X-CSE-MsgGUID: kQKVbFQpR/SRbtKuAmHUXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38136983"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:03:47 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:03:47 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:03:47 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:03:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nhLROZns7grBPv5BAOWLJ2ALuV9xwHX+aj/RqUOBNY+NMdpYYGPlfOvxYRbHy70C4YucwGHpQVwS7ec+St1fqnXNbIxGT/4fRmL13ILQTyEUpwDLNhGdgfZRb0TWwdJCobUSqVgbnYZ/19fC6vPtZZyMpTo1eQ3mdvnHKOPyjDpow2j0zNCVNKsW61NHpmJilxh9/WbaNuZtqhz9C5ARacTUA1VBXLO8c2GBjLsp4ayzU1MjWTXAvRyFVaCJ/Swf2szZs4CHPS/UKQpHIYuMYrWUtAUdrxP/jIIE8xtDh0knuUqV0jQ6fUXLDh2NGw2nBQqQs4uv6LzrchTs79Vrtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jXwIRECf1xD5xTJVJFzKi7w3/QjALWEppd0Y3EU/Eqc=;
 b=Oha1hk3UKcrzA84huQGu4DuIpkBMmnlepjBe4F3d9SWlVCXn/S2trMViBAc6W8VRlCKu3+Md+CDg5lE1DXPaIQPmhgXQQ71nHwOABh6OGccrXoO/idTcdECKKgTroMYRoLKTUIq81653IGfSIzYSKFlOlHaF3pCXW58pYyZcSkNoLYuaNKEokqD0bs+Lxba8p3OMVqEBgRv4jlkYkzSXgesk+DGMe2GYN8r/zDmx/fGGhl2HwUZ91vIFCI8MmSsY1V2HpX8PJ1VSGwklRJTOip15ISeC3u3ggr9APgC6II98PbV9dVnA1WjbSpPzARELyC/E6uy8Jvi86T9yOWCTGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SN7PR11MB6825.namprd11.prod.outlook.com (2603:10b6:806:2a0::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.22; Thu, 6 Jun
 2024 16:03:44 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:03:44 +0000
Date: Thu, 6 Jun 2024 12:03:42 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 35/65] drm/i915: pass dev_priv explicitly to SWF3
Message-ID: <ZmHd3sGI-FjormeA@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <5ab27d6a4366617ba273e526a46a505c3d3c3295.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <5ab27d6a4366617ba273e526a46a505c3d3c3295.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR03CA0018.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::28) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SN7PR11MB6825:EE_
X-MS-Office365-Filtering-Correlation-Id: 682479b2-e41d-4f1c-658f-08dc86423df6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?KfEuyGHuoTlB7jA2tauhWwWn9PHy/6l5jyD1XlxD4d5rpOkIUqkfQTbg+KnA?=
 =?us-ascii?Q?qdSBQ3bWLUrIBGRdqx7YA+oDxMh1cAilY4CW2uHUCtzFfwVvsZf5SJl+edEo?=
 =?us-ascii?Q?TNXj7T4JbRySRxZi5EcAYFg7fy4gqyaowvtbJahfiSmRN6CQOJ/n28G6h+J6?=
 =?us-ascii?Q?3sAEHrP+3R0Pw+jbhK1v1HOjzX6uffNky2k89njWe+O19EG53R5rfhNOgSXt?=
 =?us-ascii?Q?Axm13qbFK0yh2lOxwoQI4DQ02yV+gwzPT3tV1s1z6W41cVfHdayGRCU+QHiH?=
 =?us-ascii?Q?rxnY5w8XSjcRSIu1I+GGwtTd5Av2YLt3ng2JBdyStUnp4ry+HvWm54GXlaLj?=
 =?us-ascii?Q?TGSP+k4LrC1rgW/2y+wzcIzEe/4lj/ueJ3gOc2X7YrcCbV0WZxpoh7YmiG7d?=
 =?us-ascii?Q?XOXcwWMyBGC97QJaXvVePPaSOjNqqQ0CAzyTQMU6uP/xHucvg11g7kCOlba3?=
 =?us-ascii?Q?d2AxFSL/3DMNjHaEU7lz5QTdGJj4QqG4u4KDpedluUsM9DU4jyi/lks/o1iU?=
 =?us-ascii?Q?G9ValxhTM3qZnZzUU9PM+fud1sCKix+2CDW+3pSUbJx1oh71+jSKLylfRgfY?=
 =?us-ascii?Q?MQlM4cac8UgPfGOeAjtYGkExjymEu0kYPzfc8WFc76MYuCNyUe5i03dfMifr?=
 =?us-ascii?Q?HapJINcDruIgKX/IvBrc2UBzdT1KX+nlDWadV69HC/b2MjjVn67Wy/WJXorW?=
 =?us-ascii?Q?o+FXRz3XvsinYbATH5D2R4bO4Mq3LXE0h5YHIZprLe1Kcv75malOqYON/Va/?=
 =?us-ascii?Q?MTOl75xx5Q7BSBRC7JMTBKMwxSaCy1A0RfKLUVcb/y3FWqWA9nbhvi5L+2oA?=
 =?us-ascii?Q?od/AOiFinreTK7vAxys6oaly0LToY09ZUB1teSEqPNxfWQqHEAYYCwji3Y9A?=
 =?us-ascii?Q?kVgg1gisfzyeopjdrb3ApYMyWFU6IVGLuVpbLO+M5M4QVLxskeaPllGQxGqa?=
 =?us-ascii?Q?WOT2BdtXSWdPTzHrWJ04Z8tI+akiihpQk2h5eDiDIHw5bZgyJYR4Q2yfP3Db?=
 =?us-ascii?Q?BvuPfkA0lRfL8wiE7aRdcXUS2VuQcYrX6FWJI0BDo1ACorOGDlVbgn3f/sQj?=
 =?us-ascii?Q?0xDOUtHRDnxjF3EDQZ2epiQhl2OGu2acwguidLMpzqOHNDu94xnZgT8ZYNaG?=
 =?us-ascii?Q?wwWCMoIe3hO275hKSn2XOGV92kCWOXkq4n+VAUML3DIX7jYAT18QRpzZh+PM?=
 =?us-ascii?Q?Ff/KjjLij097Wq5znEAVhm0cRu8ohdYuJbDUGDimLSsKvz+zQ70T5m0jKkgA?=
 =?us-ascii?Q?2iwOHj5ZIkG3pPDF/JV+oYTcZQPoRvj7adEYhdPxHOvcS2E90VaK6nMwXzR6?=
 =?us-ascii?Q?e8XtAHqPCH5SSR/2i7LHGp6K?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CIlBcSuMA/ttiaGm/gerjJyMNl6I8v+3E4PPoLhf0FZtad56T0z9rzplGw2C?=
 =?us-ascii?Q?vRwHLv67TdZaUl9hOSZvnifYAqVm+LhORn8ZFtyFKxmPt+mZIhdgYUns1nEX?=
 =?us-ascii?Q?LBF+K+6WefjFbRYCAWr0bj4+A0WGNXzFKvOQ1PhyvkZcR7NUCkf6poIGrCnK?=
 =?us-ascii?Q?64GotQA3U+r8vIy/0zv6k47JgX4FL162o2clLZxarVXpkJluUlQ0X8ZgliFb?=
 =?us-ascii?Q?Qz7HtrM6E8oImMqoIDymjxZ6WnrLU4YT3Hu2/9xTsd+hyJ4Yh4pcIsGvHiI/?=
 =?us-ascii?Q?bJge7Um4Q4pE2w2kfbQUUh/u+uDWWDlsg311TDhnreONfxC2zEi9okkALE48?=
 =?us-ascii?Q?RtlEoCoFPwyr7tTZFvZUjXyXap9Z284MLuZqCXzgNkT1JwhWZf6jLWTHZbRC?=
 =?us-ascii?Q?uS8jdLI+CjK+H+uKXBLABn2dBqvQO1A3OVwm127/WF7kQZq2wITY8jwbIvH0?=
 =?us-ascii?Q?nIOjXl8HCixtgnwCdhJt0sJJowj10ulJj9xzWvOih4T6Ro/DyeL8+bkHW0Fx?=
 =?us-ascii?Q?EDlHWqdSZu2d7pF9TiehdkadcTtGZggHXUu44pAdZpZPEiLNvU8wGZRnwG+v?=
 =?us-ascii?Q?C7PFVW/h7W6JBffJmVTyGhKzWZxJhjhRRDyz6q0BeQz/ncIo7N1chuQuAf+X?=
 =?us-ascii?Q?hrhQ0nQmU/QuxAqiiaGgcFF8j7Uqcv8ZUVk/3iY/pf2lp1OHVBHA1E9UH176?=
 =?us-ascii?Q?ut9hSlV/NwBt2GCOJwBTlDfcJC+r3JNXwcI2qpMdHsU2ZKO4rkgVIxhK9ilm?=
 =?us-ascii?Q?g+CJvfbYVB3MnC0iRBPAWa85miVMPDYjHWFJ6TBVdbG0NFK8EsHaZV+dOAiU?=
 =?us-ascii?Q?akAkW8dnCuBS0M1U2fmX9Mb2303YR0TaF2RjDRZDJ2KqMx5XSe7yxBMpuONb?=
 =?us-ascii?Q?A5VcwnFUTPCuigMGXHeGW3+JC/LdBxN3dCg5EwBfwn1w/0KsxN913ndZqRAc?=
 =?us-ascii?Q?tKqngbEHV7NWrnZLqulDuJOC6ScK03W2C/+cCcH1uovobXhhvpwhrd9FkIJE?=
 =?us-ascii?Q?r7tH8NboYV2S4kXNP2r1mUnt2+yvwc/YNweoEcGsChuySXFUJI5PXK9SmnY0?=
 =?us-ascii?Q?O7pFQSR51nrCLDKhuW3ZXDvHLC10yixr/gTJIDd91Oj74I3HJIdcoI0gkrLW?=
 =?us-ascii?Q?Cvd95wI3kMhN67lr9I+mC7SEa+ba013ZxkQuTbWci3E7dvEOAvjS2x433xEy?=
 =?us-ascii?Q?oj2ZYawBnRbpGEDI5NaflUcI/umBjz4pNbAVu5esDTMeB3pkfTJsot1kG1E4?=
 =?us-ascii?Q?KfThz+vLY4Js4vhwEvQkZwMLqUcvYZt84uiIGtNJXTz3wOn4nJcGv2geyBjv?=
 =?us-ascii?Q?D+Apexq+uDlBsdM18xh+4qH+YAZ49o/k7MCb61zrpsow69WjlTKLp1zBNWYr?=
 =?us-ascii?Q?46yaLhGGXVt0KEbMKQRwagTaHNDPM5YwaZkwl9Eshnz6wGyzhJnvfvbrmYAI?=
 =?us-ascii?Q?EQWA4OXroNOxEs2wpxs4pBUIw5Z76bNH6kOQLptOO5E8EenGj4j2z89G2qSo?=
 =?us-ascii?Q?7RjufXTM/BXIPlMpol4XNUgmB8iYDxNLhdlRa9I5h9YZOhUdLp0wjuFI4C6a?=
 =?us-ascii?Q?nGxDpixZq/vfaaanLWEmkja3/5EkCFdPhYsHfNwC?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 682479b2-e41d-4f1c-658f-08dc86423df6
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:03:44.7202 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1AuExLg8IG3XwWTuGLed9bfOUuEVgecFPR0B6m52kwrhbe3qXHl0SCW4sdwtKGv55ggU08vwhuidwkB705/i/g==
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

On Tue, Jun 04, 2024 at 06:25:53PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the SWF3 register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h     |  2 +-
>  drivers/gpu/drm/i915/i915_suspend.c | 12 ++++++++----
>  2 files changed, 9 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 81f1b491d7af..2f942882e7ed 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2292,7 +2292,7 @@
>   */
>  #define SWF0(dev_priv, i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70410 + (i) * 4)
>  #define SWF1(dev_priv, i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x71410 + (i) * 4)
> -#define SWF3(i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x72414 + (i) * 4)
> +#define SWF3(dev_priv, i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x72414 + (i) * 4)
>  #define SWF_ILK(i)	_MMIO(0x4F000 + (i) * 4)
>  
>  /* Pipe B */
> diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i915_suspend.c
> index 8a71c1f52cb4..f8373a461f17 100644
> --- a/drivers/gpu/drm/i915/i915_suspend.c
> +++ b/drivers/gpu/drm/i915/i915_suspend.c
> @@ -46,7 +46,8 @@ static void intel_save_swf(struct drm_i915_private *dev_priv)
>  								      SWF1(dev_priv, i));
>  		}
>  		for (i = 0; i < 3; i++)
> -			dev_priv->regfile.saveSWF3[i] = intel_de_read(dev_priv, SWF3(i));
> +			dev_priv->regfile.saveSWF3[i] = intel_de_read(dev_priv,
> +								      SWF3(dev_priv, i));
>  	} else if (GRAPHICS_VER(dev_priv) == 2) {
>  		for (i = 0; i < 7; i++)
>  			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv,
> @@ -59,7 +60,8 @@ static void intel_save_swf(struct drm_i915_private *dev_priv)
>  								      SWF1(dev_priv, i));
>  		}
>  		for (i = 0; i < 3; i++)
> -			dev_priv->regfile.saveSWF3[i] = intel_de_read(dev_priv, SWF3(i));
> +			dev_priv->regfile.saveSWF3[i] = intel_de_read(dev_priv,
> +								      SWF3(dev_priv, i));
>  	}
>  }
>  
> @@ -76,7 +78,8 @@ static void intel_restore_swf(struct drm_i915_private *dev_priv)
>  				       dev_priv->regfile.saveSWF1[i]);
>  		}
>  		for (i = 0; i < 3; i++)
> -			intel_de_write(dev_priv, SWF3(i), dev_priv->regfile.saveSWF3[i]);
> +			intel_de_write(dev_priv, SWF3(dev_priv, i),
> +				       dev_priv->regfile.saveSWF3[i]);
>  	} else if (GRAPHICS_VER(dev_priv) == 2) {
>  		for (i = 0; i < 7; i++)
>  			intel_de_write(dev_priv, SWF1(dev_priv, i),
> @@ -89,7 +92,8 @@ static void intel_restore_swf(struct drm_i915_private *dev_priv)
>  				       dev_priv->regfile.saveSWF1[i]);
>  		}
>  		for (i = 0; i < 3; i++)
> -			intel_de_write(dev_priv, SWF3(i), dev_priv->regfile.saveSWF3[i]);
> +			intel_de_write(dev_priv, SWF3(dev_priv, i),
> +				       dev_priv->regfile.saveSWF3[i]);
>  	}
>  }
>  
> -- 
> 2.39.2
> 
