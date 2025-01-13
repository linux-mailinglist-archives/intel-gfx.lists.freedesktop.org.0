Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D04A0BE38
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 18:01:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D69110E73F;
	Mon, 13 Jan 2025 17:01:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F6HVxA9T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4264610E73F;
 Mon, 13 Jan 2025 17:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736787701; x=1768323701;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=xQ6OLcf/5uSgEDJ/KRTApxt/WnbPyUWb5D51RtuiI1k=;
 b=F6HVxA9TY4HvcDzpf4ZoR9Gm2uggKn7YHcP041G6KmuYCN1uK+G4a5pC
 7ziDsyNPNTkUFrSu5233uQaMVrnllr9Zhqx5HNv3TKJwi/DH1O1w8W5/r
 5a+XXpD8eiolSCiaf+Xc484pGjCGTXv38ee1teiZqXLcA6fMmp4lTrXfa
 cxY3EkBqrCSY3yhfNYRAjlh6guRXu9DY4umE5JtkapT3dyD3UD499sVeq
 +MqjTZF7pP/9sKa9zDwOHkxtZy5ot87z63GuIx73uuqwfRsgu2oGhc3ve
 PD2/aa3MH2CvrFiAYNq6sb2G0DSevSc6YgeCqsU05HOn+rs7u+XF5ndGB g==;
X-CSE-ConnectionGUID: xE02kfzAT2S5byDRdma5GA==
X-CSE-MsgGUID: PtfU75dLSDeVFonzR268Ig==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="37224906"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="37224906"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 09:01:40 -0800
X-CSE-ConnectionGUID: BqEN+f9tRTOjqsbfTSH3FQ==
X-CSE-MsgGUID: ChfUZfgFS5KHQcYzpKAiPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="104621476"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jan 2025 09:01:40 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 13 Jan 2025 09:01:33 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 13 Jan 2025 09:01:33 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 13 Jan 2025 09:01:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ddog0B0qolYAxgeaplgDhSdfbs8nN1vgPyluymuoCYmIAeIw+6hS0MxJk1RKo98iFG3bVyddHGrjLf17P+Om5FSSOHkEDiOpNC0ijkduB0Z98v5qe3KThqf9aqK9iqMAmo5N9oyShJAD33fZLpCmqEZO4SSXrX0A+EM/CygJlwlqsLLdmjF9D4t5/x4k2eTyQN5/61HSYisBBXVr5FtpU8lDZfeTBYGnWwtK+AF7QZeuKKLUkolJq8GGv8Q2J8HSaLhIB0FmXDMTmkkJfHUqxLy4LeJ763V/4nyOO6l/dZgJFzkqaWxpPYJMP8SRDV4WY6bcIiBVTJ1+bPJAoTvbWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nPtp/DNPtLTWCpqovcrsjXynXmgK6M3nCgTQ1Z3GyxY=;
 b=pG1LysFnTi8WiOulte2RsK3q7l1w+gUa+WisaUw8Orq1t0HjcHhBltzTnc4xjKlzsR0iX9fItIlmZSzp8W8VVMJQSp5hWuCqbG4uDZ1ySqSs+59N0pgjiZEDGGlx94U7V8We8BAImjYBuCH8urvfT4NRjHSW0mPYzreYHBtkUuMboscjVNYkN/8OOFyzquZnsOrvQTl0Jd2/WL571XVDy3Pe4GgGNcYMysM6ipCXKhoz+3CFK6lwC3vlyxmrMxVgB6EzPbAr5ksnvff28ZYY4OV7hLd0E70RkK3pLSoX30R2qslP48nZS6PbEle6thX+TWGBA/vajYhLp2TBTnq5SA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11)
 by PH0PR11MB7470.namprd11.prod.outlook.com (2603:10b6:510:288::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.13; Mon, 13 Jan
 2025 17:01:24 +0000
Received: from SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72]) by SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72%5]) with mapi id 15.20.8335.011; Mon, 13 Jan 2025
 17:01:23 +0000
Date: Mon, 13 Jan 2025 12:01:20 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 3/3] drm/i915/audio: rename function prefixes from i915
 to intel
Message-ID: <Z4VG4PKpxi9Xxcg-@intel.com>
References: <cover.1736345025.git.jani.nikula@intel.com>
 <5e67f6fc5a441a9512d7855d86ce7868cc992212.1736345025.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <5e67f6fc5a441a9512d7855d86ce7868cc992212.1736345025.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4P222CA0030.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::35) To SN7PR11MB8282.namprd11.prod.outlook.com
 (2603:10b6:806:269::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB8282:EE_|PH0PR11MB7470:EE_
X-MS-Office365-Filtering-Correlation-Id: 62f4115d-716c-468f-ad21-08dd33f3e908
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?OmEQeaTHHqQv+DKCLvERgUPHJSNjgfpYedgepivvBFLPok6zoGpLj/PkB6iH?=
 =?us-ascii?Q?flp08im5mJGTu0ik1GLnJGYIooljUtVcqrbTPjjz6A549gAQRkGKbofiNpMI?=
 =?us-ascii?Q?FfE10KUAHYSJ92fjhUyunSXgi08GnVslcvG/jIXIJYS8SW1Wy0ghdz1llCJ2?=
 =?us-ascii?Q?I3rRTGB9b/vC6yaPUkWdspB153LjrkVg3FaWEcBp7PV3WewssKQyoebNSPAf?=
 =?us-ascii?Q?x6/bnj6sv6c1nJi6tSWpX0Ro1ADwFeiT/r1GkDWje/wOqzNPUEI8bBeUd62M?=
 =?us-ascii?Q?KhhYW83YWoINgVyoFwZwXeHKoCCbUrzwVuMUIolZdiIMWSysAYMS4/gcb3/c?=
 =?us-ascii?Q?E5M5BYTUGi/g/veRIfDuYKWkJ0C9km+cM4R9Eq8pqdjDHs9zy1tTRP9za8Lj?=
 =?us-ascii?Q?aGVUt1Tm0lBwOF2PWMR/QY3vFrv1F8xafswhpy4H9loEiX5TyXU7ajsDXWYd?=
 =?us-ascii?Q?CsfFIuVK1PpE9ZK6jH9GhooEItRYFuNmrD72VGvIOxMTEJQqStn44U/lHkrj?=
 =?us-ascii?Q?6CnNoukxAW/QMVArHKjNK5RO75E/Q3o7L4lmGsUiXM0mBa167WrApBBynUI9?=
 =?us-ascii?Q?S572fa8FkkoqeS4A2ZL4LdQVQskI/YsjBTENHQ5Tf0XeO/b9CjaZuGE1eDLo?=
 =?us-ascii?Q?xTj2KgIhuNNyzSnngHOAhHNztvu3Y+yCsnu+Ntmnc3kYb5vy5YLggYEd9RW9?=
 =?us-ascii?Q?nXhEbuL35lxDjlaGGBloXUFp545f33JJ4L+TFJmufdXFMpYtY1ztfCYS+8uu?=
 =?us-ascii?Q?QN9IBJ4fOJzl34+jYO8JzL73z+FYL5hC3Elswsy1ov98gDZDtKUpmciRFvg6?=
 =?us-ascii?Q?HHpV6LC+7JY0SZ3Xe1pEYsU+IwldJsfCwBYFDvTOoyleUg7Cqslo9FvrjCqX?=
 =?us-ascii?Q?GS7gMn3TazZoYmYKr1GG/6sU+JrD9VoVifgsnBS1ACzHFOs5kQTd+pZT+4VT?=
 =?us-ascii?Q?YvkN4GRA/txziNRKVJmPHZFpFDl2DYMu7nVuhaghKBkOO2Bl0LIKoejCtuuI?=
 =?us-ascii?Q?4P71x8LH9ePsLu56e9K5A7eTy62hV3mumZyHKopzALtK0bxg6xycY5U2qVaF?=
 =?us-ascii?Q?7B7hCa2zD21pN7ODtrzcukvCoxCcctMcTLt3p8yol8USt/vnAAa34It77pgW?=
 =?us-ascii?Q?pf1tveo+qhBWq/TFP6sKV4y1YG1ihcUd3VZhmpyz+kfjUoQ+w3gABvsnK//h?=
 =?us-ascii?Q?OkcnnGmXxcDh9qM8kV+hYno3mF3Iv+xpZT2d5HPiR5T2IquPjnTVobWoAhug?=
 =?us-ascii?Q?H3wYChTZI9poTgOCjBZx0HIXRQ1B3NBIC7AmcrqLGjOoIrHhf2y/PQulk4ud?=
 =?us-ascii?Q?pouuSRxVzvevzeQ0QhBnbED/9ywt0P9XJ6AenQwm0in69wcqgna4DMMx6FCF?=
 =?us-ascii?Q?f+793z7vwpjS8y3mURD+zYqQHato?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cDZivrOWYL/V0DciiDPD2fT3tm5evLSjtR+HRPCRG7jKqlWIjWPj6JNz3WkZ?=
 =?us-ascii?Q?bUuUsFeZE1EXSI0wOHxu/WR3z7r7HCgJ/zaLpVOuQh1qx7PTapg3w7wH9t/S?=
 =?us-ascii?Q?opY8HwqQk4w4t5o7X1atVy41f6QRJi4OB3ksik+6Efb1VJQsyWvrREdW2aPQ?=
 =?us-ascii?Q?eZvgXbfiXjGI5I+TnLOMcvmfjn8NLVhDFGE6pxqzzVOf4NkgVU5+MfvsRy/N?=
 =?us-ascii?Q?5mo1oFMP8u+6vn8PKJlLYU+2+07Rka4HR5GOnxw7kx5yd4lsxr2cYq7LcisB?=
 =?us-ascii?Q?I0q0GMpIkIkOPcgve9GrkTQ0HhZ4i3QkmXMsCJnKeB19oo7d3OsiJKW0lB/J?=
 =?us-ascii?Q?175fZh8w6A17ASELitIUOLG2E+X4eQXOzpKbgSkqJFGGZqo/UQ1uSEaS5vSz?=
 =?us-ascii?Q?ZNQH3j3BwoqJMPXK+LjnHSXJWRxjnPRy3fdN4NJwjZqyXvSAS7bQWm8WWxLd?=
 =?us-ascii?Q?aGd3VaAtR83f3O4EuKyBDjl8/WeYNm9JdXSMVGoSYWfC0bQy29XYoRQkg16m?=
 =?us-ascii?Q?Os4Qt8rDxsL83TP7K8yNJKX/qZJp5yg4Xx2qmXd742AGQN2gl9n2y1l3jPop?=
 =?us-ascii?Q?1SBeyHACotrJCVBMk3Wm3QlgJz1KZAf8x0abkz14XChzezw1paESbygKCHpr?=
 =?us-ascii?Q?veNkDPRHJrkarXJws/IlPg+ncrg4F25CD8IIyjxPqowhWoYzR3ajCl/yrqnZ?=
 =?us-ascii?Q?U4aI4LOxuv0m/uGXjYMfAKFSja7zbYWM6UihNuSgcInzDBNSlxWMlLjolfuV?=
 =?us-ascii?Q?jv3YPXxa0Hm8ycF+o6zFz8R/p3mPsp90NgeaqD8e4vWv945CltB29IVKtDKF?=
 =?us-ascii?Q?ahcviUez/gLW3KVoGzyLUMr+LIkJiYGfpxavqqkf4+rC6nJ9iU5khiU1FmUM?=
 =?us-ascii?Q?61jKvU87Jh/bJi+579b3aBHDDoYwMlGlWvZkeY/gZ93YnSBsAn9oET7LjKYU?=
 =?us-ascii?Q?oGn+GWBHZ/HOBtvTtK6hqpZprg+EntcaG7CBUqzszIYFyMgNN6VhNj/9AJiJ?=
 =?us-ascii?Q?qhLblq1egtjnkq5TL1hJRLbWWD7TXoCPYJE/7Uvt4tZZBTWuL3hDXYg9So8j?=
 =?us-ascii?Q?xEHoJ5L//4ZJ/Tc5pzsTp2SIg5PBcim2eYUjLn9jI51sji1yq/RLRtwr9a9H?=
 =?us-ascii?Q?oI5p7qzoxJl0SsfNGj1TCwKH5/TjkOhTgvN4nelcVFWbS0Hmmlh2zzqMwLNI?=
 =?us-ascii?Q?AbUiIF1kOpRnI0Rwvsj7lzfA46jp1jRyOQzdID42z4N6gWbMm2AbikjJ1IWN?=
 =?us-ascii?Q?9GAZiePBi74KjQEEWcfcN4wMGdNicYRVGheENqmSqFVk67AfY++uQbkCmFxs?=
 =?us-ascii?Q?vm2214lUd6CIrvxbNXew11bZhtQAbqM9osfQnfE/MM78Zo+mbvBnj/DTu+9R?=
 =?us-ascii?Q?bTgCzZQ6yyUpSov/g7a9q7RdCq0sBNqjW7ePnJqaDVV7hSpE1auV4isCTkiL?=
 =?us-ascii?Q?ysZk75GxDDTaGAVqGs6MRMIC5ggg7SVxNRZw6MZqbH2NMH/f3K9TxF4lTjD2?=
 =?us-ascii?Q?BECkhqC0+pNHbSCx+7iZxRDn4UuxxYzLbGNYf4SJc+H1iGFx62PorPlQryNy?=
 =?us-ascii?Q?NvaeQI8hh1yOrJiRj6aV2C682qTZBS7HlDG/O1Oumvv8I0sgdp0+Ilnktv4n?=
 =?us-ascii?Q?Uw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 62f4115d-716c-468f-ad21-08dd33f3e908
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2025 17:01:23.9142 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hyZ0OYt40Rcc6cqVjqfnKJNKCKJ71XFX6SR4Nqvdcf3/0AYi7SDTqrHrEzmeIYGq0jJ3PoCIozBZ+2eDMLE5Qg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7470
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

On Wed, Jan 08, 2025 at 04:04:15PM +0200, Jani Nikula wrote:
> The intel prefix is more accurate for display stuff. Rename.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 82 +++++++++++-----------
>  1 file changed, 41 insertions(+), 41 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 241e5d3904dc..4b1f46815ad5 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -1035,7 +1035,7 @@ int intel_audio_min_cdclk(const struct intel_crtc_state *crtc_state)
>  	return min_cdclk;
>  }
>  
> -static unsigned long i915_audio_component_get_power(struct device *kdev)
> +static unsigned long intel_audio_component_get_power(struct device *kdev)
>  {
>  	struct intel_display *display = to_intel_display(kdev);
>  	struct drm_i915_private *i915 = to_i915(display->drm);
> @@ -1067,8 +1067,8 @@ static unsigned long i915_audio_component_get_power(struct device *kdev)
>  	return (unsigned long)wakeref;
>  }
>  
> -static void i915_audio_component_put_power(struct device *kdev,
> -					   unsigned long cookie)
> +static void intel_audio_component_put_power(struct device *kdev,
> +					    unsigned long cookie)
>  {
>  	struct intel_display *display = to_intel_display(kdev);
>  	struct drm_i915_private *i915 = to_i915(display->drm);
> @@ -1082,8 +1082,8 @@ static void i915_audio_component_put_power(struct device *kdev,
>  	intel_display_power_put(i915, POWER_DOMAIN_AUDIO_PLAYBACK, wakeref);
>  }
>  
> -static void i915_audio_component_codec_wake_override(struct device *kdev,
> -						     bool enable)
> +static void intel_audio_component_codec_wake_override(struct device *kdev,
> +						      bool enable)
>  {
>  	struct intel_display *display = to_intel_display(kdev);
>  	unsigned long cookie;
> @@ -1091,7 +1091,7 @@ static void i915_audio_component_codec_wake_override(struct device *kdev,
>  	if (DISPLAY_VER(display) < 9)
>  		return;
>  
> -	cookie = i915_audio_component_get_power(kdev);
> +	cookie = intel_audio_component_get_power(kdev);
>  
>  	/*
>  	 * Enable/disable generating the codec wake signal, overriding the
> @@ -1107,11 +1107,11 @@ static void i915_audio_component_codec_wake_override(struct device *kdev,
>  		usleep_range(1000, 1500);
>  	}
>  
> -	i915_audio_component_put_power(kdev, cookie);
> +	intel_audio_component_put_power(kdev, cookie);
>  }
>  
>  /* Get CDCLK in kHz  */
> -static int i915_audio_component_get_cdclk_freq(struct device *kdev)
> +static int intel_audio_component_get_cdclk_freq(struct device *kdev)
>  {
>  	struct intel_display *display = to_intel_display(kdev);
>  
> @@ -1169,8 +1169,8 @@ static struct intel_audio_state *find_audio_state(struct intel_display *display,
>  	return NULL;
>  }
>  
> -static int i915_audio_component_sync_audio_rate(struct device *kdev, int port,
> -						int cpu_transcoder, int rate)
> +static int intel_audio_component_sync_audio_rate(struct device *kdev, int port,
> +						 int cpu_transcoder, int rate)
>  {
>  	struct intel_display *display = to_intel_display(kdev);
>  	struct i915_audio_component *acomp = display->audio.component;
> @@ -1183,7 +1183,7 @@ static int i915_audio_component_sync_audio_rate(struct device *kdev, int port,
>  	if (!HAS_DDI(display))
>  		return 0;
>  
> -	cookie = i915_audio_component_get_power(kdev);
> +	cookie = intel_audio_component_get_power(kdev);
>  	mutex_lock(&display->audio.mutex);
>  
>  	audio_state = find_audio_state(display, port, cpu_transcoder);
> @@ -1207,13 +1207,13 @@ static int i915_audio_component_sync_audio_rate(struct device *kdev, int port,
>  
>   unlock:
>  	mutex_unlock(&display->audio.mutex);
> -	i915_audio_component_put_power(kdev, cookie);
> +	intel_audio_component_put_power(kdev, cookie);
>  	return err;
>  }
>  
> -static int i915_audio_component_get_eld(struct device *kdev, int port,
> -					int cpu_transcoder, bool *enabled,
> -					unsigned char *buf, int max_bytes)
> +static int intel_audio_component_get_eld(struct device *kdev, int port,
> +					 int cpu_transcoder, bool *enabled,
> +					 unsigned char *buf, int max_bytes)
>  {
>  	struct intel_display *display = to_intel_display(kdev);
>  	const struct intel_audio_state *audio_state;
> @@ -1241,18 +1241,18 @@ static int i915_audio_component_get_eld(struct device *kdev, int port,
>  	return ret;
>  }
>  
> -static const struct drm_audio_component_ops i915_audio_component_ops = {
> -	.owner		= THIS_MODULE,
> -	.get_power	= i915_audio_component_get_power,
> -	.put_power	= i915_audio_component_put_power,
> -	.codec_wake_override = i915_audio_component_codec_wake_override,
> -	.get_cdclk_freq	= i915_audio_component_get_cdclk_freq,
> -	.sync_audio_rate = i915_audio_component_sync_audio_rate,
> -	.get_eld	= i915_audio_component_get_eld,
> +static const struct drm_audio_component_ops intel_audio_component_ops = {
> +	.owner = THIS_MODULE,
> +	.get_power = intel_audio_component_get_power,
> +	.put_power = intel_audio_component_put_power,
> +	.codec_wake_override = intel_audio_component_codec_wake_override,
> +	.get_cdclk_freq = intel_audio_component_get_cdclk_freq,
> +	.sync_audio_rate = intel_audio_component_sync_audio_rate,
> +	.get_eld = intel_audio_component_get_eld,
>  };
>  
> -static int i915_audio_component_bind(struct device *drv_kdev,
> -				     struct device *hda_kdev, void *data)
> +static int intel_audio_component_bind(struct device *drv_kdev,
> +				      struct device *hda_kdev, void *data)
>  {
>  	struct intel_display *display = to_intel_display(drv_kdev);
>  	struct i915_audio_component *acomp = data;
> @@ -1267,7 +1267,7 @@ static int i915_audio_component_bind(struct device *drv_kdev,
>  		return -ENOMEM;
>  
>  	drm_modeset_lock_all(display->drm);
> -	acomp->base.ops = &i915_audio_component_ops;
> +	acomp->base.ops = &intel_audio_component_ops;
>  	acomp->base.dev = drv_kdev;
>  	BUILD_BUG_ON(MAX_PORTS != I915_MAX_PORTS);
>  	for (i = 0; i < ARRAY_SIZE(acomp->aud_sample_rate); i++)
> @@ -1278,8 +1278,8 @@ static int i915_audio_component_bind(struct device *drv_kdev,
>  	return 0;
>  }
>  
> -static void i915_audio_component_unbind(struct device *drv_kdev,
> -					struct device *hda_kdev, void *data)
> +static void intel_audio_component_unbind(struct device *drv_kdev,
> +					 struct device *hda_kdev, void *data)
>  {
>  	struct intel_display *display = to_intel_display(drv_kdev);
>  	struct i915_audio_component *acomp = data;
> @@ -1298,9 +1298,9 @@ static void i915_audio_component_unbind(struct device *drv_kdev,
>  			display->audio.power_refcount);
>  }
>  
> -static const struct component_ops i915_audio_component_bind_ops = {
> -	.bind	= i915_audio_component_bind,
> -	.unbind	= i915_audio_component_unbind,
> +static const struct component_ops intel_audio_component_bind_ops = {
> +	.bind = intel_audio_component_bind,
> +	.unbind = intel_audio_component_unbind,
>  };
>  
>  #define AUD_FREQ_TMODE_SHIFT	14
> @@ -1313,7 +1313,7 @@ static const struct component_ops i915_audio_component_bind_ops = {
>  #define AUD_FREQ_TGL_BROKEN     (AUD_FREQ_8T | AUD_FREQ_PULLCLKS(2) | AUD_FREQ_BCLK_96M)
>  
>  /**
> - * i915_audio_component_init - initialize and register the audio component
> + * intel_audio_component_init - initialize and register the audio component
>   * @display: display device
>   *
>   * This will register with the component framework a child component which
> @@ -1328,7 +1328,7 @@ static const struct component_ops i915_audio_component_bind_ops = {
>   * We ignore any error during registration and continue with reduced
>   * functionality (i.e. without HDMI audio).
>   */
> -static void i915_audio_component_init(struct intel_display *display)
> +static void intel_audio_component_init(struct intel_display *display)
>  {
>  	u32 aud_freq, aud_freq_init;
>  
> @@ -1356,12 +1356,12 @@ static void i915_audio_component_init(struct intel_display *display)
>  	intel_audio_cdclk_change_post(display);
>  }
>  
> -static void i915_audio_component_register(struct intel_display *display)
> +static void intel_audio_component_register(struct intel_display *display)
>  {
>  	int ret;
>  
>  	ret = component_add_typed(display->drm->dev,
> -				  &i915_audio_component_bind_ops,
> +				  &intel_audio_component_bind_ops,
>  				  I915_COMPONENT_AUDIO);
>  	if (ret < 0) {
>  		drm_err(display->drm,
> @@ -1374,18 +1374,18 @@ static void i915_audio_component_register(struct intel_display *display)
>  }
>  
>  /**
> - * i915_audio_component_cleanup - deregister the audio component
> + * intel_audio_component_cleanup - deregister the audio component
>   * @display: display device
>   *
>   * Deregisters the audio component, breaking any existing binding to the
>   * corresponding snd_hda_intel driver's master component.
>   */
> -static void i915_audio_component_cleanup(struct intel_display *display)
> +static void intel_audio_component_cleanup(struct intel_display *display)
>  {
>  	if (!display->audio.component_registered)
>  		return;
>  
> -	component_del(display->drm->dev, &i915_audio_component_bind_ops);
> +	component_del(display->drm->dev, &intel_audio_component_bind_ops);
>  	display->audio.component_registered = false;
>  }
>  
> @@ -1398,13 +1398,13 @@ static void i915_audio_component_cleanup(struct intel_display *display)
>  void intel_audio_init(struct intel_display *display)
>  {
>  	if (intel_lpe_audio_init(display) < 0)
> -		i915_audio_component_init(display);
> +		intel_audio_component_init(display);
>  }
>  
>  void intel_audio_register(struct intel_display *display)
>  {
>  	if (!display->audio.lpe.platdev)
> -		i915_audio_component_register(display);
> +		intel_audio_component_register(display);
>  }
>  
>  /**
> @@ -1416,5 +1416,5 @@ void intel_audio_deinit(struct intel_display *display)
>  	if (display->audio.lpe.platdev)
>  		intel_lpe_audio_teardown(display);
>  	else
> -		i915_audio_component_cleanup(display);
> +		intel_audio_component_cleanup(display);
>  }
> -- 
> 2.39.5
> 
