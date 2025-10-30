Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D88BEC223D8
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 21:28:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3F3A10E341;
	Thu, 30 Oct 2025 20:28:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EGV2M5JS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A34010E341;
 Thu, 30 Oct 2025 20:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761856128; x=1793392128;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SJbFPaNWPzTNuibrmS7p6d9cVSbhKv1pKbFCA7hTxh4=;
 b=EGV2M5JSQREkLxnXN3nedD8VzxQOPNWo7wQqhfaRN2m8etCwKj9LS0Md
 dkMF9WaZGY2KEoT8PWlLdMdM6zepUp/WVlsOpjybleykBnB2uNntpUtGa
 mxNs6BTrjr3R3g/UACTOLHdwlF7AsY0vCVjuFzu3eC2pdTq8D2fKGOfor
 AV+4Qwfyhi3EFJ3YB72a2srUGJ/XXieqXHk9dW5nMvhjbNeQKPvge1pkv
 anTn/zq9olEUjLjwl2QLlArpJPjO9HK/hL5XTkTqMyFpSNd89ZVW0ldzq
 znWP4/7iGCv3vvLwPiSsRUxd1pu2bnhUY/D+QOxk8AnGG+bWU7v/vqdwF A==;
X-CSE-ConnectionGUID: GIDrf4y4QAyQSvEvZcBIHg==
X-CSE-MsgGUID: ukJVIjcgSF2HtjXJI+laPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="63032441"
X-IronPort-AV: E=Sophos;i="6.19,267,1754982000"; d="scan'208";a="63032441"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 13:28:48 -0700
X-CSE-ConnectionGUID: es1WxiCDR3GH1/CgHMIlwA==
X-CSE-MsgGUID: uYtkFrW8Sc2RcC77k31YTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,267,1754982000"; d="scan'208";a="216706789"
Received: from abityuts-desk.ger.corp.intel.com (HELO jhogande-mobl3..)
 ([10.245.245.145])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 13:28:47 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 0/6] Use display parent interface for runtime pm
Date: Thu, 30 Oct 2025 22:28:30 +0200
Message-ID: <20251030202836.1815680-1-jouni.hogander@intel.com>
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

v3:
  - useless includes removed
  - drop xe_display_rpm_{get, put}_raw
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
 .../gpu/drm/i915/display/intel_display_rpm.c  | 33 ++++----
 drivers/gpu/drm/i915/i915_driver.c            | 12 ++-
 drivers/gpu/drm/i915/i915_driver.h            |  2 +
 drivers/gpu/drm/i915/intel_runtime_pm.c       | 77 +++++++++++++++++++
 drivers/gpu/drm/i915/intel_runtime_pm.h       |  3 +
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  4 +-
 drivers/gpu/drm/xe/Makefile                   |  1 +
 drivers/gpu/drm/xe/display/xe_display.c       |  8 +-
 drivers/gpu/drm/xe/display/xe_display_rpm.c   | 61 +++++++--------
 drivers/gpu/drm/xe/display/xe_display_rpm.h   | 11 +++
 include/drm/intel/display_parent_interface.h  | 45 +++++++++++
 14 files changed, 215 insertions(+), 55 deletions(-)
 create mode 100644 drivers/gpu/drm/xe/display/xe_display_rpm.h
 create mode 100644 include/drm/intel/display_parent_interface.h

-- 
2.43.0

