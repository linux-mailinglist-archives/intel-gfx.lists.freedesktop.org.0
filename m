Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C69A128160
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 18:28:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BD9C6E12C;
	Fri, 20 Dec 2019 17:28:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D1016E10A
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 17:28:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 09:27:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="210875725"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga008.jf.intel.com with ESMTP; 20 Dec 2019 09:27:59 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Dec 2019 09:27:44 -0800
Message-Id: <20191220172754.3773-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/10] Prefer acronym for prefixes
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is "v2" https://patchwork.freedesktop.org/series/71079/, but
extended to the rest of the driver, not only display, and trying to
cover all platforms.

Not covered by this series since I think it can be done later:
the macros IS_<PLATFORM>().

Lucas De Marchi (10):
  drm/i915: simplify prefixes on device_info
  drm/i915: prefer 3-letter acronym for pineview
  drm/i915: prefer 3-letter acronym for haswell
  drm/i915: prefer 3-letter acronym for skylake
  drm/i915: prefer 3-letter acronym for cannonlake
  drm/i915: prefer 3-letter acronym for icelake
  drm/i915: prefer 3-letter acronym for ironlake
  drm/i915: prefer 3-letter acronym for broadwell
  drm/i915: prefer 3-letter acronym for ivybridge
  drm/i915: prefer 3-letter acronym for tigerlake

 drivers/gpu/drm/i915/display/icl_dsi.c        |   2 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |   8 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   8 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 284 +++++++++---------
 drivers/gpu/drm/i915/display/intel_display.h  |   6 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  34 +--
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   4 +-
 .../drm/i915/display/intel_fifo_underrun.c    |  24 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   2 +-
 drivers/gpu/drm/i915/gt/intel_mocs.c          |  18 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         |   7 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |   2 +-
 drivers/gpu/drm/i915/gvt/handlers.c           |   8 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |  10 +-
 drivers/gpu/drm/i915/i915_irq.c               |  18 +-
 drivers/gpu/drm/i915/i915_pci.c               | 230 +++++++-------
 drivers/gpu/drm/i915/intel_device_info.c      |   8 +-
 drivers/gpu/drm/i915/intel_pm.c               |   8 +-
 18 files changed, 338 insertions(+), 343 deletions(-)

-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
