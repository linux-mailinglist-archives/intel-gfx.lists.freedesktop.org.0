Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4AA95C052
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 23:37:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E03D10E0EE;
	Thu, 22 Aug 2024 21:37:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K/x1hYvp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E213110E0ED;
 Thu, 22 Aug 2024 21:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724362658; x=1755898658;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=8MikNLSdZv7Ie1q5O9CrIyXP6r/HfhDbt1pMU8YffBc=;
 b=K/x1hYvpo2A96S6NfTshUo241t54lS8CSEywEDXw7EgJRaNsLukYxrAq
 O4nF59ypaU+YDkDAWisvNZsGHjtABUej7Ez7q8vVgqLGa6DW2pnw6DG3t
 qty1ysAt6viT+M2tmvkgIY1CRT9aIRXsf1ag3kAux87F/FDpkr6aEehrz
 WRWF23UxsybWATMO1BZlGvggspkWeX0GYTNa7AZnqI2ty7SxmvyDyXT6R
 uiPcNH7VtTxCfnz/HCca/HChXGmkeCBB2KPoD8dn4TVBcm+R0BIb3TW6/
 1E500Itt7o1RAEQDE8g32U/QLo2yfOipExj355ipfEBYho3tyRdRCMrH+ A==;
X-CSE-ConnectionGUID: WiGq2X//RJW7MbaH2bnw1Q==
X-CSE-MsgGUID: ffXo4AwMQEqwrQfGZmQMGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="22973300"
X-IronPort-AV: E=Sophos;i="6.10,168,1719903600"; d="scan'208";a="22973300"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 14:37:37 -0700
X-CSE-ConnectionGUID: LtEd3cObQiWk/nG3ZUKEXg==
X-CSE-MsgGUID: zEfrRjJIQyKiEXPATz3e7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,168,1719903600"; d="scan'208";a="62300154"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 14:37:38 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 14:37:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 14:37:37 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 14:37:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M9l5E5OvEEQLZsL0rbCH03oMX+QAZBigg7/g3LF6fjuelk771Wf8IUJEeQVY0oYeBLAF51CS/a8jr6p0RMCNc5qD2GRh7+Zmin5Xri7EQFdeFrDBcJDlqw2NuOGxDnstS2/GVNU3WrLOV2GgvMHNcRVa85bceG+7H60KMdZ5cIlLODxf+kmuIeM1tKxaAD1s1H05y9UNssB2R2lcJenwNdzWpWdVG+niQq62lQ+RwvYUu5qATEFPVIR4o37/C6yGHj6dMyQCs16/tKcMiD6gyV867Ii5fumT9L7rWtzRwIJbPxY4VLiCsxlp/xzDJmMx12QW5ium7m+cob0zbNazLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R5o/kXMw5+gvBAuDyCdTqUED8YWV9HbsC8lWqMbNdbo=;
 b=FiOOr4RNqD1OgP5d8kEnUoz/TCTDRKrFXyHQtwNl1uD2Jsd7C8+t7Jq+DKzqut62XRpi5gVCVgMcFC5daZyFqUoJdunKRvEZWuAurJY/YVxOva7oRUJkWFSjgGi80u5d/WG1/QOrPYOc37aNEosSDYC99WH9nw4xS6Zdd1XhoNz1XDOWAhPoRqUDcqj88cg3B9Z1nSkxthDSlXCHuVnMlmdIJYhiwm6F++9H8oD/ag/ip9B1bWqJc5L5JPZvO9g2K3WQm2wbkD1wErm+WyE8/x4Zm9Tg6yxczExtnPKI6jEjPD/1X0hhJsVb53LVwm+0pI4XvLjJZxPEr65i71/kWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MW6PR11MB8340.namprd11.prod.outlook.com (2603:10b6:303:23e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.19; Thu, 22 Aug
 2024 21:37:30 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7875.019; Thu, 22 Aug 2024
 21:37:30 +0000
Date: Thu, 22 Aug 2024 17:37:26 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/7] drm/i915/vblank: use drm_crtc_vblank_crtc() instead
 of open-coding
Message-ID: <ZsevliFCmkuU4Fga@intel.com>
References: <cover.1724342644.git.jani.nikula@intel.com>
 <78198ade92da1d978f2032c50b3b50e3f8f01701.1724342644.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <78198ade92da1d978f2032c50b3b50e3f8f01701.1724342644.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0227.namprd04.prod.outlook.com
 (2603:10b6:303:87::22) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MW6PR11MB8340:EE_
X-MS-Office365-Filtering-Correlation-Id: 7d8476e2-bd89-489b-b522-08dcc2f29f93
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?4BYS2OlUgokRY6Lb+AT8C2HJSeyyAiDPWkKv7/SSkL0iPA1vnkr6zLOeNCQ7?=
 =?us-ascii?Q?NxUCgStSO5+Wsird489piew1C6UHBAsyLPtQjdJjiQC7I/F3DKuGG5UpLrgU?=
 =?us-ascii?Q?1Nu/1KQ68KAfeEZ5OsFPDH3lAKPYYFaxPyJ3kL3CHY+BlRoxZOmqHhGOnv2i?=
 =?us-ascii?Q?mRE57MAxifiN9fWvFL6l6NMP6IGvHF7+uJ+2nIJ1arEoUWGo5VVjR61xf0rA?=
 =?us-ascii?Q?/LQOiUlKUHvEoqUNVcsc2sFvv3DvGsvsxUPQ1n3plys3jtJzdiXtXI9cHOVA?=
 =?us-ascii?Q?WISMHaDSvsEi/ihuEt/f1vgUWADHny193Q4rRoByAwV2D1qDbaW+Y4+jxnNK?=
 =?us-ascii?Q?bzp15Mj6ByQEGMhJlTKD7R7Pr1qg8FTGsaBxEkBmklJ26R/8x1IcBft7cu6a?=
 =?us-ascii?Q?ZpzPzXoWdzqYmOLw7lV9KWXJg3v0vi/Kqb+pMRypvp29UfseuVxMuQ1jSsMQ?=
 =?us-ascii?Q?kYBJWUeDyZbQUeSJLIIBgRANjk0Jmx1lrnzpDNYt0lD7hTNwGcv5u3vfQlXL?=
 =?us-ascii?Q?lLxYoKM9RLq+ingk9+pUi2D1UnnKtT2FQsJ9BPQ58sBX/rLGTNK/4K9StuWh?=
 =?us-ascii?Q?pV2pfBudzajRj0ZBlqc/Nwk3Z4DOFrE0sKflEOpNimeCOiylJGQZRcfh4B6Y?=
 =?us-ascii?Q?byarKqwwer2rNVRoa2zacETW4DLZa6WgESeUMpNCOWIVASKPPUO6zc1os+nw?=
 =?us-ascii?Q?H7ogNVa5PNYJ1M648I4zj5Cer9RUJW8OvxBqQUQxe6+lDr4miIi6/4U892/y?=
 =?us-ascii?Q?fekdfzwoMkH1mhEa3mAtCDXuqrDXQSwfhjDy2czPdYAXiT6929tbmdumemKn?=
 =?us-ascii?Q?Ne0S/cnAQc8Y2R2u5oHLqMVyDBdGfKNkLFXo7gfKEwbGVPrDNtnt0tYfcVqW?=
 =?us-ascii?Q?rIQrT4WlnWrePzzTD3Wwx8KoZeB7hSyweL8LM+WNSQfZxjs7VEXYjGo/tTrQ?=
 =?us-ascii?Q?tUtssTXQxwizBGPsp5tTvUzcNLRWnfsDiibCaFx6k0dKH15uy0wiB06uHTfG?=
 =?us-ascii?Q?NtsZSjcMzLXBmxQjAPhlRbSsjjxjHFVWwYWmhcP0PIeQ6CBO57UPtYROn2E/?=
 =?us-ascii?Q?sQI5zsOP5nelYcOZsbIwIgJTDtz+RDqPY/DefsBlG0w6c6NJqgQuN/vhRVO3?=
 =?us-ascii?Q?pSSS6ZDTW4v3YL4GnpekpKFIial2ErJoskmyrHPYq5z5LALJ1CCLiOaO5vKR?=
 =?us-ascii?Q?BLLbPJT1zbz/B06z5nQ4OsB1VTrza31bx/G7/uXbGnOFv76EJn1lM9Bamvlp?=
 =?us-ascii?Q?kZUiehZHcvx8Ca2S1MUz5qq35DBLB9TF0vSxy73WYuJKBdVxNojNvzPuRZks?=
 =?us-ascii?Q?mR/UpX6zXlubDE2tHqOlUd7PkHgVv/ZflXD/VpxJOnEAvg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TXxIguJip1XCGcVNqGCwWsgp9izJk5oVU4vzcu4ep/X8nKuoXclhkXan5p8d?=
 =?us-ascii?Q?nsDN37Cy33hzX9JkinI2MlwJztTQS49HDO0Siu6BG6y61zlJqsuYmScBDBZV?=
 =?us-ascii?Q?9xWtQ4VPp1Ykck0AGeRng2h+XOjiJ+guQXB9JPzq+4QMo5JQ7bGFiCmdqrt1?=
 =?us-ascii?Q?k/yCuseXZ8kQNnc59FPpa+nUMvpBg81LB6Vp8vxaGX9T8MdpMXWrZjw8uTMo?=
 =?us-ascii?Q?V3CqGOrP++Xql3fJ4HAMlxJMwmkQkWsG4iNCY/Qk0ltlvxw2sdFuZozKTbeD?=
 =?us-ascii?Q?3aTbFNUfss7YoIlHyKJZmpU/5CUW3epRGup0k9Qz3DHO3Ld4q9fXlF0KLd9i?=
 =?us-ascii?Q?Da0i789b+QAhOyKvkVV0polecmTWKEIfhOYOQoxe4iE6vhdfMMDwnV6Tiba7?=
 =?us-ascii?Q?nK5rDtrvYqEdV8D02gb81g0bWLILBSXG5k8BwZtcVjhC5WaF5uQcRY3ksRyr?=
 =?us-ascii?Q?FxHljvSaLZoVzIGDM/+YKlNkOZQLUeqmd5xZ7sh/wj811v9obHxFv3dNSraR?=
 =?us-ascii?Q?HQgLp0FTtrDaNK01QgaoLub92SQVJplNn1XvWXrvUcGTDIXAOLCNYwzkl5YU?=
 =?us-ascii?Q?KbycMnlBzUt6wZcVQ5Ta3r93/PJq46yTSqlnyMSh6dbC+EuWBpmrRFgy7u52?=
 =?us-ascii?Q?NIQRPSi3iljdJWdXmczBj3hGPH1J4gyHDdynz3vYheVGisIlDikvfcq8lnay?=
 =?us-ascii?Q?lTBeWn8fJK5ETwTnqIeT3StHtuVbGHgszrECZLiHlbyy9ox6I9qm4X/agUMI?=
 =?us-ascii?Q?k9OPJNHq8wwRIh8osskxDOaurkiP39aMRspIUGZLiiZxx4Q3AHy1XOZHm11m?=
 =?us-ascii?Q?LY+WMWmI59TGOMz5LfHPiE8AeEpPT1P/yhDWNsw1w6nI7TGoXXLjUlEP6Up0?=
 =?us-ascii?Q?DXHaj9AxAIkQB4sxXgkh6UKcbiHJ5KvBz05Qj0vFpZNaXqxwsqxplCvYjKEo?=
 =?us-ascii?Q?oLf3lbzE0YiBMOd0h9Isca0Ylhdfzt7EiR70uGkKMe1CZJhZsOcoR2I0ZuSc?=
 =?us-ascii?Q?VZSI5B3uCkFPIhJrYoqqwpL638+5Dyzheoa531rX6+wIBhP1IfXdCfD2Fdw7?=
 =?us-ascii?Q?dCGvKffErshDVPcTlW4/di+xXy7iEnFtOpOvcPm61Zhd2H0dlzDmpDUpj1eX?=
 =?us-ascii?Q?0c1luZOPshW9dey2CMRnE4alrrHE3gra8+N7U4C8u9xXgLxesZY5UheR2Xdj?=
 =?us-ascii?Q?Gpz+6rG30dBw8CUnCF5N0zM2Uu39AXvo2rplxvVgV8CH44dF/9YuZ46RSyB8?=
 =?us-ascii?Q?GNAMddpwfsa64O3lqZ+0iVe8q7+vzFmkENZGrS1jbyGTn/bfc54A2JBMjmSO?=
 =?us-ascii?Q?S4aP/NXOCz1Z7vAG4cBYLgGsqxmKXRFeVQnVym27To9C/HWmTZV/VZY8CFVU?=
 =?us-ascii?Q?CQru/svNeQZtmhDQWOBnh/wwN0wg7erfm0Ayfjt97/UoM5RPckUR6gFgknye?=
 =?us-ascii?Q?P53bpqnsI6p7irbe5V5QI1y89m/+ghtnDTDS/7ICo9YcdyGCfj4AaZw1jPcZ?=
 =?us-ascii?Q?bThGHQ+zOGy/qkAahC8Vg2kxaOkfTfo0YLEXLw89Mb9/MZL5tItuMbifxWcg?=
 =?us-ascii?Q?HIrT1sbBuN0gadUSpPMYJpOT1ESCanA+rhAI0vJuR0dt/Q6LfGbuMrrwCe2F?=
 =?us-ascii?Q?Vg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d8476e2-bd89-489b-b522-08dcc2f29f93
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2024 21:37:30.1526 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E8h2APwt4RoZe2JaxhEnXiVArkT1Ffqoh+G9CUEdXEALCQIwnwOxJBNZb01Yqev9wL+XOly0RktlorQ7B8a91Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8340
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

On Thu, Aug 22, 2024 at 07:04:49PM +0300, Jani Nikula wrote:
> There's a helper for drm->vblank[drm_crtc_index(crtc)], use it.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vblank.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index f183e0d4b2ba..551e9ca9bb99 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -68,7 +68,7 @@
>  u32 i915_get_vblank_counter(struct drm_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
> -	struct drm_vblank_crtc *vblank = &dev_priv->drm.vblank[drm_crtc_index(crtc)];
> +	struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(crtc);
>  	const struct drm_display_mode *mode = &vblank->hwmode;
>  	enum pipe pipe = to_intel_crtc(crtc)->pipe;
>  	u32 pixel, vbl_start, hsync_start, htotal;
> @@ -120,7 +120,7 @@ u32 i915_get_vblank_counter(struct drm_crtc *crtc)
>  u32 g4x_get_vblank_counter(struct drm_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
> -	struct drm_vblank_crtc *vblank = &dev_priv->drm.vblank[drm_crtc_index(crtc)];
> +	struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(crtc);
>  	enum pipe pipe = to_intel_crtc(crtc)->pipe;
>  
>  	if (!vblank->max_vblank_count)
> -- 
> 2.39.2
> 
