Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F8A8B5B2D
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 16:24:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EACDF10FEE9;
	Mon, 29 Apr 2024 14:24:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NSZRbQ7C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8F2C10FEE4
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 14:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714400689; x=1745936689;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=8etxZHqC8VPKuOwdyCac9B8Skbsewg2pWORRriqhVJU=;
 b=NSZRbQ7CA3IyEXvQhyiYOVrU9PUjnEue96iLgEjwWpprjgtu2uKzq0pu
 PwVTC27YmD/nNth55Y1f6F8RAgZtIJiM9ImTeeh9HjP3SGW2v1zLNhfa2
 nzZdA0hAxcL/Ws0h7gfYCpRCjmpcs6hVUQ/nU2b3Sz0JakPjECTP3pvNB
 OKfDQceosbSLNLP75qLXQxc7BmVHXx1lOo9uJZBgtxesYeRdPYO0xOGzK
 8K8SliJPJytKWTCTgbs7DRPc/b5u7GJABF5Guo0m+DsAvCfqXuQxyFqn7
 eQi0fuyswWakaRcfTG0Yccf4fMHwqkZLAnqcPAeTbqYUv5e0jVaRNREA8 w==;
X-CSE-ConnectionGUID: 82KKmVVuTvWLZUVY3OGABg==
X-CSE-MsgGUID: bPGaS6jCRY+loY3HFS1U3Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="10226913"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="10226913"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 07:24:47 -0700
X-CSE-ConnectionGUID: WhY2ItzaSvuMu+vVHrZXbA==
X-CSE-MsgGUID: A9Zov2gVQzqQfduw/37JNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="57005782"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Apr 2024 07:24:47 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Apr 2024 07:24:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Apr 2024 07:24:46 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Apr 2024 07:24:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P0Hf7d3wo84Ud5tpUkW/egjIaiy/eNEmzCrlD/2GdJTTqL5EhtwbPbVUs0489g6JxdyQGHHixKNWSrFvQz7lAK33pd8ZMXDtcy9pemrKKJsR0butROU56cNruwK7YuAXYI3FnuHZnK3R6dmedzZWos43StsqS2t5hoYvzMUuujQB4LSAg7rdoJRvswVzhQFxLg1CDzikDSrahIZPidVD2NuOaCBB4uGhhDiXu3kNDWGf2lLa3Mbx6AF3vSJs4vdetFKpYdiRWC4eGFAD5Eu4vBzkoV3YDsQ7ywFaIcbLu7QPe6yi+DaPJcOLFK+NT04Rt2TJSETSGF93PKrHquvzXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iRqVPuKdaPRNo7rdJb89No99AqNY7MMYckymmSfvp9M=;
 b=Z7SqgkE7x9lqhaBujOOsVdnxiXkj4tkXVCDN0gik3jMX58sYt5yPMZ2T5jsvA6FJynHZrXPpOKrYkw0TKuo9to20todRfutC65lv5wc9+eqpTcqa0wByCQUeJEGEFjW6JDb76u4eo2qG471Uz6TSclwcSQib3YdUmmInsvCHG+BFUhi8YXTyJ60Qkh3aZi6DF4M83sXfyYA0/uxLZaFOXptEdLR74+yMW42FpfWaw7iLoVr7PUtVwgFc7VLZwyVSk5OvVbeLo2LpCWoosdDFBKV+vChnMw1cmlh390QvXf3ELFJs4IZ3loWvQ+AAV1rnF9xwB9fN01zh5XF44tVNOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA3PR11MB7536.namprd11.prod.outlook.com (2603:10b6:806:320::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Mon, 29 Apr
 2024 14:24:43 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Mon, 29 Apr 2024
 14:24:42 +0000
Date: Mon, 29 Apr 2024 10:24:39 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 4/7] drm/i915: pass dev_priv explicitly to PIPE_WGC_C11_C10
Message-ID: <Zi-tpwHu3ABjHkZm@intel.com>
References: <cover.1714399071.git.jani.nikula@intel.com>
 <3f7aae89cf63760bca43b54102c76b3ed2cf8735.1714399071.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <3f7aae89cf63760bca43b54102c76b3ed2cf8735.1714399071.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR08CA0002.namprd08.prod.outlook.com
 (2603:10b6:a03:100::15) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA3PR11MB7536:EE_
X-MS-Office365-Filtering-Correlation-Id: a39be4f9-1677-4f7d-db27-08dc68581caf
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?sF6ziWMEFDaVSvVIjAjo4p+ZfNjqAMH9nxbW+SUt71c/ZIAbxiQzgDpf8V3j?=
 =?us-ascii?Q?mjzfqtXMx9b/hpcvpKMUKmCuGCoo0s3ckAQ1uoA3ApaSW4ExGADqs1Ihdovd?=
 =?us-ascii?Q?/+1xS0cUhXm1NiRsyJhC5xsLOwRYe2nlFcmXC3fHFo0PHKYAtrzGZhoqWDZ7?=
 =?us-ascii?Q?YsGJeI9Mrr8aBhNF0/+rBKrQMVtu8h4kpJwhq4HZkpczU1FB6JaY51GQsPzU?=
 =?us-ascii?Q?WVVbPobFmfmonGOwLTF9nN5z1nhmcUtLUc9cBa2VYlOLGUok9U0qv9JP3WlL?=
 =?us-ascii?Q?0GCViHz1x94o/nUX2o2ojutCANafuNb/CUjoIxjs+VmdnPEao+khhIRHgMvF?=
 =?us-ascii?Q?1yPqLNZJqoAyMfCHyFjFbOd17wwV2ULCAsthouwQtwiYfs0fLv6AodRxqYDt?=
 =?us-ascii?Q?0XVhzIGzritu1E3L66xjEuEA64UZLpJyxg61t5BjzSnewbWE1S/IpEjRaOjE?=
 =?us-ascii?Q?ciriE4TCCPg123VKwVLq4NpDV300/d13VLsVONsSKRhjPismcG9YhPkZ7GZ0?=
 =?us-ascii?Q?XLH8Lmu5lf7PgxnK0lduV9iHVvuX039J9VT7kSaDh1MQrhbM+NgR6kp7+aNM?=
 =?us-ascii?Q?Ea5v/MdGekU/OSs45DFnav76lNMPLXMrfET/JmuEnAN+WMGn/F1f4noEqFgr?=
 =?us-ascii?Q?Lklg5bjdk0mCeBqcqF/4une93c/kcUyclbBeK2QHuE7jW/0MdKVi5yNRRTQB?=
 =?us-ascii?Q?KKhErT2HmRS1CwsiFP4yC3lV2T6Rt+IxrvYmJgrkaeMqsNY2dVPRNJHa+uk6?=
 =?us-ascii?Q?3NOBqZEhWgcTK+4D01DcYJeo4A42K0sV5+qrUEenySquShfX8gHp5++WUdGy?=
 =?us-ascii?Q?/AoyrBYmDOQ5/nIXoyhWI5o5bK0P8bAE5G0WGt8a3KAsLlJqBVy5Am3mzH3k?=
 =?us-ascii?Q?HmC7XijHNcKoPqnJidviv5J3keRLpqUIRs96d8RX8NTFHmyuc/WpsBpzKtCY?=
 =?us-ascii?Q?SEAg5Yd4pPTwPcRUCocHynQVpZ/6lL00S7+Ge3aAqYW1t73H9wEGp1F2oy8P?=
 =?us-ascii?Q?cXrKPbOrzEb7/IuCiV1SZRnNuLigQmGmfi5UcZKLdzvglcarxKWlTwlhJmA3?=
 =?us-ascii?Q?dCnZWnpEIZMJsqh6fALePa9drd/O9QIGyl967nyXTITfRTepygkrehvMEcEp?=
 =?us-ascii?Q?O2F9U/VrqSZt73F8itwoLPB2HYIs5nbgmnJ8i8MsWOfzrYNDshgT8Wu3AVcy?=
 =?us-ascii?Q?9xEmFqm2vV5ML2xFBkOmoBj0Qt0OpnN1FCem+dn59u27tKPWHqT8Zpm7C8cF?=
 =?us-ascii?Q?9AunJLk8mNSskbCeZCDNOsmnzwrkwEF17AkFDzL56A=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0lcHsimBviMVtVtslGNU6PtM1r/gt9Nh8KDKfmdCtiKgVHxCJzbx1Aat6Ane?=
 =?us-ascii?Q?CThBTNAHhaoG+7AT9RwsEOtLWLjjqRg1OTgDp41U+XI3GqFKjIvnzKCE19mz?=
 =?us-ascii?Q?N1ZWEOXzy+TVjdHlQbboA7fZ1PNPpaVVYGDyHtHfc362vNGk15NDyJyIR5Gp?=
 =?us-ascii?Q?pPDq/3WWxyorWMhoW3MKDG09Vz5K461kmQM2vaKlmNxejgFJNV4V37AHfJJ1?=
 =?us-ascii?Q?4JgCeHVZq05t3jj+eiUJUf4txp52uH0KPH973wexavvn9dSJamnDbMxei1Su?=
 =?us-ascii?Q?rrmKGZilGtglCwxtOxiH2sOY60lJLkGQ8sOMq1yYRNTFvu+ltGKufR2kOKRH?=
 =?us-ascii?Q?fcBX6bLUmbEbvQufV7hR9luv9grT0Ki7puUF7fGreCliqEWWoUb2RKMGq4rt?=
 =?us-ascii?Q?+R6zWoQyHOzzm89qLYwnDVygV45ISs7PQOuEbXfhQcPmhjI1cZY6wO5L0inJ?=
 =?us-ascii?Q?8UdQLQJD1VhYJM+mDhUlSRW7LvKqFw+9PH1TM8u9CXMEN/P1U6F1WjKGCGvX?=
 =?us-ascii?Q?BVMWwYYREXP1o2X3u0ZuFueEnQ7UumxCinhnWVOKJy2A4rSKFlIN8JkcE+5c?=
 =?us-ascii?Q?Yb+HQCgYZQgJ1xG9iwmpjTp5k8Kscxfsnde/ihNkmmDSbjigjb3eeRC/cGlT?=
 =?us-ascii?Q?16qhbgvWvtPGDC3N4Kk+UH0TE5nT2+91NVgiBwAX4SdGtCgsc2K/XLf/VH/D?=
 =?us-ascii?Q?zgEOcdglZ0X1m3iuN/PoH4ae5HdHPR8pij8c8HB2rCojMvkFmvmuO1DmjQsu?=
 =?us-ascii?Q?gFzpKd9A9n0GeU2BjoMEgPnRSU3+Id/zoV5E1sV5GmsfDosVjQeTJAHUA4LW?=
 =?us-ascii?Q?vMDhb3LGR+nLaJ0uVG2mTOzfB3pMm8/HTcfB/+iSzD4P5fRvVieiNBRdgQew?=
 =?us-ascii?Q?NFvOpB4Sdb6gFQbWkxjQOhH0+ozfBBnNab5vxlEX0OhVWfMt2rKki4XxVqg8?=
 =?us-ascii?Q?ytog7Jf+CK/0r1GL/2b2wnoGRrv+H894cUwE/RNkhpbbyUXsrNrLRyBQa3ib?=
 =?us-ascii?Q?yo4DH4/BHul5YK4yRVdFBM1lKWYeiNVqO3aDcNNITTF6r9+5fBqz6mFL+hsE?=
 =?us-ascii?Q?KobIOflPDqwXKaO+F98knZ8b1U1Hu+PLDY34OpblYvsX0tbRbEFs4R9eRglA?=
 =?us-ascii?Q?7dlKQHML8Ym+4WSzQpo98+Mld6H0JckEdOeet+EFIopGeQqndm41By4TcNiQ?=
 =?us-ascii?Q?m4rrEnnLhymzKzy5HmfuCPUND8wYSkIERw3z/iHsoiRITEcZJnVFdKjOT6Nd?=
 =?us-ascii?Q?pheQrOc+x0pCrfiL4x6lUaaWzFEB0F5lYWfhGZvx5B79hIpfb892erxHINxG?=
 =?us-ascii?Q?8F2xsFUvWa5apZy/C+U0w3k+6o02/gRVfGcqQjBb8PRSdI4GXlG6rTO9Ajdt?=
 =?us-ascii?Q?JRmV+urH8BLtAkWlJG0KUOyTVh0FWN3F1NFkFhKf32AvAxLoJbcjYwEM3KRq?=
 =?us-ascii?Q?ya5Q6qs6HxDcaIDGICvMuPzvGAdH6wi49j+vXO2DqLfBo/xD3K0TgCKm2Xoa?=
 =?us-ascii?Q?n+p2BW3IQj0KnidLyIfTwv2jI8qW1yRo5mZ9nCSzLFt7vZvwADLu30Rjtm+y?=
 =?us-ascii?Q?RiSHQLi8UAiACHEe+o+DEuyfpz5Jt7/6ZtVo0kwf6Tf0Q5VbCJkJDdWBkcQc?=
 =?us-ascii?Q?/w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a39be4f9-1677-4f7d-db27-08dc68581caf
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2024 14:24:42.9204 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x7YJI2ub+WqUceSGMn2Y0VuRsbuadkYrEFQmZO/ifVIqYLjSumkZVun2vT6ALjxgzFPVrj+GEVbs/2lEUMKTZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7536
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

On Mon, Apr 29, 2024 at 05:02:18PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PIPE_WGC_C11_C10 register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_color.c      | 4 ++--
>  drivers/gpu/drm/i915/display/intel_color_regs.h | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index f96d6af028b6..11b5891a8399 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -621,7 +621,7 @@ static void vlv_load_wgc_csc(struct intel_crtc *crtc,
>  	intel_de_write_fw(dev_priv, PIPE_WGC_C02(dev_priv, pipe),
>  			  csc->coeff[2]);
>  
> -	intel_de_write_fw(dev_priv, PIPE_WGC_C11_C10(pipe),
> +	intel_de_write_fw(dev_priv, PIPE_WGC_C11_C10(dev_priv, pipe),
>  			  csc->coeff[4] << 16 | csc->coeff[3]);
>  	intel_de_write_fw(dev_priv, PIPE_WGC_C12(pipe),
>  			  csc->coeff[5]);
> @@ -646,7 +646,7 @@ static void vlv_read_wgc_csc(struct intel_crtc *crtc,
>  	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C02(dev_priv, pipe));
>  	csc->coeff[2] = tmp & 0xffff;
>  
> -	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C11_C10(pipe));
> +	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C11_C10(dev_priv, pipe));
>  	csc->coeff[3] = tmp & 0xffff;
>  	csc->coeff[4] = tmp >> 16;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_color_regs.h b/drivers/gpu/drm/i915/display/intel_color_regs.h
> index 741c0b8592d9..19b0255e0831 100644
> --- a/drivers/gpu/drm/i915/display/intel_color_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_color_regs.h
> @@ -258,7 +258,7 @@
>  
>  #define PIPE_WGC_C01_C00(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C01_C00)
>  #define PIPE_WGC_C02(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C02)
> -#define PIPE_WGC_C11_C10(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C11_C10)
> +#define PIPE_WGC_C11_C10(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C11_C10)
>  #define PIPE_WGC_C12(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C12)
>  #define PIPE_WGC_C21_C20(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C21_C20)
>  #define PIPE_WGC_C22(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C22)
> -- 
> 2.39.2
> 
