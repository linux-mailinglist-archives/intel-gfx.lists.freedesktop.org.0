Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91379B0511B
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jul 2025 07:40:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24C4010E2D4;
	Tue, 15 Jul 2025 05:40:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FBSb09ec";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B989910E1A4;
 Tue, 15 Jul 2025 05:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752558044; x=1784094044;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+5/Rq2/JNr+1lOXmurQtGz+mbWHWvd0gLPJKRr4LBEo=;
 b=FBSb09ecQ3tMwTNCXfx4EmbEsmqYwCcMtBPO5qxobUVXCznedSbi3WQG
 GctmgLyR+2ejg3pywUALbZZZmAIod39/l0IAJh/YLEyUprrWH7aIC96zc
 2FCIAz/8h5PNrIatiY74cyX5Gb4vH3tprhcLiQ4rWxYR1zPuUG1GBkz30
 rLa2Q0h/63F8V4iu8uE0XjcWj+iLM+596n3j/0QqqBX1L2Ck8TCg6HPlH
 g8CEdmi5t/uQ+nPVx84o7HoSm7OjSTkLvI75VxBH4juUpiX2nuddzp79g
 YKcHU2QmJfCaudxMy4girJHtMTij0bmxuI2dhU+bkuNTvH0dvOh7hfslW g==;
X-CSE-ConnectionGUID: 2Gnr14xUSKSOewYtkvSiGA==
X-CSE-MsgGUID: nNVys21pRO6V/NmJ8Da4Tg==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="54701841"
X-IronPort-AV: E=Sophos;i="6.16,312,1744095600"; d="scan'208";a="54701841"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 22:40:42 -0700
X-CSE-ConnectionGUID: 6fWiou0VQvS7TZHMTm1PNQ==
X-CSE-MsgGUID: 76rn01wbRWaUcYDzbLsbMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,312,1744095600"; d="scan'208";a="157232257"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.144])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 22:40:40 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 3/7] drm/i915/psr: Add intel_psr_use_trans_push to query if
 TRANS_PUSH is used
Date: Tue, 15 Jul 2025 08:40:20 +0300
Message-ID: <20250715054024.3856223-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250715054024.3856223-1-jouni.hogander@intel.com>
References: <20250715054024.3856223-1-jouni.hogander@intel.com>
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

This is a preparation patch to start using TRANS_PUSH for PSR "Frame
Change". It adds intel_psr_use_trans_push which return false for now until
we have everything in place.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_psr.h | 1 +
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 41988e193a41..11d46b8df7d7 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -4274,3 +4274,8 @@ bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
 {
 	return intel_dp_is_edp(intel_dp) && crtc_state->has_panel_replay;
 }
+
+bool intel_psr_use_trans_push(const struct intel_crtc_state *crtc_state)
+{
+	return false;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 9b061a22361f..7237dfa388b6 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -81,5 +81,6 @@ void intel_psr_debugfs_register(struct intel_display *display);
 bool intel_psr_needs_alpm(struct intel_dp *intel_dp, const struct intel_crtc_state *crtc_state);
 bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
 				   const struct intel_crtc_state *crtc_state);
+bool intel_psr_use_trans_push(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_PSR_H__ */
-- 
2.43.0

