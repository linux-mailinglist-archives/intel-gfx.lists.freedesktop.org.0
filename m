Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C555917DBA
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 12:23:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F81F10E836;
	Wed, 26 Jun 2024 10:23:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A5+/iILD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E096810E840
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2024 10:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719397430; x=1750933430;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=lFG8jZ0j/SvTHYmDr6c8nqr12hvqrF76kF80wNNMibQ=;
 b=A5+/iILDziDwXftDHdHLwUNiiN/hzYIbhVpyVvl11DsHln7mcllqBLs+
 vTF62q8tMF+dMXenJPM4IZpDwIgSgQypl2GLjCOXhGjH6si7CN0V5H0JN
 Smm0bgRvb2y9kcf4Pat/FyFhJAFvL38rS2px+j/9i/tQIcCYMgTOeJTrN
 L3A1gZVrxCXNWSXjYNFjwAMWN/mZKY6hn+yl2mmvpWVsx0GRYPKoG1P0U
 6VCYfYMopKESO67RAQkT47Y3WijCteAG+12iq47GQeoH6NkeotyWL7IhQ
 qLgIwrXNJdONf3PxrY0M5XUUmKoA5V1zqRKX52ufK1084JGLZfX79YVrJ Q==;
X-CSE-ConnectionGUID: b63WxP1XSgShqjSs3fB3Og==
X-CSE-MsgGUID: vEC8TWTWT1+ovedfrNUnNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="27082986"
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="27082986"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 03:23:49 -0700
X-CSE-ConnectionGUID: l9v4+sgqTSytX7WdWh5YEA==
X-CSE-MsgGUID: ntBvbR1ZTNOdEooJPdsd2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="44069936"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.95])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 03:23:47 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH 1/4] drm/i915: Add some essential functionality for joiners
In-Reply-To: <20240626081842.10614-2-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240626081842.10614-1-stanislav.lisovskiy@intel.com>
 <20240626081842.10614-2-stanislav.lisovskiy@intel.com>
Date: Wed, 26 Jun 2024 13:23:40 +0300
Message-ID: <87le2sc89f.fsf@intel.com>
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

On Wed, 26 Jun 2024, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index b0cf6ca70952..bac81b7ab764 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -423,10 +423,14 @@ enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port);
>  bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
>  bool is_trans_port_sync_master(const struct intel_crtc_state *state);
>  u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state);
> -bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
> +bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state);
> +bool intel_crtc_is_bigjoiner_primary(const struct intel_crtc_state *crtc_state);
> +bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state);
> +bool intel_crtc_is_ultrajoiner(const struct intel_crtc_state *crtc_state);
> +bool intel_crtc_is_ultrajoiner_primary(const struct intel_crtc_state *crtc_state);
>  u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
> -struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
> +struct intel_crtc *intel_joiner_primary_crtc(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
>  bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  			       const struct intel_crtc_state *pipe_config,

Makes you wonder why most of the joiner stuff has ended up in
intel_display.[ch].

Maybe we should have a dedicated file for the stream splitter/joiner,
with the related things (uncompressed joiner, etc.) moved there from
intel_vdsc.c, leaving that purely for compression.

BR,
Jani.

-- 
Jani Nikula, Intel
