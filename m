Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A0CAAFCAA
	for <lists+intel-gfx@lfdr.de>; Thu,  8 May 2025 16:17:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0AAC10E91A;
	Thu,  8 May 2025 14:17:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V1V5pZJE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0161D10E91A;
 Thu,  8 May 2025 14:17:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746713833; x=1778249833;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U2gW7Go0V4vh8K6OmkVvC1dgISn8XbyRUaxHEbR44XU=;
 b=V1V5pZJESnKB9WyiYkwvxvHywqMsu69jDCJN84pWKMhsb2i2/wiVa5E4
 Ew2xWd+I6lzSsmNGJUApkOYjd0Osd1YaLTXowb8bISeS0fm8Xy7Ttrmrv
 eHHvluydLrdh571qgyht3dtnZhZcjjTkYuKONUUffNJxsgcWmaDo5h1rh
 3rHxEzXixjMI91ESW9TsCXwSjWglpUH8//TjA3feVPw6YVoK6A+WBGP70
 ZS9N9p32beD1dxv0740G5LLfyS5qR/P0MjTzUTwBqHeAZ3zEnE7R6hsZe
 FeQtfHHXGGAOOBu1XlnFEQUqYgmPpC84cOy1abFxKXj3Z74ZlDJpswlsL w==;
X-CSE-ConnectionGUID: BFUc0qSNSjuS3YvNQkie/g==
X-CSE-MsgGUID: 16XT6AnPRmi1xvxi+eXKUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="48411134"
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="48411134"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 07:17:13 -0700
X-CSE-ConnectionGUID: eM259oJRQMiK0yrIRgJsyQ==
X-CSE-MsgGUID: pVvYLS6/SSSJK4hUll+xig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="159609599"
Received: from johunt-mobl9.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.124.222.197])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 07:17:11 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 1/2] drm/i915/alpm: Make intel_alpm_enable_sink available
 for PSR
Date: Thu,  8 May 2025 17:17:00 +0300
Message-ID: <20250508141701.3878486-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250508141701.3878486-1-jouni.hogander@intel.com>
References: <20250508141701.3878486-1-jouni.hogander@intel.com>
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

We want to enable sink ALPM from PSR code. Make intel_alpm_enable_sink
available for PSR.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 11 +++++++++--
 drivers/gpu/drm/i915/display/intel_alpm.h |  2 ++
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 1bf08b80c23f..9442483058d2 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -426,8 +426,15 @@ void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
 	}
 }
 
-static void intel_alpm_enable_sink(struct intel_dp *intel_dp,
-				   const struct intel_crtc_state *crtc_state)
+/**
+ * intel_alpm_enable_sink - Enable ALPM on sink
+ * @intel_dp: Intel DP struct
+ * @crtc_state: Intel CRTC struct
+ *
+ * This function is enabling DPCD on sink based on information from crtc_state.
+ */
+void intel_alpm_enable_sink(struct intel_dp *intel_dp,
+			    const struct intel_crtc_state *crtc_state)
 {
 	u8 val;
 
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index d7126d65b60f..c9fe21e3e72c 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -23,6 +23,8 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 				    struct drm_connector_state *conn_state);
 void intel_alpm_configure(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state);
+void intel_alpm_enable_sink(struct intel_dp *intel_dp,
+			    const struct intel_crtc_state *crtc_state);
 void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
 				 struct intel_crtc *crtc);
 void intel_alpm_post_plane_update(struct intel_atomic_state *state,
-- 
2.43.0

