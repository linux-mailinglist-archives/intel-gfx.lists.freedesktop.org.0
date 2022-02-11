Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA274B20F7
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 10:06:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06EBB10EA36;
	Fri, 11 Feb 2022 09:06:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6986A10E463
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Feb 2022 09:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644570396; x=1676106396;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=C2JSGBhe9hTF4buzyywkh/Y1z/ATqcVQP6HqH4OW2uM=;
 b=ATC1vd1LN42d06fHhvObDfRsLEmNN1W/QS+nP9ACZEV7xbcNVTNuuFqd
 ZJzgDx6HpfiM4hjH7SFs/kHgGGoxCEqAk150g6V4bGoNNqx+OY5voh8uy
 YECz3GRAKu/PvwlGuT20gQeR56xBrANNhPXfA9EsouG3M9pLk0QOf/B01
 DVz5SCpanVVtQc1IfmuMy2EPVkh7qO9Chs6UR1QV4gMFMbPT4ioxjsi7I
 NpAPnE2dC3cf4VCDrlz+4faI0FthV4QNPjp20RHmTLtEvXjuXm7jxklqk
 GMxoVH9zc7WRLCUxf9riGHW+vAgIaIjoZFHbiHf6VYF9NGBeG83pbuJMa g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="249445645"
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="249445645"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 01:06:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="537589996"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga007.fm.intel.com with SMTP; 11 Feb 2022 01:06:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Feb 2022 11:06:29 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Feb 2022 11:06:21 +0200
Message-Id: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/8] drm/i915: Plane/wm cleanups
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Move some plane stuff out from intel_display.c, introduce
a scaled_planes bitmask, and using that as an excuse clean
up a bunch of watermark registers.

Ville Syrjälä (8):
  drm/i915: Move intel_plane_atomic_calc_changes() & co. out
  drm/i915: Introduce intel_arm_planes_on_crtc()
  drm/i915: Introduce scaled_planes bitmask
  drm/i915: Use {active,scaled}_planes to compute ilk watermarks
  drm/i915: Remove gen6_check_mch_setup()
  drm/i915: Add REG_GENMASK64() and REG_FIELD_GET64()
  drm/i915: Clean up SSKPD/MLTR defines
  drm/i915: Polish ilk+ wm register bits

 .../gpu/drm/i915/display/intel_atomic_plane.c | 204 +++++++++++++++++-
 .../gpu/drm/i915/display/intel_atomic_plane.h |  10 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 194 +----------------
 .../drm/i915/display/intel_display_debugfs.c  |   2 +-
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/i915_reg.h               |  68 +++---
 drivers/gpu/drm/i915/i915_reg_defs.h          |  57 +++--
 drivers/gpu/drm/i915/intel_pm.c               | 104 ++++-----
 8 files changed, 322 insertions(+), 318 deletions(-)

-- 
2.34.1

