Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA318FF123
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:48:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AF7610E9D2;
	Thu,  6 Jun 2024 15:48:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VKKTyGtc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E15C410E9DC
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717688935; x=1749224935;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Wz2NZf4jN2iWMqdy4OvbADDbNDd+s+7bUU8QHeGn8i8=;
 b=VKKTyGtcRBeDt8U5LoJR9VRlq290uh7Tm2xaEG1j6IZRcaDwxxH3nGdK
 afb+43UyEtQZtR2Ru0/Aei7qpzKOGYQijTnNR0g1GPTkngkBxItz7mzSD
 yMvubjzuCS+wBQ4xEoC7y2hSPkmr+ydprnE6ImTwYwyf+AniBa2D2fL0p
 WR8MpkN9YtX8f5fAW6+mf3kfVeVx5LiBQD6oCcUNjiiHPrN7TDCGXMxnk
 xQd3JANfRPCSlApdwsOwOuNcGDOA8Xg0CwDg8TD8iVF3UGSmPzi2P1DVi
 ATDTLwVdvM3Nz+LXv09jm3NPzSfPyOtft/y2N2DBlO1ye7LJa/3nA+Brl A==;
X-CSE-ConnectionGUID: vGMiMv+wSfuWbJl3ry8AXA==
X-CSE-MsgGUID: NH5sut1MTv6jMdxiJMyPnw==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18195940"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="18195940"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:48:55 -0700
X-CSE-ConnectionGUID: HCVe79r6R1iURjAfP+6CiA==
X-CSE-MsgGUID: IYj2ZQpjTySe4uMf6T3GSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="37871349"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:48:51 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:48:48 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:48:48 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:48:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LqO5nhwdpFGbZwYG9rsAmXLzVfjYqYmIbNb6Avo+GPMW/Ks7P54corw/bmxJn1BpEnKOc47aVP0yy6Z/X3sanmZS7HEEfZXaAoGhXgYSPTG7YX1/0t6awoGzd6JLWSd89DOPWV2DNYxTUY7ExnNWrtGbB+TZBevAbT81a/p3XQJs1bXJcuJUr0ZBVoi5OMk6NFBA5Tf3erRzAvXH+Vys2Hams4q32KOcvsZi3FLFuFRSIrHSWwNgTZgl5CSoKQNPsELRcUwYgn5yofsF3UgNk1loBY6TTwIWA6pB+e9a5KbHkLSZgiiKOMZOoqKOT2EwmJizuUG+Q+4SyEG2ckNzzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S7iYlUE05JEQ3l8HWXsWRFqFo5yyypAKvz4aQ/MsYSk=;
 b=avrgAYHlTiSKQk1VZZeucyfFS22HBTPkb7cwZ0LFDkkbs+Aeytvgu3u82hld0/eOu6LkAWSKoXSHyenDC/nV9eggXSQaJNeq0vLaz94m/PIzKMCzAZDgDRTY8TjeYALTPRVTYjQ6tAaR8sUv6YAfIb2Cr5/P1gfy+3fQNBaGEms8g6K8GEzlUL6WRpn27Y90xbPd9shJK3Kj4c/0AiZav3Aad2ROw8KMLNyhvtLRLXpzNkAZ2/avpNHmoLatIROFrZko/vcE+WXftxX0jjg31l34N3tyqDILnBdlMXvTtlmCqLzMl3yffUP7QvQm1R/gyjms3H22o4xXwmFuhsEZsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DM4PR11MB5229.namprd11.prod.outlook.com (2603:10b6:5:39f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.33; Thu, 6 Jun
 2024 15:48:46 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 15:48:46 +0000
Date: Thu, 6 Jun 2024 11:48:44 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 27/65] drm/i915: pass dev_priv explicitly to DSPFW2
Message-ID: <ZmHaXPodE_Damhrg@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <ba349f90b6614605c52f58ae048961c7b4da4495.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ba349f90b6614605c52f58ae048961c7b4da4495.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR20CA0015.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::28) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DM4PR11MB5229:EE_
X-MS-Office365-Filtering-Correlation-Id: f91e565d-303d-4d92-e9c7-08dc864026b6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?GE8no4Is+mAuNjSPD8kkEA9jGxVMmt0q98UB6kLc2IPiaOgXeD/uDD7HkIfo?=
 =?us-ascii?Q?yxVSaBzEF2P8lXVl2pJVEckwweYj2TgOskZ0Lhk2UmG49eBH/tniW4dbb8fw?=
 =?us-ascii?Q?TimgqXrEi4ObICzjd65PugZQDzaFgWd5l9S2arNWXuUndWoFDk0mp5V2ffEd?=
 =?us-ascii?Q?6giVR9CdpWmtx9OCsrP1PT4SnBQQj7gK8QRNYsJZbJsPKEvDs350STUXscc5?=
 =?us-ascii?Q?vgDiRZSNTJw4aeXW1IASE/JBBUg5RLBaqtOJ7d1il8O2jDUGOL3qzYpMeUgy?=
 =?us-ascii?Q?Kpz/RF8IZuET3KUa7/wl/Mg1MHoz+Ji4nsJginkLRAaxCDtOV5E4uS+nkldR?=
 =?us-ascii?Q?3J6DqTIUiB/BbioYRKj20cacs1g4hNE2oCDqcXuAinnpmDyD3GY07PxbVtzj?=
 =?us-ascii?Q?MYQmcYShD9ciU7mU9svKco3yoKJLprsKtIHW3K2q9h2TL9o2X0CCzKy9FIj5?=
 =?us-ascii?Q?eZMB5CcdvORWkI8K6mAXKiUpH8tpaw4FyiHClFbAiHmh2U2FPkkvt895c7lr?=
 =?us-ascii?Q?pNPo0p93zjy1RESsdIpTp0jQ7ng7F83KPGTbOWsQeyiOY4OgZGzxlh1G6mk8?=
 =?us-ascii?Q?pDAJKN7FbCAWYK5eI3Xay8jBmOldizTOVUK8e5HsXIkNqIE7c/1Q6S7mqkVd?=
 =?us-ascii?Q?vBTHGBoTxh1pzVbvsqjtOq5iqm1KhpwKDzULiCEMmXHz++GgmcKj4/3SLMjl?=
 =?us-ascii?Q?VAXORi/kPeQcLXupdhquY1g14Kh0Ndw8t5KpvWoHSmT4ZxkIHGvAePKR3HBZ?=
 =?us-ascii?Q?oYS4F2Qla/7YQHMt6U4OZimAc7h8tjKr9TZtKxgi+7BRr1KyteHEbZGljHWt?=
 =?us-ascii?Q?XPBu/lRXZjXXEBiSZiFlIR65SjmZwps6NwkVR/3uR/1GjmiryGhV8Nh9TpXs?=
 =?us-ascii?Q?caLodk63coiZJ08G2HxITcgDf/gYoXVau2DMvcW8tGEq7ulvLlHvEqn5jYIs?=
 =?us-ascii?Q?CkiV7QM0UibVs+xv0jUEO6zC4XT4Tf16wbiLDFn171qnI8TlMmWYhzAoHGxv?=
 =?us-ascii?Q?dRXmVnvDfoyGECVGvDUunnlnnM893mwxxFJStgK6IEpGk9AEonm/XKNS2grG?=
 =?us-ascii?Q?Pt35h63ul4uSSNMBefrBnRL0Yfuq+cRp8NmHyrDxcRlz3mpkjGwYuoWxa+Zn?=
 =?us-ascii?Q?LBvUWbnh8vylXlUk9+WWUFsEOJM53f5pYqkYpXKoE+rRTvuepD8w55FnaVu+?=
 =?us-ascii?Q?4+NFp5dt0PjniMAR78R8/boJn26palJQNbMkY7JdzbeyohmNnGafiJTaNFXg?=
 =?us-ascii?Q?pupEIV4roWhM9mKls0O8WfE5iWFpsWvUxHyCn1iPvdQKEdhR4sClsPgYjge0?=
 =?us-ascii?Q?r343YIkKP8BoQiA6mP+kI1Pe?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1o+JyQ7LNSL1hyxnT1Zz8HSzLRI8eo+9rtuiu48ec1L7/HAw0r/vY1QO/AYp?=
 =?us-ascii?Q?nE6nri8krSnF+IUE3+zSDaamWExss8IZCAoZ3kGOPgNU9/CXffabpDlqG5Nf?=
 =?us-ascii?Q?K4kFXPcwuKVVKsfFbvDFHmI8J5rdiiMbBZDL3kKNepQm8pP7x6SuIG/A/AQH?=
 =?us-ascii?Q?xZx4v2Euk//CVCiO3P1PHlcEsTkqK7p2FMHk9s+EZKUQrpaX6pCh5plLl1SZ?=
 =?us-ascii?Q?9iolT8sYdxfGRxilaiXH5d9zP1yiwnAgUtuZp1eOobS4PxP/1mhG7oRWJgbs?=
 =?us-ascii?Q?QolkTUyGCvPIpz+rCeI1XykeLRspaAsUvQcNa1dOcc+8EmliYD0KvmQk2Arv?=
 =?us-ascii?Q?Nf6fh2K+mJIgUrpNAEpLs1KB2jHMRqWFSrN+9RGtIqJTPaq40I9fCuSEYJif?=
 =?us-ascii?Q?TQMoPJmWrf8O0M+v536hYvgiMyk4ft0n45GrxR4GpErylJiv8zzAgDQQqEjx?=
 =?us-ascii?Q?dwPVQafO2NK6Pvc7zgJANm9pK8upuEbTccSUsMQee92St8jrhQ9aJaL1psms?=
 =?us-ascii?Q?FZYef5+iDBSFEs9MnS32advqTHNHVtCXS9H9CIDR4Cg6UKsg/pgEvn2VXMbG?=
 =?us-ascii?Q?mjrsQAQHABCFE27RBQUuZs571TgKw0p9+P0P5dK9oCPXNmnqHjwy0rNFU8aS?=
 =?us-ascii?Q?ZfgagGQrep0zWAV52DzyJRchr/gQTbJNtSV4cfXhNS+OBWLoiUeAmisPQOJz?=
 =?us-ascii?Q?4tGpUz424BitzlDx7X5gkYckYPHesIa8pp1D1ydqlAwRzqMnf++ApI2WkwKK?=
 =?us-ascii?Q?cKOJJBIUe/4KcRig+LnVbd111ZtjyI5VMYCIx7gu99XMhnEUOJgrZrFRONSK?=
 =?us-ascii?Q?uNONpR2rYB/BVzcZaxFiUh0RxdIKJJZ+9DM+ToeKD0oqtJnvcHWXKQRF4o0t?=
 =?us-ascii?Q?HdfzaReIEoWsr8gmSHMh1/UfRuRIENGHvF+KBw59Ov4U0+KMbxP2OdOPCmOk?=
 =?us-ascii?Q?3DhyDU1MsHQKKJ4KF/+RAa9qDYbxgTPdEBJu11xEz92mUcO3J3hwqIw6ysgx?=
 =?us-ascii?Q?RD35ImqVJ05FQMioNRe5NZYd2RJOonErITgNZCGBx56suk5M9yGM+nCiV00o?=
 =?us-ascii?Q?oyeXT6rfUIoZ/kPYlfcnmk4qPGKrZ66/PzB9F1LnZ2yyBHNj5j+OSTug3nxw?=
 =?us-ascii?Q?mF0c+uzWmKAzjv4cGg0iFan9InkkF53ea01W9u6nprTg0OTpzKLkqPA3sa4M?=
 =?us-ascii?Q?7AoLsH5+W8rner7HpcmyroV9BE8y5AiGnhXqdLddoqX9ajZr5gkp02sGTXJ8?=
 =?us-ascii?Q?CzjKpdJmvSHF2jkdK4ewn2EPTdTQpwjm3bh//OO57ykYdv464aA+J0rJgge/?=
 =?us-ascii?Q?gdTRgzzfILvfTzpx4NQ0LIoLvcnFYRUwIEKdQhHM3j+NG8DkBT19JsVUmjHr?=
 =?us-ascii?Q?/GvTun/sYMQRsVZPTn4HC6/hSieqc+iKtUmg8/vsle2I5qaaBqXQUM0Pp8L/?=
 =?us-ascii?Q?Gye+X6NrIRrQTDEOpQWySpxDQSMZJhV62eeIYUjaxyz9ko4F4XhFwbAufpLG?=
 =?us-ascii?Q?J1UNBaAJFLbcko464qIQhAMZC11nWRRKHN+jlfKChdNlBevVwTc4vtlyKRDd?=
 =?us-ascii?Q?+1j9hUO2FMdYQsOOjP5FsKcGezmpnKR8re7op453?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f91e565d-303d-4d92-e9c7-08dc864026b6
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 15:48:46.7127 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0Bg8ow9WCy/tpvSjqIbVNIgHtuRSq2RklQvAQa2bFLLAES6XtZqhDqrgY9Ywgmg3iL8d50H9PW73E7Cl/UeFdw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5229
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

On Tue, Jun 04, 2024 at 06:25:45PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the DSPFW2 register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/i9xx_wm.c | 13 +++++++------
>  drivers/gpu/drm/i915/i915_reg.h        |  2 +-
>  2 files changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
> index e39415fb1c19..1e11d66d1a7e 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> @@ -725,7 +725,7 @@ static void g4x_write_wm_values(struct drm_i915_private *dev_priv,
>  			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_CURSOR], CURSORB) |
>  			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_PRIMARY], PLANEB) |
>  			   FW_WM(wm->pipe[PIPE_A].plane[PLANE_PRIMARY], PLANEA));
> -	intel_uncore_write(&dev_priv->uncore, DSPFW2,
> +	intel_uncore_write(&dev_priv->uncore, DSPFW2(dev_priv),
>  			   (wm->fbc_en ? DSPFW_FBC_SR_EN : 0) |
>  			   FW_WM(wm->sr.fbc, FBC_SR) |
>  			   FW_WM(wm->hpll.fbc, FBC_HPLL_SR) |
> @@ -775,7 +775,7 @@ static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
>  			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_CURSOR], CURSORB) |
>  			   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_PRIMARY], PLANEB) |
>  			   FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_PRIMARY], PLANEA));
> -	intel_uncore_write(&dev_priv->uncore, DSPFW2,
> +	intel_uncore_write(&dev_priv->uncore, DSPFW2(dev_priv),
>  			   FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_SPRITE1], SPRITEB) |
>  			   FW_WM(wm->pipe[PIPE_A].plane[PLANE_CURSOR], CURSORA) |
>  			   FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_SPRITE0], SPRITEA));
> @@ -2072,8 +2072,9 @@ static void i965_update_wm(struct drm_i915_private *dev_priv)
>  		           FW_WM(8, CURSORB) |
>  		           FW_WM(8, PLANEB) |
>  		           FW_WM(8, PLANEA));
> -	intel_uncore_write(&dev_priv->uncore, DSPFW2, FW_WM(8, CURSORA) |
> -		   FW_WM(8, PLANEC_OLD));
> +	intel_uncore_write(&dev_priv->uncore, DSPFW2(dev_priv),
> +		           FW_WM(8, CURSORA) |
> +		           FW_WM(8, PLANEC_OLD));
>  	/* update cursor SR watermark */
>  	intel_uncore_write(&dev_priv->uncore, DSPFW3, FW_WM(cursor_sr, CURSOR_SR));
>  
> @@ -3528,7 +3529,7 @@ static void g4x_read_wm_values(struct drm_i915_private *dev_priv,
>  	wm->pipe[PIPE_B].plane[PLANE_PRIMARY] = _FW_WM(tmp, PLANEB);
>  	wm->pipe[PIPE_A].plane[PLANE_PRIMARY] = _FW_WM(tmp, PLANEA);
>  
> -	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW2);
> +	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW2(dev_priv));
>  	wm->fbc_en = tmp & DSPFW_FBC_SR_EN;
>  	wm->sr.fbc = _FW_WM(tmp, FBC_SR);
>  	wm->hpll.fbc = _FW_WM(tmp, FBC_HPLL_SR);
> @@ -3568,7 +3569,7 @@ static void vlv_read_wm_values(struct drm_i915_private *dev_priv,
>  	wm->pipe[PIPE_B].plane[PLANE_PRIMARY] = _FW_WM_VLV(tmp, PLANEB);
>  	wm->pipe[PIPE_A].plane[PLANE_PRIMARY] = _FW_WM_VLV(tmp, PLANEA);
>  
> -	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW2);
> +	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW2(dev_priv));
>  	wm->pipe[PIPE_A].plane[PLANE_SPRITE1] = _FW_WM_VLV(tmp, SPRITEB);
>  	wm->pipe[PIPE_A].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORA);
>  	wm->pipe[PIPE_A].plane[PLANE_SPRITE0] = _FW_WM_VLV(tmp, SPRITEA);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 5f1db52ee773..8b642cb0d9b7 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2030,7 +2030,7 @@
>  #define   DSPFW_PLANEA_SHIFT		0
>  #define   DSPFW_PLANEA_MASK		(0x7f << 0)
>  #define   DSPFW_PLANEA_MASK_VLV		(0xff << 0) /* vlv/chv */
> -#define DSPFW2		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70038)
> +#define DSPFW2(dev_priv)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70038)
>  #define   DSPFW_FBC_SR_EN		(1 << 31)	  /* g4x */
>  #define   DSPFW_FBC_SR_SHIFT		28
>  #define   DSPFW_FBC_SR_MASK		(0x7 << 28) /* g4x */
> -- 
> 2.39.2
> 
