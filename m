Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE6ACD5FCB
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 13:34:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22B3710E325;
	Mon, 22 Dec 2025 12:34:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lk/HxbEh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C8F210E325;
 Mon, 22 Dec 2025 12:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766406849; x=1797942849;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ONKEGZeX6JgqHjtUg+6uFyrB0Cp48Y+mhUsZKSFabD0=;
 b=lk/HxbEhr/oXEDmvdyM7u6hhcH2P1CqrpclNzMnE89vzPOz4L+9m5VT2
 Cx4IcGkwluExcnKwU3rg78TuSGF/LCKYm2EqysLka6Ix8r1SVDdVuCVxe
 /FVmuMUavNI2/5hLB1yPww1HO17FpGm1qCXIjgvd4+s/AMVuH5h/GJxmr
 1/W7x5+pGvg6TbEHEuUtundwNFiALy2LY/vK3MEDjUzPJ9ThIo+awLFvH
 tp2wJEyU2woCd82brVIGrSSfnUShnyZEiihUwrx/CVnu9T/BoXKyyNnsL
 w5o/ozCHEX6QM7VxxvCOz6ZLAjmbN2xniReBrUonr1OjKeTyKCIVYAadn w==;
X-CSE-ConnectionGUID: jNhQQSi6RISsVSRRfZdXLA==
X-CSE-MsgGUID: uZDL9hm3QZOEoha+yvNrrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11649"; a="72121830"
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="72121830"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 04:34:09 -0800
X-CSE-ConnectionGUID: 4QVFs7xNTIC/7KxbCV9iQw==
X-CSE-MsgGUID: 2ct0Y9ZpSS2xxQWOJqDZ6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="203984529"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.79])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 04:34:07 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 0/4] drm/i915/display: reduce i915_drv.h usage
Date: Mon, 22 Dec 2025 14:33:59 +0200
Message-ID: <cover.1766406794.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

v2 with a rebase, and more logical changes for patches 1-2 after merged
changes.

Jani Nikula (4):
  drm/i915: remove unused dev_priv local variable
  drm/xe/compat: remove unused forcewake get/put macros
  drm/xe/compat: convert uncore macro to static inlines
  drm/i915/display: use to_intel_uncore() to avoid i915_drv.h

 drivers/gpu/drm/i915/display/i9xx_wm.c        | 17 ++++----
 drivers/gpu/drm/i915/display/intel_bw.c       | 19 ++++-----
 drivers/gpu/drm/i915/display/intel_display.c  |  4 +-
 .../drm/i915/display/intel_display_power.c    |  3 +-
 drivers/gpu/drm/i915/display/intel_dram.c     | 42 +++++++++----------
 drivers/gpu/drm/i915/display/intel_rom.c      |  8 ++--
 drivers/gpu/drm/i915/display/intel_vblank.c   | 13 +++---
 .../drm/xe/compat-i915-headers/intel_uncore.h | 11 +++--
 8 files changed, 54 insertions(+), 63 deletions(-)

-- 
2.47.3

