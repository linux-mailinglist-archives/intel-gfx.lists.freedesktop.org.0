Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D2B69E0E6
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 13:57:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9C5F10E808;
	Tue, 21 Feb 2023 12:57:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AB5510E7F6
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 12:57:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676984263; x=1708520263;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2ag+NRBT750ly1emHEMglS7QyBzYjXhtoDc/T5BI62g=;
 b=QOHuXkATCg48s5tbqUX4E22In4g3RRR2paoBXYPErZPy6n75oX0Oc+/m
 b6gqAGw9QLCcxlYKRTUIQSGq83vXHVGYxkdIWBi0jmoicMZNKwUy+PEyJ
 rRt/p3g3Q5QAEdY9cq4xFWFH/EPRz7+sKMls4l+FRfbtAYtY81jVeyotx
 eLFprJ7X3D5o7SKy1nysbdcIRVBU0eIyR6OLmW5k/7qrEt/NUaLyCV0TW
 y9j9h8lNHYygMkYxFe2jrlg40Cg0Qs8zEh8f16d6bMz18U9FnkNuSbG66
 JK81VN+J/30DbI0680R25yMuZTDceDSKzOk9aNae8iJPFusqv9qtrUkNa w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="395103821"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="395103821"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 04:57:42 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="795512827"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="795512827"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 04:57:41 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Feb 2023 14:57:36 +0200
Message-Id: <20230221125737.1813187-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230221125737.1813187-1-imre.deak@intel.com>
References: <20230221125737.1813187-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/opregion: Register display debugfs
 later, after initialization steps
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

Move the display debugfs registration later, after initializing steps
for opregion/acpi/audio. These latter ones don't depend on the debugfs
entries, OTOH some debugfs entries may depend on the initialized state.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a1fbdf32bd214..7827ef3e2d1e6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8885,14 +8885,14 @@ void intel_display_driver_register(struct drm_i915_private *i915)
 	if (!HAS_DISPLAY(i915))
 		return;
 
-	intel_display_debugfs_register(i915);
-
 	/* Must be done after probing outputs */
 	intel_opregion_register(i915);
 	intel_acpi_video_register(i915);
 
 	intel_audio_init(i915);
 
+	intel_display_debugfs_register(i915);
+
 	/*
 	 * Some ports require correctly set-up hpd registers for
 	 * detection to work properly (leading to ghost connected
-- 
2.37.1

