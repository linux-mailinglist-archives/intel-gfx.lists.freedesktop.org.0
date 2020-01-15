Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8790913C614
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 15:32:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02F8F6EAB2;
	Wed, 15 Jan 2020 14:32:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 554B26EAB2
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 14:32:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 06:32:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,322,1574150400"; d="scan'208";a="425045286"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by fmsmga006.fm.intel.com with ESMTP; 15 Jan 2020 06:32:45 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jan 2020 16:30:28 +0200
Message-Id: <20200115143033.28284-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v12 0/5] Enable second DBuf slice for ICL and TGL
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
  drm/i915: Manipulate DBuf slices properly
  drm/i915: Introduce parameterized DBUF_CTL
  drm/i915: Correctly map DBUF slices to pipes

 drivers/gpu/drm/i915/display/intel_display.c  |  52 +-
 .../drm/i915/display/intel_display_power.c    |  82 ++--
 .../drm/i915/display/intel_display_power.h    |   6 +
 .../drm/i915/display/intel_display_types.h    |   3 +
 drivers/gpu/drm/i915/i915_drv.h               |   7 +-
 drivers/gpu/drm/i915/i915_pci.c               |   5 +-
 drivers/gpu/drm/i915/i915_reg.h               |  12 +-
 drivers/gpu/drm/i915/intel_device_info.h      |   1 +
 drivers/gpu/drm/i915/intel_pm.c               | 457 +++++++++++++++---
 drivers/gpu/drm/i915/intel_pm.h               |   7 +-
 10 files changed, 490 insertions(+), 142 deletions(-)

-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
