Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A49CDBBAB
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Dec 2025 10:01:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6714010E36B;
	Wed, 24 Dec 2025 09:01:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TWmnaJM4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1EFA10E37F;
 Wed, 24 Dec 2025 09:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766566868; x=1798102868;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FuE+Uoscw7ViZXFoRq3yQ13FwA2PxivEXQnFvXwTo7k=;
 b=TWmnaJM4yvmx/3f1B0xCYbX7gXEyV+PSfaJjb2KuQ+mFpgxZxontjS/v
 41Gpo0HFR5ce7UO7O8qhnLL96AXfC0cAAh8SIIDRg7jZEyBtYJhxzR3qr
 aA0wBs5bKrBQMF/74pv48RTMckUtolqJ0LvIsw18bc1BbNPoJAshAwrB0
 kVhFkX1Ms6djXNITLsiQDntcEr6inQdpcdhNTF4lmNd7iu8snluntb0sJ
 nxgxItunUGSsKmXso/nwiEzCyfaPhKkbfzr+0vM/JOXDtbFrGBhY8taG8
 gAgC9tckpOV/+Nldr6i6IRO3m9yWg2tSdln9ORnD4SzPcUgr4NZ4zdN3M Q==;
X-CSE-ConnectionGUID: sa45Uj0EQr+wDFnKJtj4SA==
X-CSE-MsgGUID: RSjSBjW0RPmd9fIO/wgRKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11651"; a="79041573"
X-IronPort-AV: E=Sophos;i="6.21,173,1763452800"; d="scan'208";a="79041573"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2025 01:01:08 -0800
X-CSE-ConnectionGUID: fpm5MfyqSR612fl98wzelg==
X-CSE-MsgGUID: sLAWI7C7Q96VjgIxP90pUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,173,1763452800"; d="scan'208";a="199733515"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2025 01:01:06 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH 5/5] drm/i915/alpm: Disable LOBF around transitioning for
 LRR/seamless MN
Date: Wed, 24 Dec 2025 14:18:38 +0530
Message-ID: <20251224084838.2609537-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251224084838.2609537-1-ankit.k.nautiyal@intel.com>
References: <20251224084838.2609537-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
- pre_plane_update: if LOBF was enabled, disable LOBF before the
  update_lrr/update_m_n transition.
- post_plane_update: Re-enable LOBF after the transition.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 204a5b858a67..b9e52acaeb90 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1015,7 +1015,9 @@ static bool intel_crtc_lobf_enabling(const struct intel_crtc_state *old_crtc_sta
 	if (!new_crtc_state->hw.active)
 		return false;
 
-	return is_enabling(has_lobf, old_crtc_state, new_crtc_state);
+	return is_enabling(has_lobf, old_crtc_state, new_crtc_state) ||
+	       (new_crtc_state->has_lobf &&
+		(new_crtc_state->update_lrr || new_crtc_state->update_m_n));
 }
 
 static bool intel_crtc_lobf_disabling(const struct intel_crtc_state *old_crtc_state,
@@ -1024,7 +1026,9 @@ static bool intel_crtc_lobf_disabling(const struct intel_crtc_state *old_crtc_st
 	if (!old_crtc_state->hw.active)
 		return false;
 
-	return is_disabling(has_lobf, old_crtc_state, new_crtc_state);
+	return is_disabling(has_lobf, old_crtc_state, new_crtc_state) ||
+		(old_crtc_state->has_lobf &&
+		 (new_crtc_state->update_lrr || new_crtc_state->update_m_n));
 }
 
 #undef is_disabling
-- 
2.45.2

