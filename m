Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D647310CAA
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 15:48:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 316276F452;
	Fri,  5 Feb 2021 14:48:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE5C76F452
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 14:48:51 +0000 (UTC)
IronPort-SDR: yEJqa8KQPSZLN/ndh52nQR+yZmNcQci/Xauwllz+n8d4ce9Xks0dHYAJ0m8A5Uxa/dF6TEOseY
 zqw1PhlNxjkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="169116184"
X-IronPort-AV: E=Sophos;i="5.81,155,1610438400"; d="scan'208";a="169116184"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 06:48:51 -0800
IronPort-SDR: gQAsclq4QtRI5IHhz7He3r7mFVOblmC7C9U++nyAHfFm+rm+Rj3vgHKZqjmUmNeW70IHuNaeo5
 EkciZa3vLAVA==
X-IronPort-AV: E=Sophos;i="5.81,155,1610438400"; d="scan'208";a="393895595"
Received: from fuhrberg-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.33.102])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 06:48:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Feb 2021 16:48:35 +0200
Message-Id: <cover.1612536383.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v12 0/8] drm/i915: refactor intel_display.c + a
 bit more
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rebase of [1], which wen't stale in less than a day, but managed to push the
first two. Progress! This also addresses Ville's review comments, I hope.

BR,
Jani.

[1] https://patchwork.freedesktop.org/series/86723/

Dave Airlie (8):
  drm/i915: migrate skl planes code new file (v5)
  drm/i915: move pipe update code into crtc. (v2)
  drm/i915: split fb scalable checks into g4x and skl versions
  drm/i915: move is_ccs_modifier to an inline
  drm/i915: migrate pll enable/disable code to intel_dpll.[ch]
  drm/i915: migrate i9xx plane get config
  drm/i915: refactor skylake scaler code into new file.
  drm/i915: move ddi pll state get to dpll mgr

 drivers/gpu/drm/i915/Makefile                 |    4 +-
 drivers/gpu/drm/i915/display/i9xx_plane.c     |  123 +-
 drivers/gpu/drm/i915/display/i9xx_plane.h     |    4 +
 drivers/gpu/drm/i915/display/icl_dsi.c        |    2 +
 drivers/gpu/drm/i915/display/intel_atomic.c   |    2 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |  254 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |    2 +
 drivers/gpu/drm/i915/display/intel_display.c  | 2631 ++---------------
 drivers/gpu/drm/i915/display/intel_display.h  |   37 +-
 .../drm/i915/display/intel_display_types.h    |   36 +
 drivers/gpu/drm/i915/display/intel_dp.c       |    1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |    1 +
 drivers/gpu/drm/i915/display/intel_dpll.c     |  509 ++++
 drivers/gpu/drm/i915/display/intel_dpll.h     |   18 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  223 ++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |    2 +
 drivers/gpu/drm/i915/display/intel_pps.c      |    1 +
 drivers/gpu/drm/i915/display/intel_psr.c      |    1 +
 drivers/gpu/drm/i915/display/intel_sprite.c   | 1714 +----------
 drivers/gpu/drm/i915/display/intel_sprite.h   |    7 -
 drivers/gpu/drm/i915/display/skl_scaler.c     |  556 ++++
 drivers/gpu/drm/i915/display/skl_scaler.h     |   29 +
 .../drm/i915/display/skl_universal_plane.c    | 2266 ++++++++++++++
 .../drm/i915/display/skl_universal_plane.h    |   37 +
 drivers/gpu/drm/i915/display/vlv_dsi.c        |    1 +
 drivers/gpu/drm/i915/intel_pm.c               |    1 +
 26 files changed, 4305 insertions(+), 4157 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/skl_scaler.c
 create mode 100644 drivers/gpu/drm/i915/display/skl_scaler.h
 create mode 100644 drivers/gpu/drm/i915/display/skl_universal_plane.c
 create mode 100644 drivers/gpu/drm/i915/display/skl_universal_plane.h

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
