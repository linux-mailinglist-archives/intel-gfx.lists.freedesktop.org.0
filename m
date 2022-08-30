Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC0B5A60BD
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 12:28:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C974C10E040;
	Tue, 30 Aug 2022 10:28:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEF7610E040
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 10:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661855293; x=1693391293;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6Tby0uHxLdyRm7jXGxvL6VD+pI84HyY6noXd3OtFf28=;
 b=TkYVXIa/nKsa5Cm6t43Ue+e0xCTkMBumNIFsI5928n3/dYf5z6oE63ad
 rusIBDWk5YMx7iIS4kqQ+rWVff+ThurBET+Ky0XyMRZn0QadL3sYr+DTv
 S/W1/xK4v+P8r0UdYgKCezDM4IS8sNCO3+Aw1kmJHLklXULwIucdLGVfE
 CfVGwatzm+iuO1tE4TuS1RhpGJpCP28LTHiJ4ttBgH2Kl3ZOzp+PF8zC4
 yseP5t+ZbisjqKJgGcrJ7TkEzmngRwAxd9sE7jtCpF7oH1pZfYUul1soR
 mcqcZzBnXAaz5N5ayQORx3SRR8F7svDRIPz6+srdYthFnaMDhuQJrJ/Bx g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="295921077"
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="295921077"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 03:28:12 -0700
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="588547683"
Received: from amrabet-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.211])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 03:28:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Aug 2022 13:27:56 +0300
Message-Id: <cover.1661855191.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] drm/i915/gmbus: stop using implicit dev_priv
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The register macros are the last holdout for implicit dev_priv local
variable. Try out what it would mean to stop using it, and require
passing i915 as parameter to the register macros. Use gmbus as a nicely
isolated playing ground.

Jani Nikula (6):
  drm/i915/gmbus: split out gmbus regs in a separate file
  drm/i915/gmbus: whitespace cleanup in reg definitions
  drm/i915/gmbus: add wrapper for gmbus mmio base
  drm/i915/gmbus: stop using implicit dev_priv in register definitions
  drm/i915/reg: stop using implicit dev_priv in DSPCLK_GATE_D
  drm/i915/gmbus: mass dev_priv -> i915 rename

 .../i915/display/intel_display_power_well.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    | 275 +++++++++---------
 .../gpu/drm/i915/display/intel_gmbus_regs.h   |  81 ++++++
 drivers/gpu/drm/i915/display/intel_overlay.c  |   4 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   8 +-
 drivers/gpu/drm/i915/gvt/edid.c               |   3 +-
 drivers/gpu/drm/i915/i915_reg.h               |  65 +----
 drivers/gpu/drm/i915/intel_pm.c               |   4 +-
 8 files changed, 232 insertions(+), 212 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_gmbus_regs.h

-- 
2.34.1

