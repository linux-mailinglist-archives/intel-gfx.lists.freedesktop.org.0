Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 995F15AD8B8
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 20:01:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DAC710E473;
	Mon,  5 Sep 2022 18:01:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 507AD10E473
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 18:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662400888; x=1693936888;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TKutK7LT/8yUOPKfSI2/GCAMe6GBbB2cABKi5BA6xkU=;
 b=VMvViunMVrKVPn5afFMvneOyJc6/0RKx6ViKJA+WQ4jMETF6CJemoalL
 kk8d1IYqXVc8HEclI6nIWif/UCZc55lTW5qghv3Y13jsTSYmIskQHqFvq
 eDIWSWcnFdKwSj9LYnfvWOn+2hPcb+4/da7uCe2e3mHUUGGkls8RwXd69
 CEDAg8De5SP7kXIZR9aDr/b7Djwjf9PgJaQi0zpnq50NsgHjSa5fuCZW5
 /U6IPa4RVroFxAhQ6aSrH8w+nfj5mWOSxPj4RdgQTOzO1nnupvIJcyQqL
 nZmcwaqFl+heO9uK/qDiPyJEWrehYRCYTzr4qeqmBPNLXBA9/0/OzmK7q A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="283427325"
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="283427325"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 11:01:27 -0700
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="675367491"
Received: from smaciag-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.57])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 11:01:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Sep 2022 21:01:03 +0300
Message-Id: <cover.1662400767.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] drm/i915: ipc and display sub-struct
 refactoring
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

This display sub-struct refactoring turned into ipc refactoring...

Jani Nikula (5):
  drm/i915/ipc: split out intel_ipc.[ch]
  drm/i915/ipc: move IPC debugfs to intel_ipc.c
  drm/i915/ipc: register debugfs only if IPC available
  drm/i915/display: move IPC under display sub-struct
  drm/i915/display: move hdport under display sub-struct

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   9 +-
 .../gpu/drm/i915/display/intel_display_core.h |  14 +++
 .../drm/i915/display/intel_display_debugfs.c  |  55 +--------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   4 +-
 drivers/gpu/drm/i915/display/intel_ipc.c      | 116 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_ipc.h      |  18 +++
 drivers/gpu/drm/i915/i915_driver.c            |   3 +-
 drivers/gpu/drm/i915/i915_drv.h               |  10 --
 drivers/gpu/drm/i915/intel_pm.c               |  47 +------
 drivers/gpu/drm/i915/intel_pm.h               |   2 -
 12 files changed, 165 insertions(+), 118 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_ipc.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_ipc.h

-- 
2.34.1

