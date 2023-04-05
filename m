Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFBCA6D7A06
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 12:41:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ECC510E8C3;
	Wed,  5 Apr 2023 10:41:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D214310E8C3
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 10:41:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680691310; x=1712227310;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KKSu6SIZoazpNa+3PwKA63AMDEQvDGE6yhBzD11ROQk=;
 b=dhgtckOT06kTe8nrS1jPx9u54gHbn6/2tsS5jc75as8nY7Xdp3BqMhqi
 otMjBnmfKz+Ow+mUZLTlHedQiMYuGyCJ9U/QarDYk22+JWz67oiM3H+oA
 ynagGdE7GOvEKps3znBf4Y94T+HlnvW/XO2aBOY7eGVnw1jEVxHfUoE8J
 WcvYE0gS/BUwB/PRxiMEC/lsox7VzccG+khunQKiZ0U7WJheZed7xQvcr
 n41EQinKdjuNrKogE6NLGBA0y/x/J2E7DWHPSDF2O4MY9aa112fESbAjx
 3CF7f59pYz1K+o2drJwqTBq7mCoIv9mV/kBNdViOlrL2SYGoR8Ol0t1z2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="370245066"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="370245066"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2023 03:41:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="810587876"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="810587876"
Received: from dlemiech-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.43.158])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2023 03:41:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Apr 2023 13:41:42 +0300
Message-Id: <20230405104142.766598-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230405104142.766598-1-jani.nikula@intel.com>
References: <20230405104142.766598-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/wakeref: fix kernel-doc comment
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

Fix the warning:

drivers/gpu/drm/i915/intel_wakeref.h:118: warning: expecting prototype
for intel_wakeref_get_if_in_use(). Prototype was for
intel_wakeref_get_if_active() instead

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_wakeref.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_wakeref.h b/drivers/gpu/drm/i915/intel_wakeref.h
index 71b8a63f6f10..0b6b4852ab23 100644
--- a/drivers/gpu/drm/i915/intel_wakeref.h
+++ b/drivers/gpu/drm/i915/intel_wakeref.h
@@ -105,7 +105,7 @@ __intel_wakeref_get(struct intel_wakeref *wf)
 }
 
 /**
- * intel_wakeref_get_if_in_use: Acquire the wakeref
+ * intel_wakeref_get_if_active: Acquire the wakeref
  * @wf: the wakeref
  *
  * Acquire a hold on the wakeref, but only if the wakeref is already
-- 
2.39.2

