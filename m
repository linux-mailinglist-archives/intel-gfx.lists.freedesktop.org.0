Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E683129BF5
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2019 01:06:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B3DD6E52D;
	Tue, 24 Dec 2019 00:06:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 454A56E507
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Dec 2019 00:05:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 16:05:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,349,1571727600"; d="scan'208";a="417409496"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga005.fm.intel.com with ESMTP; 23 Dec 2019 16:05:43 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Dec 2019 16:05:18 -0800
Message-Id: <20191224000528.10630-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 00/10]
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

v4 of https://patchwork.freedesktop.org/series/71224/

Changes from v2:
  - Also remove gen from device_info on first patch
  - Rebase
  - Collect a-b for the entire series

Changes from v3:
  - Collect r-b and add missing conversions for pineview

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
 drivers/gpu/drm/i915/intel_pm.c               |  45 +--
 18 files changed, 361 insertions(+), 357 deletions(-)

-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
