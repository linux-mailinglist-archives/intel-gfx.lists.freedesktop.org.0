Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D749C4431
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 18:53:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E49410E4F9;
	Mon, 11 Nov 2024 17:53:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mK58IsB5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68DC210E4F9;
 Mon, 11 Nov 2024 17:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731347621; x=1762883621;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7rzux7wpIQdmuW7gHdJBVARyOppUgecWhZhk4497oXk=;
 b=mK58IsB5OfEUKIsc1allrxEkRE8/423x9pVrwtNoP32w/er+SVr44sQF
 u3bzoI+eMS/DkcxuorJ8KEbmJH31JxOKf4hG8yLwxLcJjmimV30LXLzOp
 erQZANw5MXnHr/pGq+SRNe/1JjcQrxSn0aLaQjHIyb1AcpJ4O3IaSglXy
 VKg+wWROvv5RGfKeeRJfjDnGnVMFqhUScZlgEWLOWRcMrgu3Ao5+YGCBf
 vcbPUPE5GqK5jCYRe/I/JnmUZiBB8CVKWcMcY+SzdcjgQg4bm4qCWj3J5
 T4JVpbEl3mFDY2+qIYn+pZI/vTZkO6DHSNH+3Btno1SU7boxaWoWivgy6 g==;
X-CSE-ConnectionGUID: 7xbcWd3UQb+WP+k91jInVg==
X-CSE-MsgGUID: nuWn5gRERzO8v5XW6UzAEg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31317351"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="31317351"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 09:53:41 -0800
X-CSE-ConnectionGUID: b6wEAxrgTKySgW0qHgCL5w==
X-CSE-MsgGUID: zhS1yo9pTxi0wp7zl9Md/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="86985794"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.75])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 09:53:38 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/5] drm/i915: intel_display conversions, cleanups
Date: Mon, 11 Nov 2024 19:53:29 +0200
Message-Id: <cover.1731347547.git.jani.nikula@intel.com>
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

Some struct intel_display conversions, with the goal to reduce direct
struct intel_display member access from i915 core code. Also some
related cleanups.

BR,
Jani.


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

