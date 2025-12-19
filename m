Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81192CD1BBA
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Dec 2025 21:17:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06A0610F0A6;
	Fri, 19 Dec 2025 20:17:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="THJEopUK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ADD610F093;
 Fri, 19 Dec 2025 20:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766175458; x=1797711458;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=2ReY52uqmidECrdrVSAEzAsUncgOhBtKdje7qBPUGls=;
 b=THJEopUKFPZn/0HPvldWJb+PqtwMBa50uOh/YVN+UGV3cw4+QRr+QIt8
 X5kn6nw/PY+MCVvVNVP51CUrH/1lFb0pD6ap6xgY+wk5izn3uJltAyk47
 EOG3dlrhhctj2OklUB3Bbz/+6EqJWb3e8si3CUBLwW/7BSebaz3yfWxNL
 um0eL2ckUkuaNoPryIHYSkkNHh0WMwFfHqtBd7g1JvYONxblD0iiVNdBm
 0IeA0K1/VJjq8gq8f4aE+SG3W7ewsmLnngiqSOuilma98QBVC7TzthzSC
 erKNLJcjSmZ7o/1tbJ2dgs58me37lYuoM+smy37aWJTKyOixLhQ+EHoNT Q==;
X-CSE-ConnectionGUID: bI+03UejTtWRMvm7Kk9HZA==
X-CSE-MsgGUID: cX8x+z1VQQu/l5V5tPVwRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11647"; a="55712346"
X-IronPort-AV: E=Sophos;i="6.21,162,1763452800"; d="scan'208";a="55712346"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 12:17:38 -0800
X-CSE-ConnectionGUID: vVBJq3gcQ/WxRaJmbOx1Fg==
X-CSE-MsgGUID: xETojZwsQ5+Jr/zexDr+sQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,162,1763452800"; d="scan'208";a="204024778"
Received: from jjgreens-desk21.amr.corp.intel.com (HELO localhost)
 ([10.124.220.15])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 12:17:36 -0800
Date: Fri, 19 Dec 2025 22:17:33 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 00/15] drm/{i915, xe}: clean up and deduplicate initial
 plane handling
Message-ID: <aUWy3YTOqqDvGZbS@intel.com>
References: <cover.1765812266.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1765812266.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

On Mon, Dec 15, 2025 at 05:28:14PM +0200, Jani Nikula wrote:
> The i915 and xe initial plane handling deviate at a too high level,
> leading to lots of duplication between the two. This series starts to
> clean it up by moving it to display parent interface, and deduplicating
> piecemeal.
> 
> This is intentionally done in small chunks to ease review and catch
> regressions (hopefully none).
> 
> There's still more to be done, e.g. it's pointless to have both i915 and
> xe call intel_framebuffer_init(), but there's some error path stuff to
> figure out before doing this. And I ran out of steam a bit, and the
> series got pretty long already.
> 
> Anyway, by reducing duplication, the series highlights the differences
> between i915 and xe.
> 
> BR,
> Jani.
> 
> 
> Jani Nikula (15):
>   drm/i915: move display/intel_plane_initial.c to i915_initial_plane.c
>   drm/xe/display: rename xe_plane_initial.c to xe_initial_plane.c
>   drm/i915: rename intel_plane_initial.h to intel_initial_plane.h
>   drm/{i915,xe}: move initial plane calls to parent interface
>   drm/{i915,xe}: deduplicate intel_initial_plane_config() between i915
>     and xe
>   drm/{i915,xe}: deduplicate plane_config_fini() between i915 and xe
>   drm/{i915,xe}: start deduplicating intel_find_initial_plane_obj()
>     between i915 and xe
>   drm/i915: return plane_state from intel_reuse_initial_plane_obj()
>   drm/xe: return plane_state from intel_reuse_initial_plane_obj()
>   drm/i915: further deduplicate intel_find_initial_plane_obj()
>   drm/{i915,xe}: deduplicate intel_alloc_initial_plane_obj() FB modifier
>     checks
>   drm/{i915,xe}: deduplicate initial plane setup
>   drm/{i915,xe}: pass struct drm_plane_state instead of struct drm_crtc
>     to ->setup
>   drm/{i915,xe}: pass struct drm_device instead of drm_device to
>     ->alloc_obj
>   drm/i915: drop dependency on struct intel_display from i915 initial
>     plane

Everything looked quite reasonable. Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  drivers/gpu/drm/i915/Makefile                 |   3 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |   8 +-
>  .../drm/i915/display/intel_display_driver.c   |   2 +-
>  .../drm/i915/display/intel_initial_plane.c    | 193 ++++++++
>  ..._plane_initial.h => intel_initial_plane.h} |   6 +-
>  .../drm/i915/display/intel_plane_initial.c    | 442 ------------------
>  drivers/gpu/drm/i915/i915_driver.c            |   2 +
>  drivers/gpu/drm/i915/i915_initial_plane.c     | 290 ++++++++++++
>  drivers/gpu/drm/i915/i915_initial_plane.h     |   9 +
>  drivers/gpu/drm/xe/Makefile                   |   3 +-
>  drivers/gpu/drm/xe/display/xe_display.c       |   2 +
>  drivers/gpu/drm/xe/display/xe_initial_plane.c | 189 ++++++++
>  drivers/gpu/drm/xe/display/xe_initial_plane.h |   9 +
>  drivers/gpu/drm/xe/display/xe_plane_initial.c | 321 -------------
>  include/drm/intel/display_parent_interface.h  |  17 +
>  15 files changed, 723 insertions(+), 773 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_initial_plane.c
>  rename drivers/gpu/drm/i915/display/{intel_plane_initial.h => intel_initial_plane.h} (60%)
>  delete mode 100644 drivers/gpu/drm/i915/display/intel_plane_initial.c
>  create mode 100644 drivers/gpu/drm/i915/i915_initial_plane.c
>  create mode 100644 drivers/gpu/drm/i915/i915_initial_plane.h
>  create mode 100644 drivers/gpu/drm/xe/display/xe_initial_plane.c
>  create mode 100644 drivers/gpu/drm/xe/display/xe_initial_plane.h
>  delete mode 100644 drivers/gpu/drm/xe/display/xe_plane_initial.c
> 
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
