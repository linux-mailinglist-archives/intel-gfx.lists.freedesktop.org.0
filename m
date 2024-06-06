Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEEB48FF0EA
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:41:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16A0810E9C0;
	Thu,  6 Jun 2024 15:41:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NLRbN4b3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B98610E9AF
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717688491; x=1749224491;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=8emMe5qZVBmCE16csh7PIsnISwfyMytppssPN0DqWmI=;
 b=NLRbN4b3dNDg0N1zliR+yS50zuh89A1pJxL7LIa2zVtP7Qb9MivujwhT
 jrxAhm/gZGY+ZmyQ8y1BwTTDMK9mUAUy45gawMHdN90n0Q8vwlZxxs6vC
 BrWIdXd1SWSV/6k5ODgKo5/8a5B0YSAzNbcoLZmqWmW+p6Ofu7lhqBKWR
 ldn683eYeKR3nAJyw6IYRwm5+FRI6yo8pDD0oVbdWVAK+x8F8iMiHJhtl
 gG6CYgwO8GDRtKR9WKO+6XgwbwMN6Vca1e96fs+Cn92BFFT9KXZdnJO7T
 9dk2qp29HCJ8AqOPG5EF5/AqsWfLFk/w13UvCdrNSjTCKssX3fJHQ/WJL g==;
X-CSE-ConnectionGUID: abrvsf2QS8a9RWg9eqSczg==
X-CSE-MsgGUID: HYTLl/VQTtGoatBS2XbeiA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14108379"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14108379"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:41:26 -0700
X-CSE-ConnectionGUID: NZagspniSlG2bpVyNSfFuw==
X-CSE-MsgGUID: i2ULAUg7Queea8B3C3e0uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="37958437"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:41:28 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:41:26 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:41:25 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:41:25 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:41:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aCRWGNZQMQdR1/r8fAtC6EbE9jHk+lak+10x/Ahqt4jZKrFF7fOvJbucYwu0Yb+5PRnh3rsu0x2/947eolFFyjtVQz/jtPUbX+NW1SvOJbAJ0Fsh+di+sijO2u+oEgIdWO9Lh7u0H4PBKKuUVqpmIkJZlRF22xL7fSkhVoQf1Swyrsw7UOfQN/E6ZBIPfuuPx51LDtWjDQkBT/Q+xsCmnljtgMdHxwWg+04VkEeKohgbk25vxrv0lyB2l5RA4bREivPBXp0ZDa0pushI6+8O/BKcIygYxZ3pVuyEnGTp+M9q8MknQtu195JHO2Sl7/GlFB0fRU1zg+4x7WYfw+3UeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B3sbk4L7Ge9j00WCuHxHzc8FdUdxvTnUOnPbLUeqLFs=;
 b=NTf1PshZvLTiNjwJ6ZnbljzpmsaGzSaR3EvuiAS7ZrPc3O+yuawTsAsglIXpFGALi+uo2V03l2/z9X/7CYOtglLKTlBIdKjnuaw8gTXHj4bZ9cfETDHlF5aXhleevrp812SufH/pwQC6F3q2cXMXi2oZjRzDZQn6DKGvIA1LRmhuJ2Zy0X4clQxq8eKBQCndnMnVpv54qCRccfzJHpFN4K+fx1mB7FmYRq9z8F6dRrDvS5re7s5LBzKyHfF+1YFcyKkjAuDCzsiUjisrgr3T5l5uabAbZ1p0orpLc01JlzNG3UKfT00wSwBJs7BFjPUw2VmrRKJFdt2HQhjSxoNQ+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB8404.namprd11.prod.outlook.com (2603:10b6:a03:53f::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.34; Thu, 6 Jun
 2024 15:41:24 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 15:41:23 +0000
Date: Thu, 6 Jun 2024 11:41:20 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 16/65] drm/i915: pass dev_priv explicitly to
 PFIT_PGM_RATIOS
Message-ID: <ZmHYoOH4cpCtlc6v@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <8453205c9619bb8453bf4904d0c5bb868f614fc4.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <8453205c9619bb8453bf4904d0c5bb868f614fc4.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR02CA0046.namprd02.prod.outlook.com
 (2603:10b6:a03:54::23) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB8404:EE_
X-MS-Office365-Filtering-Correlation-Id: 828f4a30-1653-464b-23ae-08dc863f1eb6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?fdAladITToaxE5eu3ti5Fwd9qkcnWeyB8VKiNAiq0bjw3ZWVeYtIalSP3gzf?=
 =?us-ascii?Q?2BcDi5ywac2NJ+ILtK5FY64aKMkM7ct1tig+3aYXi+N3M/t0bohNmY7JvhDY?=
 =?us-ascii?Q?6oTxEvr7mQ0FNhkgqj9u8KrmPefz/9MvZGRlsT5ZIQ2RTniJHy003mv85/dK?=
 =?us-ascii?Q?JWRSzNZ09QWk9o5wDBlnh2yzxA5PgXa44zcqAUKaeKo4R/lgCeezCLzSv0A5?=
 =?us-ascii?Q?uz1W9twWYa+AKR5XFf8MBAIQ712gha3mppgoJo57Vw+e5MUWvGZMI/N87xD9?=
 =?us-ascii?Q?sD7yve1AiLNCYVqLC5ffXdzukacjMFLKuKWDd3Fv5Zp3RxBXsnMZHXk0T7QB?=
 =?us-ascii?Q?aTZtwFAf5h4VBI7e+s/SkrS64YkrEeeGRdLOPOVmLg1mlMqn7jf2nt63LoKp?=
 =?us-ascii?Q?b7d5Oma4LshRdLJz+sVxxOlalagoBuSb8BMM+DOvMymJtaMjyjdIk5hLpvmw?=
 =?us-ascii?Q?bvd5Cg7qai+DBJhqgN8WYdudd+AyNEmYx5+CgDXVC+LXIwzTFnbe4Tgz07qK?=
 =?us-ascii?Q?GbCa7VVaZ78fKMBxMkdSEjObk+CZjAMVaq60n+YSkxHi/OouRK1o41VLNtSG?=
 =?us-ascii?Q?R+aT2j7x9hgeeiMAWiPRaueWraoW2+7WVBPi6UHpAAPDuI4TF/GcwG5uweY4?=
 =?us-ascii?Q?VUQO+nmVwPUrW3tDFf/1AHLyCr5KfAoAxGuhfKfmPwRRjk4yxXqNSyZs2uVo?=
 =?us-ascii?Q?HDGdHjpcM3ENwUrpQy0axNBfsS6q9E72kN7CNFkHjhhaHZcQcBEBSz/1QiGS?=
 =?us-ascii?Q?0zD4NHmXY7/+VJSWGYy6CHfGSpt+rfL8dU7ZTp7gWSQ51xL9N1nyD8Atyvgp?=
 =?us-ascii?Q?KEU9IS/59m6YjpyVMcUfJjW1go09dgL1u75F5nSq0zUIfnjDANLxPMps4e4d?=
 =?us-ascii?Q?rXtt18y5B3yDdxjTAHtd8NQiZd0Rw82mS/6FH1+m0+68jK2bm0AnRzrddp0s?=
 =?us-ascii?Q?MwnPlgnHBvgw+be1DxgdkyBYvVVUlOVutMjpOgl1+pNMPMgPC50v+DJTLa9E?=
 =?us-ascii?Q?W4uDWJe+7Jlw1FE5ezMnVJzYFnij5hgoHwWSE9P1dSZ1zRDPURz1E7Zd7w1S?=
 =?us-ascii?Q?SiPx+AXp3sbzKWHLT/LWW7SPMknHvo+rXhhUdc7vzvIhYHi6aGs1FZhY+Yie?=
 =?us-ascii?Q?dAWCgZoFs7QYvGjCrbGljD6k721ntlYO2ERPV7cvF2ILId/uoSX5GbDKugOO?=
 =?us-ascii?Q?Fp1KSMGUM4EzUgd08CQ9hnAQkqWoLH1ewLcbk4hIj4YJhY1KVV2mNavzczb8?=
 =?us-ascii?Q?TyDdgA4fApu9IoVu7R5ROqVpQIfBvql2NeJKZAlNLvBgFbSl7KdzNC4/8d6q?=
 =?us-ascii?Q?w3V1JGQ51xJqnUHAi6BrX4r9?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zfyscjU6YXBdnqxAfM29j1JrA4jl3yWQiovmQYlJA8cbwC60AkKztqo1JcqR?=
 =?us-ascii?Q?0I41MU2rJx3K3Ep8LVRhZhCxNV4uAxb4yCjGD7S9/FGY7svMkkI1KHZZ8A5r?=
 =?us-ascii?Q?ayIYvO4Wfq77L9aBQFWWn3rqXICzF9pB28TBiZfHglYG9cZjsVIVAXt16huy?=
 =?us-ascii?Q?cc+oh7MqiHNaVLMlDLJDk/sGMJ9tAdbrk9pExCKAPDTzMlLrQm+g1ST8fZxG?=
 =?us-ascii?Q?Te3MZ9Oa2OP4qBUCEnWoDCrGM07Z96V1RrY9RQqO+KVCK/m/Ubqrt1jljT3C?=
 =?us-ascii?Q?8+keVJnqbA1OCe/WGaHxTpdxQyCojkDXOW6/8UZaDfonoRvIG8//mMSI/QTJ?=
 =?us-ascii?Q?MNEJVZPu+Pj28C6g/QAgcsIHHVadTJIfbAYEymUK8GvKLnIDEP5QnTQppzag?=
 =?us-ascii?Q?fbd2VFRRZFkdARDxCylZ7v6GA3W8sRwNRorUVEsyCGsEijXz1G4Fgo4uKBhE?=
 =?us-ascii?Q?j58KLED1bNVXi6QWPrxO024z6GK4SeR7E1jmFXmTEUf0mbbNCDdPZCVRIPlv?=
 =?us-ascii?Q?XYcKiGBUqOoHBfdQOOw3B07AY7CgrCzveAYGeNQUblHeMvPlFxRYYU1PhVoO?=
 =?us-ascii?Q?jj6K2gb0Vk6hDu4qdTA6vwCE0GfYw2e6Sa1Mxmy5+iJKMTxIMxrMwOBlpJZC?=
 =?us-ascii?Q?gppMRLaHNNjuZho1moPX/1ZA0HANjM67A3rTEiiON8wId/b3Wu45Dq/8P23X?=
 =?us-ascii?Q?S7y5lq+IWNxzQbvz/j6zUb1w2zakY/c+1hnpKxf9M9tDkl2NTY8dzg4qRFtU?=
 =?us-ascii?Q?Zpwmuw3sWRWlh51ffR9QFzqOGgu65DV1eiBUIxg5LpNUHdOxobDIQo1CjYkE?=
 =?us-ascii?Q?Kn82iwbOTNKhmotrVYruYrq0f8+S32GvsWOCbPI5nTvGEDwsbBBu3m9SvdyC?=
 =?us-ascii?Q?MAHtCPlCbqCFKaaHHJJToLQVfJkVso3bleNjVB7ulSzKJ83QZ4issqgorbTh?=
 =?us-ascii?Q?EVc0xDDuKLq6WbM+rG+Kai9uWL8QPXpPaC2BTeuL7OBmoSd0ZGRwRtqHoQUt?=
 =?us-ascii?Q?N8IIjZvyIXe31eOZsJmOxn5ItGlYuELMzC0nNRM5Yg1FLpC82gh7JjqgXWDI?=
 =?us-ascii?Q?qouEEdHefSFnfqqRIrh0y0EUdyl4ZtFUdvAEyhA3r2irClbjhUdlLAsxarZt?=
 =?us-ascii?Q?ajXwxjF/HQu0yXHAQuSE9wJIJb2DPip9RlYCVINy2q+i6wE4jeQwR1Z/NBEx?=
 =?us-ascii?Q?LM46rK+II8Dn5ujhExsBxpLNulGLo3wemWdOfBqOSuYckD5Umn8ju7U1hefu?=
 =?us-ascii?Q?CckJxx4cABtkYyJYeaFrPj1cLYcy1jzSfuU5iDgGoJ1V2yweciEeBde0tDNE?=
 =?us-ascii?Q?alnXvIgxYcHfJxPhIWkExUOoic8b87EvRW8nCMhnPVfqkDhtF2rvlN4R5RRA?=
 =?us-ascii?Q?L+SR2dN2SrTNzXB8WEs4xsr0NOAdmF7orvdjUHLzoOzUy5aPuAAGGjod/lWO?=
 =?us-ascii?Q?RljearjKreICUiyRDwyJ4Im5afyliugm3DSWyIg8NL5DwJwN+H/AWTpdMgF6?=
 =?us-ascii?Q?bPqSSup5+vAtzA6YzmlbDJrET/vA25Nz81/YsJOapDh0lwcblYx4HvzASW4l?=
 =?us-ascii?Q?+HqYGPA/gDxj5Gf3g+8pnEoHe2BCO+K5tJ44Q5XF?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 828f4a30-1653-464b-23ae-08dc863f1eb6
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 15:41:23.8139 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PlUqTwU0LDkB8gihUSvIpqyBkcSoa5knXIcFKVs5ht25Du9TJQIAxT8N/Earh/C3ZgtKaNVedyARLM4Eah6+0w==
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

On Tue, Jun 04, 2024 at 06:25:34PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PFIT_PGM_RATIOS register macro.
> 

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
>  drivers/gpu/drm/i915/display/intel_overlay.c | 5 +++--
>  drivers/gpu/drm/i915/i915_reg.h              | 2 +-
>  3 files changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 49672694293f..1e2ddae5ba94 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1864,7 +1864,7 @@ static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
>  		    intel_de_read(dev_priv, PFIT_CONTROL(dev_priv)) & PFIT_ENABLE);
>  	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
>  
> -	intel_de_write(dev_priv, PFIT_PGM_RATIOS,
> +	intel_de_write(dev_priv, PFIT_PGM_RATIOS(dev_priv),
>  		       crtc_state->gmch_pfit.pgm_ratios);
>  	intel_de_write(dev_priv, PFIT_CONTROL(dev_priv),
>  		       crtc_state->gmch_pfit.control);
> @@ -2990,7 +2990,7 @@ static void i9xx_get_pfit_config(struct intel_crtc_state *crtc_state)
>  
>  	crtc_state->gmch_pfit.control = tmp;
>  	crtc_state->gmch_pfit.pgm_ratios =
> -		intel_de_read(dev_priv, PFIT_PGM_RATIOS);
> +		intel_de_read(dev_priv, PFIT_PGM_RATIOS(dev_priv));
>  }
>  
>  static enum intel_output_format
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
> index e41881f08d1f..117120ce5a1d 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> @@ -943,7 +943,7 @@ static void update_pfit_vscale_ratio(struct intel_overlay *overlay)
>  	 * line with the intel documentation for the i965
>  	 */
>  	if (DISPLAY_VER(dev_priv) >= 4) {
> -		u32 tmp = intel_de_read(dev_priv, PFIT_PGM_RATIOS);
> +		u32 tmp = intel_de_read(dev_priv, PFIT_PGM_RATIOS(dev_priv));
>  
>  		/* on i965 use the PGM reg to read out the autoscaler values */
>  		ratio = REG_FIELD_GET(PFIT_VERT_SCALE_MASK_965, tmp);
> @@ -953,7 +953,8 @@ static void update_pfit_vscale_ratio(struct intel_overlay *overlay)
>  		if (intel_de_read(dev_priv, PFIT_CONTROL(dev_priv)) & PFIT_VERT_AUTO_SCALE)
>  			tmp = intel_de_read(dev_priv, PFIT_AUTO_RATIOS);
>  		else
> -			tmp = intel_de_read(dev_priv, PFIT_PGM_RATIOS);
> +			tmp = intel_de_read(dev_priv,
> +					    PFIT_PGM_RATIOS(dev_priv));
>  
>  		ratio = REG_FIELD_GET(PFIT_VERT_SCALE_MASK, tmp);
>  	}
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index b0dbe6113bbc..094e693c40bf 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1609,7 +1609,7 @@
>  #define   PFIT_HORIZ_AUTO_SCALE		REG_BIT(5) /* pre-965 */
>  #define   PFIT_PANEL_8TO6_DITHER_ENABLE	REG_BIT(3) /* pre-965 */
>  
> -#define PFIT_PGM_RATIOS _MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61234)
> +#define PFIT_PGM_RATIOS(dev_priv) _MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61234)
>  #define   PFIT_VERT_SCALE_MASK		REG_GENMASK(31, 20) /* pre-965 */
>  #define   PFIT_VERT_SCALE(x)		REG_FIELD_PREP(PFIT_VERT_SCALE_MASK, (x))
>  #define   PFIT_HORIZ_SCALE_MASK		REG_GENMASK(15, 4) /* pre-965 */
> -- 
> 2.39.2
> 
