Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E05B7D500E
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 14:42:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D0D810E383;
	Tue, 24 Oct 2023 12:42:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 704C110E37D
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 12:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698151336; x=1729687336;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+0zk6o5jQAYRqRkylUV9DpJOe+kiITUTfqFAqit8xHs=;
 b=SX9l0Ijz0zdGrqCKqJ/b2e6WIK4KGI939DU/ylkEj3v9+N1q/Uuyt+KK
 MVzntxDf+14JXXRjxSYzspjs8GzROjK7X+TIwrubePNmHoA+XfEKtoh6h
 16ai6Lt41y/Ilp5inJhAfZoxN07gW6og9CqRGDFuLpihFHrSBJHBpngDh
 ZJwybq0TZ4DAQyOgdXgxz95tqJpu7PqN7OTyOgaCbW2MTs7TgxrCoyiTC
 UICGRM4u65g18W3fSySEft24xEeNF+f4bFuy1jjlp2SV0H7+fTq8NTgOZ
 M1qFkrOmqKzwJM6nOfLeCfkNtlCq8jZhwD0f0Zgg6ViP9SIEJ+E9hM4W/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="386856727"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="386856727"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:42:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="758464494"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="758464494"
Received: from cpantea-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.63.253])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:42:14 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 15:41:06 +0300
Message-Id: <20231024124109.384973-21-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231024124109.384973-1-jouni.hogander@intel.com>
References: <20231024124109.384973-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 20/23] drm/i915/display: Use device
 parameters instead of module in I915_STATE_WARN
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
Cc: Luca Coelho <luciano.coelho@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Also make module parameter as non writable.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h | 2 +-
 drivers/gpu/drm/i915/i915_params.c           | 3 +--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 0e5dffe8f018..ba3548f9768d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -552,7 +552,7 @@ bool assert_port_valid(struct drm_i915_private *i915, enum port port);
 	struct drm_device *drm = &(__i915)->drm;			\
 	int __ret_warn_on = !!(condition);				\
 	if (unlikely(__ret_warn_on))					\
-		if (!drm_WARN(drm, i915_modparams.verbose_state_checks, format)) \
+		if (!drm_WARN(drm, __i915->params.verbose_state_checks, format)) \
 			drm_err(drm, format);				\
 	unlikely(__ret_warn_on);					\
 })
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 3205c6b62670..4e8c088c69fd 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -93,8 +93,7 @@ i915_param_named(mmio_debug, int, 0400,
 	"Enable the MMIO debug code for the first N failures (default: off). "
 	"This may negatively affect performance.");
 
-/* Special case writable file */
-i915_param_named(verbose_state_checks, bool, 0600,
+i915_param_named(verbose_state_checks, bool, 0400,
 	"Enable verbose logs (ie. WARN_ON()) in case of unexpected hw state conditions.");
 
 i915_param_named_unsafe(nuclear_pageflip, bool, 0400,
-- 
2.34.1

