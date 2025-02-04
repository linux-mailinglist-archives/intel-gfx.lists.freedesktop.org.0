Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C98C4A26DF1
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 10:09:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 666C210E5D5;
	Tue,  4 Feb 2025 09:09:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cp0GPdGr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAFD210E2C7;
 Tue,  4 Feb 2025 09:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738660188; x=1770196188;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=9ePZD5cayTB2a+fhmgINmNrme8C+plvievKAozEc+TI=;
 b=Cp0GPdGrIotirE/8EzO9PtL6SJRx+4eAwEJLVfYuuc+CElOWvKERgccn
 JPYqn50yYfTMshQ6quti/odZHKofiiAmZc0RyMKXjD3kBnpp40N8s2JQw
 rZ45Akd/9B1GvVTlraBuIdEY2feqOJSVJyKcsQBY8whQIYm4/J7o4cAL6
 ozpjDmDN0b7ivGMOH4nsfh7iX1AT/3T3LASOXpL2c0ETXw6kQjo1xa1rh
 1pQUe8nUZCUXDtoVd2vqBqfAnZPtg/hi/6XodyQwMjW8nybCXRw4XrCn7
 40Sk66hGKRvY8PMlCg2NqYQJ44GPa4IjAyCr9mQGI56FZIq4DJMlSekZo A==;
X-CSE-ConnectionGUID: H1ABslUpQNKZf/KPIOUnDA==
X-CSE-MsgGUID: 8C0JKzX8SJ+FtVnwGs0rfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="39332408"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="39332408"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 01:09:37 -0800
X-CSE-ConnectionGUID: mtyVD08jQR+Jx4daBJJCxw==
X-CSE-MsgGUID: pwSwcyX1T5OKZ3Lv6fSGcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="110502893"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.139])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 01:09:34 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com
Subject: Re: [PATCH v6 0/7] drm/i915/xe3: FBC Dirty rect feature support
In-Reply-To: <20250130210027.591927-1-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250130210027.591927-1-vinod.govindapillai@intel.com>
Date: Tue, 04 Feb 2025 11:09:31 +0200
Message-ID: <875xlq6ppw.fsf@intel.com>
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

On Thu, 30 Jan 2025, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> Dirty rect support for FBC in xe3 onwards based on the comments after the
> initial RFC series.

I think "drm/i915/fbc" subject prefix is more appropriate than
"drm/i915/xe3".

(Please don't resend just for that.)

>
> v2: Dirty rect related compute and storage moved to fbc state (Ville)
>
> V3: Dont call fbc activate if FBC is already active
>
> v4: Dirty rect compute and programming moved within DSB scope
>     New changes are added as separate patches to make it easy for review
>     But could be squashed if the reviews as ok.
>
> v5: add HAS_FBC_DIRTY_RECT()
>     FBC Damage area updates in 3 steps. 
>     1. As part of plane_atomic_check() get, adjust coordinates and store
>        the merged damage area in plane_state
>     2. Atomic_commit, update merged damage are to fbc_state and prepare the
>        damage area satifying all conditions
>     3  update the FBC dirty rect registers as part of DSB commit.
>
> v6: Use dmage_merged helper earlier to handle bigjoiner cases (Ville)
>     Place the damage_merged handling code under HAS_FBC_DIRTY_RECT()
>     Added a variable to check if the damage_merged received from
>     the helper is valid. And if it is not valid, the FBC dirty rect
>     is updated with full plane reqion.
>
> Vinod Govindapillai (7):
>   drm/i915/xe3: add register definitions for fbc dirty rect support
>   drm/i915/xe3: introduce HAS_FBC_DIRTY_RECT() for FBC dirty rect
>     support
>   drm/damage-helper: add const qualifier in
>     drm_atomic_helper_damage_merged()
>   drm/i915/xe3: update and store the plane damage clips
>   drm/i915/xe3: dirty rect support for FBC
>   drm/i915/xe3: avoid calling fbc activate if fbc is active
>   drm/i915/xe3: disable FBC if PSR2 selective fetch is enabled
>
>  drivers/gpu/drm/drm_damage_helper.c           |   2 +-
>  .../gpu/drm/i915/display/intel_atomic_plane.c |  28 ++++
>  drivers/gpu/drm/i915/display/intel_display.c  |   7 +
>  .../drm/i915/display/intel_display_device.h   |   1 +
>  .../drm/i915/display/intel_display_types.h    |   2 +
>  drivers/gpu/drm/i915/display/intel_fbc.c      | 152 +++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_fbc.h      |   6 +
>  drivers/gpu/drm/i915/display/intel_fbc_regs.h |   9 ++
>  .../drm/i915/display/skl_universal_plane.c    |  45 +++++-
>  include/drm/drm_damage_helper.h               |   2 +-
>  10 files changed, 246 insertions(+), 8 deletions(-)

-- 
Jani Nikula, Intel
