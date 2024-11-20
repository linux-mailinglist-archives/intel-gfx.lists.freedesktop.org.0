Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D88F29D3981
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 12:30:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDE4010E27A;
	Wed, 20 Nov 2024 11:30:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BVNmoU89";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8483210E16F;
 Wed, 20 Nov 2024 11:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732102239; x=1763638239;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2xaogKfoW59tTRA2OXIJrkLBGCd9VjJrxewJx7+59cw=;
 b=BVNmoU89AW3GdPFlmVifnRfiYOYgGskWBTPHKWXTybml6h/cnAfrka5a
 Zpi4Um61pw+QGIQWq1vzgF/JNwaIbGCO2YGpYFQxq0IVNa1U7D150xJqG
 /KBsNZ1i45/N49BRzcDvq2k2xhGXfXzJy4i4R7ExrU8vz6J5V3K62LQY+
 vRSuEZ0ZWWQBatnCKseXylwBGsyZvfj+Hx7gylHZakSSHeS337+nPmDZT
 IoM/kUuCdujngUuFhuHTRHSsBQL/KYFiQTnJsGYtupmE6UswvfIuuYoCq
 nqDbHcmgdl6UiC1URgKOSbbPO/Qj5QNGtplYDveg3w4YsDNMXa2rC0TXT Q==;
X-CSE-ConnectionGUID: ieJBmVQASma1FT1t7VBUKw==
X-CSE-MsgGUID: 6qnMcJYFT366N98xHV7lWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="32266603"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="32266603"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 03:30:39 -0800
X-CSE-ConnectionGUID: nNL0X00qSpux8ylwfLK5Hw==
X-CSE-MsgGUID: b3YvUmMkSDG7gJdsbTPkSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="94951451"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.28])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 03:30:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [CI 0/5] drm/i915: intel_display conversions, cleanups
Date: Wed, 20 Nov 2024 13:30:28 +0200
Message-Id: <cover.1732102179.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

Please CI.

Jani Nikula (5):
  drm/i915/overlay: convert to struct intel_display
  drm/i915/overlay: add intel_overlay_available() and use it
  drm/i915/plane: convert initial plane setup to struct intel_display
  drm/i915/irq: hide display_irqs_enabled access
  drm/i915/irq: emphasize display_irqs_enabled is only about VLV/CHV

 .../gpu/drm/i915/display/intel_display_core.h |   9 +-
 .../drm/i915/display/intel_display_driver.c   |   6 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |  37 ++--
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |   6 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  | 184 +++++++++---------
 drivers/gpu/drm/i915/display/intel_overlay.h  |  19 +-
 .../drm/i915/display/intel_plane_initial.c    |  56 +++---
 .../drm/i915/display/intel_plane_initial.h    |   4 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         |   3 +-
 drivers/gpu/drm/i915/i915_getparam.c          |   5 +-
 drivers/gpu/drm/i915/i915_irq.c               |  12 +-
 drivers/gpu/drm/xe/display/xe_plane_initial.c |   8 +-
 12 files changed, 187 insertions(+), 162 deletions(-)

-- 
2.39.5

