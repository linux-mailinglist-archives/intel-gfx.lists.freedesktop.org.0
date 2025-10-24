Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2ABC05581
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 11:31:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF03F10EA08;
	Fri, 24 Oct 2025 09:31:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VFv/IUIY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA67810EA05;
 Fri, 24 Oct 2025 09:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761298293; x=1792834293;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=liL8zP2lkiB6sgHcG02PMGNNtc3jpfR2Tzy78jhZ0e4=;
 b=VFv/IUIYDy2T8p58VDtEbJ+XG3UiUCiuYalPpvNJAILw2zXJ99/vgEUp
 CrucjbTAOXLzpHGEvFCKwtNJpLBS8WOaqTrxq2QoEs4d1BelplZl8ltpg
 KIEbAJ3CRb3it5FST41W8Q7vSJYg057RwCz1V3Vcb1URQbCNqKm0gAYuL
 Dw4Ntwp8riWbvBhxmoc7rN1biydbXOW96C5nzLo8SA3TI/lJKljjoCB9R
 +Ifmmcp0Ix+yqjooamqWBWBXwuvJhARQ9jTuwdVtOGYm83P79ueuUpwsG
 feZ9/Q6chzjQir1fh5nSekX0UCRTm8C5dAPj3aXE902ggKVo9HV5JEmEV w==;
X-CSE-ConnectionGUID: GfedV5hySOaLIZKB0c0neQ==
X-CSE-MsgGUID: FcP14+mWSiGEnhxB2IguzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74823415"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="74823415"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 02:31:32 -0700
X-CSE-ConnectionGUID: yBZ8qdTaQBi3yiX6z/PBAQ==
X-CSE-MsgGUID: 6zhP/RrgRdKvVlsUWOFHlQ==
X-ExtLoop1: 1
Received: from smoticic-mobl1.ger.corp.intel.com (HELO jhogande-mobl3..)
 ([10.245.245.40])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 02:31:31 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 0/6] Use display parent interface for runtime pm
Date: Fri, 24 Oct 2025 12:31:07 +0300
Message-ID: <20251024093113.1119070-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Add struct intel_display_parent_interface which is supposed to contain
function pointers passed at display probe. This is supposed to allow
differing implementations between i915 and xe drivers.

Add runtime pm as an example and first set of functions using this new
mechanism. Pass own implementations of runtime from i915 and xe
drivers during probe.

v2:
  - unrelated include removal dropped
  - add _interface suffix to rpm function pointer struct
  - add struct ref_tracker forward declaration
  - use kernel-doc comments as needed
  - move i915 display rpm interface implementation to intel_runtime_pm.c
  - rename intel_display as i915_display
  - move xe_display_rpm_interface code into xe_display_rpm.c
  - rename xe_rpm as xe_display_rpm
  - use <> when including drm/intel/display_parent_interface.h
  - drop checks for validity of rpm function pointers
  - keep xe_display_rpm.c

Jani Nikula (1):
  drm/{i915,xe}/display: pass parent interface to display probe

Jouni Högander (5):
  drm/{i915,xe}/display: Add display runtime pm parent interface
  drm/i915/display: Runtime pm wrappers for display parent interface
  drm/xe/display: Runtime pm wrappers for display parent interface
  drm/i915/display: Use display parent interface for i915 runtime pm
  drm/xe/display: Use display parent interface for xe runtime pm

 .../gpu/drm/i915/display/intel_display_core.h |  4 +
 .../drm/i915/display/intel_display_device.c   |  5 +-
 .../drm/i915/display/intel_display_device.h   |  4 +-
 .../gpu/drm/i915/display/intel_display_rpm.c  | 32 ++++----
 drivers/gpu/drm/i915/display/intel_fb.c       |  1 +
 .../drm/i915/display/skl_universal_plane.c    |  1 +
 drivers/gpu/drm/i915/i915_driver.c            | 12 ++-
 drivers/gpu/drm/i915/i915_driver.h            |  2 +
 drivers/gpu/drm/i915/intel_runtime_pm.c       | 77 +++++++++++++++++++
 drivers/gpu/drm/i915/intel_runtime_pm.h       |  3 +
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  4 +-
 drivers/gpu/drm/xe/Makefile                   |  1 +
 drivers/gpu/drm/xe/display/xe_display.c       |  9 ++-
 drivers/gpu/drm/xe/display/xe_display_rpm.c   | 63 ++++++++-------
 drivers/gpu/drm/xe/display/xe_display_rpm.h   | 11 +++
 include/drm/intel/display_parent_interface.h  | 45 +++++++++++
 16 files changed, 224 insertions(+), 50 deletions(-)
 create mode 100644 drivers/gpu/drm/xe/display/xe_display_rpm.h
 create mode 100644 include/drm/intel/display_parent_interface.h

-- 
2.43.0

