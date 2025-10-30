Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB74C223DE
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 21:28:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B972010EA1B;
	Thu, 30 Oct 2025 20:28:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lFM30zZy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5126910EA1A;
 Thu, 30 Oct 2025 20:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761856132; x=1793392132;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Zv9i4G5Xz7UWU3Es/L/qB1DAlR8e2tdb4G3ytojIkiA=;
 b=lFM30zZywxsZNbLO0nsqt4AouXGfXv1m/DgI+EZktluK1FLWWssKbCYt
 CAjIpIWRLhpoOAielsCl91o3GWF3y5Q+K7/3VlFOR8w54gkZq9FVDqGU6
 sTVnxkmC2ttJlDfjjzX125eb2n2UPlakS+WpzuFhUabmUkY4M63G7Fxiy
 Ehfw8PUHV9RC5UEIR0a4m6aTjDSMtNRcTF3OzZRGD4k/YgUUtndmA5hZB
 YK9QIgHBvfvLzhAfjLI56zEpVHXKOhrpPnRSn4LYo2+bwgL/Zl47Ue+lu
 T0koIhbdwMsz5jFIgjwNkThHJOqcsafzypFivegwlvWvXMmpT+pqOXeNv g==;
X-CSE-ConnectionGUID: AmNlYBTpTkK4nLZCTm6hsA==
X-CSE-MsgGUID: dNtJfAhnRJ+n1CuaTpK1mg==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="63032446"
X-IronPort-AV: E=Sophos;i="6.19,267,1754982000"; d="scan'208";a="63032446"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 13:28:52 -0700
X-CSE-ConnectionGUID: klnI1l0wSu+msPpVyY7EQg==
X-CSE-MsgGUID: rBqRT905QmK0zXsYaWZ8wA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,267,1754982000"; d="scan'208";a="216706802"
Received: from abityuts-desk.ger.corp.intel.com (HELO jhogande-mobl3..)
 ([10.245.245.145])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 13:28:51 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 2/6] drm/{i915,
 xe}/display: Add display runtime pm parent interface
Date: Thu, 30 Oct 2025 22:28:32 +0200
Message-ID: <20251030202836.1815680-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251030202836.1815680-1-jouni.hogander@intel.com>
References: <20251030202836.1815680-1-jouni.hogander@intel.com>
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

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
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

