Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 602C3467488
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 11:07:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8847B73CCC;
	Fri,  3 Dec 2021 10:07:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F00473CCC
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Dec 2021 10:07:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="236762363"
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="236762363"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 02:07:17 -0800
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="501133209"
Received: from chobbs-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.2.56])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 02:07:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <cover.1638366969.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1638366969.git.jani.nikula@intel.com>
Date: Fri, 03 Dec 2021 12:07:13 +0200
Message-ID: <87ilw6gfxq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 00/10] drm/i915: break
 intel_display_types.h dependency on i915_drv.h
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

On Wed, 01 Dec 2021, Jani Nikula <jani.nikula@intel.com> wrote:
> v2 of https://patchwork.freedesktop.org/series/97173/
>
> BR,
> Jani.

Pushed, thanks for the reviews!

BR,
Jani.


>
>
> Jani Nikula (10):
>   drm/i915/display: add intel_crtc_wait_for_next_vblank() and use it
>   drm/i915/crtc: rename intel_get_crtc_for_pipe() to
>     intel_crtc_for_pipe()
>   drm/i915/crtc: rename intel_get_crtc_for_plane() to
>     intel_crtc_for_plane()
>   drm/i915/display: remove intel_wait_for_vblank()
>   drm/i915/crtc: un-inline some crtc functions and move to
>     intel_crtc.[ch]
>   drm/i915/fb: move intel_fb_uses_dpt to intel_fb.c and un-inline
>   drm/i915: split out intel_pm_types.h
>   drm/i915: move enum hpd_pin to intel_display.h
>   drm/i915/display: convert dp_to_i915() to a macro
>   drm/i915/display: stop including i915_drv.h from intel_display_types.h
>
>  .../gpu/drm/i915/display/intel_atomic_plane.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  4 +-
>  drivers/gpu/drm/i915/display/intel_crt.c      |  6 +-
>  drivers/gpu/drm/i915/display/intel_crtc.c     | 42 +++++++++
>  drivers/gpu/drm/i915/display/intel_crtc.h     | 10 +++
>  drivers/gpu/drm/i915/display/intel_display.c  | 56 ++++++------
>  drivers/gpu/drm/i915/display/intel_display.h  | 24 +++++
>  .../drm/i915/display/intel_display_types.h    | 72 +++------------
>  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>  .../drm/i915/display/intel_dp_aux_backlight.c |  1 +
>  .../drm/i915/display/intel_dp_link_training.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_dsi.c      |  2 +
>  drivers/gpu/drm/i915/display/intel_fb.c       | 11 +++
>  drivers/gpu/drm/i915/display/intel_fb.h       |  2 +
>  drivers/gpu/drm/i915/display/intel_fb_pin.c   | 10 +--
>  drivers/gpu/drm/i915/display/intel_fdi.c      |  4 +-
>  .../drm/i915/display/intel_fifo_underrun.c    | 10 +--
>  .../drm/i915/display/intel_plane_initial.c    |  5 +-
>  drivers/gpu/drm/i915/display/intel_quirks.c   |  1 +
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_sprite.c   |  4 +-
>  drivers/gpu/drm/i915/display/intel_tv.c       |  7 +-
>  drivers/gpu/drm/i915/display/intel_vdsc.c     |  2 +-
>  drivers/gpu/drm/i915/i915_drv.h               | 88 +------------------
>  drivers/gpu/drm/i915/i915_irq.c               |  6 +-
>  drivers/gpu/drm/i915/i915_trace.h             |  4 +-
>  drivers/gpu/drm/i915/intel_pm.c               | 12 +--
>  drivers/gpu/drm/i915/intel_pm_types.h         | 76 ++++++++++++++++
>  29 files changed, 252 insertions(+), 217 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/intel_pm_types.h

-- 
Jani Nikula, Intel Open Source Graphics Center
