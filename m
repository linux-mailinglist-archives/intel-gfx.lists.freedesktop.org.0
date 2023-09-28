Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E09D7B24D5
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 20:09:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB32910E6A3;
	Thu, 28 Sep 2023 18:09:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E14710E6A3
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 18:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695924551; x=1727460551;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a8CJF7+9kodHPFYtKad+qE0Cf3dj9nd8ebnqVLRSvsI=;
 b=WXCAyspowIDy+Aq5F3epbrxmPEBNN5+jGiazwlOvsPmvIDkFublTYg+h
 VcCkij2uZKA18cccRl0gHgy92Pf2O8ygr/shiTQbBpiEyqn1kaswZCwwZ
 CmuTl6FlhZUTvKp3D9dggxvwZ0/fw25RwokVlyr4Ii8e/exF9X6muXap0
 J4eS5X/bcjuSFhvE7UgVBxaJU3afrPfYtZYXIRJrM94H6kdcMKwM4TFh6
 vM84o5H09OmnwfGEzw724W0KGyw1BnfnVgpoI4INXrEoMtrk3cuwuqc7x
 S9f8fJ4O1pmTTH9QHD+9UUwnUpmyNmG2igFJFOqN3MJpggvKpo49y7wcw g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="362377533"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="362377533"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:09:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="726329177"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="726329177"
Received: from danielba-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.20])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:09:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Sep 2023 21:08:45 +0300
Message-Id: <863993fa404a80eff254f339f037f9866a533124.1695924021.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1695924021.git.jani.nikula@intel.com>
References: <cover.1695924021.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/15] drm/i915: stop including i915_utils.h
 from intel_runtime_pm.h
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

Remove an unnecessary include.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_runtime_pm.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
index f79cda7a2503..be43614c73fd 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.h
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
@@ -11,8 +11,6 @@
 
 #include "intel_wakeref.h"
 
-#include "i915_utils.h"
-
 struct device;
 struct drm_i915_private;
 struct drm_printer;
-- 
2.39.2

