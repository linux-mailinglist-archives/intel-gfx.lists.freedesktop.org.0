Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13707C48537
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 18:28:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83ECF10E48D;
	Mon, 10 Nov 2025 17:28:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K5aZ4uUG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C307210E48D;
 Mon, 10 Nov 2025 17:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762795719; x=1794331719;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4n81tUOo+3i5Z/PLOfanuqYucJuQsj1e1Dds6aSDWdU=;
 b=K5aZ4uUGz9DrlogG4VJo31U7W3XZvsd66I0qSEjECby9IpdOr9ZiWHM8
 aMXTyCIhMtdjJvA+l7UhZRFkEql9sxvrR0tLUwGqDa2AEf0E18tQm5kwq
 Ai7fYhJ+hhDMT7cqJ8CfrGqnkVUSbbYFRIQ/D63bCoc8or8SH/3HpwgZ3
 E35ncpFwp2yUj1rs+GBSq6+F5PjJK0wAQJQp17rGfC8+6QmeS2S7/881c
 1FWu8Sxnmpmdv15E7xOaVlgM7OhB7CrECCxRDsqodn3oNLxvLCxidU6X7
 xBrcbzYk0PhXVSBuC7bRaA2sdl9K033Pkm3L9ehjdk9D0Lv/sBqxlEqM9 A==;
X-CSE-ConnectionGUID: oXPJ/b0pQ4G9otitWD6A7w==
X-CSE-MsgGUID: RpMAV5V7RGC84EV6TOE9hQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="52407736"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="52407736"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:28:36 -0800
X-CSE-ConnectionGUID: WFHatuP+ReeD1n0z3HSvWg==
X-CSE-MsgGUID: zZgdQnURT+a7FK0VXMTJYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="192985988"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.30])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:28:32 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 08/16] drm/i915/de: Introduce intel_de_wait_for_{set,
 clear}_us()
Date: Mon, 10 Nov 2025 19:27:47 +0200
Message-ID: <20251110172756.2132-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
References: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Add intel_de_wait_for_set_us() and intel_de_wait_for_clear_us()
as the microsecond counterparts to intel_de_wait_for_set_ms()
and intel_de_wait_for_clear_ms().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 2566079f695e..a82da6443af9 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -165,6 +165,20 @@ intel_de_wait_fw_ms(struct intel_display *display, i915_reg_t reg,
 	return ret;
 }
 
+static inline int
+intel_de_wait_for_set_us(struct intel_display *display, i915_reg_t reg,
+			 u32 mask, unsigned int timeout_us)
+{
+	return intel_de_wait_us(display, reg, mask, mask, timeout_us, NULL);
+}
+
+static inline int
+intel_de_wait_for_clear_us(struct intel_display *display, i915_reg_t reg,
+			   u32 mask, unsigned int timeout_us)
+{
+	return intel_de_wait_us(display, reg, mask, 0, timeout_us, NULL);
+}
+
 static inline int
 intel_de_wait_for_set_ms(struct intel_display *display, i915_reg_t reg,
 			 u32 mask, unsigned int timeout_ms)
-- 
2.49.1

