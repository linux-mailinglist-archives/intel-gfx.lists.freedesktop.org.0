Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA42A7DB46
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 12:33:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73AF510E417;
	Mon,  7 Apr 2025 10:33:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PFMRbPMd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CA9710E417;
 Mon,  7 Apr 2025 10:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744022027; x=1775558027;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=1ygYRmPCMtv7fK7r2fSEb9x52ysoIqeWHgwtl7tErQ0=;
 b=PFMRbPMd7eGTyOGa8m+OyF5lJ1E7ja3CX6gaIT5xkK4OCpW6gABix4JT
 ksDj2uD35o+BS0WLpTW1QeA1wmL6oinCA7AUJ2FfkrB7Pa225wUtxy7Pq
 z51ZxpA5UU4oPCfPvOUBoiyFoQfI1wTewRrejn8j0ZoQo8ZREMeeMPXS3
 Otj9dDcU7uUvdKQ1fbx24uYKytBHeiPjQJZPQ2gLz6WoDYmFFLouRpfLY
 wbAZHF0Z0djF7YfAy/oKgH+J803B34oIIaPjJLGWACrXuDyKR3fqQVf9d
 qiy87EGfEse9ecydq9SDkcigSjZm5NgkphxN2srGkM+JenMHDV11hMXYh w==;
X-CSE-ConnectionGUID: Hx8Dt0AmS/uqYQZN2YpD7g==
X-CSE-MsgGUID: esGvmyRmQJ2B2LEVSFeMLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11396"; a="44644834"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="44644834"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 03:33:47 -0700
X-CSE-ConnectionGUID: /d+fux7tQNyr6LC8Ykom1g==
X-CSE-MsgGUID: lwBTZhdLQXaKoXNurf0/XQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="128420121"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.51])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 03:33:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/6] drm/i915/dp_mst: Clean up active stream count tracking
In-Reply-To: <20250404150310.1156696-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250404150310.1156696-1-imre.deak@intel.com>
Date: Mon, 07 Apr 2025 13:33:42 +0300
Message-ID: <874iz0z2ex.fsf@intel.com>
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

On Fri, 04 Apr 2025, Imre Deak <imre.deak@intel.com> wrote:
> As requested by Jani, this patchset cleans up the MST active stream
> count tracking, using the logical name for the counter (stream vs.
> link) and adding helpers to simplify the functions where the counter is
> queried.
>
> Cc: Jani Nikula <jani.nikula@intel.com>

Looks good!

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Imre Deak (6):
>   drm/i915/dp: Rename intel_dp::link_trained to link.active
>   drm/i915/dp_mst: Add intel_dp_mst_{inc,dec}_active_streams()
>   drm/i915/dp_mst: Remove stream count assert from
>     intel_dp_check_mst_status()
>   drm/i915/dp_mst: Rename intel_dp_mst_encoder_active_links() to
>     intel_dp_mst_active_streams()
>   drm/i915/dp_mst: Use intel_dp_mst_active_streams() instead of
>     open-coding it
>   drm/i915/dp_mst: Rename intel_dp::mst.active_links to
>     mst.active_streams
>
>  drivers/gpu/drm/i915/display/g4x_dp.c         |  2 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 10 +--
>  .../drm/i915/display/intel_display_types.h    |  4 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       | 10 ++-
>  .../drm/i915/display/intel_dp_link_training.c |  8 +--
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 66 +++++++++++--------
>  drivers/gpu/drm/i915/display/intel_dp_mst.h   |  2 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  3 +-
>  drivers/gpu/drm/i915/display/intel_tc.c       | 20 +++---
>  9 files changed, 67 insertions(+), 58 deletions(-)

-- 
Jani Nikula, Intel
