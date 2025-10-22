Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E89BFB012
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 10:56:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C7F510E70E;
	Wed, 22 Oct 2025 08:56:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KntxetN+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77DDE10E70A;
 Wed, 22 Oct 2025 08:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761123381; x=1792659381;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sYznWMvz4SIl8wkTlxGUFwk1xLGrgb0e0YVf6/cgEFw=;
 b=KntxetN+L4xP5IESh3aSzzKIWUhPNJjJ9BV/NhxD0jyCZ114gLKmK/7T
 Ulyn9w7qVMwSh2rtGYTfAPi91quAKC/jwQYqZTul/uBJYOHZV/EeCax/G
 B3QFHiaMCKuXgKJQE7eS79JlDam5eC0SvrzDLSap463RdUol741alCGuc
 RORSVrbFbTLgwXGwgPS2cmjF0eYxYKQlzjx3PR4bMQTYLBiPsTwi+wH3E
 GBkgk84zQovpL9siF7YnYzQmIDryrT3HdGLYtCXP1k3fkgFK36pwxN6YQ
 MYDRuesNYwxOev7VK4aiX/M/M/0UYI595Ik/3oGFxBvZCYXgvC1CNho3k w==;
X-CSE-ConnectionGUID: StrBcCD8SJaCgWnOiqCngw==
X-CSE-MsgGUID: mdPDKDmwTDOv2sx7vSHsPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62473566"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="62473566"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 01:56:21 -0700
X-CSE-ConnectionGUID: KxNJzD4HTUybvxGooX92YQ==
X-CSE-MsgGUID: xOIcPy9NSY2hl7DivIpUVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="214461287"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl3..)
 ([10.245.244.2])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 01:56:20 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/6] drm/{i915,
 xe}/display: Add display runtime pm parent interface
Date: Wed, 22 Oct 2025 11:55:44 +0300
Message-ID: <20251022085548.876150-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251022085548.876150-1-jouni.hogander@intel.com>
References: <20251022085548.876150-1-jouni.hogander@intel.com>
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

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 include/drm/intel/display_parent_interface.h | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 28c976815327a..7ad0a27d503c8 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -8,6 +8,22 @@
 
 struct drm_device;
 
+struct intel_display_rpm {
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
+
 /**
  * struct intel_display_parent_interface - services parent driver provides to display
  *
@@ -21,6 +37,8 @@ struct drm_device;
  * check the optional pointers.
  */
 struct intel_display_parent_interface {
+	/* Runtime PM functions */
+	const struct intel_display_rpm *rpm;
 };
 
 #endif
-- 
2.43.0

