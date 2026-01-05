Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D995BCF3AED
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 14:03:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B89A10E25A;
	Mon,  5 Jan 2026 13:03:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vx/F1Jj/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9C0010E085;
 Mon,  5 Jan 2026 13:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767618179; x=1799154179;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=2JJQFbwCKKO9HtUOBKUjzQCwebLhRF1Ct6OWk34CqTA=;
 b=Vx/F1Jj/a7bLvID5xtaOb+sARLxXCv+4nIhFgewLq73X/c40dqn/n6sR
 h4QGzsl+jj1UXRdbmzRpVc4qZnTukts07GRS4/Imlj4+2zk9w66zWKaBA
 V9R5i/T5RwB1AXrNvQkW3rxn7sQkhHI8E1CElhuuAT+2C8bpe2RfCGSGS
 yZ49fY8eexwiObK7oX60TyMPxC5JQd6E8pqHt0jyJIIQoO5ZDw/V5JIF5
 jQAXg6jo9DSLPxDHciJFwOScbyIYumnUgsY/6M9rn0eSzzl81nrvOk1Zc
 Z73Y4gYvTE4WN+zlcVr+QquV5r+h+bY5jutiXFuxSZAdW4R/jNQQckB7M w==;
X-CSE-ConnectionGUID: B0HXq63IRWulHPIDJ8TOlA==
X-CSE-MsgGUID: Mh16WXNIROuQ2nSFApqxWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="79286353"
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="79286353"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 05:02:59 -0800
X-CSE-ConnectionGUID: p9d7k6dPR3yAmSFdVG7PPA==
X-CSE-MsgGUID: sgKiPZ45Ry+zMQFB9+dpxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="202153126"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.3])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 05:02:57 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com, imre.deak@intel.com,
 jouni.hogander@intel.com
Subject: Re: [PATCH 7/9] drm/i915/display: psr enable DC3CO support
In-Reply-To: <20251209113332.2770263-8-dibin.moolakadan.subrahmanian@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
 <20251209113332.2770263-8-dibin.moolakadan.subrahmanian@intel.com>
Date: Mon, 05 Jan 2026 15:02:53 +0200
Message-ID: <6a34a806cbb5c8a2ebe2f6c541cf8b3b6d0bac95@intel.com>
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

On Tue, 09 Dec 2025, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
> if DC3CO allowed and psr2 is enabled, update dc3co_source

Yeah, I can read the code, but what does it mean? Why?

>
> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 9c616f449ad6..d4c5dc6dcc82 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -3007,6 +3007,12 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
>  		if (crtc_state->crc_enabled && psr->enabled)
>  			intel_psr_force_update(intel_dp);
>  
> +		if (psr->enabled &&
> +		    psr->sel_update_enabled &&
> +		    intel_dc3co_allowed(display)) {
> +			intel_dc3co_source_set(display, DC3CO_SOURCE_PSR2);
> +		}
> +
>  		/*
>  		 * Clear possible busy bits in case we have
>  		 * invalidate -> flip -> flush sequence.

-- 
Jani Nikula, Intel
