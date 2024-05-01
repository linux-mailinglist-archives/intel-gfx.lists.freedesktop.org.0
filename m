Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A79098B8444
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2024 04:18:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CBDE112FAD;
	Wed,  1 May 2024 02:18:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VRcQ6POw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DE26112FEF
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2024 02:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714529934; x=1746065934;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ROhwNc4znv74gtIZbacsluBRfyMu75jubS2tr0whpik=;
 b=VRcQ6POwmFz4R8mo8DzorP/lNhy63K1OjTLX0A67k0U4rEffhwvWzzwt
 /7Vcy5w7hLwsgY9yp3qHSOk5Em2VRNFFv48VjTyTq7JEqacORx7SjgzmW
 ckixT63MidP36oZ7suGsC+5jdsysM+e//ed3coxBdguVY++W7KmsOQhMJ
 QgLtjCNXZ/Zs4MvLC200fFOy1k8rTecZJax4Mx33uPsa+15aQvPzehXXy
 64a45gooD7uUDdZFSL6yv+gN+raCy409AFPEi5o21W5Ai6uw5RO2GPrfR
 hWD5aTyZQ2grvYz8q6PuFWZc3ZIsi5E4kiAaurOoDzjW/ehu/1psF3awm g==;
X-CSE-ConnectionGUID: Z43QOrxLT/aTzWYCxXM/6Q==
X-CSE-MsgGUID: otmaLaG1SU6gIienHz9YcQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="10483703"
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="10483703"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 19:18:54 -0700
X-CSE-ConnectionGUID: 2PDjiBsPRayKdoZvMDofMQ==
X-CSE-MsgGUID: Rbv9agVSRSi8rTBze0nt7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="31485783"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Apr 2024 19:18:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:18:53 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Apr 2024 19:18:53 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Apr 2024 19:18:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VohYAkSeIVVRlthHBhwzi5EO6zWcvowp49DhO0jvfr4eDtgu0Q58PTZoAPaCLjFJcxCc2qMFvjyMlct0TvBVVUIpaSDS1UrmbKBm9xOp/x1E+L/dUvhRS41PPL34zu/gd7NyI4Uc+RmPHVDBeJLkP3onop3rsaUcAB56jZfilUcZmgaCh9H1j8RWJZxqzKB/qyxT4GNHzgQFMPYfSr6rGq2Np+r1rI4yAgWS4aEL+rv1ZoB4M1urMNk40yDPwxJgWd/dpLcQjNTihyJYIcxzx3+FaIkb8Ks+FsHTeE5xLQR5P541EjgPLqEUewgy632DzKBzdmxUFl9QyyweiB5Byg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mGHxP7pCOrALRQe72Jzm6qcc79WegEU3iX0k1e4XIhU=;
 b=F30r+PFrq5ftaudbLzYN2FtjGpvZ0czzzbALMDl+4DXTb6L+6bEnc4AG96G/c+4Z4/Eq3IuOPziYkIKVcUQ4rE/iGaEdFnO3fOChHee7vvQo4iLz1nYcq6BH+FU7t64UmveuIe93RyQFcVcPPGeaj5VWwgsRKMdI4GYneQMn9fyMK+U/QIQYUm/4wxl0jdJLN61X213F0pB1fRMp/xcogQ8eGJHYx4WEBYbfAhJqMwu5zzAuN5W351PtB+tkaNWMpV3GbhP38ULlhQNaLPptMjHqNUhANNGc3XZPeTB+BF4raOPA1d3U/SRcjpWdUaKCgg4MqWyMvnulWrxLhDd6Gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA3PR11MB7653.namprd11.prod.outlook.com (2603:10b6:806:306::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Wed, 1 May
 2024 02:18:51 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Wed, 1 May 2024
 02:18:51 +0000
Date: Tue, 30 Apr 2024 22:18:47 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jouni.hogander@intel.com>
Subject: Re: [PATCH 06/19] drm/i915: pass dev_priv explicitly to
 EDP_PSR_AUX_DATA
Message-ID: <ZjGmhypKudUzs91e@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
 <4e3dc15b170c2b64168e46ebf1802d63df34b4a2.1714471597.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <4e3dc15b170c2b64168e46ebf1802d63df34b4a2.1714471597.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR03CA0007.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::20) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA3PR11MB7653:EE_
X-MS-Office365-Filtering-Correlation-Id: 26119cc0-d2d6-431b-f938-08dc69850aab
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?SEu4eQC8pbx8OEqvlHH0Cg1SmFUipA7JROeSfhb8J6Nz/GfVJ50clGcq19MD?=
 =?us-ascii?Q?Xd8KYY8EzdLU0geORwvt/RPqrIbAuJoCNx/g7cLQ4OlQtUWsSow4N+gwjsTP?=
 =?us-ascii?Q?nIjz0OmsO2KcUUmr1C/UzBM/9KMgiZxVCU+RqxUiR2tnLtpRdJ/2PUO3AQbv?=
 =?us-ascii?Q?4SE11gfMkS5HELPjhk2MuzTLvqt5gRmetxXFTF0jlDugS3gHyaYZVG/MQFAx?=
 =?us-ascii?Q?bHYHFTdmczNu0D+ZssUB00Kbmv2z0HjdUj1A0vXEHfftDt8jCJhjnI+RANQ6?=
 =?us-ascii?Q?4LDZw8Lw658fhR0eyRepD8kba8Q9U97MXTIPzud8GH5xXpLK6isdZ92Z33GA?=
 =?us-ascii?Q?9SsZr1l7sGG6iB08u+gOC6rgjB720HfAe3eBQaQqwKSFexaFK9eA/xYRUEux?=
 =?us-ascii?Q?T55+B2zlmIMi9Vx1ScbdHDzqYkTTb/WTDnn7+uYT2U58+m6WvxCOP203vCOR?=
 =?us-ascii?Q?w6ZIR04R0zjbmY9h7E6vATg3UCa3XRk3aCHkyJyVUCwnK5SDcN+xEMTpL7bz?=
 =?us-ascii?Q?vRXs7AORR2oDl8UGG5sOzux1KtnngCt7n9SuLvvvUpxAlQFLw4caaZqS/ESX?=
 =?us-ascii?Q?GAx1PBLQo7GD+a79fjWP3rHEjVXixYCYFVFo4uB0mgIPs9/U1sHEOymU56ZV?=
 =?us-ascii?Q?X2UCfrbwRJwCNuL4WbATKmUVREIZzI4FfiNvlW2pwbpgBshX3VhsI/4IQXWu?=
 =?us-ascii?Q?25HWuq4Vt1NVw31o/nP6sYTDs8Uhq50qyFBuuLZjRLGkrdA3sNB5Ivneof4h?=
 =?us-ascii?Q?JfoYavQWQIyqz706lFHwS9C07TDeQUKpYy6sZr5qZd2RSl4Pyit4F+qD6i2s?=
 =?us-ascii?Q?lPWrRNlxYbF3y3xZpfqhTYXJb8dCnpLaDrdUf7vXQ5+ylIsET87IMH5DKMRY?=
 =?us-ascii?Q?sWvPcKDV0ilR3vT6FHiDreVT+ATGEWOUWnd+RrRq+G94nzLXKnkubYm5VdAh?=
 =?us-ascii?Q?0kYxu6V/GCgeFF3jCSEZNbcLlMA8sFgFM5k+mDSE+AGaXz2+mbQq11jR0Lxn?=
 =?us-ascii?Q?LpkfVLpn/SIuRIuBlh/0GFX2fu7hn5m2j6s2RPuFYvnW42iF9YwxZF8Xc43q?=
 =?us-ascii?Q?lUWqkA7ueYxUscoq24dkSZZk4o/JwkUxZbnbhnLudhKg9NKLOzMNs7weORY4?=
 =?us-ascii?Q?ITV9IEKSPQ+FWzdhOVU+OfVCRkKRxSgVKkDUaTHIAVv9uEISjc5aNVHWajjs?=
 =?us-ascii?Q?lF/+ZWwE0o6xr54xGjhJ10dzYOHyBl+dEe5ahZblRPcoL7R9nXHJiE4jiBhQ?=
 =?us-ascii?Q?wITIIBEP+8vOO37GyHpXXTtnx7FlfWSEJhcdByW01w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JYoU7QfSrBkwHmc+9o8tEhQVdhsjeVA/3LfDSLMIniU7Y7C7oCelDn31mh3B?=
 =?us-ascii?Q?CpxFLmqIk0GMKJXKyTr/FC+LoclGrkfgYNANiz5dkvgra6JDSYEX3/HhTXRO?=
 =?us-ascii?Q?5c1dSVEjifpYe2/mil10M3BQpui4WUYfHPiHqeHQhQbcM0Zgr52BatDcCYpD?=
 =?us-ascii?Q?YM60sjjoxt4rqYt+XSpatq1QyYWxeJmvjP9rVs+c06ZdfMq+AUgizd5dyNjo?=
 =?us-ascii?Q?r6m9Ffowc24oWAfMoEJZNaU6XL3b2e9ON/GkOXis79Sn+voan90eDcIEu4ur?=
 =?us-ascii?Q?VOdfEbSxzWe9EHMyq8GV9juf4wAc3eiun9iwUlHpe9XY2A1gA9CcDMNC3sAg?=
 =?us-ascii?Q?UDS/IlL9QIWVXWx1uA60XgDCcJhH0jMlKPQpqIQEGJgyvG68aXc1FgAAEOXy?=
 =?us-ascii?Q?d3ZfZxiX+MO+omgPxLdi3vFHz56VPk5QMNTLESBaoKBNkn9VWkrZrUkS/b+Z?=
 =?us-ascii?Q?rfZ7GbkKMlfFOIZQ807Dm/F/Hv6yF8InPdIzsPXG50E9zCoCvCW48pjTQWA7?=
 =?us-ascii?Q?qHufvkRJ2r3qr+tq3vMG9leVnaFACwyYCK9HjESV/iriwEM7LEs8Vc8HFwtZ?=
 =?us-ascii?Q?iOCrQBxjsoHKUVz6+1HWGeJa1k/0ihymgoLctx01XBYukBWcnrPrlzL7EpoU?=
 =?us-ascii?Q?XpFuAcQ2SXACXtXXToIG6HRNTmgpukzYgZ8wCwlw70Jct9OUZZNb1QG+XO+g?=
 =?us-ascii?Q?aaA372AsSP1enzKZ1MMiBn+YR8qKF75dAGLQefv/+RMUMnoFs8ubiMxbSgoq?=
 =?us-ascii?Q?SLoqMR5IHjcPRiDNXY3ZVv54coa19yJWlxxMeIMf7KHA06/y1T7ZW+VjSkeV?=
 =?us-ascii?Q?zcqDUopqjg/5ewcvdY6OaFARBuLvzwNIV6RRt9HGAfffPOz7Nn2BeB8V1iOT?=
 =?us-ascii?Q?34YZXon5qAW9birm2TS2YEujx9f1lZ5e5VY6YoQdnop1IUX3tVyiZsbw1KAc?=
 =?us-ascii?Q?XNFJn6UqieLiKLXlFPHL6uxs46RRU80FVwdzQGyCxoNRdPPzTREn/nKXYGzB?=
 =?us-ascii?Q?omUiVZThhPz/Ahd9CEVnrwiy0wQ98UPG9+Kq/Y1G9NSexGCstRkQrbb8Iwm1?=
 =?us-ascii?Q?bjBtjL7MvXKGdPQVEH6TCfoJAdVqyT162l4n0wf/Ip6pzDBMta1J1y/Dt3Fn?=
 =?us-ascii?Q?5KFKD1uI+eWgSUDT2EZUGrgDrpsSUuuKO/+JyAIRbll8GL6nCC7Sc+dkQpIN?=
 =?us-ascii?Q?b8oUADcV3Ae/+ACplQGvAeLuiVWlfuBtsrxoFjq8grBVYZRMpcZT2eF0ApVi?=
 =?us-ascii?Q?VNuzyqeEAlP90wQlRxU2uSvUPrwDJSWujqXV+z85I0PzBzzJF04p1AUPBX8c?=
 =?us-ascii?Q?UAo/u+HJ2Erkm9YJ7t94Br21KKOxqEO9EmnljoRa47cNGA8Mxcgrzbrrna9F?=
 =?us-ascii?Q?f23DNzxMUSyfdPSNfuuMawpHSJer+uVU7a3noxD03iGhOLnFpKSdY47FB697?=
 =?us-ascii?Q?PsTZrTTjLeXgpnWAlLqwnNaYTwgN+iGxZX3txK3/KbxZrLBTit4aniQKoJOU?=
 =?us-ascii?Q?WjxTb1821XjpjumT/Aoo6AcpTRPeCIDNF+s8nftSPTYQAt4qau/hcouXb3iq?=
 =?us-ascii?Q?COhOIq3herfRfFFpeIBgH2l2h4zGlnnN4UFysbuI3sDCAz3Nrd2aQcGGAbAM?=
 =?us-ascii?Q?BA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 26119cc0-d2d6-431b-f938-08dc69850aab
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2024 02:18:51.2231 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jKNJOduY3/ncUmiNalaNCm7SDOYdJAc3FRFsimEgXbesELp7gE1v9wzH5NNcuJUS0TAMYZpevOVCbed+XNVuRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7653
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

On Tue, Apr 30, 2024 at 01:10:00PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the EDP_PSR_AUX_DATA register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c      | 2 +-
>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index daeb1b65a2e5..5fe9feddc0e0 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -332,7 +332,7 @@ static i915_reg_t psr_aux_data_reg(struct drm_i915_private *dev_priv,
>  				   enum transcoder cpu_transcoder, int i)
>  {
>  	if (DISPLAY_VER(dev_priv) >= 8)
> -		return EDP_PSR_AUX_DATA(cpu_transcoder, i);
> +		return EDP_PSR_AUX_DATA(dev_priv, cpu_transcoder, i);
>  	else
>  		return HSW_SRD_AUX_DATA(i);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index a4f785bcf605..6a6d7de901bc 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -96,7 +96,7 @@
>  #define HSW_SRD_AUX_DATA(i)			_MMIO(0x64814 + (i) * 4) /* 5 registers */
>  #define _SRD_AUX_DATA_A				0x60814
>  #define _SRD_AUX_DATA_EDP			0x6f814
> -#define EDP_PSR_AUX_DATA(tran, i)		_MMIO_TRANS2(dev_priv, tran, _SRD_AUX_DATA_A + (i) * 4) /* 5 registers */
> +#define EDP_PSR_AUX_DATA(dev_priv, tran, i)		_MMIO_TRANS2(dev_priv, tran, _SRD_AUX_DATA_A + (i) * 4) /* 5 registers */
>  
>  #define HSW_SRD_STATUS				_MMIO(0x64840)
>  #define _SRD_STATUS_A				0x60840
> -- 
> 2.39.2
> 
