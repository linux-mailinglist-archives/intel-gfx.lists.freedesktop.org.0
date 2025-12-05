Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA07CCA72A0
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Dec 2025 11:30:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 425AC10EAA8;
	Fri,  5 Dec 2025 10:30:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f45N6HGo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D94D10E98C;
 Fri,  5 Dec 2025 10:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764930650; x=1796466650;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QhRYnDCEYUKSkARTxqUdT+Lq9rupR6nM90JRSylsTxY=;
 b=f45N6HGoFSrDWtOeKJXXoWgBnplgbYMn0ohcxgAR5az/PC9+ysJuo2TY
 EXtv9fty023mk3ibd9Eqq/u/lY4uwoYAnUv/ze8Xl76fuSDH8nIb0Kyq3
 yDr0FsIICU7Q967ylhMtJEM8AM4MZyUTclJhywf1Jfj9ZDfk6KNW20uuE
 q7gCPQ4thjtsHe4NjsfXXNx8qOsT4Ts80L32bP/knqHtie4/RcU+q7tlf
 /hjmeWaMdGPPTtBkhjV+E8vMnGhSWJzk/XC0G55pNN+cozTN7Ys4KIX7U
 ioIWdMn3Xtlaam46i3f/ukhY4/RvtppJ6EVT0Fx5agXn77cux5PkWPfnb A==;
X-CSE-ConnectionGUID: R1jZj1JBSDSbGauNc7QB8g==
X-CSE-MsgGUID: uYat/kSCRfOFrkWZqHpzFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="67001162"
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; d="scan'208";a="67001162"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 02:30:39 -0800
X-CSE-ConnectionGUID: LMaujSziQ6yA0OpGBHQ3tQ==
X-CSE-MsgGUID: WGgOATVfStueNSKruMbGtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; d="scan'208";a="194562859"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 02:30:34 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 0/4] drm/{i915,
 xe}: migrate stolen interface to parent interface, cleanups
Date: Fri,  5 Dec 2025 12:30:26 +0200
Message-ID: <cover.1764930576.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
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

v2 of [1], converting one more call that had appeared in the mean time.


[1] https://lore.kernel.org/r/cover.1764868989.git.jani.nikula@intel.com

Jani Nikula (4):
  drm/i915/fbc: let to_intel_display() do its generic magic
  drm/xe/stolen: unify interface with i915
  drm/{i915,xe}/stolen: move stolen memory handling to display parent
    interface
  drm/{i915,xe}/stolen: make insert_node, area_address, area_size
    optional

 drivers/gpu/drm/i915/display/intel_fbc.c      | 105 +++++++++---------
 drivers/gpu/drm/i915/display/intel_parent.c   |  76 +++++++++++++
 drivers/gpu/drm/i915/display/intel_parent.h   |  19 ++++
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c    |  52 ++++++---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.h    |  23 +---
 drivers/gpu/drm/i915/i915_driver.c            |   1 +
 .../compat-i915-headers/gem/i915_gem_stolen.h |  40 -------
 drivers/gpu/drm/xe/display/xe_display.c       |   4 +-
 drivers/gpu/drm/xe/display/xe_stolen.c        |  62 +++++------
 drivers/gpu/drm/xe/display/xe_stolen.h        |   9 ++
 include/drm/intel/display_parent_interface.h  |  20 ++++
 11 files changed, 243 insertions(+), 168 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_stolen.h

-- 
2.47.3

