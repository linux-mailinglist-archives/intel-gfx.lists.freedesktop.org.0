Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A791B40C82
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 19:52:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B107010E807;
	Tue,  2 Sep 2025 17:52:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lAgCek+7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2C9110E807;
 Tue,  2 Sep 2025 17:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756835522; x=1788371522;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qq2YEeH1I1Mk0e+L5L//ZGhYJua1JWn2IgMDGRRAZGk=;
 b=lAgCek+7fomLYoi8GPJoWx7ZqiHa3n/13e6fL9zQY7WtHCDDxGCMXBQo
 DuiJ18xNXZ+gMAvgu+lGUEQ0krZK+cM5S3WMN3vakCC6mCEVIY/PpSa2O
 gh77v8JNNS9k3fPRFFzY0EjpvGnVVGXbB8dQQCIDonMbB3vDWdWZKXZiB
 sO3R+zuC9nFK4UbxcuQPO4xxw17Vbjw4F0Rw3bEJSLmnrG1g7dRDNLY1Z
 w5Uqw0LXTBMMSyqqjOrJcEMxraUsVrprBUirUiowrLFie0d6TZ6lIPWmz
 egsAwn9LEdDK8pl6V5PWx6UvXWbHHWalZYJwOLh3PPy0rqlw1i+rFJZS5 w==;
X-CSE-ConnectionGUID: 0P0t0jGURuKkBZ1WltH51A==
X-CSE-MsgGUID: jzsS1RG7TsaJE5UrQAEnPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="69734733"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="69734733"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 10:52:01 -0700
X-CSE-ConnectionGUID: XtcVmRKBThqu/iYEnIZK8w==
X-CSE-MsgGUID: kMHMXotoQpKhzRYo6kQfSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="172177547"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.193])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 10:51:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Jocelyn Falempe <jfalempe@redhat.com>,
 Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 0/8] drm/{i915, xe}/panic: refactor framebuffer allocation etc.
Date: Tue,  2 Sep 2025 20:51:46 +0300
Message-ID: <cover.1756835342.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
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

Split out intel_panic functionality separate from intel_bo abstraction,
and lift the framebuffer allocation back to where it belongs in
intel_fb.c.

There's more that should be improved, ideally making struct
intel_framebuffer opaque towards i915 and xe, but this already goes
along way in adjusting where the abstractions should happen.

BR,
Jani.

Cc: Jocelyn Falempe <jfalempe@redhat.com>
Cc: Maarten Lankhorst <dev@lankhorst.se>


Jani Nikula (8):
  drm/i915/fb: add intel_framebuffer_alloc()
  drm/{i915,xe}/panic: split out intel_panic.[ch]
  drm/{i915,xe}/panic: rename intel_bo_panic_*() to intel_panic_*()
  drm/{i915,xe}/fb: add panic pointer member to struct intel_framebuffer
  drm/{i915,xe}/panic: rename struct {i915,xe}_panic_data to struct
    intel_panic
  drm/{i915,xe}/panic: move framebuffer allocation where it belongs
  drm/{i915,xe}/panic: convert intel_panic_finish() to struct
    intel_panic
  drm/{i915,xe}/panic: pass struct intel_panic to intel_panic_setup()

 drivers/gpu/drm/i915/Makefile                 |  1 +
 drivers/gpu/drm/i915/display/i9xx_plane.c     |  4 +-
 drivers/gpu/drm/i915/display/intel_bo.c       | 15 ---
 drivers/gpu/drm/i915/display/intel_bo.h       |  3 -
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_fb.c       | 23 ++++-
 drivers/gpu/drm/i915/display/intel_fb.h       |  3 +
 drivers/gpu/drm/i915/display/intel_panic.c    | 27 ++++++
 drivers/gpu/drm/i915/display/intel_panic.h    | 14 +++
 drivers/gpu/drm/i915/display/intel_plane.c    |  6 +-
 .../drm/i915/display/skl_universal_plane.c    |  3 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.h    | 11 ++-
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     | 40 +++-----
 drivers/gpu/drm/xe/Makefile                   |  1 +
 drivers/gpu/drm/xe/display/intel_bo.c         | 91 -------------------
 drivers/gpu/drm/xe/display/xe_panic.c         | 80 ++++++++++++++++
 16 files changed, 176 insertions(+), 148 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_panic.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_panic.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_panic.c

-- 
2.47.2

