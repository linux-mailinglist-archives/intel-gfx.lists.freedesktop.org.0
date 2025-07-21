Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B70EEB0C269
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jul 2025 13:14:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 431AD10E4F5;
	Mon, 21 Jul 2025 11:14:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b7ohsrPX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AC4110E4FA;
 Mon, 21 Jul 2025 11:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753096470; x=1784632470;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=idTAvxc9RoxGPNdsM6HJLVJp0rwonruuIx5WmiiF52w=;
 b=b7ohsrPXI5z0B2o4k94xy9wT0DZFdk3Dsw58sFpE2ReIElOgUcL1teVG
 /Nu6QwKea+A0hMYbDjiihRiPHZUqTg0z2FTkV2uIej8B8VP7zynvHQ7fg
 RSrAoijwnvxHQ3BUJ51acaf2WnVDChUunyZXNX8H39oRp7aTmQw5YQpSJ
 VY+m/EMnv4xBhirIztkUe+kqG3AJJ1BrKMcgpUamT8yx1SNTU2uL06zDo
 HC+gm4Znddywfk+PSSa5Jqp6ckL29dszphl5kT1u4hOjnfVA0mm623ASe
 ocFILcD14r272FpZ7gVGdfP/dvOoJ1bhxJLwrT7GER7P6cdKlhyt6EzZy w==;
X-CSE-ConnectionGUID: neQKs8RfSbWPfjr18QkFhw==
X-CSE-MsgGUID: Sg5D/HF3Q5OUXa2Ui3BZhg==
X-IronPort-AV: E=McAfee;i="6800,10657,11498"; a="55427277"
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="55427277"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 04:14:29 -0700
X-CSE-ConnectionGUID: Hf1mhhZBS9ajikferHvpOw==
X-CSE-MsgGUID: u/p1OTOmT266TuXd0X1kxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="159146183"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.64])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 04:14:27 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 3/7] drm/i915/psr: Add intel_psr_use_trans_push to query if
 TRANS_PUSH is used
Date: Mon, 21 Jul 2025 14:14:02 +0300
Message-ID: <20250721111406.1468064-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250721111406.1468064-1-jouni.hogander@intel.com>
References: <20250721111406.1468064-1-jouni.hogander@intel.com>
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
index 4279c28ae27c..d7c19b053fcc 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -4253,3 +4253,8 @@ bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
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

