Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A70AA5CD1F
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 19:04:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A49A10E655;
	Tue, 11 Mar 2025 18:04:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WBPkLzAN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A05810E64C;
 Tue, 11 Mar 2025 18:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741716251; x=1773252251;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=TuG25Ln5qeCsNKvQYwrq6wpjjlzdssF36uQuJ07ut3E=;
 b=WBPkLzANNkyV55BkkGJbBoB4Np8zMqrE0ko/jko01lmgawPvwEq06una
 g78oFrqPvnge99uLHfUNAP/lz2xIm8pnUUM+ReVcY5Iuqtt0V5Mp+/wWd
 Mg5ZJXIpzOMkL1vOgw3cfRK6pJQZerHcHXjz5IF5nLF9b8OEynhq885wy
 SNcmTCebkxOQyjEaDvGjFwH96x5af63gmPUm4ELbvUX+Ec0Kh6dR+PEq3
 KbMqZMEYs2ZMvW3MhTi9PTVy+icPtF1gDQTCUeGbTkxohbj9ljdSRHhxm
 W/zOlKaM1Yg5ZNvm3E0VWYJwkwz4+G8u0U/3HUk0OgW+WJ8hzcqLuijQ9 A==;
X-CSE-ConnectionGUID: /FHJa/AZQ6Wxp5FQwRqCAQ==
X-CSE-MsgGUID: B25I65m3QqaACW1eT/dirg==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="53763404"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="53763404"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 11:04:11 -0700
X-CSE-ConnectionGUID: uEcLEygPSoaj9iNMxK4vtg==
X-CSE-MsgGUID: QByVHIV3Qb6iRjV9d4I7Gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="157594277"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 11:04:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, Gustavo Sousa <gustavo.sousa@intel.com>
Subject: Re: [PATCH v5 1/3] drm/i915/display: Convert intel_bw.c internally
 to intel_display
In-Reply-To: <20250311-xe3lpd-bandwidth-update-v5-1-a95a9d90ad71@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250311-xe3lpd-bandwidth-update-v5-0-a95a9d90ad71@intel.com>
 <20250311-xe3lpd-bandwidth-update-v5-1-a95a9d90ad71@intel.com>
Date: Tue, 11 Mar 2025 20:04:04 +0200
Message-ID: <87zfhrfnqj.fsf@intel.com>
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

On Tue, 11 Mar 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 048be287224774110d94fe2944daa580d8dc20a6..6f805af32926d3608929655de97699747d7a5798 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -39,14 +39,15 @@ struct intel_qgv_info {
>  	u8 deinterleave;
>  };
>  
> -static int dg1_mchbar_read_qgv_point_info(struct drm_i915_private *dev_priv,
> +static int dg1_mchbar_read_qgv_point_info(struct intel_display *display,
>  					  struct intel_qgv_point *sp,
>  					  int point)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);

This is reviewed already, and I'm not requesting changes, but for future
reference, I tend to keep the dev_priv name where it's already being
used. We don't really benefit from dev_priv -> i915 conversions anymore
in display, they'll all need to be removed eventually, but this causes
extra churn where none is required.

>  	u32 dclk_ratio, dclk_reference;
>  	u32 val;
>  
> -	val = intel_uncore_read(&dev_priv->uncore, SA_PERF_STATUS_0_0_0_MCHBAR_PC);
> +	val = intel_uncore_read(&i915->uncore, SA_PERF_STATUS_0_0_0_MCHBAR_PC);

Like above.


BR,
Jani.


-- 
Jani Nikula, Intel
