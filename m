Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A875946C3BD
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 20:34:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E57516E040;
	Tue,  7 Dec 2021 19:34:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73C042A468;
 Tue,  7 Dec 2021 17:53:13 +0000 (UTC)
Received: from sobremesa.fritz.box (unknown
 [IPv6:2a02:8010:65b5:0:bbb0:f8ec:7bc9:dbe4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: alarumbe)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id BFAED1F44E45;
 Tue,  7 Dec 2021 17:53:11 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=collabora.com; s=mail;
 t=1638899591; bh=PILm185c3xBIPdrE2Np2TrKwCm6EaeEx1+r4OuQWe1c=;
 h=From:To:Cc:Subject:Date:From;
 b=iunfisrvJxk619LDoGkM2m1zZbqyTlyTQkF7bDHOp2Z8AyMLrjzbzg36Kc0f6r+Dh
 39WLtk0T1SJ/Rk85BJLhPPQtf+u9V7QzsjwHRQCHHuZ2Jcy1dyRHeaGX2aAYcrsGq5
 fcrLZLAug6V1qcsy96mIEY9doXQeV4CGfZmkW6u5v8haccX30q1D/sN9SJ5KkYFiQl
 vWcc4F1zmFJFE8RRVwvZ3ktLNhSFtTAHPM+l4KxyxFeeC8/fYBrUrxa3wKGINDCr2i
 fY/G8s/SXouVCHAZdp3UTXLw+XiHVgcrwnTE617Ej6L6nexBrP9IV+Z3D+eqGy8PjA
 iMq84WvfqHcvw==
From: Adrian Larumbe <adrian.larumbe@collabora.com>
To: daniel@ffwll.ch, ramalingam.c@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Date: Tue,  7 Dec 2021 17:53:01 +0000
Message-Id: <20211207175301.321119-1-adrian.larumbe@collabora.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 07 Dec 2021 19:34:22 +0000
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: make GuC FW a requirement for
 Gen12 and beyond devices
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
Cc: adrian.larumbe@collabora.com, daniels@collabora.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Beginning with DG2, all successive devices will require GuC FW to be
present and loaded at probe() time. This change alters error handling in
the FW init and load functions so that the driver's probe() function will
fail if GuC could not be loaded.

Signed-off-by: Adrian Larumbe <adrian.larumbe@collabora.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc.c | 20 ++++++++++++++++----
 drivers/gpu/drm/i915/gt/uc/intel_uc.h |  4 ++--
 drivers/gpu/drm/i915/i915_gem.c       |  7 ++++++-
 3 files changed, 24 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 7660eba893fa..8b0778b6d9ab 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -277,14 +277,19 @@ static void guc_disable_communication(struct intel_guc *guc)
 	drm_dbg(&i915->drm, "GuC communication disabled\n");
 }
 
-static void __uc_fetch_firmwares(struct intel_uc *uc)
+static int __uc_fetch_firmwares(struct intel_uc *uc)
 {
+	struct drm_i915_private *i915 = uc_to_gt(uc)->i915;
 	int err;
 
 	GEM_BUG_ON(!intel_uc_wants_guc(uc));
 
 	err = intel_uc_fw_fetch(&uc->guc.fw);
 	if (err) {
+		/* GuC is mandatory on Gen12 and beyond */
+		if (GRAPHICS_VER(i915) >= 12)
+			return err;
+
 		/* Make sure we transition out of transient "SELECTED" state */
 		if (intel_uc_wants_huc(uc)) {
 			drm_dbg(&uc_to_gt(uc)->i915->drm,
@@ -293,11 +298,13 @@ static void __uc_fetch_firmwares(struct intel_uc *uc)
 						  INTEL_UC_FIRMWARE_ERROR);
 		}
 
-		return;
+		return 0;
 	}
 
 	if (intel_uc_wants_huc(uc))
 		intel_uc_fw_fetch(&uc->huc.fw);
+
+	return 0;
 }
 
 static void __uc_cleanup_firmwares(struct intel_uc *uc)
@@ -308,14 +315,19 @@ static void __uc_cleanup_firmwares(struct intel_uc *uc)
 
 static int __uc_init(struct intel_uc *uc)
 {
+	struct drm_i915_private *i915 = uc_to_gt(uc)->i915;
 	struct intel_guc *guc = &uc->guc;
 	struct intel_huc *huc = &uc->huc;
 	int ret;
 
 	GEM_BUG_ON(!intel_uc_wants_guc(uc));
 
-	if (!intel_uc_uses_guc(uc))
-		return 0;
+	if (!intel_uc_uses_guc(uc)) {
+		if (GRAPHICS_VER(i915) >= 12)
+			return -EINVAL;
+		else
+			return 0;
+	}
 
 	if (i915_inject_probe_failure(uc_to_gt(uc)->i915))
 		return -ENOMEM;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
index 866b462821c0..3bcd781447bc 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
@@ -17,7 +17,7 @@ struct intel_uc;
 
 struct intel_uc_ops {
 	int (*sanitize)(struct intel_uc *uc);
-	void (*init_fw)(struct intel_uc *uc);
+	int (*init_fw)(struct intel_uc *uc);
 	void (*fini_fw)(struct intel_uc *uc);
 	int (*init)(struct intel_uc *uc);
 	void (*fini)(struct intel_uc *uc);
@@ -104,7 +104,7 @@ static inline _TYPE intel_uc_##_NAME(struct intel_uc *uc) \
 	return _RET; \
 }
 intel_uc_ops_function(sanitize, sanitize, int, 0);
-intel_uc_ops_function(fetch_firmwares, init_fw, void, );
+intel_uc_ops_function(fetch_firmwares, init_fw, int, 0);
 intel_uc_ops_function(cleanup_firmwares, fini_fw, void, );
 intel_uc_ops_function(init, init, int, 0);
 intel_uc_ops_function(fini, fini, void, );
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 527228d4da7e..7f8204af6826 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1049,7 +1049,12 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 	if (ret)
 		return ret;
 
-	intel_uc_fetch_firmwares(&dev_priv->gt.uc);
+	ret = intel_uc_fetch_firmwares(&dev_priv->gt.uc);
+	if (ret) {
+		i915_probe_error(dev_priv, "Failed to fetch firmware\n");
+		return ret;
+	}
+
 	intel_wopcm_init(&dev_priv->wopcm);
 
 	ret = i915_init_ggtt(dev_priv);
-- 
2.34.1

