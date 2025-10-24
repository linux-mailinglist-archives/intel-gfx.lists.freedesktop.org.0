Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E575C05587
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 11:31:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0AF910EA10;
	Fri, 24 Oct 2025 09:31:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OqviyeTv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A4E210EA0A;
 Fri, 24 Oct 2025 09:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761298296; x=1792834296;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zUcXLqowhVZ8NRWYgzRqC3XSwBXHNLakcandj5aZl7I=;
 b=OqviyeTvNPTvOx7Ro/Uz0H8xMr6/oPimGBgaBFf1fLZHKsRyQLKQ3ESO
 ZclIL/n+1JNumDhFu3ly4w9NfTXcTs2J00hyWzJOOicmZN+EDj/WL0o7g
 qwpYc91uqmi80r2qMv0W0ekvqINyBw1yzONVLeDXazrrBqHYRC5o0JJeA
 OpvkKmQ9H81D3TKQGQZPW92eleobKH71NbTHAYS+BR0AL9OGh4Zsm44n1
 DVT0qEGU6LjveQpDTCfIGBVhje7L0z2riB4AGrr8LATklLuHBqn1B18p2
 ACj0qWhS+uhVfl4RZg1EItBH4khD92Ax/djujC1p41luoZUPuLsVivj7k g==;
X-CSE-ConnectionGUID: +E3R33j1Rg+bN2lWAmcpkg==
X-CSE-MsgGUID: jTvR4t9LQ5GMdqKgJR20MA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74823417"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="74823417"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 02:31:36 -0700
X-CSE-ConnectionGUID: tpzTv9P+QZawjynwiALEwQ==
X-CSE-MsgGUID: YP8UyH/6R/iBJVZLm5cdmg==
X-ExtLoop1: 1
Received: from smoticic-mobl1.ger.corp.intel.com (HELO jhogande-mobl3..)
 ([10.245.245.40])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 02:31:35 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 2/6] drm/{i915,
 xe}/display: Add display runtime pm parent interface
Date: Fri, 24 Oct 2025 12:31:09 +0300
Message-ID: <20251024093113.1119070-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251024093113.1119070-1-jouni.hogander@intel.com>
References: <20251024093113.1119070-1-jouni.hogander@intel.com>
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

We have differing implementations for display runtime pm in i915 and xe
drivers. Add struct of function pointers into display_parent_interface
which will contain used implementation of runtime pm.

v2:
  - add _interface suffix to rpm function pointer struct
  - add struct ref_tracker forward declaration
  - use kernel-doc comments

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 include/drm/intel/display_parent_interface.h | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 28c976815327a..26bedc360044d 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -7,6 +7,23 @@
 #include <linux/types.h>
 
 struct drm_device;
+struct ref_tracker;
+
+struct intel_display_rpm_interface {
+	struct ref_tracker *(*get)(const struct drm_device *drm);
+	struct ref_tracker *(*get_raw)(const struct drm_device *drm);
+	struct ref_tracker *(*get_if_in_use)(const struct drm_device *drm);
+	struct ref_tracker *(*get_noresume)(const struct drm_device *drm);
+
+	void (*put)(const struct drm_device *drm, struct ref_tracker *wakeref);
+	void (*put_raw)(const struct drm_device *drm, struct ref_tracker *wakeref);
+	void (*put_unchecked)(const struct drm_device *drm);
+
+	bool (*suspended)(const struct drm_device *drm);
+	void (*assert_held)(const struct drm_device *drm);
+	void (*assert_block)(const struct drm_device *drm);
+	void (*assert_unblock)(const struct drm_device *drm);
+};
 
 /**
  * struct intel_display_parent_interface - services parent driver provides to display
@@ -21,6 +38,8 @@ struct drm_device;
  * check the optional pointers.
  */
 struct intel_display_parent_interface {
+	/** @rpm: Runtime PM functions */
+	const struct intel_display_rpm_interface *rpm;
 };
 
 #endif
-- 
2.43.0

