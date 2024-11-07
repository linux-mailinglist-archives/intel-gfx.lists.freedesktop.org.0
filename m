Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31DC99C0AF0
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 17:11:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA1C810E879;
	Thu,  7 Nov 2024 16:11:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HuJgQ8/c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 955DA10E87C
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 16:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730995904; x=1762531904;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=awUJl7m6SOfGA6yzHTwu7f7igAst/ICWRi1AqvGmYPo=;
 b=HuJgQ8/c4Tpz5sOBfpfaDKfyhuCVivHgRDe3s9zNxl5bO/CQMyfTC7pa
 ihqzh4EkC7ZvOfMDO7JEKH9UrZ7XCnuSfKzh2G6toOSuR+42B65m5SVx7
 FFU80PnHO2/qXHgBAnVo0U9RgUR1/qPFtYHOD2ohTLNHdBam38/cLo5gD
 xuzl8Yu+QA0SK6aTOBWtQsWTsOeuvECSozohVdboiz0BFRwFoErmPfso3
 OnrDH3bF4OHo4sesO3aLqBQOy3HEwk3u3ve6KBj5dqsrqXBc5Fdz3bKwo
 66qzMoiM+SW4yXleIyfLkBbe1H9cbCtAEqj+WRfxrhR5kgzT8zwIj6UFl g==;
X-CSE-ConnectionGUID: AEiQ9ualSQiDdvNDV0eN+Q==
X-CSE-MsgGUID: 1fC2j5bcRzKj5/vPh2isNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="41443126"
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="41443126"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 08:11:39 -0800
X-CSE-ConnectionGUID: q9ZoOVOiSwOM1fQLYA+Xdg==
X-CSE-MsgGUID: sI4uA6qLQP2joUvYZpAeLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="85277851"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Nov 2024 08:11:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Nov 2024 18:11:37 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 05/10] drm/i915/crt: Clean up ADPA_HOTPLUG_BITS definitions
Date: Thu,  7 Nov 2024 18:11:18 +0200
Message-ID: <20241107161123.16269-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
References: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

ADPA_HOTPLUG_BITS is defined in terms of the individual
register bits and is defined in intel_crt.c, whereas the
counterpart mask (ADPA_CRT_HOTPLUG_MASK) is just defined
as a raw hex constant and lives in i915_reg.h. Just define
both the same way (with unified name to boot) and move both
to intel_crt.c since they are more an implementation detail
rather than anything to do with the actual regiter definitions.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c | 16 ++++++++++++----
 drivers/gpu/drm/i915/i915_reg.h          |  1 -
 2 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 73d5332cf103..e21e402f85c8 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -55,12 +55,20 @@
 #include "intel_pch_refclk.h"
 
 /* Here's the desired hotplug mode */
-#define ADPA_HOTPLUG_BITS (ADPA_CRT_HOTPLUG_PERIOD_128 |		\
+#define ADPA_HOTPLUG_BITS (ADPA_CRT_HOTPLUG_ENABLE |			\
+			   ADPA_CRT_HOTPLUG_PERIOD_128 |		\
 			   ADPA_CRT_HOTPLUG_WARMUP_10MS |		\
 			   ADPA_CRT_HOTPLUG_SAMPLE_4S |			\
 			   ADPA_CRT_HOTPLUG_VOLTAGE_50 |		\
-			   ADPA_CRT_HOTPLUG_VOLREF_325MV |		\
-			   ADPA_CRT_HOTPLUG_ENABLE)
+			   ADPA_CRT_HOTPLUG_VOLREF_325MV)
+#define ADPA_HOTPLUG_MASK (ADPA_CRT_HOTPLUG_MONITOR_MASK |		\
+			   ADPA_CRT_HOTPLUG_ENABLE |			\
+			   ADPA_CRT_HOTPLUG_PERIOD_MASK |		\
+			   ADPA_CRT_HOTPLUG_WARMUP_MASK |		\
+			   ADPA_CRT_HOTPLUG_SAMPLE_MASK |		\
+			   ADPA_CRT_HOTPLUG_VOLTAGE_MASK |		\
+			   ADPA_CRT_HOTPLUG_VOLREF_MASK |		\
+			   ADPA_CRT_HOTPLUG_FORCE_TRIGGER)
 
 struct intel_crt {
 	struct intel_encoder base;
@@ -984,7 +992,7 @@ void intel_crt_reset(struct drm_encoder *encoder)
 		u32 adpa;
 
 		adpa = intel_de_read(display, crt->adpa_reg);
-		adpa &= ~ADPA_CRT_HOTPLUG_MASK;
+		adpa &= ~ADPA_HOTPLUG_MASK;
 		adpa |= ADPA_HOTPLUG_BITS;
 		intel_de_write(display, crt->adpa_reg, adpa);
 		intel_de_posting_read(display, crt->adpa_reg);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index f233fc32e45c..6391f2e9d530 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1156,7 +1156,6 @@
 #define   ADPA_PIPE_SEL(pipe)			REG_FIELD_PREP(ADPA_PIPE_SEL_MASK, (pipe))
 #define   ADPA_PIPE_SEL_MASK_CPT		REG_GENMASK(30, 29)
 #define   ADPA_PIPE_SEL_CPT(pipe)		REG_FIELD_PREP(ADPA_PIPE_SEL_MASK_CPT, (pipe))
-#define   ADPA_CRT_HOTPLUG_MASK  0x03ff0000 /* bit 25-16 */
 #define   ADPA_CRT_HOTPLUG_MONITOR_MASK		REG_GENMASK(25, 24)
 #define   ADPA_CRT_HOTPLUG_MONITOR_NONE		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_MONITOR_MASK, 0)
 #define   ADPA_CRT_HOTPLUG_MONITOR_COLOR	REG_FIELD_PREP(ADPA_CRT_HOTPLUG_MONITOR_MASK, 3)
-- 
2.45.2

