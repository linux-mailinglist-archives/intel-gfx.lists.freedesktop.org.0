Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6215B645FE6
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 18:17:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B327110E408;
	Wed,  7 Dec 2022 17:17:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3A4A10E408
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 17:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670433463; x=1701969463;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Gh6GVBKudUUFc5prllCmju6v9+N9DhDIuHR2L4n4668=;
 b=aiDVZHQ8pYHcgaDSg55+5fzEqVtoHbnIoTquw+6SUqhyM25EK1uxWrTQ
 2SKYoyj/ofAhzwYdm8iqUG5nDS6grGSQfjZqSm6Hcy5Ol+LE5UJc9dwtv
 AuYOL+JS0RpCElWKDA2l+I6uxPgIooRZPdzCRmG6E1RDcxOFITvwX6H11
 pvEGU/amqY83RQ8dbbJciTF2mrxO/Z5cJ2QnyMZy8CdPLbr85I29mXAHw
 QHGdygHG3vpFWCbreRaqXawlRWC5HgG+eTzHnqMc46TRDYGVrJSEvgaRF
 fMG+nE7q+AJS9J2sx3J6+aQ89y+9HaumBjim6yXCnuuZMNpQZ8YDI0pqX A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="315663365"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="315663365"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 09:17:43 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="648813895"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="648813895"
Received: from fbackhou-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.192])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 09:17:41 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Dec 2022 19:17:19 +0200
Message-Id: <b82cb29e8ece63e68499307f9e3e83139e590d23.1670433372.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1670433372.git.jani.nikula@intel.com>
References: <cover.1670433372.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/11] drm/i915/de: return the old register
 value from intel_de_rmw()
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

A similar thing was added in intel_uncore_rmw(). Make it available for
display too.

Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 004f01906fd7..3dbd76fdabd6 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -34,10 +34,10 @@ intel_de_write(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
 	intel_uncore_write(&i915->uncore, reg, val);
 }
 
-static inline void
+static inline u32
 intel_de_rmw(struct drm_i915_private *i915, i915_reg_t reg, u32 clear, u32 set)
 {
-	intel_uncore_rmw(&i915->uncore, reg, clear, set);
+	return intel_uncore_rmw(&i915->uncore, reg, clear, set);
 }
 
 static inline int
-- 
2.34.1

