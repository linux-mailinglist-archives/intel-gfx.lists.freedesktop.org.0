Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32ED37B312E
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 13:21:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A98E10E114;
	Fri, 29 Sep 2023 11:21:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAA0D10E114
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Sep 2023 11:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695986465; x=1727522465;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uRfjK71v05gDiZedWBzcEh4tH2HExlfQTW5CpwwXiA8=;
 b=mMT8mRsUFhsnj2TdCEsCWf8RLhjsnUDgXq5OCvDn/v34QkeN67Z7YMDh
 k54+3af3OuweMQW3rk4a12IdwbYCJ87udzdRchamd88XkjT8RlLnXIkJD
 wqYXgEhEnUCZg2zIRFPwhfSNBYeTbhQxsbDSRdDY6HJwP5BLPfSK6cQeF
 02OoGOBRHzdky3FaXgNdqQGyaz//uZAJWRePwOdAxnnC/C7+fifIsxxeg
 2J+izG+ATny/j/xuYnaBNWfAmloYl97i5T/pV05LK8Ji/bGXzUDdrNOX1
 zu4x2HBSnvqiPYCJiqjedCf0PCIlI6R7dfbLHUrKQe2xi+8vEBlB+0Ysz g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="468558420"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="468558420"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 04:21:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="923571080"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="923571080"
Received: from hkatter-mobl2.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.33.4])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 04:21:01 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Sep 2023 14:20:47 +0300
Message-Id: <20230929112047.1151914-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Include i915_active header in
 frontbuffer tracking code
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Intel frontbuffer tracking code is using i915_active functions -> include
i915_active.h directly instead of relying getting indirectly included.

Cc: Jani Nikula <jani.nikula@intel.com>

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_frontbuffer.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 412a19a888a2..ec46716b2f49 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -56,6 +56,7 @@
  */
 
 #include "gem/i915_gem_object_frontbuffer.h"
+#include "i915_active.h"
 #include "i915_drv.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
-- 
2.34.1

