Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BEE8B1A482
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 16:22:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D68010E369;
	Mon,  4 Aug 2025 14:22:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hyJow4K2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A8E210E368;
 Mon,  4 Aug 2025 14:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754317352; x=1785853352;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=J24QG2wgeyWXAugf1hXQE3mvvPrlh+VucAcMGxbzLSE=;
 b=hyJow4K2KqKlcJ6MuHvk4A0MjdcaT3iaZUa+jYAaHcS79PTlsk+mL3oE
 aZDZYI1njucIBlSlX6wxrndDON8z2C0e+Rizez7hTLNuhoxxIh6NQjc97
 QmDNcBNDf4H7ZxotQwJgTjAuunvPv9i16E+a++tDOkadCzZe1qb8xj+Cj
 moBvPsi6FqURqkkqxNuBGPtDJ9cf07EoczAI9WJbN7DTLCTa3HrXTZTcE
 CocQ5r+fvJCv2aaobqRh8SSlPejRgitGgKCcZjHfquvFqFk7xEzztEduv
 iDYdwGqoVoWDwMFlo/v/gSQ5qDS5iZv57SZae4jeR7hrBiTG3aAStwmpm g==;
X-CSE-ConnectionGUID: iaEE2G/jR8iVlgvsqyzZwQ==
X-CSE-MsgGUID: oCa83jDjTXCIe9OGNzFoCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56453697"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="56453697"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 07:22:31 -0700
X-CSE-ConnectionGUID: uoj6XdnkTMKZfeqPZrP9PQ==
X-CSE-MsgGUID: bv8kmmP4T/SHFTLBID4mGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="163437902"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.236])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 07:22:29 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 2/4] drm/i915/vrr: Use static guardband to support
 seamless LRR switching
In-Reply-To: <20250707043321.97343-3-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250707043321.97343-1-ankit.k.nautiyal@intel.com>
 <20250707043321.97343-3-ankit.k.nautiyal@intel.com>
Date: Mon, 04 Aug 2025 17:22:26 +0300
Message-ID: <eeda84457c813151a3459a46a91946b4fbbb9e44@intel.com>
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

On Mon, 07 Jul 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> +	io_buffer_wake_ms = intel_encoder_is_c10phy(encoder) ? 9790 : 14790;

9.79 or 14.79 *seconds*?

> +	aux_wake_latency_us =
> +		DIV_ROUND_UP(io_buffer_wake_ms + TFW_EXIT_LATENCY_MS + FAST_WAKE_LATENCY_MS, 1000);

us = ms * 1000, not ms / 1000.

BR,
Jani.

-- 
Jani Nikula, Intel
