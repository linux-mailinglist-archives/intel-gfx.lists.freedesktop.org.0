Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0205BA16CA0
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 13:57:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3970610E3E5;
	Mon, 20 Jan 2025 12:57:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ltV/TxOz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BE5B10E3E3;
 Mon, 20 Jan 2025 12:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737377872; x=1768913872;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=86FyoeUVJ+rX7D1jkFrr0L2QaZyCRTA7SvD+B8xVvNQ=;
 b=ltV/TxOz4L/xyraQMPgGeDgzBcQXFhc01lilVIx0yhXEJbWE4VLew/d0
 5K1VJok8J7li8umV+iErzNQLdVtazQjipmVzvljwDP8cCfneWmbQ1KwrB
 1x8i4kUqKzDuzUs8cozAkv2G9OcLEvknpOzf+sdeD9ljoYoLKB7lq0jKZ
 1qT1lgJKkloFm5lJtz6frvDBcuHhxEOs1sDirr3wngST522L2NKjk2GUv
 kNepaO2ASocdJwrrq16oDt4mGwCF26Ds/GK6ZwOhwpo5EDvvskXCiJe1Z
 sZ2n4Abjnck378kndjfT0qJ4OPIiNZ0IvaQWXCx22UgweufxMpJCE0REM A==;
X-CSE-ConnectionGUID: 3WHQVH7sQoqfZUaaAWMihg==
X-CSE-MsgGUID: mMQdxFgiTBeGWdojnnL1oA==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="37930627"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="37930627"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 04:57:52 -0800
X-CSE-ConnectionGUID: QPUk5ivqR2S87Ph3EKgocg==
X-CSE-MsgGUID: kueptJshTxKbRPSkGJMslA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="106326409"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa006.fm.intel.com with ESMTP; 20 Jan 2025 04:57:50 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v8 1/7] drm/i915/scaler: Add and compute scaling factors
Date: Mon, 20 Jan 2025 18:24:33 +0530
Message-ID: <20250120125439.4188626-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250120125439.4188626-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250120125439.4188626-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add scaling factors to scaler_state for a particular scaler user.
These factors will be used later to compute scaler prefill latency.
Currently, only plane scaling factors are stored, but the same members
can later be extended to store pipe scaling factors as well.

--v2:
- Rephrase commit message. [Ankit]
- Corrects typos. [Ankit]

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 2 ++
 drivers/gpu/drm/i915/display/skl_scaler.c          | 3 +++
 2 files changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8271e50e3644..603f292996aa 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -711,6 +711,8 @@ struct intel_initial_plane_config {
 struct intel_scaler {
 	u32 mode;
 	bool in_use;
+	int hscale;
+	int vscale;
 };
 
 struct intel_crtc_scaler_state {
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index a11e09a15e23..67b86f6f62fc 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -434,6 +434,9 @@ static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_stat
 
 			return -EINVAL;
 		}
+
+		scaler_state->scalers[*scaler_id].hscale = hscale;
+		scaler_state->scalers[*scaler_id].vscale = vscale;
 	}
 
 	drm_dbg_kms(display->drm, "[CRTC:%d:%s] attached scaler id %u.%u to %s:%d\n",
-- 
2.48.1

