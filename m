Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF897974BE
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 17:40:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59EE389C5E;
	Thu,  7 Sep 2023 15:40:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80B6210E80A;
 Thu,  7 Sep 2023 15:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694101206; x=1725637206;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B8ZKIIPX9eQiefr5+ovZX4nG1fGgv1222kCVzZRwWBA=;
 b=EfMqF6/dbPucfZO8uZdo81UyYmN53tUGI64LSOUF8wdq1wZGq+UkoiiK
 bX0UYKDYecXzNPgX6U98be4EZ+8a6C4zaw8WPv6hnJMMUD9umxX7N2SDz
 qzobV7fX6SfgiTXO8Ksn3Bdsg+0YL7A0VZpKUl1gdBVPyN5mGW2O4vgID
 HlsJP8jGVtp3mG0hZzIFyeHk+wppPaqjKgrVYaWIFj2gHBsftSABp+sF2
 UH5TcsJEjS0SaLj4YOQXtwCg/+cTEzThSdP775N9SSj/9P1cnYtOLpFLl
 afNOcZhAXAxu0IBPLTcbkuKbqpwLrDQVjX2wVFwn0aRLzWS9HRlxu+OUQ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="362445787"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="362445787"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 08:38:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="1072930273"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="1072930273"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 08:38:16 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Thu,  7 Sep 2023 08:37:44 -0700
Message-Id: <20230907153757.2249452-15-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230907153757.2249452-1-lucas.demarchi@intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 14/27] drm/i915/display: Remove FBC
 capability from fused off pipes
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Clint Taylor <clinton.a.taylor@intel.com>

If a particular pipe is disabled by fuse also remove the FBC for that
pipe.

Bspec: 69464
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 652e35ed7789..dc6cbd8bb31d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1024,16 +1024,19 @@ void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
 		if (dfsm & SKL_DFSM_PIPE_B_DISABLE) {
 			display_runtime->pipe_mask &= ~BIT(PIPE_B);
 			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_B);
+			display_runtime->fbc_mask &= ~BIT(INTEL_FBC_B);
 		}
 		if (dfsm & SKL_DFSM_PIPE_C_DISABLE) {
 			display_runtime->pipe_mask &= ~BIT(PIPE_C);
 			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
+			display_runtime->fbc_mask &= ~BIT(INTEL_FBC_C);
 		}
 
 		if (DISPLAY_VER(i915) >= 12 &&
 		    (dfsm & TGL_DFSM_PIPE_D_DISABLE)) {
 			display_runtime->pipe_mask &= ~BIT(PIPE_D);
 			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_D);
+			display_runtime->fbc_mask &= ~BIT(INTEL_FBC_D);
 		}
 
 		if (!display_runtime->pipe_mask)
-- 
2.40.1

