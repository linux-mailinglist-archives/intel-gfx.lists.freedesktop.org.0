Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 138A65B269E
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 21:17:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E0C410E1B3;
	Thu,  8 Sep 2022 19:16:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D5E010E1B3
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 19:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662664610; x=1694200610;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=M+Ow8y/JxIfGF161/FCT7uiEMvqLa04cNBeoD8YaiSg=;
 b=cxrpZx4gh/Njbw8WRuMl9RmMAqMLgm8PX8cN7s5F0rGwBAfzQ7Vgv/5l
 G7rGweNeMDO9+oKK+np7hMtBUWSQfcpMKB79AKl/Zzs1kJ0QUH1zgQC6c
 L1tPt1LXySp4CR1UjLe9e0hj/G5+8+y0VIk+cvXQK9PasLvNyFpdpFaLT
 5eDZ+5n2a0H869MNcgZwekM/Ywi8YJawcnYQT5jb21pkvTJJncznPFvwv
 IGZNaYr5FsFjuKy9QbnH60cPjdStWg4d3DOBPtDN23x/iidhkqRENqf1m
 P9FYtnxsbO7KOqVXTK4x6VEzUwzkIR8RqmZ+NgX/xFqLi8WmkjUmFCNUp g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="298638833"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="298638833"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 12:16:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="718686918"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 08 Sep 2022 12:16:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Sep 2022 22:16:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Sep 2022 22:16:43 +0300
Message-Id: <20220908191646.20239-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] drm/i915: Move skl+ wm code into its own
 file
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

Hoist all the skl+ wm related stuff from intel_pm.c into
its own file.

Ville Syrjälä (3):
  drm/i915: Split intel_read_wm_latency() into per-platform versions
  drm/i915: Extract skl_watermark.c
  drm/i915: Use REG_FIELD_GET() to extract skl+ wm latencies

 drivers/gpu/drm/i915/Makefile                 |    3 +-
 .../gpu/drm/i915/display/intel_atomic_plane.c |    2 +-
 drivers/gpu/drm/i915/display/intel_bw.c       |    4 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |    2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |    1 +
 .../drm/i915/display/intel_display_debugfs.c  |    1 +
 .../drm/i915/display/intel_display_power.c    |    2 +-
 .../i915/display/intel_display_power_well.c   |    2 +-
 .../drm/i915/display/intel_modeset_setup.c    |    1 +
 .../drm/i915/display/intel_modeset_verify.c   |    2 +-
 .../drm/i915/display/skl_universal_plane.c    |    2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  | 3464 ++++++++++++++++
 drivers/gpu/drm/i915/display/skl_watermark.h  |   78 +
 drivers/gpu/drm/i915/i915_driver.c            |    1 +
 drivers/gpu/drm/i915/i915_reg.h               |    8 +-
 drivers/gpu/drm/i915/intel_pm.c               | 3528 +----------------
 drivers/gpu/drm/i915/intel_pm.h               |   65 +-
 17 files changed, 3609 insertions(+), 3557 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/skl_watermark.c
 create mode 100644 drivers/gpu/drm/i915/display/skl_watermark.h

-- 
2.35.1

