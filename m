Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C93A11406F2
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 10:52:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DEB76F4BD;
	Fri, 17 Jan 2020 09:52:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4CA16F4C3
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 09:52:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 01:52:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,329,1574150400"; d="scan'208";a="424412445"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by fmsmga005.fm.intel.com with ESMTP; 17 Jan 2020 01:52:36 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 11:50:21 +0200
Message-Id: <20200117095026.1113-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v13 0/5] Enable second DBuf slice for ICL and TGL
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

Those patch series, do some initial preparation DBuf manipulating code
cleanups, i.e remove redundant structures/code, switch to mask
based DBuf manupulation, get into use DBuf assignment according to
BSpec rules.

Stanislav Lisovskiy (5):
  drm/i915: Remove skl_ddl_allocation struct
  drm/i915: Move dbuf slice update to proper place
  drm/i915: Introduce parameterized DBUF_CTL
  drm/i915: Manipulate DBuf slices properly
  drm/i915: Correctly map DBUF slices to pipes

 drivers/gpu/drm/i915/display/intel_display.c  |  52 +-
 .../drm/i915/display/intel_display_power.c    |  86 ++--
 .../drm/i915/display/intel_display_power.h    |   5 +
 .../drm/i915/display/intel_display_types.h    |   3 +
 drivers/gpu/drm/i915/i915_drv.h               |   7 +-
 drivers/gpu/drm/i915/i915_pci.c               |   5 +-
 drivers/gpu/drm/i915/i915_reg.h               |   7 +-
 drivers/gpu/drm/i915/intel_device_info.h      |   1 +
 drivers/gpu/drm/i915/intel_pm.c               | 459 +++++++++++++++---
 drivers/gpu/drm/i915/intel_pm.h               |   5 +-
 10 files changed, 480 insertions(+), 150 deletions(-)

-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
