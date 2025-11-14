Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C854C5B67A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 06:40:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09E9010E9B0;
	Fri, 14 Nov 2025 05:40:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e5SzxHRH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2035410E9B6;
 Fri, 14 Nov 2025 05:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763098843; x=1794634843;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=22rbecp8M82stQWmmzX3bkp9yWBAn4F1FmRf3LT8ux4=;
 b=e5SzxHRH5mfBzzaUXIuw+Ex71IeJ6PuUahVAqk6tL0V7bVSNVLDNzU9+
 pX3u4tu8jQk5INW4FbOLjIyoVNgEiv26askRn9dCaMVZaSG9gB3UWek5b
 boz92cv0POQygezfdWv9jeGaHwu53c38GUU98VqgOF57k+lh3gsHYhQww
 5xhvABMkz/WayFyUev0Li9b72TQLtwVHUCTj55SW0d+VBnPYbdIz/10fS
 4hRUOsVjCsMXVb8tHLi01SITQlksW4v6DtUzSBAmRqySLmxU9Q22olBzg
 dObgXFt7CFTQloWrdGZ6k6tXVPUdQw6CVFEMWgzz2rqG1HqvGmgBlhjN9 g==;
X-CSE-ConnectionGUID: 0IJTrsLTTMWgK9ZE12Nu/g==
X-CSE-MsgGUID: TuZzTAjbTu27adzVVo4bgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="76536307"
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="76536307"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 21:40:43 -0800
X-CSE-ConnectionGUID: SeUYchwJT7y/djrq2V84Ew==
X-CSE-MsgGUID: PVUwBCaBR4WUR8p100dMlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="189543676"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 21:40:41 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 5/5] drm/i915/alpm: Disable LOBF around transitioning for
 LRR/seamless MN
Date: Fri, 14 Nov 2025 10:57:46 +0530
Message-ID: <20251114052746.158751-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251114052746.158751-1-ankit.k.nautiyal@intel.com>
References: <20251114052746.158751-1-ankit.k.nautiyal@intel.com>
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

When enabling LRR/seamless MN disable LOBF first and re-enable
afterwards.
- pre_plane_update: if LOBF was enabled, run pre even when new==old
  whenever update_lrr || update_m_n is set (to disable LOBF before the
  transition).
- post_plane_update: run post to re-enable LOBF after the transition.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index db2b9608f7f8..e3079cf7af9d 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -462,7 +462,9 @@ void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
 		return;
 
 	if (!old_crtc_state->has_lobf ||
-	    crtc_state->has_lobf == old_crtc_state->has_lobf)
+	    (crtc_state->has_lobf == old_crtc_state->has_lobf &&
+	     !crtc_state->update_lrr &&
+	     !crtc_state->update_m_n))
 		return;
 
 	for_each_intel_encoder_mask(display->drm, encoder,
@@ -517,7 +519,9 @@ void intel_alpm_post_plane_update(struct intel_atomic_state *state,
 		return;
 
 	if (!crtc_state->has_lobf ||
-	    crtc_state->has_lobf == old_crtc_state->has_lobf)
+	    (crtc_state->has_lobf == old_crtc_state->has_lobf &&
+	     !crtc_state->update_lrr &&
+	     !crtc_state->update_m_n))
 		return;
 
 	for_each_intel_encoder_mask(display->drm, encoder,
-- 
2.45.2

