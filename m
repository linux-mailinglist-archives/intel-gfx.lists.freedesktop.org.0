Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 183F5A30C87
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 14:11:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC0BD10E6B7;
	Tue, 11 Feb 2025 13:10:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ithpXCx3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED89710E6B7;
 Tue, 11 Feb 2025 13:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739279458; x=1770815458;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=dnwOVIGEE/vRZWu9WSiV/SBtLaWV4mCqZcEhizty4y0=;
 b=ithpXCx31v3oCl1SIh7y6qFoB5d8MuiBNrXIQhhhrB5rgQTp1u+rFUrC
 +asFgNzn21Zo3i9oCDOvSQuCll/nbjkK23EA25VUVI2TIsHHmwLBqeHtV
 1nyMdXKfyMq6kdWWXtAxeqn2CKcEbNahgJNRZJgakLqM7uDo1EP623uIm
 wweCTTlVD59TJaEEvWui0z7roE3E6CIn+Ayu1KqbBSnO3EP8CWhHQ04k7
 +oa5XCwD9rU0Eq7m513zEkgviDoUb4+T9KxxkbKaq4sQ1xizWMbrQ5yrV
 mk7K2TFnD/pPG7cx7LX/ESwWNoNPBlIXMit/bUa73tXd200MPg+uwBGoN w==;
X-CSE-ConnectionGUID: P/rLbk3xTk22rCbHK6Zf5w==
X-CSE-MsgGUID: S963rg0xSfqKNx83VN3pTA==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="43823496"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="43823496"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 05:10:52 -0800
X-CSE-ConnectionGUID: OeawhIJ5R2uNChBnKWL5HA==
X-CSE-MsgGUID: wyvdGzpKSNK1Vz1fS3nxPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="135753564"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.93])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 05:10:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH 5/9] drm/i915/dpll: Use intel_display possible in
 shared_dpll_mgr hooks
In-Reply-To: <20250211104857.3501566-6-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250211104857.3501566-1-suraj.kandpal@intel.com>
 <20250211104857.3501566-6-suraj.kandpal@intel.com>
Date: Tue, 11 Feb 2025 15:10:46 +0200
Message-ID: <87seok1vah.fsf@intel.com>
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

On Tue, 11 Feb 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> We use intel_display for function hooks of shared_dpll_mgr and
> any function that gets called when we use for_each_shared_dpll.
> This also contains some opportunistic display->platform.xx changes
> all to reductate the use of drm_i915_private.
>
> --v2
> -rebase
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---


>  	/*
>  	 * Try to set up the PCH reference clock once all DPLLs
>  	 * that depend on it have been shut down.
>  	 */
> -	if (i915->display.dpll.pch_ssc_use & BIT(id))
> -		intel_init_pch_refclk(i915);
> +	if (display->dpll.pch_ssc_use & BIT(id))
> +		intel_init_pch_refclk(to_i915(display->drm));

For future reference:

- Please don't add inline uses of to_i915().

- There's too much going on in one patch.

Regardless, this is supposed to be non-functional, so I'll let it pass.


Reviewed-by: Jani Nikula <jani.nikula@intel.com>


-- 
Jani Nikula, Intel
