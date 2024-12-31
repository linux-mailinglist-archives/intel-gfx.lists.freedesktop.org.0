Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AA79FF0AB
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2024 17:27:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 921EB10E0EF;
	Tue, 31 Dec 2024 16:27:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QMSDvrmj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D64E10E0EF;
 Tue, 31 Dec 2024 16:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735662468; x=1767198468;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9Qt87d+yUe8ve5cNKqZOIUR4joaaInbXbai6bK2/dFU=;
 b=QMSDvrmjo7MjeudxdAiDeHaMHF2I4++ImgD1D3cP+Qutavhteu8p9f12
 mMEyjBUtRuS9Nt01bEZDWOVh2cf4Rd7nZUa6rqI6uB/8c29JX+SzXQtIn
 wtE7yU/KIjCn0TMde4O5nsVnqBBFQtXq3HA3iviPGC1YGmu95kTcbIUFV
 8y4pE13ji7gl2UQeiMgpZOKnnFpFZzwZw+umGeV6UKu6yosaAq4+qltyk
 MYIY6oxQJXvc6UPY4XHeVEEb2/uMAlpmGIWoE3iMbDRlGJIv5QHv69jIZ
 9/8QMydjHQ3pBWDkbWOIKw+P2/PFEr4Yz3ny6YMtDBu6k3bLe/zBSAisa w==;
X-CSE-ConnectionGUID: B4U3pYoXQtecfWiHUD+yDQ==
X-CSE-MsgGUID: +B0L0fn9TAuKGRa/PoJSlQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="35251974"
X-IronPort-AV: E=Sophos;i="6.12,279,1728975600"; d="scan'208";a="35251974"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2024 08:27:47 -0800
X-CSE-ConnectionGUID: PIzGEE2cSeit+54W+ljRWw==
X-CSE-MsgGUID: AxfeeUXgTMK4fXKtk8X8Sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,279,1728975600"; d="scan'208";a="100924895"
Received: from iklimasz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.180])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2024 08:27:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Gustavo Sousa <gustavo.sousa@intel.com>,
 ville.syrjala@linux.intel.com
Subject: [PATCH 0/4] drm/i915/pmdemand: cleanups
Date: Tue, 31 Dec 2024 18:27:36 +0200
Message-Id: <cover.1735662324.git.jani.nikula@intel.com>
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

Make pmdemand state opaque, convert pmdemand and global state to struct
intel_display, and make pmdemand independent of i915_drv.h.

This is what I'd like to be done to all global state management. All
opaque, all converted to struct intel_display.

BR,
Jani.


Jani Nikula (4):
  drm/i915/pmdemand: convert to_intel_pmdemand_state() to a function
  drm/i915/pmdemand: make struct intel_pmdemand_state opaque
  drm/i915/pmdemand: convert to struct intel_display
  drm/i915/display: convert global state to struct intel_display

 drivers/gpu/drm/i915/display/intel_bw.c       |   3 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |   3 +-
 .../drm/i915/display/intel_display_driver.c   |   8 +-
 .../drm/i915/display/intel_display_power.c    |   4 +-
 .../gpu/drm/i915/display/intel_global_state.c |  42 ++--
 .../gpu/drm/i915/display/intel_global_state.h |   6 +-
 .../drm/i915/display/intel_modeset_setup.c    |  17 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 195 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_pmdemand.h |  51 ++---
 drivers/gpu/drm/i915/display/skl_watermark.c  |   3 +-
 10 files changed, 170 insertions(+), 162 deletions(-)

-- 
2.39.5

