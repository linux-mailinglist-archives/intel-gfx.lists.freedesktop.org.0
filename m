Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8286DDBF1
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 15:19:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68B8810E241;
	Tue, 11 Apr 2023 13:19:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A00510E241
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 13:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681219168; x=1712755168;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=82EDrEqX5qCUEaNxf4OZSIFToJ2C1M8KJIb0DhqWKnY=;
 b=b7Dp23Qsgs5YUY/lLLq9z39uy/7pcW8/PW9YiUCA4VSUJvL6MljK0E8F
 CsyI/BH+fS7HNQ/SU2jYxeQLEST/6L2XJz8hV703edyGU5FW1xa4/+vib
 uRu6hBX7S/e7ZOX6qxTGOjtcFClkbF972c+kJWnlkPk6wZwf25xxawDBi
 tWxS2vecRtLa19d/PMZGN0vVGqN0jSV93nJbsjX/QytUSMyt4y51ofV9h
 Hq9kVNerWLERQyLfuiqzLkzG5Pq/UING4IpYGawVib0oP8HQ2tBzoIaW0
 aqB/gPtNsqXq1hAJMpUCbXZxYMnOfHMABXwKpdAk0Z/Niv8u5eovXVqAE g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="346284534"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="346284534"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 06:19:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="832333681"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="832333681"
Received: from pcarabas-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.44.227])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 06:19:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Apr 2023 16:19:22 +0300
Message-Id: <20230411131922.401602-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: remove unnecessary
 i915_debugfs.h includes
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Leftovers from before display debugfs was separated to its own file.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c   | 1 -
 drivers/gpu/drm/i915/display/intel_hdmi.c | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f0bace9d98a1..48d43f7f0c58 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -44,7 +44,6 @@
 #include <drm/drm_probe_helper.h>
 
 #include "g4x_dp.h"
-#include "i915_debugfs.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_atomic.h"
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index a690a5616506..4fd944520826 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -40,7 +40,6 @@
 #include <drm/drm_edid.h>
 #include <drm/intel_lpe_audio.h>
 
-#include "i915_debugfs.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_atomic.h"
-- 
2.39.2

