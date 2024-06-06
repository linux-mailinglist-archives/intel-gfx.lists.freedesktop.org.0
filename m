Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0348FF17F
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:03:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BE9D10E1A6;
	Thu,  6 Jun 2024 16:03:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XpqSfB9y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B393510E9D3
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717689791; x=1749225791;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=y7OYRWKfNy2n+/VTQ7B6DYxtNjxdM5M9wtwyEKu1jao=;
 b=XpqSfB9yauwY8M6AxqS2BzJ19mk2+3Qiq1Ij80TkasqnnzvX+Cmp5OnJ
 P4PgKerO3nie8QiyGBdkR0qP0drTD8oI9uwjrA+if9HG/0PdfucEEoMDO
 XL2dPrCRVOXfhkXhxJWKGB711IZXX+3cbDD4E3/96/mPSbjtWpgB90HQG
 uALFDvSOvlNekjZQcyvOh1YsdbycWM7P3giCSXTUF4J7En68Hb2JfJfqo
 wIIxmBa0KXV0lXj0Y0afkK+xdChxfeRuwKGzh10hz5zBK+QQ+gm3jjuKi
 RIwLrG6wgEfWIcbVhCbTUaoDdjdhSQCENAUzIQsTniQ1cRqKvjgQzfbtQ A==;
X-CSE-ConnectionGUID: tnwVZcF6TX+tYcLBvc3P/w==
X-CSE-MsgGUID: WeRKJBweTuuZzG5/YDMN2A==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14178412"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14178412"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:03:07 -0700
X-CSE-ConnectionGUID: Roqop3aSSh+KdJRbSPm2ag==
X-CSE-MsgGUID: on8iI4GdT3+fx10TAH0dOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38691437"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:03:06 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:03:05 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:03:04 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:03:04 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:03:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JaYwyhNwW1IPOd3PexDqqvMLnjgBDEUEQlp25Zd7L6CMuq8aA9A2BLIzfF/l9lqow06K31c+pbRRBfqdzyLmL/yHdSXHxXSm0CGs6xws7mMMiYStalq28bdUaJSe6q2h+Wodi/Fo4IKDKcyPc79s3l/UjrxQSsvL8g74fdpraqyW3odW+YJAa9Ghc42EFMXAaYTpMHEnJuES4Kqude4S7fWpPwtmh57aUNWj0ciIsYKx1OPDz+LSOzhm0ukqrOCd1MvqfuRbfZwW8T8O66aZEoLknl8YYWIPX/Syj5pwPD0Uv6s17unrosjJeGLhQP0kEFT8wbi8UDdHbwXAI/nfuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zEmML3XymKPpCf4rgJx50zOX1SaPb+gzHZwRmir4LTU=;
 b=nbouWYwFK+0Am8DmK8IK9Xb6UUVFNK9BV3WBneL+aR1WXP+ppg5BRdzeHKFxVKgw7fU6xFcFyuO0292B1Ztj75H4tGxAbBK3PB8+mNISMqL3/re1JK+IRxG49QpJ12BMDI8AOhwJRlt9TrpqhPf0qDK8HEtoWLouaQ/cZi6K7uW4w0r457cGNupVaZNIP2i3PO9aPZ4zleDyDJH/jFETyen911yL+bHqeTGw8Rjqb0LWH+dRkWpl3ljpxSRjW6TykNmryK5MZuBt843OAnVpV1OsrYb/i/T7RHJHmu/y11VxKrEukzOxlNcLlSHTPFwJO3GTT+Lthd/Jl03N6ui/Pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SN7PR11MB6825.namprd11.prod.outlook.com (2603:10b6:806:2a0::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.22; Thu, 6 Jun
 2024 16:03:02 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:03:02 +0000
Date: Thu, 6 Jun 2024 12:03:00 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 33/65] drm/i915: pass dev_priv explicitly to SWF0
Message-ID: <ZmHdtKm5sN5UF3vN@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <df957a1dfeddc14e4b62d6e2a1bf8104d506be87.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <df957a1dfeddc14e4b62d6e2a1bf8104d506be87.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR17CA0052.namprd17.prod.outlook.com
 (2603:10b6:a03:167::29) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SN7PR11MB6825:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c8854e9-30cc-48b6-ed45-08dc8642249c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?R1LeTEIKWKV2DhkfLIStj4qfGLvK/ZtM92qkg0KATT6LHkHXL9vajqbl+ykB?=
 =?us-ascii?Q?EbJUudj2crsIUD3KW8TwVkUSjtExcQyMVbCZ+57pk4J3Ve9dbj0qzeb7qH2C?=
 =?us-ascii?Q?l4Q4Lw0EVylf7sFKF7qf+d3lWpe9ZAJQ/1NcXZMwG6rlyMJ61RcvKyhcp9xm?=
 =?us-ascii?Q?QOhrHn90Fcil7xNxYEVgAF2vVCUVXSaR8JSSZK+5kHoeXa0fdyKMsNS4VG/u?=
 =?us-ascii?Q?dK9pcp+2OXhfGs/lKAGrpvwM8Rnvq9Lj64GqSPmX2uKWuOJSs0zEXw+2tMEY?=
 =?us-ascii?Q?hjawimY7sTwNb0+3Qbkw8X3t6MDT/oy1I55kCxGWPh4N7+qThjnsvjRWGP/N?=
 =?us-ascii?Q?Jwlpq4XRfYnqLMLv8OMCVaSocWW+9r8s73i+9K7/85T3HPRkm5zdXqdGMV9p?=
 =?us-ascii?Q?rNlJIZPEFXg7BDO9DLs7z5ZTjczvmn2lshpxsvWmVFy5i4sRmZvSPFrgo8y8?=
 =?us-ascii?Q?mvc+1Rtp7dX0dmdflkg6frm2ZyN0YsItE6QZI3tncBUz6R067e164CR+N7ql?=
 =?us-ascii?Q?XoKAfhF6DPC7zA92DKlXujKXwtdHtgiijJSQysPLL1PsvWYdj44nb7DaZT2T?=
 =?us-ascii?Q?FTXavl5KvVlVI+dl6suXuT5/2e/7NphL5Q/uCTXqRTXFsGd6cmpLKoxAkZWt?=
 =?us-ascii?Q?30yEeEK2kx52SH7YT7HOoK1O39UxjTcFtTSkJ25AaDfK9mDTk4+0CoSvDglH?=
 =?us-ascii?Q?raLgvV1yPbjhm8DGcG4EaHcE23DB4t9WVQOUzUh+v7GWEqT9lk+2NgN7TlvS?=
 =?us-ascii?Q?3vE5ktYT1/OQkxVhf7lByIy1Pv5/K/MNYEY12Xxi+xpCsKyiey1r2BDdZvCO?=
 =?us-ascii?Q?a2t8Zl664VIlKPbjKWEF82psh8Z5SNEbsXCsqY9pFPLKzX6bQm9pHlR/HqSp?=
 =?us-ascii?Q?ekSBvHhoKOuc38zKWgfB2aWKldGBkTTSpKzznIoqt3RH9pXVCyl3RFUpj6Mc?=
 =?us-ascii?Q?uuwRgqEuO6OamtzA4LKt6cHl4REY1dEW43zPW0B/vYo0bHqIhltqJvX0O5Au?=
 =?us-ascii?Q?EIrIfHTHdsl+bCR4nzTnXOboAkffh5wRkZ4zlbg6tHqIvcqL+N5GMwdDLWF6?=
 =?us-ascii?Q?bqkoFIAQcpmOcwGx4Jrg3HU66vD/eZNqoVZS576Fd24A1lmxyRQQG1H46+e0?=
 =?us-ascii?Q?epA/lfRh1WFxqla/RPA+Xzhw4YMC98SgDPf94NeJQaa9HDCfmjW7WafSSP6c?=
 =?us-ascii?Q?zQSorutuEaBCtzCW39qa1xnquceKM2Vm+zk/uVxLl95orkiM/sJuaHHJFQit?=
 =?us-ascii?Q?BukGOTlXxMafM3BgQ2xvtxe/cob7quypCK/QKhcG8uhgyaHg0SYFEWdFQRId?=
 =?us-ascii?Q?obA8RF18/Lpw+9nqoflf65nN?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?p5uDe3oMAydmfEUxfHWUzAB5ZSWF54yuPQV5kKaHOGf4p/9uYhnmPbTxIqLZ?=
 =?us-ascii?Q?cMCs6OvgIp2+ktZgEUlMUBkHMi8MZ7r4CBfSYETvHpQYik/J/vD4NX7Um7zM?=
 =?us-ascii?Q?iqwiAzkxtUBKsugaQE/LOEPWgvbiqO4GNVmxg5UUuLlRv8k2+MkyWtUD6A0i?=
 =?us-ascii?Q?FRMMECjT4rckVEt6+OHK5LFdsZkoutIVC9wWIKyf15yoWKjwvN+xDjd40F/K?=
 =?us-ascii?Q?KZq+wKU+Yc3HmjuZE5uoUGSNFDLEQKvOElSCCwHPG9raEa20RPsIG4doUCei?=
 =?us-ascii?Q?Os1ALrvC2szo+GQ/2Kz+6GB9WfZelbNGbM4M5Ov0bqAuSAZH1dDXhrbu0Vdf?=
 =?us-ascii?Q?nWB5R9gN8LgOHpwZlp9d59fjGtOdUE8HHWVdwfBU2TSplqwi4NkMrU3wfH6W?=
 =?us-ascii?Q?alsmAGXFCVckY4Uwl1X/+kTzbM0LTawBntjzxASyMUXlQq8TkYVpBKg7znCY?=
 =?us-ascii?Q?GjBKem7O/VE6Mz8+qGl4unuYABkE9jkzsgWcPgPmm8iat5ZOz81BCfta3dJ3?=
 =?us-ascii?Q?GPbbs1B1F4VYxfYIuLAwtTOUJuDlNaZTP48YY8iJZ9Li5e+xO+nnlPhVDGrG?=
 =?us-ascii?Q?hekVvvNdqcRi+3D7UtVTKg6bueaVJeLszy6QvwgysfRJP0M0Ct3QEhAz2hbk?=
 =?us-ascii?Q?FoIifCOd0+LVxl/2OsMB82e3SIOevfZ2gACfTkfqR07bRzLoLyv7xsUoqSJW?=
 =?us-ascii?Q?2xGXS+170H1O96RRD6WCpff63gwxAerB5VvKfWLivJpcyf8VLNas3K0Xr4Uz?=
 =?us-ascii?Q?TJyYyHdKftcajayFmFW/uQVaxC+zeg+NqG+FsB6k8szI9uRM/7Pz+2QJcXjd?=
 =?us-ascii?Q?t9iJSYhxlB0kqasmuSYU2UhkDGaMcKqnbDYXk97NyWTj9fJmWCBXVsdC3aSU?=
 =?us-ascii?Q?lYvHf4mObA+4bNtN9Sa6YIzoEgSO98noisVNW1OwbpYRsCR045hdqtkgRSOd?=
 =?us-ascii?Q?L9XmQ3azmiEGo2Xw0X2S4d1/SYGN2xpQVThAk9qQOR4cM1vO38t7u/+ppkz7?=
 =?us-ascii?Q?AFiyzF7dWptjqv7nb22DbJmJfPtv5kK9XUn9RwxXqplt/M9wXHTEZBffKxyH?=
 =?us-ascii?Q?olRgwdf9144Ee6ZK6IqNJmQfRf+mLxOpB3o72J8eKGabMFKU5NzRKfTE2O/Y?=
 =?us-ascii?Q?DL9waZdwNxWEJL1ZamiNI8mZeUSJTkd7FkwKYXvSH2qiBxJi8bp+IT5Chd1H?=
 =?us-ascii?Q?pyU+1pgnbkbfyEhG9k72r4wE7x0BXOZArygvKUyzKmGLXbqwrxbjXfO/iQDC?=
 =?us-ascii?Q?jmZHz42rWJ9xHIHHpsD/2YK50/148KwvNjyT+XZBm1eRZtJG6q0cXfInvXA+?=
 =?us-ascii?Q?B8VBS155eZxcafkJceGQaw63VrT9DTbQ9Qxlxg90sP7dUefGL6KKOEf4/1xn?=
 =?us-ascii?Q?GSwU/cCfAZ2ZdNth2XjZPKHA4rItApXDEw/nZRhohslOA7KthpDLyVjBFaUP?=
 =?us-ascii?Q?7sqM5JAfui6GhJnk9z8SHh4385kuQ2xFj9S8ef+KmIOdsBC4fFQB58ko2jIL?=
 =?us-ascii?Q?6YhbBza8oN8nQCLQexKBbed0qeVcxkr+6+AmMxfTAUXbwjXLWR5fI+pXyQwf?=
 =?us-ascii?Q?njz5TU+hv9X3zntS/3LkCh3cf1CB2euSpJPkvm1Q?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c8854e9-30cc-48b6-ed45-08dc8642249c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:03:02.1821 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hLwZdb4HKHB9vwI6NU3yzg0Gdw5O0iHMh2hn8J7UGa8hUnETSSPg8n+kAULaKUBy/GZJkt5dkyv/AX1fYmAVmw==
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

On Tue, Jun 04, 2024 at 06:25:51PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the SWF0 register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h     |  2 +-
>  drivers/gpu/drm/i915/i915_suspend.c | 12 ++++++++----
>  2 files changed, 9 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 8aa35bbb2e1b..8b379ff60070 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2290,7 +2290,7 @@
>   * [10:1f] all
>   * [30:32] all
>   */
> -#define SWF0(i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70410 + (i) * 4)
> +#define SWF0(dev_priv, i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70410 + (i) * 4)
>  #define SWF1(i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x71410 + (i) * 4)
>  #define SWF3(i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x72414 + (i) * 4)
>  #define SWF_ILK(i)	_MMIO(0x4F000 + (i) * 4)
> diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i915_suspend.c
> index bc449613c848..ac8221ae97f3 100644
> --- a/drivers/gpu/drm/i915/i915_suspend.c
> +++ b/drivers/gpu/drm/i915/i915_suspend.c
> @@ -40,7 +40,8 @@ static void intel_save_swf(struct drm_i915_private *dev_priv)
>  	/* Scratch space */
>  	if (GRAPHICS_VER(dev_priv) == 2 && IS_MOBILE(dev_priv)) {
>  		for (i = 0; i < 7; i++) {
> -			dev_priv->regfile.saveSWF0[i] = intel_de_read(dev_priv, SWF0(i));
> +			dev_priv->regfile.saveSWF0[i] = intel_de_read(dev_priv,
> +								      SWF0(dev_priv, i));
>  			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv, SWF1(i));
>  		}
>  		for (i = 0; i < 3; i++)
> @@ -50,7 +51,8 @@ static void intel_save_swf(struct drm_i915_private *dev_priv)
>  			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv, SWF1(i));
>  	} else if (HAS_GMCH(dev_priv)) {
>  		for (i = 0; i < 16; i++) {
> -			dev_priv->regfile.saveSWF0[i] = intel_de_read(dev_priv, SWF0(i));
> +			dev_priv->regfile.saveSWF0[i] = intel_de_read(dev_priv,
> +								      SWF0(dev_priv, i));
>  			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv, SWF1(i));
>  		}
>  		for (i = 0; i < 3; i++)
> @@ -65,7 +67,8 @@ static void intel_restore_swf(struct drm_i915_private *dev_priv)
>  	/* Scratch space */
>  	if (GRAPHICS_VER(dev_priv) == 2 && IS_MOBILE(dev_priv)) {
>  		for (i = 0; i < 7; i++) {
> -			intel_de_write(dev_priv, SWF0(i), dev_priv->regfile.saveSWF0[i]);
> +			intel_de_write(dev_priv, SWF0(dev_priv, i),
> +				       dev_priv->regfile.saveSWF0[i]);
>  			intel_de_write(dev_priv, SWF1(i), dev_priv->regfile.saveSWF1[i]);
>  		}
>  		for (i = 0; i < 3; i++)
> @@ -75,7 +78,8 @@ static void intel_restore_swf(struct drm_i915_private *dev_priv)
>  			intel_de_write(dev_priv, SWF1(i), dev_priv->regfile.saveSWF1[i]);
>  	} else if (HAS_GMCH(dev_priv)) {
>  		for (i = 0; i < 16; i++) {
> -			intel_de_write(dev_priv, SWF0(i), dev_priv->regfile.saveSWF0[i]);
> +			intel_de_write(dev_priv, SWF0(dev_priv, i),
> +				       dev_priv->regfile.saveSWF0[i]);
>  			intel_de_write(dev_priv, SWF1(i), dev_priv->regfile.saveSWF1[i]);
>  		}
>  		for (i = 0; i < 3; i++)
> -- 
> 2.39.2
> 
