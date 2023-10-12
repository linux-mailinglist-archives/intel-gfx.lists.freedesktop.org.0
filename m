Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC8C7C70EA
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 17:04:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 163C610E4FA;
	Thu, 12 Oct 2023 15:04:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B9B810E4FA
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 15:04:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697123076; x=1728659076;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=TvttlZL03ip1vEvwJ96VfrDAViQDb08EDVHAkkfpLoY=;
 b=a7XP9S5CWqpHnv2pYRDI6DfDyw0aUp974BkNWjGIbSkjfJfN4ljQ0SWr
 W/AXtIMzCI8IsXZEF6JVc4FSJq5JKtuH2A6EkuqvNOKoXQy4DDvu2b9fb
 i8gQUKXWsmvWZ4V/g2pqBzueJTPpyKC4Fe9PLR5AAsEXNZSsTiARIOvna
 ytD05QyoYopG+7hIXK7O50MOXBqHlmFoeFuqLwaqJ8VgYiJ3OyRkvC3wT
 lnVL8CLmKef9BtkQaW/va8ocrlGt5r0cFyyVLxicizwEniwmA8hf4bVyT
 x1phcDy5nDkkD0dgnwHB76JLH9LJB0nBMD+VE4/r+sIHxZNCDrJSqNNlT w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="364308091"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="364308091"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 08:04:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="754308316"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="754308316"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 08:04:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231010114120.2504103-1-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231010114120.2504103-1-jouni.hogander@intel.com>
Date: Thu, 12 Oct 2023 18:04:23 +0300
Message-ID: <871qdz287c.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 00/25] Framework for display parameters
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 10 Oct 2023, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Currently all module parameters are handled by i915_param.c/h. This
> is a problem for display parameters when Xe driver is used.
>
> This patch set adds a mechanism to add parameters specific to the
> display. This is mainly copied from existing i915 parameters
> implementation with some naming changes and taking into account
> varying driver name.
>
> Also all display specific module parameters are moved under display and t=
he
> module parameter are all converted as non-writable. This should be ok
> as we have writable device parameters under debugfs.

I did not do a detailed review, but quickly glanced through the series,
and I think the approach is fine.

Acked-by: Jani Nikula <jani.nikula@intel.com>

But needs a detailed review.

>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>
> Jouni H=C3=B6gander (25):
>   drm/i915/display: Add framework to add parameters specific to display
>   drm/i915/display: Dump also display parameters into GPU error dump
>   drm/i915/display: Move enable_fbc module parameter under display
>   drm/i915/display: Move psr related module parameters under display
>   drm/i915/display: Move vbt_firmware module parameter under display
>   drm/i915/display: Move lvds_channel_mode module parameter under
>     display
>   drm/i915/display: Move panel_use_ssc module parameter under display
>   drm/i915/display: Move vbt_sdvo_panel_type module parameter under
>     display
>   drm/i915/display: Move enable_dc module parameter under display
>   drm/i915/display: Move enable_dpt module parameter under display
>   drm/i915/display: Move enable_sagv module parameter under display
>   drm/i915/display: Move disable_power_well module parameter under
>     display
>   drm/i915/display: Move enable_ips module parameter under display
>   drm/i915/display: Move invert_brightness module parameter under
>     display
>   drm/i915/display: Move edp_vswing module parameter under display
>   drm/i915/display: Move fastboot module parameter under display
>   drm/i915/display: Move enable_dpcd_backlightmodule parameter under
>     display
>   drm/i915/display: Move load_detect_test parameter under display
>   drm/i915/display: Move force_reset_modeset_test parameter under
>     display
>   drm/i915/display: Move disable_display parameter under display
>   drm/i915/display: Use device parameters instead of module in
>     I915_STATE_WARN
>   drm/i915/display: Move verbose_state_checks under display
>   drm/i915/display: Move nuclear_pageflip under display
>   drm/i915/display: Move enable_dp_mst under display
>   drm/i915/display: Use same permissions for enable_sagv as for rest
>
>  drivers/gpu/drm/i915/Makefile                 |   2 +
>  drivers/gpu/drm/i915/display/hsw_ips.c        |   4 +-
>  drivers/gpu/drm/i915/display/i9xx_wm.c        |   2 +-
>  .../gpu/drm/i915/display/intel_backlight.c    |   9 +-
>  drivers/gpu/drm/i915/display/intel_bios.c     |   6 +-
>  drivers/gpu/drm/i915/display/intel_crt.c      |   4 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
>  drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
>  .../gpu/drm/i915/display/intel_display_core.h |   2 +
>  .../drm/i915/display/intel_display_debugfs.c  |   2 +
>  .../display/intel_display_debugfs_params.c    | 176 ++++++++++++++
>  .../display/intel_display_debugfs_params.h    |  14 ++
>  .../drm/i915/display/intel_display_device.c   |  13 +-
>  .../drm/i915/display/intel_display_device.h   |   1 +
>  .../drm/i915/display/intel_display_params.c   | 221 ++++++++++++++++++
>  .../drm/i915/display/intel_display_params.h   |  62 +++++
>  .../drm/i915/display/intel_display_power.c    |  14 +-
>  .../drm/i915/display/intel_display_reset.c    |   2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |   6 +-
>  .../drm/i915/display/intel_dp_aux_backlight.c |   4 +-
>  drivers/gpu/drm/i915/display/intel_dpt.c      |   6 +-
>  drivers/gpu/drm/i915/display/intel_fb.c       |   2 +-
>  drivers/gpu/drm/i915/display/intel_fbc.c      |  10 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c     |   4 +-
>  drivers/gpu/drm/i915/display/intel_opregion.c |   2 +-
>  drivers/gpu/drm/i915/display/intel_panel.c    |   4 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      |  14 +-
>  .../drm/i915/display/skl_universal_plane.c    |   2 +-
>  drivers/gpu/drm/i915/display/skl_watermark.c  |   5 +-
>  drivers/gpu/drm/i915/i915_driver.c            |   2 +
>  drivers/gpu/drm/i915/i915_gpu_error.c         |   3 +
>  drivers/gpu/drm/i915/i915_gpu_error.h         |   2 +
>  drivers/gpu/drm/i915/i915_params.c            |  94 --------
>  drivers/gpu/drm/i915/i915_params.h            |  23 --
>  34 files changed, 553 insertions(+), 170 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_debugfs_pa=
rams.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_debugfs_pa=
rams.h
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_params.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_params.h

--=20
Jani Nikula, Intel
