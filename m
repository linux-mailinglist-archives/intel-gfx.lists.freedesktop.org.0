Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B5F879370
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 12:58:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3F8510F3E4;
	Tue, 12 Mar 2024 11:58:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qr5ssPGI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 160FF10F3B8
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Mar 2024 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710244697; x=1741780697;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=O9255A1XEZbTGozNj2O653nv4J/0bslbyqiDemKHAJQ=;
 b=Qr5ssPGIUzgJ30VO1Hku+6UViUr8QApiF4YJTdrJ/Y7cBpnAIbop2x5X
 2FKHTYok5Xndh/+zG6HiAhdvj+AXsUAIFVyqao71o9zteOqmQ3YsHanUE
 9i684uOrk5tGgZmPCjKzjogIrX3EoldcCN7TaruP6FUXb5ssM3+jiZ2Oo
 U1Ew1iCjEkhiO8CpJPdImjOQkcXO29w2rA89CPWnLHPRoczRSZT3GfJcM
 JMsctZz63PN1+Zcha6a2WYUDlWe48Pg48CaEA5GJuddx8BZ12VJIXGCKG
 zs7isf7mN6UoTiUK8mENi9mPvk7UlFrnLsQY0IiM+nEEL7NCtqWGCPB/g g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="4803310"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="4803310"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 04:58:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="16169424"
Received: from rfreedx-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.35.216])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 04:58:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: [PATCH] drm/i915/opregion: add intel_opregion_vbt_present() stub for
 ACPI=n
Date: Tue, 12 Mar 2024 13:57:57 +0200
Message-Id: <20240312115757.683584-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

The opregion code needs stubs for ACPI=n. Add the missing stub for
intel_opregion_vbt_present().

Reported-by: Thomas Weißschuh <thomas.weissschuh@linutronix.de>
Closes: https://lore.kernel.org/r/20240312120240-afdb1b83-8517-434b-be79-06f41bafd71f@linutronix.de
Fixes: 9d9bb71f3e11 ("drm/i915: Extract opregion vbt presence check")
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
index 63573c38d735..4b2b8e752632 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.h
+++ b/drivers/gpu/drm/i915/display/intel_opregion.h
@@ -120,6 +120,11 @@ intel_opregion_get_edid(struct intel_connector *connector)
 	return NULL;
 }
 
+static inline bool intel_opregion_vbt_present(struct drm_i915_private *i915)
+{
+	return false;
+}
+
 static inline const void *
 intel_opregion_get_vbt(struct drm_i915_private *i915, size_t *size)
 {
-- 
2.39.2

