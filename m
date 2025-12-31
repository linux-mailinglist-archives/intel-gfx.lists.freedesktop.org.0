Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5690DCEBDC8
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Dec 2025 12:26:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFBB410E9B3;
	Wed, 31 Dec 2025 11:26:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JSF2X6pm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F18C10E9B3
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Dec 2025 11:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767180401; x=1798716401;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5+OIKu8MJl/ev7pE7pN9bmUn+WLmXH3iNyDRnI6+RYE=;
 b=JSF2X6pmSUd7cW5ejGz4doxZ1qojIbnUZpJbd/ApWF/1UdRkUfRq9xCI
 0ukTOvRkLnK6844OV9iCBOS8cyVTJvriB786eBSAmXs29LOKw295nq2L8
 j/0ZW69JrMQvmnaBvcS6xXXD91p/seZIrF83H1Dmh1K1mnAiz6dAmNF6v
 91WpF3Qrn7nXZ42WtsXeks1gqBKK+WcLzxXszbUmIY/KD3dGDkz9iftSJ
 /JXuePIcXBDgBeGxq5sHr58HMHPKmKExTDmWzKmWdfS/rKvspikP5FqpE
 ABCUTUz8rnSqj7F+0iiV/dYNwoA6z+1o/FdhjOgtKHedOHkoB8L5HydcK w==;
X-CSE-ConnectionGUID: aqc0b3uDQvWTeJpF2xLjdg==
X-CSE-MsgGUID: Rpv0VeRZTDiN+uZnQD4/vQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11657"; a="68817574"
X-IronPort-AV: E=Sophos;i="6.21,191,1763452800"; d="scan'208";a="68817574"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2025 03:26:41 -0800
X-CSE-ConnectionGUID: Sz8G37kvRsKf39cyl2ctQw==
X-CSE-MsgGUID: 3AhZQa2eRwSF1qwzI3NO1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,191,1763452800"; d="scan'208";a="200550256"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2025 03:26:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ankit.k.nautiyal@intel.com
Subject: [PATCH 5/5] drm/i915/gvt: include intel_display_limits.h where needed
Date: Wed, 31 Dec 2025 13:26:11 +0200
Message-ID: <30696b712f4beba171c15765632ad9c3e1b8b1d1.1767180318.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767180318.git.jani.nikula@intel.com>
References: <cover.1767180318.git.jani.nikula@intel.com>
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

In this case, it's actually gvt.h that needs I915_MAX_PORTS etc. from
intel_display_limits.h. Make this more evident by moving the include
there, instead of getting it via fb_decoder.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gvt/fb_decoder.h | 2 --
 drivers/gpu/drm/i915/gvt/gvt.h        | 2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.h b/drivers/gpu/drm/i915/gvt/fb_decoder.h
index 436d43c0087b..bc1e9d149e25 100644
--- a/drivers/gpu/drm/i915/gvt/fb_decoder.h
+++ b/drivers/gpu/drm/i915/gvt/fb_decoder.h
@@ -38,8 +38,6 @@
 
 #include <linux/types.h>
 
-#include "display/intel_display_limits.h"
-
 struct intel_vgpu;
 
 #define _PLANE_CTL_FORMAT_SHIFT		24
diff --git a/drivers/gpu/drm/i915/gvt/gvt.h b/drivers/gpu/drm/i915/gvt/gvt.h
index 9adcdecadaa8..7fd2356f463c 100644
--- a/drivers/gpu/drm/i915/gvt/gvt.h
+++ b/drivers/gpu/drm/i915/gvt/gvt.h
@@ -38,6 +38,8 @@
 #include <linux/vfio.h>
 #include <asm/kvm_page_track.h>
 
+#include "display/intel_display_limits.h"
+
 #include "gt/intel_gt.h"
 
 #include "cmd_parser.h"
-- 
2.47.3

