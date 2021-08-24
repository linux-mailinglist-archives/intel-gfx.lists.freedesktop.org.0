Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D72D3F5D90
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Aug 2021 13:59:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B383B89BE8;
	Tue, 24 Aug 2021 11:59:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B0CB89BE8
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Aug 2021 11:59:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="204430229"
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="204430229"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 04:59:38 -0700
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="526605917"
Received: from sgillelx-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.255.37.123])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 04:59:37 -0700
Date: Tue, 24 Aug 2021 07:59:36 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 daniel@ffwll.ch
Message-ID: <YSTfKKa1Zkr6o4l+@intel.com>
References: <cover.1629721467.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1629721467.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/6] drm/i915/display: split out some dpt
 and fb stuff from intel_display.c
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

On Mon, Aug 23, 2021 at 03:25:30PM +0300, Jani Nikula wrote:
> Make some forward progress on reducing intel_display.c size.
> 
> Jani Nikula (6):
>   drm/i915/display: split out dpt out of intel_display.c
>   drm/i915: add HAS_ASYNC_FLIPS feature macro
>   drm/i915/fb: move intel_tile_width_bytes() to intel_fb.c
>   drm/i915/fb: move intel_fb_align_height() to intel_fb.c
>   drm/i915/fb: move intel_surf_alignment() to intel_fb.c
>   drm/i915/fb: move user framebuffer stuff to intel_fb.c
> 
>  drivers/gpu/drm/i915/Makefile                |   1 +
>  drivers/gpu/drm/i915/display/intel_display.c | 709 +------------------
>  drivers/gpu/drm/i915/display/intel_display.h |   6 -
>  drivers/gpu/drm/i915/display/intel_dpt.c     | 229 ++++++
>  drivers/gpu/drm/i915/display/intel_dpt.h     |  19 +
>  drivers/gpu/drm/i915/display/intel_fb.c      | 481 +++++++++++++
>  drivers/gpu/drm/i915/display/intel_fb.h      |  20 +-
>  drivers/gpu/drm/i915/display/intel_fbdev.c   |   1 +
>  drivers/gpu/drm/i915/i915_drv.h              |   2 +
>  9 files changed, 752 insertions(+), 716 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dpt.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dpt.h

I believe it would be good to add a /** DOC: */ or at least
a simple comment block explaining a bit what DPT is.

But other than that the series looks good, so, up to you:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
(for the series)

> 
> -- 
> 2.20.1
> 
