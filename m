Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 296D7AEB6A4
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 13:37:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F8EA10E9F3;
	Fri, 27 Jun 2025 11:37:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l+gPwWW8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D91710E9ED;
 Fri, 27 Jun 2025 11:37:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751024268; x=1782560268;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mNFYgkmwsusAN+lXgpnRlXys1z6CtawVPcI2fnMhFaY=;
 b=l+gPwWW8lohQOWscczxhxJauB80q2ihjBA+KdqHA/CNxbBgqS2Erc6N3
 EIWT/ATNgQjtDOdoKNz3nsC/zeFEflYy5ixq/NCauVz+k+LT5vvxkMJtd
 cP/Qilys8id4yXqzZA5VwBxvXGmWPMyo85dD+VmxxbCm64BUq53o6pMAb
 aXoytiX4YYdn79O7kCFhkhif6lczVcohGct/vTk/6k+XGovVLUM91iCjK
 uClD6pMqhp2ssdHDdI/rMIS0p8ijLa74vdaBIfaRhRlYexB1N8skE/O1d
 ut31HcvMp9p4kJjHgMB+O4o0oYtRU9p2LzgLNip5A6oJWzEgKOZysJCrQ A==;
X-CSE-ConnectionGUID: Ceyn0mNoSPafsBzmk6qntw==
X-CSE-MsgGUID: 6h9MypF5SOS611JOP2AqxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53416405"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="53416405"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:37:48 -0700
X-CSE-ConnectionGUID: 6VLRiRM1REm/8OC39j8bLg==
X-CSE-MsgGUID: UxKEMF4kSSugS+KsK0fDWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="153311106"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.146])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:37:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 15/18] drm/i915/dsb: use generic read_poll_timeout() instead
 of wait_for()
Date: Fri, 27 Jun 2025 14:36:29 +0300
Message-Id: <022971c8360a33cf60fc906cf1f48771f7fb9e4b.1751023767.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1751023767.git.jani.nikula@intel.com>
References: <cover.1751023767.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Prefer generic poll helpers over i915 custom helpers.

The functional change is losing the exponentially growing sleep of
wait_for(), which used to be 10, 20, 40, ..., 640, and 1280 us.

Use an arbitrary constant 100 us sleep instead. The timeout remains at 1
ms.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 53d8ae3a70e9..6b43bd466714 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -4,6 +4,8 @@
  *
  */
 
+#include <linux/iopoll.h>
+
 #include <drm/drm_print.h>
 #include <drm/drm_vblank.h>
 
@@ -871,8 +873,14 @@ void intel_dsb_wait(struct intel_dsb *dsb)
 	struct intel_crtc *crtc = dsb->crtc;
 	struct intel_display *display = to_intel_display(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
-
-	if (wait_for(!is_dsb_busy(display, pipe, dsb->id), 1)) {
+	bool is_busy;
+	int ret;
+
+	ret = read_poll_timeout(is_dsb_busy, is_busy,
+				!is_busy,
+				100, 1000, false,
+				display, pipe, dsb->id);
+	if (ret) {
 		u32 offset = intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf);
 
 		intel_de_write_fw(display, DSB_CTRL(pipe, dsb->id),
-- 
2.39.5

