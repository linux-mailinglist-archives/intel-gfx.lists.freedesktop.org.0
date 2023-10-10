Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 425487BFA16
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 13:43:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3D8E10E346;
	Tue, 10 Oct 2023 11:43:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFA7910E341
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 11:43:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696938199; x=1728474199;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Jqk+CfXD3/5CB2v0SZ6q5JS0SkN1+VV4psap1mIA2ZE=;
 b=YohwEwCqwjaraogcAl1z9KVvTx6NK5l0pHHddM33eKOlXBwho1V9JUsC
 3hY4FOa6lShA2Wzb0RffzfpaHQp6xh99HL7eFVtSU5B6wpPAufhlqLqj2
 Tmi+pkOxWQe8xWief1+/TBx19sED5R40cOAT/w2djNpd1nPHiEy4PqOzk
 mMFQ2BlDRxlNDYUigUAUuZ3eeC/QZuLunWs0OKBYo0UooHX1M4xR6f0rQ
 blfRKnTXvyC4vFc77I53DM9tirwOL2rEXPUISYx9We98N0O1pvYc5qk63
 zF+Ei0HCJ8tmT0Nw641GtoZVeT5BRtSouwCIwa46A52zuM6qB/fDWOrjV A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="470635477"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="470635477"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:43:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="869655411"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="869655411"
Received: from snutt-mobl1.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.57.138])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:43:18 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 14:41:16 +0300
Message-Id: <20231010114120.2504103-22-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231010114120.2504103-1-jouni.hogander@intel.com>
References: <20231010114120.2504103-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 21/25] drm/i915/display: Use device parameters
 instead of module in I915_STATE_WARN
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

Also make module parameter as non writable.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
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

