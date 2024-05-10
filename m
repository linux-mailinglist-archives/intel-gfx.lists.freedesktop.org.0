Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEAEE8C28F8
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 18:55:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 069DF10E447;
	Fri, 10 May 2024 16:55:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mH57LU7d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD91A10E447;
 Fri, 10 May 2024 16:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715360124; x=1746896124;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=oqX+M6Z181C8i93p/aHIDGY4h+MX/F+LXqajz8h6hTw=;
 b=mH57LU7dTJ3a1EYEi7eJRY9BhjuDPHSLZBTHljG1R/A17PSmVjtvkMMZ
 bNDr2mz87TqBQZLMlSjj5LAtYKPZiU7Xf92oedxrZ2DchVxdgyTgABrKg
 rqhoct5quyjbHiFaUmyuHLeVmKtFrgt4iLpsnochISuxBWPvXK0YPVWS8
 G/x4eguKYEVXVklrAkGg0MAnS4pAQHFbpRvXyZ5Imn74Y18uJSQz7S8YW
 f3CJE+PE1yqxL1bb9gIuTXy62G2UdbjM5xJE6xkG+iRjg0n9gTB9iEl7F
 lvLheyxQq5x5adgpybZi3rTLT8Q2GTHqnZxHpMCc7l2cYkCXdzLd6VQ61 Q==;
X-CSE-ConnectionGUID: iodetKMnQyy6ki9f6xaGnw==
X-CSE-MsgGUID: IVxzciVBQc6tCIQ7cHziug==
X-IronPort-AV: E=McAfee;i="6600,9927,11069"; a="15186305"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="15186305"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 09:55:22 -0700
X-CSE-ConnectionGUID: qvdBxNoARcat1ecfALAXVQ==
X-CSE-MsgGUID: ddhoUU4xQ4udFZsL5tdFjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="29620464"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 May 2024 09:55:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 May 2024 19:55:15 +0300
Date: Fri, 10 May 2024 19:55:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: [PATCH 0/9] drm/i915: Plane fb refactoring
Message-ID: <Zj5Rc5cMrcfnV-aI@intel.com>
References: <20240506125718.26001-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240506125718.26001-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
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

On Mon, May 06, 2024 at 03:57:09PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> A bit of cleanup/refactoring around plane fb stuff.
> This is mainly prep work for a slightly bigger rework
> of alignment handling.
> 
> Ville Syrjälä (9):
>   drm/i915: Split gen2 vs. gen3 .max_stride()
>   drm/i915: Clean up skl+ plane stride limits
>   drm/i915: Drop 'uses_fence' parameter from intel_pin_fb_obj_dpt()
>   drm/i915: Extract intel_plane_needs_physical()
>   drm/i915: Polish types in fb calculations

Pushed up to here. Thanks for the review.

>   drm/i915: Constify 'fb' in during pinning
>   drm/i915: Change intel_fbdev_fb_alloc() reuturn type
>   drm/i915: Cleanup fbdev fb setup
>   drm/i915: Rename the fb pinning functions to indicate the address
>     space

Some of the rest touch xe as well.

Lucas, can you toss me an ack to merge via drm-intel-next?

> 
>  drivers/gpu/drm/i915/display/i9xx_plane.c     | 34 ++++---
>  .../gpu/drm/i915/display/intel_atomic_plane.c |  8 ++
>  .../gpu/drm/i915/display/intel_atomic_plane.h |  1 +
>  drivers/gpu/drm/i915/display/intel_dpt.c      |  6 +-
>  drivers/gpu/drm/i915/display/intel_dpt.h      |  6 +-
>  drivers/gpu/drm/i915/display/intel_fb.c       | 27 +++---
>  drivers/gpu/drm/i915/display/intel_fb_pin.c   | 73 +++++++-------
>  drivers/gpu/drm/i915/display/intel_fb_pin.h   | 12 +--
>  drivers/gpu/drm/i915/display/intel_fbdev.c    | 39 ++++----
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c |  6 +-
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  5 +-
>  .../drm/i915/display/skl_universal_plane.c    | 94 ++++++++++---------
>  drivers/gpu/drm/xe/display/xe_fb_pin.c        | 18 ++--
>  drivers/gpu/drm/xe/display/xe_plane_initial.c |  4 +-
>  14 files changed, 175 insertions(+), 158 deletions(-)
> 
> -- 
> 2.43.2

-- 
Ville Syrjälä
Intel
