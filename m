Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BED4B9C0DD0
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 19:30:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 524DE10E8CD;
	Thu,  7 Nov 2024 18:30:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZmXp3YUJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6119010E8BD;
 Thu,  7 Nov 2024 18:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731004210; x=1762540210;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VkjUxIf+jwXhdXWFbLELHPIqWN6TTQQKMM0Iy3TtLj0=;
 b=ZmXp3YUJYnifZQ9DrxjUWhN4azfFzCaXiMxsA2KFNITY7G1W8UTzNLai
 XRqQBiTL3eF8g+j4nBjnu3gBhvwR+rvi2YXfGgmc6Z54JfU/awU/i1bgr
 0HQ42VLZG5QqG6YleGoDLwNlJV8qZk8wduwYpqPV95lrN5IoXX/+FgosD
 xlRohv5tGTD65KZqlkwMIDgMOu4wBUZ2tN7rcAFAIzAlK4qPDiWQSfCNF
 sbZxYiR8wp+a0WlOq0n6sVKbg9yGkLHw5gDAzkg3O4/1RLVI/BGEslrEv
 +gV5ASEzAcpsqeZDg0VpVR7lSKPTTZx8m3nozLIwW5qHQH0C5XZZyFe8q Q==;
X-CSE-ConnectionGUID: 7XNxbH8nTnCKCckHDeEbsw==
X-CSE-MsgGUID: TwMvAASmQzio5iANehk1Ew==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="18494908"
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="18494908"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 10:30:10 -0800
X-CSE-ConnectionGUID: IrRzgaugQEarnBEzElo1+w==
X-CSE-MsgGUID: av/tPHYeQQWKZlT1O2nibQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="85329731"
Received: from rchatre-mobl4.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.154])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 10:30:09 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 17/18] drm/i915/dmc_wl: Do nothing until initialized
Date: Thu,  7 Nov 2024 15:27:22 -0300
Message-ID: <20241107182921.102193-18-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241107182921.102193-1-gustavo.sousa@intel.com>
References: <20241107182921.102193-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
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

There is a bit of a chicken and egg situation where we depend on runtime
info to know that DMC and wakelock are supported by the hardware, and
such information is grabbed via display MMIO functions, which in turns
call intel_dmc_wl_get() and intel_dmc_wl_put() as part of their regular
flow.

Since we do not expect DC states (and consequently the wakelock
mechanism) to be enabled until DMC and DMC wakelock software structures
are initialized, a simple and safe solution to this is to turn
intel_dmc_wl_get() and intel_dmc_wl_put() into no-op until we have
properly initialized.

Let's implement that via a new field "initialized". Not that, since we
expect __intel_dmc_wl_supported() to be used for most non-static DMC
wakelock functions, let's add a drm_WARN_ONCE() there for when it is
called prior to initialization.

The only exception of functions that can be called before initialization
are intel_dmc_wl_get() and intel_dmc_wl_put(), so we bail before
calling __intel_dmc_wl_supported() if not initialized.

An alternative solution would be to revise MMIO-related stuff in the
whole driver initialization sequence, but that would possibly come with
the cost of some added ordering dependencies and complexity to the
source code.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc_wl.h | 11 +++++++++++
 2 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index c164ac6e1ada..aae5ea0c72ff 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -264,6 +264,11 @@ static bool intel_dmc_wl_check_range(i915_reg_t reg, u32 dc_state)
 
 static bool __intel_dmc_wl_supported(struct intel_display *display)
 {
+	struct intel_dmc_wl *wl = &display->wl;
+
+	if (drm_WARN_ON(display->drm, !wl->initialized))
+		return false;
+
 	return display->params.enable_dmc_wl && intel_dmc_has_payload(display);
 }
 
@@ -282,6 +287,8 @@ void intel_dmc_wl_init(struct intel_display *display)
 
 	intel_dmc_wl_sanitize_param(display);
 
+	wl->initialized = true;
+
 	if (!display->params.enable_dmc_wl)
 		return;
 
@@ -378,6 +385,9 @@ void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg)
 	struct intel_dmc_wl *wl = &display->wl;
 	unsigned long flags;
 
+	if (!wl->initialized)
+		return;
+
 	if (!__intel_dmc_wl_supported(display))
 		return;
 
@@ -410,6 +420,9 @@ void intel_dmc_wl_put(struct intel_display *display, i915_reg_t reg)
 	struct intel_dmc_wl *wl = &display->wl;
 	unsigned long flags;
 
+	if (!wl->initialized)
+		return;
+
 	if (!__intel_dmc_wl_supported(display))
 		return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.h b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
index 147eeb4d8432..06c8b61d7e87 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
@@ -15,6 +15,17 @@
 struct intel_display;
 
 struct intel_dmc_wl {
+	/*
+	 * There is a bit of a chicken and egg situation where we depend
+	 * on runtime info to know that DMC and wakelock are supported
+	 * by the hardware, and such information is grabbed via display
+	 * MMIO functions, which in turns call intel_dmc_wl_get() and
+	 * intel_dmc_wl_put() as part of their regular flow.
+	 *
+	 * So we need the initialized field to ensure that we turn the
+	 * get/put routines into a no-op until we have initialized.
+	 */
+	bool initialized;
 	spinlock_t lock; /* protects enabled, taken, dc_state and refcount */
 	bool enabled;
 	bool taken;
-- 
2.47.0

