Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1062A12724
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 16:20:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BFEE10E739;
	Wed, 15 Jan 2025 15:20:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mVnkTjZZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1FB810E738;
 Wed, 15 Jan 2025 15:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736954432; x=1768490432;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lBo/vp9eE4f9Jzox6sW7vlqX+cXa6ujXlfr5qk+nhp8=;
 b=mVnkTjZZShDLzSsNKNb5xGx0qdl18aHNVyyxpeBNOePJuCbzaLPEYshZ
 foSo8a0FiMkO8Zo8VV8EKgSZ1tnEbUVCCKIrgOQBUnvtNL363LAM5keXU
 x2MZys4k3xcYUTAmlJSfbvoOswyZDATZQDNdMnuP7PYbGHbWNfkDfgYKZ
 4QMg1GplraEkn+q4hqSRRw0C+xmfxxyeo0cgUA59yU6jeAIsr1AC9nXOr
 D9XGk6OEpG+aqcxAPnYiwyNSRleq8DMBScRXrefMePkVTKMQLXcfOOj8V
 ErGy2ikS/+UnuWGeCY1sf6Y3WDLvnYTHoP0b6dDT8PEfL9psAiR8Fwy9w g==;
X-CSE-ConnectionGUID: QacrVVE3Sa2QaiAWveEOIA==
X-CSE-MsgGUID: C9/fhVBrSj6Pep1tg/ns9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="24894460"
X-IronPort-AV: E=Sophos;i="6.13,206,1732608000"; d="scan'208";a="24894460"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 07:20:32 -0800
X-CSE-ConnectionGUID: Xy1yn5EHTXS+0gm8ZhBbGQ==
X-CSE-MsgGUID: aaAT2bNpQGqobT7fP1NNpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110298389"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa005.jf.intel.com with ESMTP; 15 Jan 2025 07:20:30 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	v5-000intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v5 1/7] drm/i915/scaler: Add and compute scaling factors
Date: Wed, 15 Jan 2025 20:47:08 +0530
Message-ID: <20250115151714.3665211-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.0
In-Reply-To: <20250115151714.3665211-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250115151714.3665211-1-mitulkumar.ajitkumar.golani@intel.com>
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
- Rephrase commit message which corrects typo and information about
scaling factor storage. [Ankit]

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
2.48.0

