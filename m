Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6293D19E9
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 00:47:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A4AC6E0D8;
	Wed, 21 Jul 2021 22:47:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D681789CA2;
 Wed, 21 Jul 2021 22:47:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="211250537"
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="211250537"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 15:47:23 -0700
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="511959626"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 15:47:23 -0700
Date: Wed, 21 Jul 2021 15:47:22 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20210721224722.GM4174536@mdroper-desk1.amr.corp.intel.com>
References: <20210720232014.3302645-1-lucas.demarchi@intel.com>
 <20210720232014.3302645-3-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210720232014.3302645-3-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/gt: nuke unused legacy engine
 hw_id
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
Cc: intel-gfx@lists.freedesktop.org, Tomas Winkler <tomas.winkler@intel.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 20, 2021 at 04:20:12PM -0700, Lucas De Marchi wrote:
> The engine hw_id is only used by RING_FAULT_REG(), which is not used
> since GRAPHICS_VER == 8. We tend to keep adding new defines just to be
> consistent, but let's try to remove them and let them defined to 0 when
> not used.

s/when not used/for engines that only exist on gen8+ platforms/

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

For historical reference, we did use hw_id on gen8+ platforms too until
relatively recently --- it was used to set the engine's guc_id as well
up until:

        commit c784e5249e773689e38d2bc1749f08b986621a26
        Author: John Harrison <John.C.Harrison@Intel.com>
        Date:   Wed Oct 28 07:58:24 2020 -0700

            drm/i915/guc: Update to use firmware v49.0.1


Matt

> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 4 ----
>  drivers/gpu/drm/i915/gt/intel_engine_types.h | 4 ----
>  2 files changed, 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index d561573ed98c..a11f69f2e46e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -80,7 +80,6 @@ static const struct engine_info intel_engines[] = {
>  		},
>  	},
>  	[VCS1] = {
> -		.hw_id = VCS1_HW,
>  		.class = VIDEO_DECODE_CLASS,
>  		.instance = 1,
>  		.mmio_bases = {
> @@ -89,7 +88,6 @@ static const struct engine_info intel_engines[] = {
>  		},
>  	},
>  	[VCS2] = {
> -		.hw_id = VCS2_HW,
>  		.class = VIDEO_DECODE_CLASS,
>  		.instance = 2,
>  		.mmio_bases = {
> @@ -97,7 +95,6 @@ static const struct engine_info intel_engines[] = {
>  		},
>  	},
>  	[VCS3] = {
> -		.hw_id = VCS3_HW,
>  		.class = VIDEO_DECODE_CLASS,
>  		.instance = 3,
>  		.mmio_bases = {
> @@ -114,7 +111,6 @@ static const struct engine_info intel_engines[] = {
>  		},
>  	},
>  	[VECS1] = {
> -		.hw_id = VECS1_HW,
>  		.class = VIDEO_ENHANCEMENT_CLASS,
>  		.instance = 1,
>  		.mmio_bases = {
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 1cb9c3b70b29..a107eb58ffa2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -34,10 +34,6 @@
>  #define VCS0_HW		1
>  #define BCS0_HW		2
>  #define VECS0_HW	3
> -#define VCS1_HW		4
> -#define VCS2_HW		6
> -#define VCS3_HW		7
> -#define VECS1_HW	12
>  
>  /* Gen11+ HW Engine class + instance */
>  #define RENDER_CLASS		0
> -- 
> 2.31.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
