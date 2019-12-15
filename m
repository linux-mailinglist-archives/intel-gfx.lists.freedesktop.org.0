Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5349611FB3A
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Dec 2019 21:55:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B06A8928F;
	Sun, 15 Dec 2019 20:55:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2715589254
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Dec 2019 20:54:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Dec 2019 12:54:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,319,1571727600"; d="scan'208";a="416239920"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by fmsmga006.fm.intel.com with ESMTP; 15 Dec 2019 12:54:56 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 15 Dec 2019 22:52:06 +0200
Message-Id: <20191215205210.31667-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH v9 0/4] Enable second DBuf slice for ICL and TGL
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Those patch series, do some initial preparation DBuf manipulating code
cleanups, i.e remove redundant structures/code, switch to mask
based DBuf manupulation, get into use DBuf assignment according to
BSpec rules.

Stanislav Lisovskiy (4):
  drm/i915: Remove skl_ddl_allocation struct
  drm/i915: Move dbuf slice update to proper place
  drm/i915: Manipulate DBuf slices properly
  drm/i915: Correctly map DBUF slices to pipes

 drivers/gpu/drm/i915/display/intel_display.c  |  53 ++-
 .../drm/i915/display/intel_display_power.c    |  86 ++---
 .../drm/i915/display/intel_display_power.h    |   4 +-
 .../drm/i915/display/intel_display_types.h    |   3 +
 drivers/gpu/drm/i915/i915_drv.h               |   7 +-
 drivers/gpu/drm/i915/i915_pci.c               |   5 +-
 drivers/gpu/drm/i915/i915_reg.h               |   1 +
 drivers/gpu/drm/i915/intel_device_info.h      |   1 +
 drivers/gpu/drm/i915/intel_pm.c               | 318 ++++++++++++++----
 drivers/gpu/drm/i915/intel_pm.h               |   5 +-
 10 files changed, 336 insertions(+), 147 deletions(-)

-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
