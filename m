Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C325A809C
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 16:50:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5797310E413;
	Wed, 31 Aug 2022 14:49:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA1B710E41A
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Aug 2022 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661957393; x=1693493393;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=5/v7kZ6ETDm7r6dExI0tN8ePASTvj1LInqciyI0mMZk=;
 b=H0jXWF2XlEfCnUbN9V6nTu3Qq0A8IrKH5SPpDrAsdZnm2lqp7dNSOy0J
 MWtWIPs50QlAwOUcGYVguZXdEp1l8cwE2FkAXHBrWoid4iPtqv2CIAmf8
 ttCH/FF4OoHdVMOpEJZdW6vsQqVZJKTGu07tdQNOOEPurnYWB3yk7K6ke
 ifCxBBxXTWiWmeCy3+SewdGTgBLx1F7GfsmlykAoEJVz7z7HsnEtlvpxf
 glr6aXfVQyAD03bPX9nYn/ecIjQEP3bnxaHKmkmDHaDWE+SKXwDPc/0nu
 zx4BD3plov1Dh1ybO2rup9nzVq6wKmUxfT9uJWFNWLDmzOYfbcH8hPOdf Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="296247156"
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="296247156"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 07:49:53 -0700
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="673379784"
Received: from nprotaso-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.43.15])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 07:49:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <cover.1661779055.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1661779055.git.jani.nikula@intel.com>
Date: Wed, 31 Aug 2022 17:49:43 +0300
Message-ID: <87o7w0cvso.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3 00/18] drm/i915: add display sub-struct
 to drm_i915_private
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

On Mon, 29 Aug 2022, Jani Nikula <jani.nikula@intel.com> wrote:
> v3 of https://patchwork.freedesktop.org/series/107170/
>
> Dropped already merged patches, rebased the rest.

And pushed the lot to drm-intel-next. Thanks for the review.

BR,
Jani.

>
> Jani Nikula (18):
>   drm/i915: move and group hdcp under display.hdcp
>   drm/i915: move and group max_bw and bw_obj under display.bw
>   drm/i915: move opregion to display.opregion
>   drm/i915: move and group cdclk under display.cdclk
>   drm/i915: move backlight to display.backlight
>   drm/i915: move mipi_mmio_base to display.dsi
>   drm/i915: move vbt to display.vbt
>   drm/i915: move fbc to display.fbc
>   drm/i915: move and group power related members under display.power
>   drm/i915: move and group fdi members under display.fdi
>   drm/i915: move fb_tracking under display sub-struct
>   drm/i915: move dbuf under display sub-struct
>   drm/i915: move and group modeset_wq and flip_wq under display.wq
>   drm/i915/quirks: abstract checking for display quirks
>   drm/i915/quirks: abstract quirks further by making quirk ids an enum
>   drm/i915: move quirks under display sub-struct
>   drm/i915: move atomic_helper under display sub-struct
>   drm/i915: move and group properties under display.properties
>
>  drivers/gpu/drm/i915/display/hsw_ips.c        |   2 +-
>  drivers/gpu/drm/i915/display/i9xx_plane.c     |   2 +-
>  drivers/gpu/drm/i915/display/intel_atomic.c   |   8 +-
>  drivers/gpu/drm/i915/display/intel_audio.c    |   6 +-
>  .../gpu/drm/i915/display/intel_backlight.c    |  41 ++--
>  drivers/gpu/drm/i915/display/intel_bios.c     | 216 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_bw.c       |  42 ++--
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 206 ++++++++---------
>  drivers/gpu/drm/i915/display/intel_cdclk.h    |   4 +-
>  .../gpu/drm/i915/display/intel_connector.c    |   8 +-
>  drivers/gpu/drm/i915/display/intel_crt.c      |   8 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   3 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  56 ++---
>  .../gpu/drm/i915/display/intel_display_core.h | 155 +++++++++++++
>  .../drm/i915/display/intel_display_debugfs.c  |  10 +-
>  .../drm/i915/display/intel_display_power.c    | 122 +++++-----
>  .../i915/display/intel_display_power_map.c    |   4 +-
>  .../i915/display/intel_display_power_well.c   |  60 ++---
>  .../i915/display/intel_display_power_well.h   |  12 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |   6 +-
>  drivers/gpu/drm/i915/display/intel_dp_aux.c   |   2 +-
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c |   2 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c     |  14 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  22 +-
>  drivers/gpu/drm/i915/display/intel_dsi.c      |   2 +-
>  drivers/gpu/drm/i915/display/intel_fbc.c      |   6 +-
>  drivers/gpu/drm/i915/display/intel_fdi.c      |  10 +-
>  .../gpu/drm/i915/display/intel_frontbuffer.c  |  54 ++---
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 134 +++++------
>  drivers/gpu/drm/i915/display/intel_lvds.c     |   4 +-
>  .../drm/i915/display/intel_modeset_setup.c    |  12 +-
>  drivers/gpu/drm/i915/display/intel_opregion.c |  42 ++--
>  drivers/gpu/drm/i915/display/intel_panel.c    |   5 +-
>  .../gpu/drm/i915/display/intel_pch_refclk.c   |   2 +-
>  drivers/gpu/drm/i915/display/intel_pps.c      |   3 +-
>  drivers/gpu/drm/i915/display/intel_quirks.c   |  22 +-
>  drivers/gpu/drm/i915/display/intel_quirks.h   |  14 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |  18 +-
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |   8 +-
>  .../drm/i915/display/skl_universal_plane.c    |   2 +-
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |   4 +-
>  drivers/gpu/drm/i915/display/vlv_dsi_regs.h   | 188 +++++++--------
>  drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |   4 +-
>  drivers/gpu/drm/i915/i915_debugfs.c           |   2 +-
>  drivers/gpu/drm/i915/i915_driver.c            |   4 +-
>  drivers/gpu/drm/i915/i915_drv.h               | 153 +------------
>  drivers/gpu/drm/i915/i915_gem.c               |   2 +-
>  drivers/gpu/drm/i915/i915_irq.c               |   2 +-
>  drivers/gpu/drm/i915/intel_pm.c               |  16 +-
>  drivers/gpu/drm/i915/intel_pm.h               |   4 +-
>  50 files changed, 885 insertions(+), 843 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
