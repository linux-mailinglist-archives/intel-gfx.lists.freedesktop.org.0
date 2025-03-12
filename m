Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42847A5DB64
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 12:26:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D667910E2CA;
	Wed, 12 Mar 2025 11:25:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XedZjtn2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8717E10E2CA;
 Wed, 12 Mar 2025 11:25:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741778757; x=1773314757;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=12HI4BJgAuRbZYmmnWTj9nJPUocuoKG1h0BbcAdDyx4=;
 b=XedZjtn2vYYesnArmhh2cU5jpuAUDsR0UbQ5NCrwSUXMaelgTqM6Y6hd
 jilBXNd+qiWBY3uQsdcHXT7zqPVOhHkHw6cikBwii7ih+w1sUxutKqWYX
 +JG/xmP9YEBqNo1LhXLjTL/uI4wLLx1gxP5uiMOGceJ8EqhJ4qWJktlf+
 RwW0g2kat6/yV3TJkhF2ApNceml1DAbf+Ut9rKuPEQASqaWjPlvbRSWjC
 vQDZBUuJiXDBoGPf4T0hXKts5EDcCZ7QVtsLI9y6gcosnkiQQ76TCJzrX
 n3Dq05Xmbo6Vx+BeNsLRrQhweCUPjs8Ptjmp8m0UMvps/d5CM4Pmyw3O3 Q==;
X-CSE-ConnectionGUID: OGD4YDSmQf6GsnjIRGle2Q==
X-CSE-MsgGUID: QYRgn3VVSQuZQ8hpJDgN0Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="42019041"
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="42019041"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 04:25:57 -0700
X-CSE-ConnectionGUID: r3DAG17oRLueJ9L3eLMN7Q==
X-CSE-MsgGUID: XNd3Ct+7SsGMS11fDMpfvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="143801315"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.23])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 04:25:56 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH] drm/i915/display: Maintain asciibetical order for HAS_*
 macros
In-Reply-To: <20250312054424.1628358-1-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250312054424.1628358-1-ankit.k.nautiyal@intel.com>
Date: Wed, 12 Mar 2025 13:25:53 +0200
Message-ID: <87h63yfq2m.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 12 Mar 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Move HAS_* macros to maintain asciibetical order.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 717286981687..4e9630f65af6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -143,9 +143,11 @@ struct intel_display_platforms {
>  
>  #define HAS_4TILE(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
>  #define HAS_ASYNC_FLIPS(__display)	(DISPLAY_VER(__display) >= 5)
> +#define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >= 13)
>  #define HAS_BIGJOINER(__display)	(DISPLAY_VER(__display) >= 11 && HAS_DSC(__display))
>  #define HAS_CDCLK_CRAWL(__display)	(DISPLAY_INFO(__display)->has_cdclk_crawl)
>  #define HAS_CDCLK_SQUASH(__display)	(DISPLAY_INFO(__display)->has_cdclk_squash)
> +#define HAS_CMRR(__display)		(DISPLAY_VER(__display) >= 20)
>  #define HAS_CMTG(__display)		(!(__display)->platform.dg2 && DISPLAY_VER(__display) >= 13)
>  #define HAS_CUR_FBC(__display)		(!HAS_GMCH(__display) && IS_DISPLAY_VER(__display, 7, 13))
>  #define HAS_D12_PLANE_MINIMIZATION(__display)	((__display)->platform.rocketlake || (__display)->platform.alderlake_s)
> @@ -156,9 +158,9 @@ struct intel_display_platforms {
>  #define HAS_DMC_WAKELOCK(__display)	(DISPLAY_VER(__display) >= 20)
>  #define HAS_DOUBLE_BUFFERED_M_N(__display)	(DISPLAY_VER(__display) >= 9 || (__display)->platform.broadwell)
>  #define HAS_DOUBLE_WIDE(__display)	(DISPLAY_VER(__display) < 4)
> -#define HAS_DP_MST(__display)		(DISPLAY_INFO(__display)->has_dp_mst)
>  #define HAS_DP20(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
>  #define HAS_DPT(__display)		(DISPLAY_VER(__display) >= 13)
> +#define HAS_DP_MST(__display)		(DISPLAY_INFO(__display)->has_dp_mst)
>  #define HAS_DSB(__display)		(DISPLAY_INFO(__display)->has_dsb)
>  #define HAS_DSC(__display)		(DISPLAY_RUNTIME_INFO(__display)->has_dsc)
>  #define HAS_DSC_MST(__display)		(DISPLAY_VER(__display) >= 12 && HAS_DSC(__display))
> @@ -166,8 +168,8 @@ struct intel_display_platforms {
>  #define HAS_FBC_DIRTY_RECT(__display)	(DISPLAY_VER(__display) >= 30)
>  #define HAS_FPGA_DBG_UNCLAIMED(__display)	(DISPLAY_INFO(__display)->has_fpga_dbg)
>  #define HAS_FW_BLC(__display)		(DISPLAY_VER(__display) >= 3)
> -#define HAS_GMBUS_IRQ(__display)	(DISPLAY_VER(__display) >= 4)
>  #define HAS_GMBUS_BURST_READ(__display)	(DISPLAY_VER(__display) >= 10 || (__display)->platform.kabylake)
> +#define HAS_GMBUS_IRQ(__display)	(DISPLAY_VER(__display) >= 4)
>  #define HAS_GMCH(__display)		(DISPLAY_INFO(__display)->has_gmch)
>  #define HAS_HW_SAGV_WM(__display)	(DISPLAY_VER(__display) >= 13 && !(__display)->platform.dgfx)
>  #define HAS_IPC(__display)		(DISPLAY_INFO(__display)->has_ipc)
> @@ -189,8 +191,6 @@ struct intel_display_platforms {
>  					  ((__display)->platform.dgfx && DISPLAY_VER(__display) == 14)) && \
>  					 HAS_DSC(__display))
>  #define HAS_VRR(__display)		(DISPLAY_VER(__display) >= 11)
> -#define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >= 13)
> -#define HAS_CMRR(__display)		(DISPLAY_VER(__display) >= 20)
>  #define INTEL_NUM_PIPES(__display)	(hweight8(DISPLAY_RUNTIME_INFO(__display)->pipe_mask))
>  #define I915_HAS_HOTPLUG(__display)	(DISPLAY_INFO(__display)->has_hotplug)
>  #define OVERLAY_NEEDS_PHYSICAL(__display)	(DISPLAY_INFO(__display)->overlay_needs_physical)

-- 
Jani Nikula, Intel
