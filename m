Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06CA579C4DE
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 06:49:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A675F10E39F;
	Tue, 12 Sep 2023 04:48:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2DA810E2CF;
 Tue, 12 Sep 2023 04:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694494113; x=1726030113;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EoohcamfSpsa0hSLwJYZUfRp+Zr2eokoT3hUUiUnchw=;
 b=DIk3aT2/Q4+u4P3Ohl5J6Yeg7Bx4f/9bqk+JlJO9xVj0lpxM/2umzOiI
 EDJf61KJDisOs6LzgEOESwhggzmO5NpNhh+RaN304fqkggYC/ye8F0svI
 u050sO7vYerVTruM3KTNup1u8+aRAO0ZxonAJzpzZ2rWEZhvWPeH+83t1
 Dcq3OzVQMZs1jm6m8GOXHO3jKAjRo6O3QcWLnGB8m3Ghe0uSdwblrgbN+
 dbMwm6SMdrZpaIueLQYIG1e9IQyKl/UWVSBC3WcMdD519xxEoH0BXcQyX
 m+8PxESBpMuOARXHoC4+zBcW3kqrZ9Fz3tZr+Y3Ls9qb4MBoCtPQpqgIR A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378182312"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="378182312"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="1074419920"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="1074419920"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:31 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon, 11 Sep 2023 21:48:12 -0700
Message-Id: <20230912044837.1672060-5-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230912044837.1672060-1-lucas.demarchi@intel.com>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 04/29] drm/i915/display: Remove FBC
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
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
Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 1a2b5121833e..df0e68ac205c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1015,16 +1015,19 @@ void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
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

