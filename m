Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8B8A4BA14
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Mar 2025 09:57:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A43110E38C;
	Mon,  3 Mar 2025 08:57:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ml6YlBOK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1C4610E38C;
 Mon,  3 Mar 2025 08:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740992275; x=1772528275;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MU+Em60xJzS4K3d9y5yaQNSV+RDmJo0LUABoEXf1+6g=;
 b=Ml6YlBOK61azGtq1TAYWcFsaOoOm1av4BS/jMctQQFQU5jHvPWqaNiP7
 KvAgWcpEKk6JEhe7wZUxSrJpijFFX3MLL0cTaMCmJ8rZkfCB53tg9ocN+
 3FUwWyJppd1yfhjHA9su+7C++Oe5XcSlS5SfBgXccRXWWh1sO5ToLiz9R
 6QoZw0RrIA+YtO2GxPFMAL6ehF3BxverN0hrmxIuTgnRJ3erKnYL4QZBg
 GurVdxjuarZ7xEdYXQOHzX0CrKfZeNzpXbzQel/RUuQLgGk/fEUbubPqJ
 k8rBCtgfOn/4iZTT53fVZpU59p4PaaZqbS/MdAvQFfgIHMSmOgPxwrKV9 A==;
X-CSE-ConnectionGUID: uo3eXy8/QMyBvvxxMJo5VQ==
X-CSE-MsgGUID: KqRO9CSaT9ivfyTUNyjGRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="41770045"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="41770045"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 00:57:54 -0800
X-CSE-ConnectionGUID: hwZABHXoRYWtMgEQ6Eu6OQ==
X-CSE-MsgGUID: GCwK8uVkSKCgDDxYBJAysg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="117949612"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa007.fm.intel.com with ESMTP; 03 Mar 2025 00:57:52 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v5 8/8] drm/i915/lobf: Add debug print for LOBF
Date: Mon,  3 Mar 2025 14:05:22 +0530
Message-Id: <20250303083522.845224-9-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250303083522.845224-1-animesh.manna@intel.com>
References: <20250303083522.845224-1-animesh.manna@intel.com>
MIME-Version: 1.0
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

Lobf is enabled part of ALPM configuration and if has_lobf
is set to true respective bit for LOBF will be set. Add debug
print while setting the bitfield of LOBF.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index a233f86c708e..9cf67b3da0ad 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -387,8 +387,10 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 			ALPM_CTL_EXTENDED_FAST_WAKE_TIME(intel_dp->alpm_parameters.fast_wake_lines);
 	}
 
-	if (crtc_state->has_lobf)
+	if (crtc_state->has_lobf) {
 		alpm_ctl |= ALPM_CTL_LOBF_ENABLE;
+		drm_dbg_kms(display->drm, "Link off between frames (LOBF) enabled\n");
+	}
 
 	alpm_ctl |= ALPM_CTL_ALPM_ENTRY_CHECK(intel_dp->alpm_parameters.check_entry_lines);
 
-- 
2.29.0

