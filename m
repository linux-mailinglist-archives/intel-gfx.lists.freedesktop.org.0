Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB519BF390
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 17:47:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD85210E72D;
	Wed,  6 Nov 2024 16:47:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QSw4F+KL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6748C10E72D;
 Wed,  6 Nov 2024 16:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730911672; x=1762447672;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=a0Tnq447epj0AbJUnDQ5wuT3FOPLYkcXY7xJ3a6rPdM=;
 b=QSw4F+KLICLpK2zaEnhTFD/OjJrvzCpwzyhz8DQpszNiZPmkrropF7c9
 eOnn/kAOq3cTe80PT12zFx7Ilzrc/0ZnkZF4INPeBR47hrKd9mz41he04
 9aazVd1qhn3B4VBr3Dk7nzs+5afzLA3K1BMk/KBtaAiPpzq4R7Ng8nkbW
 mTESKGEni3PiscDKju/Apl/SZe9Y5RDkk//KPvTpMhTbAXFCjlRAQfcqj
 6oyicsLTrNW5Vre4+//8+JVJR8W/K53DzX+TqzgvPt+JqRD1THxcQWxCM
 fFJ79/ZNTeDCBLAwltP9zYDoLRQHxQp9fU1LHSgaEHco3+8rZXfvCcxZe A==;
X-CSE-ConnectionGUID: +zjLFcv8Tye5AbNH0WhIsw==
X-CSE-MsgGUID: TtjeifibSWGm6uQVC/I04w==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="48237617"
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="48237617"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 08:47:52 -0800
X-CSE-ConnectionGUID: R5zhe18BSo2IO+iV2zC4+w==
X-CSE-MsgGUID: gDA2il68QWaMaGyRIiumzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="107954847"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 08:47:52 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 08:47:51 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 08:47:51 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 08:47:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s1zG06VIBT11A2eT+lz7HW3LRHuCFLhs5wsoF6Hn12P6cnJ95hH2aJ6Pp0g2IQCqbw38DLzb3ZSXASSAiZEeZNSfaT7nHdX5M/NL00LoFHAF1P0jjXiMIPsAIwLWtuzrKx8PXfrK2PoSFmmNPhousGhIjTHnmWyDk/pQWNhgGbXjWF/rWs8n/aDWP5iddcImJJWrXCtVP6zxmmohjBc+wkXo0q37smRamKAO4Kd99y2IhISVaizD9BpAkMNuCfcA53zFKUfPH6I0OceaMzBsOn8VB+MxuO9wNgnOKnllCjD2cqb43Q3GpU1SvWBjtccZIu66yGY/wKgibLVpUhm5rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9vex3IwowtwGZ3Pa1kunZUmqCjqvCR7qYeMEtG9vCoo=;
 b=kjBti3qM2aAVWloRD6MJvU48sq+XLJLD5T1ux2lEo+VP9Ni4GfI/9UBP6zHATuNkOschI0Zm7hQ2+2B/2lvc8Haxta6et2cpxeq0iOj2YmEa/mxz2f3JUlla7LbA0Iag9zi5oDufpKiorbAjFkKKxcmH8AEAOgAOuVHvrj4SWMehWVh9CugNtMhFlTUhv4wt8WGfr4mKY5fvD6BL3Ybk6jsgzgvwd9sXhRgJJiTxRVv41JfrpkHZ29+ZZIvR9HhGYbhhhU87Ed6Ys3xgJT6CectW2UjEeqoWZ6+eJu0aKMOycZkMkmLAVua3DmmblX4SyljJ9LUxQaT4cXPy721Y1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CY8PR11MB6963.namprd11.prod.outlook.com (2603:10b6:930:58::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.31; Wed, 6 Nov
 2024 16:47:48 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Wed, 6 Nov 2024
 16:47:48 +0000
Date: Wed, 6 Nov 2024 11:47:44 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 05/15] drm/i915/display: convert HAS_DP20() to struct
 intel_display
Message-ID: <ZyudsLrJK_goDuvd@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
 <b133e7ed50ae860e81916fd7a44947397e1df641.1730740629.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <b133e7ed50ae860e81916fd7a44947397e1df641.1730740629.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR06CA0011.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::24) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CY8PR11MB6963:EE_
X-MS-Office365-Filtering-Correlation-Id: a9789b1c-759e-445e-4aff-08dcfe82be3e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?DeiJKauaRQdAGp4ntXwMhowHqriRJ8d6L3X4rrvddPHg89pugTciZPvdiomu?=
 =?us-ascii?Q?zEOLgiZsI+XTDRtbiaXekA9RBPBAIp0MuW1LBj8Alnhk9stExR9yTlo94puX?=
 =?us-ascii?Q?Hwme5cm3d9iQ/O9n/+TYiWgPpryBSFjf/zaoOeu7f62fX4LUtB/YNXJ8VwdK?=
 =?us-ascii?Q?CxDO2xYuIwhzdDzmR/EDliweyCiLHvSRQdm4BM9+Ya+j1TIW5bapdXrTNbGt?=
 =?us-ascii?Q?3r7pbc0m4iE+nujfUkvZUzZT3B8KNf668/FqWnLhcS4NRgVTpd0qhxxhaTB5?=
 =?us-ascii?Q?fdGdNShYq9PUtT5cvLhWd9kgdRq+rfDRwUoOzAnlX/rMN4hC3Sn4gSGZmI5w?=
 =?us-ascii?Q?bWw/tfZpcqg9pzAOLdCSkoNWTh0KW2mYcvXxuN9F8QxL/Kql0hnfEHVJ45PM?=
 =?us-ascii?Q?+4l+UvgvXw+cUa4VYbdOxPBGsZn98zZomJ3wlW+GNYcKGDx1MrXav7J4ouXB?=
 =?us-ascii?Q?YjmkIKnHKqRwzSbHFm5TA3eCpRbwT8DaMJCtbvJYf+mIF4OSsEI6OxVc/noC?=
 =?us-ascii?Q?I6v9MKIYOOG+Y+O55dmgPBoi3DNoxY3FO96h39H+wPQYT5gL7okoaNp3D+ol?=
 =?us-ascii?Q?C2Yg7FJYLf01L/BJh2vr757DbWXJnODmE896bGAiVb4s0PixDK2XsPX+rdmF?=
 =?us-ascii?Q?sTxA+i1AnzV3pOI+3hGlV5BrUHbLSVIfcEgEUxXbHiEs2PwODd+1xkkLjCE+?=
 =?us-ascii?Q?b4i3xUxP4lFKNSWafzpK8Q7LILK/Zj9srkN8U6Vj56IByNKOiJ4w6bK44BAv?=
 =?us-ascii?Q?YJTNDt8tjhhN/Db0UljVviF5jtDIp0EsPlUO7LHLbZDx0CdmOoOr9k5A/XLk?=
 =?us-ascii?Q?A/Ox+zywrCbEFN1DiqJ+XXVaECQbrXnerrDL3T1atrT5zRp+uEwjNsiwKv+l?=
 =?us-ascii?Q?ZevtnJwyaMUt7+z8IkDx/FiqKrJ2CAW8tDnDSqSA+WpmJQ4WQ1uM91AJkYTK?=
 =?us-ascii?Q?xGWQdEYisJW4EKxQqmPC2G9/tr6Ex31QDlyyHZbyRPKRa3vlywiThjIuGbof?=
 =?us-ascii?Q?TGSuKvJnaE4G3qHO9I4E04FLaBxFrxYWMx8T37Vm4m0PPLbK6re0XzKMn87w?=
 =?us-ascii?Q?6Cpa2vyOXXaumm/t1wM/xjw48ZgtQT1wPysUXapKz36NDcEc28/RCH7G2aR7?=
 =?us-ascii?Q?OS3ldlVpceIr/96KND5osKQFWQwsb2vOviygVnq6FWCjhuHUM+iBnjsIEQaV?=
 =?us-ascii?Q?/lPF+Op03VZkasvSlm5b8cXC4y1Vgr1nYWlPQOJscT0LNTQots+dzxO/fJpF?=
 =?us-ascii?Q?EMqO14oy1e80eW4cFoi+DrlLeJCmS+zDkcTl/jCaFzo+pYY6qi7qjBV7heiV?=
 =?us-ascii?Q?cCuGcvBavYX3gds6FVpmgRqT?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sdU0IJear5EIOSaOd9B+FzUctYiKFlBHLe6MClreb+O0qbPXZy3Bb4Dsm+Xi?=
 =?us-ascii?Q?HtuaapY0D+8lvukQNVIgCA4hIjQihuEm4hcKPhEYpJ0P6KrgOUCMaQga9DVu?=
 =?us-ascii?Q?AhkMa7+OPhDk9WNR992j1Zt4c2A24b6+0lvircuHtcU2IlA/Jd5a7qm8Ysiv?=
 =?us-ascii?Q?hXaw14FHLUOmithMGN3u5bwx7UZlOpaMoMLqMGS0qVYue6p6kBzJGvldFE9I?=
 =?us-ascii?Q?Y/yi4EBOaBgAI9v9UaXYOmq2GuECutVr2Wg3mo3f5sjgdURqM7HcTvfy4Glx?=
 =?us-ascii?Q?GZY4DqqVydK3nuGogNovC7PXFLFDCuL1N8KunGBwnrRq49hEPX2mPIMy01GX?=
 =?us-ascii?Q?hDdzRUvt0fJci5i9lWdM82ScSpSX7JpoIdHSSjQ/HWDkR3rLRvrlT9V0+zJC?=
 =?us-ascii?Q?cnF8iFVIY7iakC+O8LfKwt6/XGK2Pev0wclVCM/Yma2fpXudPYGfLlMJrgXY?=
 =?us-ascii?Q?M704QUTzMVmUcdpVAonwd8QfhOQldwJEymn2dcDOmt8Rm9X3HBb7JAlpXTRn?=
 =?us-ascii?Q?JSdFR1tgXV4psVLHNUOeXOmABtKh6MajM4fgax8iZtTEjgkr1GCB13UF49U1?=
 =?us-ascii?Q?98UXP9uIP0z8+hSHqT2KUtQ0MWEwwFKrBw6ul8FhK0FmNL5JEGL0bCpDzvvT?=
 =?us-ascii?Q?/k+hLeIH2ge+FZlz4Vh7UpXRC95H5zG3/4xu3Rl/Od/iD/A2sgmHETChIAZd?=
 =?us-ascii?Q?bjp7Hrawhz1p0t5rWEaJq3YA4iRiDuoxkMvHrQXzsgqPJLmFn5kU0NQWZO8s?=
 =?us-ascii?Q?k3Iyi9OiM4Iq5Exd35oJ2TTr0rWwGydGNEccqXMCmonID8764GUF0YgqA73u?=
 =?us-ascii?Q?3moJtZ3N4/WqzoADXJesbexWJCZbKtvelPxXpCPcSqxYBLM+AxsKJ3horsK+?=
 =?us-ascii?Q?D+Hdfnrh49w7m9mfgVUz/nENYP4I5Q5R0KPed5r7I4us/WLjxoAyTbeA5OrO?=
 =?us-ascii?Q?VZJf/yJPBYbaYMXGmblKcv+1za4ggP5j0XOvt9HEKxVaW0d8x/AXBGb1TRkN?=
 =?us-ascii?Q?VawPcDpLjftwufIgNDoGyIH9n67/tKtq5UOjWmB87RjAD9lPNrDRBHxIVwHB?=
 =?us-ascii?Q?PMFbHWGODo1YKi8LR6p4yB75F8Wjui9eHKQ5DqGU2B7LUXaMtGYi99Eo56kg?=
 =?us-ascii?Q?yjOVWPmaRI5yfefYb9s0iyxvNIBxDD3hRCNtLyXscX6SgckS9ZV/A1FWD9Mt?=
 =?us-ascii?Q?xSazBLyjWaFeOQpqtr2N8h5Jk579TWLWm3TBVEJOSvLJ8OTDuDRNbUYBq/rk?=
 =?us-ascii?Q?ccNwbPyRIdMw/CU6iizcPRSprStzTfhjB38H9WXoVTgZz0owJx/aeEaaaOzj?=
 =?us-ascii?Q?mpIHHVlGTRFzw9+pkq2FKbS+frlHWdYOlI6efMGXrU+PeB/2l0WahgPgrjn6?=
 =?us-ascii?Q?aAyyq5AuBfayg3t46lUunH+0DlN4U6ZPzh2KU4UFxUnllsJC50CEWeGbUoQz?=
 =?us-ascii?Q?7g4KrE9yGtPFWB4yov91xtggFg8PPd8wgzjq6bdFP9D14v2/QnZsIFwcxGP5?=
 =?us-ascii?Q?e0iQ7KKKvCbPtzau6UMw74DkaWINfznR7PsPGpmCB0cCtTBx2VgvUDpDYtXV?=
 =?us-ascii?Q?JsZgCqTWDl4Ixs7k4cerUDdLRn/HGe8GN6um5gd5OZ3UZvSrq0qJrFlll96O?=
 =?us-ascii?Q?ig=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a9789b1c-759e-445e-4aff-08dcfe82be3e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2024 16:47:47.9622 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qRwua/YAUMm9AoZtkHX7aUhfSUOG5yCY8TaVsM174xkVxnUS7xDtv5DNlFp0fE5ejkAE347OqAja8AxrrsWskg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6963
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

On Mon, Nov 04, 2024 at 07:19:19PM +0200, Jani Nikula wrote:
> Convert HAS_DP20() to struct intel_display. Do minimal drive-by
> conversions to struct intel_display in the callers while at it.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c    |  7 +++--
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 26 ++++++++++---------
>  .../drm/i915/display/intel_display_device.h   |  2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      |  8 +++---
>  4 files changed, 21 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 32aa9ec1a204..4cc70da8f467 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -681,12 +681,11 @@ static void ibx_audio_codec_enable(struct intel_encoder *encoder,
>  
>  void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state)
>  {
> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	enum transcoder trans = crtc_state->cpu_transcoder;
>  
> -	if (HAS_DP20(i915))
> -		intel_de_rmw(i915, AUD_DP_2DOT0_CTRL(trans), AUD_ENABLE_SDP_SPLIT,
> +	if (HAS_DP20(display))
> +		intel_de_rmw(display, AUD_DP_2DOT0_CTRL(trans), AUD_ENABLE_SDP_SPLIT,
>  			     crtc_state->sdp_split_enable ? AUD_ENABLE_SDP_SPLIT : 0);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 49b5cc01ce40..46b7b90d3d98 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -700,8 +700,8 @@ int intel_ddi_toggle_hdcp_bits(struct intel_encoder *intel_encoder,
>  
>  bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
>  {
> -	struct drm_device *dev = intel_connector->base.dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> +	struct intel_display *display = to_intel_display(intel_connector);
> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	struct intel_encoder *encoder = intel_attached_encoder(intel_connector);
>  	int type = intel_connector->base.connector_type;
>  	enum port port = encoder->port;
> @@ -747,7 +747,7 @@ bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
>  		break;
>  
>  	case TRANS_DDI_MODE_SELECT_FDI_OR_128B132B:
> -		if (HAS_DP20(dev_priv))
> +		if (HAS_DP20(display))
>  			/* 128b/132b */
>  			ret = false;
>  		else
> @@ -769,8 +769,8 @@ bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
>  static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
>  					u8 *pipe_mask, bool *is_dp_mst)
>  {
> -	struct drm_device *dev = encoder->base.dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> +	struct intel_display *display = to_intel_display(encoder);
> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	enum port port = encoder->port;
>  	intel_wakeref_t wakeref;
>  	enum pipe p;
> @@ -840,7 +840,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
>  			continue;
>  
>  		if ((tmp & TRANS_DDI_MODE_SELECT_MASK) == TRANS_DDI_MODE_SELECT_DP_MST ||
> -		    (HAS_DP20(dev_priv) &&
> +		    (HAS_DP20(display) &&
>  		     (tmp & TRANS_DDI_MODE_SELECT_MASK) == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B))
>  			mst_pipe_mask |= BIT(p);
>  
> @@ -2653,6 +2653,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  				  const struct intel_crtc_state *crtc_state,
>  				  const struct drm_connector_state *conn_state)
>  {
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> @@ -2721,7 +2722,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	 */
>  	intel_ddi_enable_transcoder_clock(encoder, crtc_state);
>  
> -	if (HAS_DP20(dev_priv))
> +	if (HAS_DP20(display))
>  		intel_ddi_config_transcoder_dp2(encoder, crtc_state);
>  
>  	/*
> @@ -2862,9 +2863,9 @@ static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  				    const struct intel_crtc_state *crtc_state,
>  				    const struct drm_connector_state *conn_state)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  
> -	if (HAS_DP20(dev_priv))
> +	if (HAS_DP20(display))
>  		intel_dp_128b132b_sdp_crc16(enc_to_intel_dp(encoder),
>  					    crtc_state);
>  
> @@ -2872,9 +2873,9 @@ static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	if (crtc_state->has_panel_replay)
>  		intel_psr_enable_sink(enc_to_intel_dp(encoder), crtc_state);
>  
> -	if (DISPLAY_VER(dev_priv) >= 14)
> +	if (DISPLAY_VER(display) >= 14)
>  		mtl_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
> -	else if (DISPLAY_VER(dev_priv) >= 12)
> +	else if (DISPLAY_VER(display) >= 12)
>  		tgl_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
>  	else
>  		hsw_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
> @@ -3871,6 +3872,7 @@ static void bdw_get_trans_port_sync_config(struct intel_crtc_state *crtc_state)
>  static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
>  				    struct intel_crtc_state *pipe_config)
>  {
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
>  	enum transcoder cpu_transcoder = pipe_config->cpu_transcoder;
> @@ -3960,7 +3962,7 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
>  				intel_hdmi_infoframes_enabled(encoder, pipe_config);
>  		break;
>  	case TRANS_DDI_MODE_SELECT_FDI_OR_128B132B:
> -		if (!HAS_DP20(dev_priv)) {
> +		if (!HAS_DP20(display)) {
>  			/* FDI */
>  			pipe_config->output_types |= BIT(INTEL_OUTPUT_ANALOG);
>  			pipe_config->enhanced_framing =
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index e11993a6f042..c861a61839b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -151,7 +151,7 @@ struct intel_display_platforms {
>  #define HAS_DMC(i915)			(DISPLAY_RUNTIME_INFO(i915)->has_dmc)
>  #define HAS_DOUBLE_BUFFERED_M_N(__display)	(DISPLAY_VER(__display) >= 9 || (__display)->platform.broadwell)
>  #define HAS_DP_MST(i915)		(DISPLAY_INFO(i915)->has_dp_mst)
> -#define HAS_DP20(i915)			(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)
> +#define HAS_DP20(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
>  #define HAS_DPT(i915)			(DISPLAY_VER(i915) >= 13)
>  #define HAS_DSB(i915)			(DISPLAY_INFO(i915)->has_dsb)
>  #define HAS_DSC(__i915)			(DISPLAY_RUNTIME_INFO(__i915)->has_dsc)
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index a784c0b81556..74c2e3635d9e 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -3335,11 +3335,10 @@ void intel_psr_flush(struct intel_display *display,
>  void intel_psr_init(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	struct intel_connector *connector = intel_dp->attached_connector;
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>  
> -	if (!(HAS_PSR(display) || HAS_DP20(dev_priv)))
> +	if (!(HAS_PSR(display) || HAS_DP20(display)))
>  		return;
>  
>  	/*
> @@ -3357,7 +3356,7 @@ void intel_psr_init(struct intel_dp *intel_dp)
>  		return;
>  	}
>  
> -	if ((HAS_DP20(dev_priv) && !intel_dp_is_edp(intel_dp)) ||
> +	if ((HAS_DP20(display) && !intel_dp_is_edp(intel_dp)) ||
>  	    DISPLAY_VER(display) >= 20)
>  		intel_dp->psr.source_panel_replay_support = true;
>  
> @@ -3974,7 +3973,6 @@ DEFINE_SHOW_ATTRIBUTE(i915_psr_status);
>  void intel_psr_connector_debugfs_add(struct intel_connector *connector)
>  {
>  	struct intel_display *display = to_intel_display(connector);
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	struct dentry *root = connector->base.debugfs_entry;
>  
>  	if (connector->base.connector_type != DRM_MODE_CONNECTOR_eDP &&
> @@ -3984,7 +3982,7 @@ void intel_psr_connector_debugfs_add(struct intel_connector *connector)
>  	debugfs_create_file("i915_psr_sink_status", 0444, root,
>  			    connector, &i915_psr_sink_status_fops);
>  
> -	if (HAS_PSR(display) || HAS_DP20(i915))
> +	if (HAS_PSR(display) || HAS_DP20(display))
>  		debugfs_create_file("i915_psr_status", 0444, root,
>  				    connector, &i915_psr_status_fops);
>  }
> -- 
> 2.39.5
> 
