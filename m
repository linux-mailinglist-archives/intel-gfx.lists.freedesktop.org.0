Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A66CD8F5D
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 11:51:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3957B10E2AD;
	Tue, 23 Dec 2025 10:51:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D9BBf4v7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B870B10E2A9;
 Tue, 23 Dec 2025 10:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766487098; x=1798023098;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5bb/fiRUcooeY7NSCXBOSBSChJPfINy7psr71d3fVdY=;
 b=D9BBf4v7WciKVqdTK5Pt3FQP8R4HB2ykhE65ASQtE0iTmc8NjOc2lWgl
 O1Y51SDmA1U0bKKGuDuHwq9CyhlAcFjNdPV5rgDEfZ+j37sB/5XzMSEgW
 jGAvjvJ4j/zs26d0ZrM766K+y80kdgK54KveG4NdKFo2UGS5yVMqV+ztk
 2Y9/tX9v8CsGDNKgt8nccaOCeD+QHU05m6wCKfE0t8uQupzlH1V8KuoU5
 SDz4iviGbWUgCHWDHhC4ZwOUbxkqVCmbVMzwZxkhwL8bfU4ih3hcy4K4k
 0q+lSogVakZZXBwlv0EqbPSYD0TV4lUi5aWkPRmyIqTSJvMEmR/HdVMJ/ g==;
X-CSE-ConnectionGUID: pnOAOMUiTQmXVZSYatuC2w==
X-CSE-MsgGUID: Jagd/AwAT/O3YYvm8InOUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="78651273"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="78651273"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 02:51:38 -0800
X-CSE-ConnectionGUID: zYYDSMVZQG+8EVnGYjzLtg==
X-CSE-MsgGUID: e9xWCKs4R9qAc5hU1+ncqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="204806140"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.100])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 02:51:36 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v9 2/8] drm/i915/psr: Add intel_psr_use_trans_push to query if
 TRANS_PUSH is used
Date: Tue, 23 Dec 2025 12:51:14 +0200
Message-ID: <20251223105120.21505-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251223105120.21505-1-jouni.hogander@intel.com>
References: <20251223105120.21505-1-jouni.hogander@intel.com>
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

This is a preparation to start using trans push as a PSR "Frame Change"
event. It adds intel_psr_use_trans_push placeholder which return false for
now until we have everything in place.

v2:
  - modify commit message
  - add TODO

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++++
 drivers/gpu/drm/i915/display/intel_psr.h | 1 +
 2 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 91f4ac86c7ad..170d65999ccd 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -4557,3 +4557,9 @@ int intel_psr_min_guardband(struct intel_crtc_state *crtc_state)
 
 	return psr_min_guardband;
 }
+
+bool intel_psr_use_trans_push(const struct intel_crtc_state *crtc_state)
+{
+	/* TODO: Enable using trans push when everything is in place */
+	return false;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index b41dc4d44ff2..394b641840b3 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -85,5 +85,6 @@ bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
 void intel_psr_compute_config_late(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *crtc_state);
 int intel_psr_min_guardband(struct intel_crtc_state *crtc_state);
+bool intel_psr_use_trans_push(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_PSR_H__ */
-- 
2.43.0

