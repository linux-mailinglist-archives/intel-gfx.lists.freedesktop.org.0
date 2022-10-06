Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 661A95F716E
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Oct 2022 00:54:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DA2C10E0DA;
	Thu,  6 Oct 2022 22:54:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 399A610E0DA
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Oct 2022 22:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665096857; x=1696632857;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WTJ18NwRAWMbBJ56NneFo+poU6IKImkTnmqx1xP5k0U=;
 b=CdLAUNjYrrF/P2aR0x+16JL2n3S6VVnwupQF0ZE59npGj6U3nQgDpqVB
 PbmfRAo46q2hc8GIL05MkTxv5A1KKXOBqmcyne6LWqyEx6Z4vT024oiAc
 b/v2XPSGyl1o+EeM6QYQfJq0ruCUFoYDvdKsy5uTANMPKgzfvyiSHaGVR
 xuGI5xEu0+x3ZFzw4i/bZ90YjTvS/oHuMiXm3W2HZRyzAEuOq5kbxSVmh
 TlUH9sEyvn+3jhOO2euSAUBP11DqxKAnBrPlxXUmKXi8Lj0W3fLuswh3v
 4a+PNzfmB0cp6RN+7DEJHvU8tQB8kJDJ8ogxoax1afyvaHARKuF0yabSg Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="365535847"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="365535847"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 15:54:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="687636105"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="687636105"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 06 Oct 2022 15:54:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Oct 2022 01:54:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Oct 2022 01:54:13 +0300
Message-Id: <20221006225413.27731-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Allow panel fixed modes to have
 differing sync polarities
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Apparently some panels declare multiple modes with random
sync polarities. Seems a bit weird, but looks like Windows/GOP
doesn't care, so let follow suit and accept alternate fixed
modes regardless of their sync polarities.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6968
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 2b4b359b8342..fdeb1cd608c3 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -82,12 +82,16 @@ static bool is_alt_drrs_mode(const struct drm_display_mode *mode,
 		mode->clock != preferred_mode->clock;
 }
 
+#define DRM_MODE_FLAG_SYNC_MASK (DRM_MODE_FLAG_PHSYNC | \
+				 DRM_MODE_FLAG_NHSYNC | \
+				 DRM_MODE_FLAG_PVSYNC | \
+				 DRM_MODE_FLAG_NVSYNC)
+
 static bool is_alt_fixed_mode(const struct drm_display_mode *mode,
 			      const struct drm_display_mode *preferred_mode)
 {
-	return drm_mode_match(mode, preferred_mode,
-			      DRM_MODE_MATCH_FLAGS |
-			      DRM_MODE_MATCH_3D_FLAGS) &&
+	return (mode->flags & ~DRM_MODE_FLAG_SYNC_MASK) ==
+		(preferred_mode->flags & ~DRM_MODE_FLAG_SYNC_MASK) &&
 		mode->hdisplay == preferred_mode->hdisplay &&
 		mode->vdisplay == preferred_mode->vdisplay;
 }
-- 
2.35.1

