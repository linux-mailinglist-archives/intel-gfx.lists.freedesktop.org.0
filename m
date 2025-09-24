Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A688B9988F
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 13:05:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF85D10E708;
	Wed, 24 Sep 2025 11:05:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YPa0uuso";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E12410E6F9;
 Wed, 24 Sep 2025 11:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758711936; x=1790247936;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cC8hfFfO/f04ceiEhmEIrd4xq1WX496/hE2G4MxG1a8=;
 b=YPa0uusopPA75Qmeh4fky1sfJGJ5a/sNgu/bDuF6ner6a94Y4cssl2lD
 WN7NIphAnWG+qVYSpmlUM5Pf+yFONL8SNkB8Llks4e+RzO1BuO6Okz/yG
 F441/64XfXJ/6BvVdA0rRKCF7XUKH0xsJiZLTyhjzdKZNtDbj41cnTwTb
 RLtuHphfrCA72ZWs4oi0d6neFB8fYAZD0QXmosWc41pHDJSsm4h3wwjTq
 cL9lH3bVWvDJwB/7dfwNV703SdJblMpj7iO5XSM626JiHL1qkbxnE+86Y
 /bQvIcEWLoNBUCduMYJVBDE90l4O6bNc2ErYCUV1qRgKhXupwUL30mlld A==;
X-CSE-ConnectionGUID: 10a4NZdgRE6GSzj6hrS+rw==
X-CSE-MsgGUID: zgbuKQxDSf2l12Q52KfJSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="71247835"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="71247835"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 04:05:03 -0700
X-CSE-ConnectionGUID: wXGPw0VaTRy1nhoHKoCYyQ==
X-CSE-MsgGUID: iRTQUnr4TLWs233qKrPwgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="176944123"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 04:05:01 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 7/9] drm/i915/reg_defs: Add REG_FIELD_MAX wrapper for
 FIELD_MAX()
Date: Wed, 24 Sep 2025 16:21:27 +0530
Message-ID: <20250924105129.2771196-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250924105129.2771196-1-ankit.k.nautiyal@intel.com>
References: <20250924105129.2771196-1-ankit.k.nautiyal@intel.com>
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

Introduce REG_FIELD_MAX macro as local wrapper around FIELD_MAX() to return
the maximum value representable by a bit mask. The value is cast to u32
for consistency with other REG_* macros and assumes the bitfield fits
within 32 bits.

v2: Use __mask as macro argument aligning with other macros. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg_defs.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
index bfe98cb9a038..e81fac8ab51b 100644
--- a/drivers/gpu/drm/i915/i915_reg_defs.h
+++ b/drivers/gpu/drm/i915/i915_reg_defs.h
@@ -174,6 +174,16 @@
  */
 #define REG_FIELD_GET8(__mask, __val)   ((u8)FIELD_GET(__mask, __val))
 
+/**
+ * REG_FIELD_MAX() - produce the maximum value representable by a field
+ * @__mask: shifted mask defining the field's length and position
+ *
+ * Local wrapper for FIELD_MAX() to return the maximum bit value that can
+ * be held in the field specified by @_mask, cast to u32 for consistency
+ * with other macros.
+ */
+#define REG_FIELD_MAX(__mask)	((u32)FIELD_MAX(__mask))
+
 typedef struct {
 	u32 reg;
 } i915_reg_t;
-- 
2.45.2

