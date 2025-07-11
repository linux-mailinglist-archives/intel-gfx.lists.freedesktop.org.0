Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE98AB01746
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jul 2025 11:09:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4350A10E9E8;
	Fri, 11 Jul 2025 09:09:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eYjXiNLW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E6D610E9E0;
 Fri, 11 Jul 2025 09:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752224955; x=1783760955;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+5/Rq2/JNr+1lOXmurQtGz+mbWHWvd0gLPJKRr4LBEo=;
 b=eYjXiNLWa0R+BeXAQQPL8jeBQWNV4ezjOGtu5reTWT2EX4byqhShdMN1
 309pngnpCnRvDgTVk6uvtBkDnu/dFLi57JkeXdlFbxiaoV2jarZy4Nae5
 TGgz6S4+bccr22aqTr9eafygX7lZbp0SLBRj0qHWALi7lHzrZNaXFCT5j
 sqPjQlKplmdfIrMHfyqWp31H3njsEhFvK9rey+pXJn2I6M6+rIQVF7e9K
 V/sfRghmL9xv0dj1eG+B+Ac0MMa2iJr+X/YWmrMTIuP0fvq5/p7sgADyS
 IvHI4RbLJTljLMjYsduMoxetzegT5e++Lp++7M8qgvBwhUJNh1oumPFS+ w==;
X-CSE-ConnectionGUID: ltjF3D/rS7SpOp4shnlfQA==
X-CSE-MsgGUID: bwPJbOxsQhS7hJiMyygSGA==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="53627668"
X-IronPort-AV: E=Sophos;i="6.16,303,1744095600"; d="scan'208";a="53627668"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2025 02:09:15 -0700
X-CSE-ConnectionGUID: +mgqHrKqTHiaBqrHrVZxgg==
X-CSE-MsgGUID: F+bgIi4BT/6CbMOBZ1QR1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,303,1744095600"; d="scan'208";a="160655323"
Received: from abityuts-desk.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.32])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2025 02:09:14 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 3/6] drm/i915/psr: Add intel_psr_use_trans_push to query if
 TRANS_PUSH is used
Date: Fri, 11 Jul 2025 12:08:55 +0300
Message-ID: <20250711090858.3297380-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250711090858.3297380-1-jouni.hogander@intel.com>
References: <20250711090858.3297380-1-jouni.hogander@intel.com>
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

