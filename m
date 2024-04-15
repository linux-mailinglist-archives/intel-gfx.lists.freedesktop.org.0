Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD2B8A4F19
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 14:34:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31FD210E772;
	Mon, 15 Apr 2024 12:34:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AtXuvHz+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD63A11250E
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Apr 2024 12:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713184485; x=1744720485;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=HDWcnE4Kl4vimhOyN6anJw2zZsG742BH9MXDNKjB1+4=;
 b=AtXuvHz+QyxmL9SAajJ15ABf5m+FvJvpl2ZDQgG02qR8GWWFNeFe/Poj
 gDJl7dXgnyQ2YXQ3TtsIIjmbpOJ8zcfPsxna1cKzDkh3nDab4/qIu9hBF
 NxjK1uBEoL0zGHQ9gPsvLsHgZPjK9SkZ+829qP/aybu8ODX61ls7SpZR0
 KKfBe45D/AtLxAn//rVsX0Eat5KwPCLR1pyVZMtpwW8+5Kme5BBW3ulVg
 ZmGo0Y0dPtEZHIVrelzgSfauQwaq7c/bSfDYVhQQHOhEe1K1bE8+OVlFX
 byMlV+6aq4jDqhZYbA+TCCV3c4X7paI3fsld9OaASmKMniHb2Ubo2f5rf Q==;
X-CSE-ConnectionGUID: Oj9mdTXfTIOOLs8iUC3AHQ==
X-CSE-MsgGUID: 0GSkGJUVRCuRZLjHXJ4Hvg==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="33956627"
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="33956627"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 05:34:44 -0700
X-CSE-ConnectionGUID: KnP6eeiPTli4y0Qm2P9rKw==
X-CSE-MsgGUID: V0fxpNWfRHOl6emeuAAGIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="45195410"
Received: from lcariou-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.61.121])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 05:34:43 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 0/8] drm/i915: BXT/GLK per-lane vswing and PHY reg cleanup
In-Reply-To: <20240412175818.29217-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240412175818.29217-1-ville.syrjala@linux.intel.com>
Date: Mon, 15 Apr 2024 15:34:32 +0300
Message-ID: <87pluq3iuf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Fri, 12 Apr 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Start off with a bit of cleanup around the BXT/GLK DPIO
> PHY registers, and finish off with per-lane vswing
> programming.

The series is

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

but I'll add some notes inline.

>
> Ville Syrj=C3=A4l=C3=A4 (8):
>   drm/i915/dpio: Clean up bxt/glk PHY registers
>   drm/i915/dpio: Add per-lane PHY TX register definitons for bxt/glk
>   drm/i915/dpio: Extract bxt_dpio_phy_regs.h
>   drm/i915/dpio: Introdude bxt_ddi_phy_rmw_grp()
>   drm/i915/dpio: Use intel_de_rmw() for BXT DPIO latency optim setup
>   drm/i915/dpio: s/ddi/dpio/ for bxt/glk PHY stuff
>   drm/i915/dpio: Program bxt/glk PHY TX registers per-lane
>   drm/i915: Enable per-lane DP drive settings for bxt/glk
>
>  .../gpu/drm/i915/display/bxt_dpio_phy_regs.h  | 273 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  10 +-
>  .../i915/display/intel_display_power_well.c   |  18 +-
>  .../drm/i915/display/intel_dp_link_training.c |   2 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |   2 +-
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c | 213 ++++++++------
>  drivers/gpu/drm/i915/display/intel_dpio_phy.h |  48 +--
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   3 +-
>  drivers/gpu/drm/i915/i915_reg.h               | 262 -----------------
>  9 files changed, 432 insertions(+), 399 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/bxt_dpio_phy_regs.h

--=20
Jani Nikula, Intel
