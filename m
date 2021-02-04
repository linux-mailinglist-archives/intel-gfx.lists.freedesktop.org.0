Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF88E30FD15
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 20:43:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 427486EE42;
	Thu,  4 Feb 2021 19:43:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07EC86EE42
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 19:43:36 +0000 (UTC)
IronPort-SDR: xNFbOGtkp6Qlv39M+QVi8RFWp0vT3omfG0NDNukTWKlDDUM6J+XegMm7lCMz6JxA3vYHeanWLr
 1JbfowmwqTQA==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="266146894"
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="266146894"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 11:43:36 -0800
IronPort-SDR: Z/IHHlU4w3lyTRlWHkjQo9tHezbaQF/6P864Sjly/1fErsF+WhPvlNMwb4SqDdr/joOm7+j7Lv
 8nTxEBMtYW+g==
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="393339311"
Received: from dbmayer-mobl.ger.corp.intel.com (HELO localhost) ([10.252.53.1])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 11:43:34 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Feb 2021 21:43:17 +0200
Message-Id: <cover.1612467466.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v11 00/10] drm/i915: refactor intel_display.c +
 a bit more
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

Rebase of [1]. Please let's try to double check the rebase and review the
patches and get this merged ASAP. Part of the reason we've always put this
refactoring off in the first place has been that it's a PITA with the constant
conflicts. Dave's last posting of the series started conflicting before CI even
tried to build it...

BR,
Jani.

[1] https://patchwork.freedesktop.org/series/86321/


Dave Airlie (10):
  drm/i915: refactor ddi translations into a separate file (v2)
  drm/i915: migrate hsw fdi code to new file.
  drm/i915: migrate skl planes code new file (v5)
  drm/i915: move pipe update code into crtc. (v2)
  drm/i915: split fb scalable checks into g4x and skl versions
  drm/i915: move is_ccs_modifier to an inline
  drm/i915: migrate pll enable/disable code to intel_dpll.[ch]
  drm/i915: migrate i9xx plane get config
  drm/i915: refactor skylake scaler code into new file.
  drm/i915: move ddi pll state get to dpll mgr

 drivers/gpu/drm/i915/Makefile                 |    5 +-
 drivers/gpu/drm/i915/display/i9xx_plane.c     |  123 +-
 drivers/gpu/drm/i915/display/i9xx_plane.h     |    4 +
 drivers/gpu/drm/i915/display/icl_dsi.c        |    2 +
 drivers/gpu/drm/i915/display/intel_atomic.c   |    2 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |    1 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |  258 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 1560 +----------
 drivers/gpu/drm/i915/display/intel_ddi.h      |    8 +-
 .../drm/i915/display/intel_ddi_buf_trans.c    | 1394 ++++++++++
 .../drm/i915/display/intel_ddi_buf_trans.h    |  100 +
 drivers/gpu/drm/i915/display/intel_display.c  | 2372 +----------------
 drivers/gpu/drm/i915/display/intel_display.h  |   37 +-
 .../drm/i915/display/intel_display_types.h    |   36 +
 drivers/gpu/drm/i915/display/intel_dp.c       |    1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |    1 +
 drivers/gpu/drm/i915/display/intel_dpll.c     |  509 ++++
 drivers/gpu/drm/i915/display/intel_dpll.h     |   18 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  223 ++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |    2 +
 drivers/gpu/drm/i915/display/intel_fdi.c      |  139 +
 drivers/gpu/drm/i915/display/intel_fdi.h      |    3 +
 drivers/gpu/drm/i915/display/intel_pps.c      |    1 +
 drivers/gpu/drm/i915/display/intel_psr.c      |    1 +
 drivers/gpu/drm/i915/display/intel_sprite.c   | 1718 +-----------
 drivers/gpu/drm/i915/display/intel_sprite.h   |    7 -
 drivers/gpu/drm/i915/display/skl_scaler.c     |  497 ++++
 drivers/gpu/drm/i915/display/skl_scaler.h     |   32 +
 .../drm/i915/display/skl_universal_plane.c    | 2266 ++++++++++++++++
 .../drm/i915/display/skl_universal_plane.h    |   37 +
 drivers/gpu/drm/i915/display/vlv_dsi.c        |    1 +
 drivers/gpu/drm/i915/intel_pm.c               |    1 +
 32 files changed, 5811 insertions(+), 5548 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
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
