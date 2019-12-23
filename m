Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAAD12996A
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 18:33:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B8BF6E30E;
	Mon, 23 Dec 2019 17:33:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 060D86E30D
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 17:33:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 09:33:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,348,1571727600"; d="scan'208";a="417324826"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga005.fm.intel.com with ESMTP; 23 Dec 2019 09:33:03 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Dec 2019 09:32:34 -0800
Message-Id: <20191223173244.30742-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 00/10] Prefer acronym for prefixes
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

v3 of https://patchwork.freedesktop.org/series/71224/

Changes from v2:
  - Also remove gen from device_info on first patch
  - Rebase
  - Collect a-b for the entire series

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
