Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC017B16F29
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 12:05:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50CC910E754;
	Thu, 31 Jul 2025 10:05:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dD9OJyca";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3E8310E754;
 Thu, 31 Jul 2025 10:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753956321; x=1785492321;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rdni38D3L6PvF1OEHcE3XsrTZd36Ze5waWkrHBp+uuE=;
 b=dD9OJycaKNBopEFT8nwS4ZvA5rppAJo4v2YzJj7OxxkhgJsUPjj8uaHX
 ombB2YI2JtHPOvRh2WOmGpLH9Mt4COzj9EFdi/jfKumfIjVMss6DHxrOu
 keicpYt6cTHTNPR5ZLkrHqdz8MYgpBkFVj34/ZMIpMgzt1zOhtbOFJeG+
 3Y0v2qu6LTHBDOwgTDJs5zQTCKi/wSxJauCGgfVItznkS9r17wEAYVEYp
 dSTu2VA1ylXoo/zWxL0amd82N10NrlDVp4fqbkAqFZuSM7JwryZaGD0Dy
 M1OskpTO3q2z+5ni65FJ9aIgeNkw6CtraHvOl2YbUcKX6me+BiX6pjUDL g==;
X-CSE-ConnectionGUID: VsowkmYVR+yAFs5ENqimKA==
X-CSE-MsgGUID: eH7UNpvzTFCAUgH+mwwovw==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="59922960"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="59922960"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 03:05:21 -0700
X-CSE-ConnectionGUID: V9dTEzvaSlCcXqvk8sPtQw==
X-CSE-MsgGUID: qs26bQF2T+qooxI+ZrWdXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="167456216"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.108])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 03:05:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 0/7] drm/i915/display: use intel_de_wait_*() functions
Date: Thu, 31 Jul 2025 13:05:07 +0300
Message-Id: <cover.1753956266.git.jani.nikula@intel.com>
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

v2 of [1] with one patch fixed, another dropped.

BR,
Jani.

[1] https://lore.kernel.org/r/cover.1750959689.git.jani.nikula@intel.com


Jani Nikula (7):
  drm/i915/hdmi: use intel_de_wait_for_set() instead of wait_for()
  drm/i915/ddi: use intel_de_wait_custom() instead of wait_for_us()
  drm/i915/dpll: use intel_de_wait_custom() instead of wait_for_us()
  drm/i915/cdclk: use intel_de_wait_custom() instead of wait_for_us()
  drm/i915/power: use intel_de_wait_custom() instead of wait_for_us()
  drm/i915/pch: use intel_de_wait_custom() instead of wait_for_us()
  drm/i915/dsi: use intel_de_wait_custom() instead of wait_for_us()

 drivers/gpu/drm/i915/display/icl_dsi.c        | 41 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 12 ++++--
 drivers/gpu/drm/i915/display/intel_ddi.c      | 14 ++++++-
 .../drm/i915/display/intel_display_power.c    | 14 +++++--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 20 ++++++---
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  6 +--
 .../gpu/drm/i915/display/intel_pch_refclk.c   | 14 +++++--
 7 files changed, 85 insertions(+), 36 deletions(-)

-- 
2.39.5

