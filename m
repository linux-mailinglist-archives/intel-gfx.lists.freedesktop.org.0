Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E30C89F557D
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 19:04:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00EE610EA4E;
	Tue, 17 Dec 2024 18:04:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DgStpE+l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B400710EA4A;
 Tue, 17 Dec 2024 18:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734458689; x=1765994689;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mz5F3fyHihxypOFEWu3f6Wgbd1MsxntRXAVGtlDz9K8=;
 b=DgStpE+l8D0UWF3s1mewYFIIwflG5vdyAmqR/dr9/UWIps1sSPi0Yzzg
 C7hL1CAV+Qva5yVLEmkUjrkgssZA01wXeUYMY0cRoFaSlxPrG3Z8xIyqI
 OyYeQyoLm8oqnHY7mi9wIhKnWs1Kgc98C+d0yHyK9szF1jKWl8JvTDsLv
 6u3Sf50Ir4VqLwxZZbYCe/FU0ckaU+6b9aAIE8+t84qF+w/mmrf2ScTEM
 R2cjvqond3KPrm1wRNulDfEwvu38Ug0W9qw0hTUGd8jgs3RnzFw+MfvHC
 cadBJO2aQnf+Xmce0/0JlXHO02APIz4JrSP+PjITr5amw7bFe3tRiB90W w==;
X-CSE-ConnectionGUID: WAgP6VHoS3mzJRAPv3GCHg==
X-CSE-MsgGUID: RzShWxy4Rw2Kymnz8/bW4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="38837139"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="38837139"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 10:04:49 -0800
X-CSE-ConnectionGUID: MGtuB2LUTCCR05d8D3dukw==
X-CSE-MsgGUID: /gUJNDdHRaqYGTXt2X2j7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,242,1728975600"; d="scan'208";a="102442784"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa004.fm.intel.com with ESMTP; 17 Dec 2024 10:04:48 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [RFC v2 1/6] drm/i915/scaler: Add and compute scaling factors
Date: Tue, 17 Dec 2024 23:37:05 +0530
Message-ID: <20241217180710.1048355-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241217180710.1048355-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20241217180710.1048355-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add scaling factors to scaler_state for a perticular scaler user,
use it later to compute scaler prefill latency. Also to extend this
when either pipe or plane scaler is in use.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 2 ++
 drivers/gpu/drm/i915/display/skl_scaler.c          | 3 +++
 2 files changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index b71416ff5b7f..28b2861df42b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -710,6 +710,8 @@ struct intel_initial_plane_config {
 struct intel_scaler {
 	u32 mode;
 	bool in_use;
+	int hscale;
+	int vscale;
 };
 
 struct intel_crtc_scaler_state {
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 11f73659c1b6..e00c6830ef65 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -423,6 +423,9 @@ static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_stat
 
 			return -EINVAL;
 		}
+
+		scaler_state->scalers[*scaler_id].hscale = hscale;
+		scaler_state->scalers[*scaler_id].vscale = vscale;
 	}
 
 	drm_dbg_kms(display->drm, "Attached scaler id %u.%u to %s:%d\n",
-- 
2.46.0

