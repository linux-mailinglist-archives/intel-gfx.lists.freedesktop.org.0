Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A705E9E8B
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 12:03:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38BA210E3CE;
	Mon, 26 Sep 2022 10:03:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FBB510E3CE
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 10:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664186615; x=1695722615;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DE6srteRXwvSB7mujxeMD+Ox/FhReuhPMMD9IlhgCMw=;
 b=Eu1l9yXqpITsgqE0Kp985BzIqCTbUkELIsq6rEEyvYiAYkQKJKT+o/vc
 FLcAqU9rYK7ozN14lf5JYm3znfC/62enKe55qNxVwY2CHZtHUaVISM1pa
 QeXgCK2IqV+/MWe4EtLmJ0KmSPdadFosFZ2G1ML+y073TARBRtdMCgjpw
 xVjFaBAVOTUAZcCO/cDEXCtIHHq+z/caewgAkmMw9aVQwNJEV3XXJsEsG
 g6VievdSzHkuepfW4EFA2QcMbURR89/W0zcPkUI7SJgvKirCOMNIFexwF
 zfH0DtA6rYn4amkxR2itMYhVYGcQ2FjRfnemE0o+UtCH59LBE0gGOwTjp w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10481"; a="284106580"
X-IronPort-AV: E=Sophos;i="5.93,345,1654585200"; d="scan'208";a="284106580"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 03:03:34 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10481"; a="598671002"
X-IronPort-AV: E=Sophos;i="5.93,345,1654585200"; d="scan'208";a="598671002"
Received: from mjtierna-mobl.ger.corp.intel.com (HELO
 kveik.ger.corp.intel.com) ([10.249.32.27])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 03:03:33 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Sep 2022 13:03:09 +0300
Message-Id: <20220926100309.74492-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: disable FBC if its pipe is fused off
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
Cc: ville.syrjalaa@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In newer hardware, the FBCs are associated with their pipes, so if the
pipe is fused off, it means that the FBC is not available either.  We
already disable FBC A if pipe A is fused off, but the other FBCs were
not handled.

Currently we only have FBC A and FBC B, but for consistency, add FBC C
and D as well and disable them all accordingly, when their respective
pipes are fused off.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.h | 2 ++
 drivers/gpu/drm/i915/intel_device_info.c | 3 +++
 2 files changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index 4adb98afe6ff..6720ec8ee8a2 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc.h
@@ -20,6 +20,8 @@ struct intel_plane_state;
 enum intel_fbc_id {
 	INTEL_FBC_A,
 	INTEL_FBC_B,
+	INTEL_FBC_C,
+	INTEL_FBC_D,
 
 	I915_MAX_FBCS,
 };
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 2018eaaa45f5..b45ffa6e9406 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -459,16 +459,19 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 		if (dfsm & SKL_DFSM_PIPE_B_DISABLE) {
 			runtime->pipe_mask &= ~BIT(PIPE_B);
 			runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_B);
+			runtime->fbc_mask &= ~BIT(INTEL_FBC_B);
 		}
 		if (dfsm & SKL_DFSM_PIPE_C_DISABLE) {
 			runtime->pipe_mask &= ~BIT(PIPE_C);
 			runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
+			runtime->fbc_mask &= ~BIT(INTEL_FBC_C);
 		}
 
 		if (DISPLAY_VER(dev_priv) >= 12 &&
 		    (dfsm & TGL_DFSM_PIPE_D_DISABLE)) {
 			runtime->pipe_mask &= ~BIT(PIPE_D);
 			runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_D);
+			runtime->fbc_mask &= ~BIT(INTEL_FBC_D);
 		}
 
 		if (dfsm & SKL_DFSM_DISPLAY_HDCP_DISABLE)
-- 
2.37.2

