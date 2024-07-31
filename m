Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E8E94344A
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 18:44:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6813010E68B;
	Wed, 31 Jul 2024 16:44:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OOZ3i2zf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8835D10E688;
 Wed, 31 Jul 2024 16:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722444283; x=1753980283;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=y0quYX3Z1iRa5BLcSytu567fsSmYgVbu1DlP28Jg2FI=;
 b=OOZ3i2zfMeG7yOOrHpKJ48OnIu0aShq4J1/8JGou1kbzTtinkw/n0bX+
 e4+KdEJhBEydKHrtbRIQ7Yn6XaS1yGheueFZqpbtPQrFoVdoaeAS56X6e
 DOLFas05KrHxYAShJEmjZHTYe43tQfPjl5gqEqwK6XzlojWZ+aSMvAlVu
 EymFeZ3vSdefj72rYIFhjKwSpOF7UGuLdsDLRv4XXHVz6H11Sh6OqIgqD
 38Tm7pAHU4Y+uXXUIVlu2/CBuu3axDWSzhPk2OeeZ6xG2iS8ER34jLyx5
 NYbRBB5vy3Fmuxcb0wR4wxvO0AdAOMeUO+7OpqblsV6fST8N54wvLD/Mw w==;
X-CSE-ConnectionGUID: +Xbrvm7dSomVzGts1TUXYg==
X-CSE-MsgGUID: gN7Tw29DQIKlcsQKfE6n9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="45754392"
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="45754392"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 09:44:42 -0700
X-CSE-ConnectionGUID: NN0FliDfT82iZYU1cTIZdg==
X-CSE-MsgGUID: s/fUH/dkRQm5npVEXYSb2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="54405287"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.183])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 09:44:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/4] drm/i915: struct intel_display conversions
Date: Wed, 31 Jul 2024 19:44:32 +0300
Message-Id: <cover.1722444150.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert some display files to struct intel_display. Some parts are
scripted, but my cocci is not quite there yet to change interfaces, so a
lot of this is still manual.q

Some stragglers are left behind, but struct intel_display is preferred
and i915 pointers are derived locally as needed.

BR,
Jani.


Jani Nikula (4):
  drm/i915/acpi: convert to struct intel_display
  drm/i915/opregion: unify intel_encoder/intel_connector naming
  drm/i915/opregion: convert to struct intel_display
  drm/i915/bios: convert to struct intel_display

 drivers/gpu/drm/i915/display/g4x_dp.c         |   3 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   3 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |   3 +-
 drivers/gpu/drm/i915/display/intel_acpi.c     |  17 +-
 drivers/gpu/drm/i915/display/intel_acpi.h     |  18 +-
 drivers/gpu/drm/i915/display/intel_bios.c     | 846 +++++++++---------
 drivers/gpu/drm/i915/display/intel_bios.h     |  28 +-
 .../gpu/drm/i915/display/intel_combo_phy.c    |   8 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   3 +-
 drivers/gpu/drm/i915/display/intel_ddi.h      |   3 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   9 +-
 .../drm/i915/display/intel_display_debugfs.c  |   7 +-
 .../drm/i915/display/intel_display_device.c   |   8 +-
 .../drm/i915/display/intel_display_driver.c   |  22 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |  27 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   8 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   5 +-
 drivers/gpu/drm/i915/display/intel_opregion.c | 320 +++----
 drivers/gpu/drm/i915/display/intel_opregion.h |  58 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   3 +-
 drivers/gpu/drm/i915/display/intel_tv.c       |   3 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   5 +-
 drivers/gpu/drm/i915/i915_driver.c            |  22 +-
 drivers/gpu/drm/xe/display/xe_display.c       |  19 +-
 24 files changed, 763 insertions(+), 685 deletions(-)

-- 
2.39.2

