Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5366E6B81
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 19:55:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA40310E813;
	Tue, 18 Apr 2023 17:55:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CF1B10E813
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 17:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681840532; x=1713376532;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9dPOz+clv4E2XzuCju4YHYN8kXFpGcwR8FNWDkiN3vc=;
 b=ISoZx/rI6WQhMcYyPbcGZ1sZS5Sy6xzoJOTp2+b81B2KoPoazSY7kF+K
 m5ZYCZw4nFws2WuSD4oRFopXPLn09KOPtEwfxi1qFwx7SQ32Dw9FHz/pE
 8Q/l1PZk75RHkjFfLghzxsu7MtmftY5Jb2ZW8W5ibzHZxOv5pov06xl7n
 kZWViJ0H82St6uD3N/QNmOHN+CQO2AuJkmdt2SXFEbcPn2RKLdohVAMNv
 mPKerDkIiNXZzvqFJUabvUskOgaJEGXrKEsymeaWnfNRLvreWR1lPnzGh
 kVNXtlvDOBGimSOeBZ4ciyTA5FZSzPCwpZi0eW+jFUQXn74EgHL7k4lIs w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="334052723"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="334052723"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 10:55:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="641451548"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="641451548"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga003.jf.intel.com with SMTP; 18 Apr 2023 10:55:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Apr 2023 20:55:28 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Apr 2023 20:55:13 +0300
Message-Id: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/15] drm/i915: Scaler/pfit stuff
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

One scaler bugfix, and a bunch of scaler/pfit cleanups/etc.

Ville Syrjälä (15):
  drm/i915: Check pipe source size when using skl+ scalers
  drm/i915: Relocate VBLANK_EVASION_TIME_US
  drm/i915: Relocate intel_atomic_setup_scalers()
  drm/i915: Relocate skl_get_pfit_config()
  drm/i915: Use REG_BIT() & co for the pre-ilk pfit registers
  drm/i915: Namespace pfit registers properly
  drm/i915: Use REG_BIT() & co. for ilk+ pfit registers
  drm/i915: Drop a useless forward declararion
  drm/i915: Define bitmasks for ilk pfit window pos/size
  drm/i915: Remove dead scaler register defines
  drm/i915: Rename skl+ scaler binding bits
  drm/i915: s/PS_COEE_INDEX_AUTO_INC/PS_COEF_INDEX_AUTO_INC/
  drm/i915: Define bitmasks for sik+ scaler window pos/size
  drm/i915: Use REG_BIT() & co. for pipe scaler registers
  drm/i915: Define more PS_CTRL bits

 drivers/gpu/drm/i915/display/intel_atomic.c   | 256 --------------
 drivers/gpu/drm/i915/display/intel_atomic.h   |   4 -
 drivers/gpu/drm/i915/display/intel_crtc.h     |  10 +
 drivers/gpu/drm/i915/display/intel_display.c  |  82 ++---
 .../drm/i915/display/intel_display_debugfs.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  |  16 +-
 drivers/gpu/drm/i915/display/intel_panel.c    |  33 +-
 drivers/gpu/drm/i915/display/intel_sprite.h   |  10 -
 drivers/gpu/drm/i915/display/skl_scaler.c     | 331 +++++++++++++++++-
 drivers/gpu/drm/i915/display/skl_scaler.h     |  12 +-
 drivers/gpu/drm/i915/i915_reg.h               | 210 ++++++-----
 12 files changed, 512 insertions(+), 456 deletions(-)

-- 
2.39.2

