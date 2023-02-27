Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AA06A3F51
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 11:17:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA29C10E1B8;
	Mon, 27 Feb 2023 10:17:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D99110E1B8;
 Mon, 27 Feb 2023 10:17:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677493061; x=1709029061;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=sihkdMKh98zpWrpdLeQUu45hyo40VZt9zA4nTS5Fr9o=;
 b=IPuuyvqs7JvRnR2gr/H+DclloxD0PLF1f3V7kjRXQB3Bvk6iCemKligW
 NpwS/xJ2KDUDLcpmbPtByBzov7Ejb3qVxU1HjUOJu5l7Bx5vh1OqazKLS
 mqssoZlMeNM93U+B421cWYGeNVb9HzDgh02PtOt5V56HAIV3IX7tqSD2y
 xdkHFRFZRlVXEpp6lxsmRyCJhnzM+Cy/vMBwH4EEl78tFRNakwTKSNYS0
 zyaEKoxjrwuDE5Z9gLBHrSNNWbVr/6PBcsaQwg+AQuLXgSoJuaEhdGeZt
 VMEV+STz1fbwSfD7KjNvs3KBN3QD+nK9kJsBtWRQsYcuEDSO1lAv1Yu7B w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="336105486"
X-IronPort-AV: E=Sophos;i="5.97,331,1669104000"; d="scan'208";a="336105486"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 02:17:39 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="703969497"
X-IronPort-AV: E=Sophos;i="5.97,331,1669104000"; d="scan'208";a="703969497"
Received: from jkaisrli-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.56.158])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 02:17:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Mon, 27 Feb 2023 12:17:32 +0200
Message-ID: <87cz5v2z0j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: [Intel-gfx] [PULL] drm-intel-next-fixes
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
Cc: dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi Dave & Daniel -

Some more fixes for v6.3-rc1.

drm-intel-next-fixes-2023-02-27:
drm/i915 fixes for v6.3-rc1:
- Don't use stolen memory or BAR mappings for ring buffers with LLC
- Add inverted backlight quirk for HP 14-r206nv
- Fix GSI offset for MCR lookups
- GVT fixes (memleak, debugfs attributes, kconfig, typos)

BR,
Jani.

The following changes since commit 8038510b1fe443ffbc0e356db5f47cbb8678a594:

  drm/i915: Fix system suspend without fbdev being initialized (2023-02-15 17:33:07 +0200)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-next-fixes-2023-02-27

for you to fetch changes up to 5d2fdb255c52989e95704b5556dbf0ad833bddd2:

  Merge tag 'gvt-next-fixes-2023-02-23' of https://github.com/intel/gvt-linux into drm-intel-next-fixes (2023-02-23 14:05:43 +0200)

----------------------------------------------------------------
drm/i915 fixes for v6.3-rc1:
- Don't use stolen memory or BAR mappings for ring buffers with LLC
- Add inverted backlight quirk for HP 14-r206nv
- Fix GSI offset for MCR lookups
- GVT fixes (memleak, debugfs attributes, kconfig, typos)

----------------------------------------------------------------
Colin Ian King (1):
      i915/gvt: Fix spelling mistake "vender" -> "vendor"

Deepak R Varma (2):
      drm/i915/gvt: Avoid full proxy f_ops for debugfs attributes
      drm/i915/gvt: Remove extra semicolon

Greg Kroah-Hartman (1):
      i915: fix memory leak with using debugfs_lookup()

Jani Nikula (1):
      Merge tag 'gvt-next-fixes-2023-02-23' of https://github.com/intel/gvt-linux into drm-intel-next-fixes

John Harrison (2):
      drm/i915: Don't use stolen memory for ring buffers with LLC
      drm/i915: Don't use BAR mappings for ring buffers with LLC

Matt Roper (1):
      drm/i915/xelpmp: Consider GSI offset when doing MCR lookups

Mavroudis Chatzilaridis (1):
      drm/i915/quirks: Add inverted backlight quirk for HP 14-r206nv

Randy Dunlap (1):
      drm/i915: move a Kconfig symbol to unbreak the menu presentation

 drivers/gpu/drm/i915/Kconfig                |  6 +++---
 drivers/gpu/drm/i915/display/intel_quirks.c |  2 ++
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c      |  5 ++++-
 drivers/gpu/drm/i915/gt/intel_ring.c        |  6 +++---
 drivers/gpu/drm/i915/gvt/debugfs.c          | 16 ++++++++--------
 drivers/gpu/drm/i915/gvt/firmware.c         |  2 +-
 drivers/gpu/drm/i915/gvt/kvmgt.c            |  2 +-
 drivers/gpu/drm/i915/gvt/vgpu.c             |  2 +-
 8 files changed, 23 insertions(+), 18 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
