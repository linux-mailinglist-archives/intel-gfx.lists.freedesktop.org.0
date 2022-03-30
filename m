Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF3D4EBFDA
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 13:34:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7762E10EA79;
	Wed, 30 Mar 2022 11:34:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C57F10E9BC
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 11:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648640076; x=1680176076;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LKOq3r+LGT3Fca7hFS3aCbI9MbOkyPs6/O6udhfdpbg=;
 b=N2CvJR8UzMDU+0eDWl3IfVNqgS76i6VfcjTrxfDrnkUwtmbz250m4eej
 jHOtqDqQTOvzthGkvPfdO7HARrOlVNcyEpGajqMcFqa1qhWn7O26joX4t
 F9ulqfbdbi05UVvxHKZUDUd1CsAU//9S2NMLPZvtaxeiUoaGl1nCZuaaX
 StPUhsIxIj3BcYm8a6uFfu3skOQKGFzT1uX5pyVI9oybABFesWqfsoBhU
 06zTN8+w2fMQ0i97nxJ20JV7vpXVigAiPhCcvbp9VFGqy+CtYsY+/4Z8F
 bfZfqQLPrF5+ER+xV8WYhRjTtphPNF4KVxRsEsg5b0td08Efjd0dkZhQk Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="259235161"
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="259235161"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 04:34:28 -0700
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="565498661"
Received: from nhanus-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.62.116])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 04:34:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Mar 2022 14:34:16 +0300
Message-Id: <20220330113417.220964-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220330113417.220964-1-jani.nikula@intel.com>
References: <20220330113417.220964-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/dmc: hide DMC version macros
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The macros are now only needed within intel_dmc.c, so move them there.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++++
 drivers/gpu/drm/i915/display/intel_dmc.h | 4 ----
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index f0eb3de8de60..a204b60a061f 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -37,6 +37,10 @@
  * low-power state and comes back to normal.
  */
 
+#define DMC_VERSION(major, minor)	((major) << 16 | (minor))
+#define DMC_VERSION_MAJOR(version)	((version) >> 16)
+#define DMC_VERSION_MINOR(version)	((version) & 0xffff)
+
 #define DMC_PATH(platform, major, minor) \
 	"i915/"				 \
 	__stringify(platform) "_dmc_ver" \
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index dd8880d2cbed..41091aee3b47 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -13,10 +13,6 @@
 struct drm_i915_error_state_buf;
 struct drm_i915_private;
 
-#define DMC_VERSION(major, minor)	((major) << 16 | (minor))
-#define DMC_VERSION_MAJOR(version)	((version) >> 16)
-#define DMC_VERSION_MINOR(version)	((version) & 0xffff)
-
 enum {
 	DMC_FW_MAIN = 0,
 	DMC_FW_PIPEA,
-- 
2.30.2

