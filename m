Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96004588080
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 18:52:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82D1491CEB;
	Tue,  2 Aug 2022 16:52:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2E3291D87
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 16:52:06 +0000 (UTC)
Received: from localhost.localdomain (unknown
 [IPv6:2a02:8010:65b5:0:bbb0:f8ec:7bc9:dbe4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: alarumbe)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id 9A5596601BC9;
 Tue,  2 Aug 2022 17:52:04 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1659459124;
 bh=viHurVi1TF7KNirHlTXiseAQ6ulwmbm1LNIhC1eU+8U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cbkGmcl7F3lYxaKdZ0Q5OMq7++Ec6CKa4XuomoJ9QuDTBXWlLWjKxd6S9xZb6kvQz
 LnmLIm+RukjrjzX5XWmuJO7L05qlCG/KQbM8tcq72+WQ7GTzfNcMdJYsC4DLF8sPQ3
 l1uHfYYBU0uCQerzS6Ou73gl/bOalicSi/4Cx7mKHRmP0gzpDTJmO2eQypD7h8LZgt
 od/lLDiVNh9EjVGPeCL8LmvboaoGd91ovmmYDApQjLKj+EgtPFPSDSmU1A9/D7H8Cp
 oVpfnC9NjY0ncVCj2W7ojuk/ugg2C/1koj7pqtba/tpjP5s6stGsQJVSSimfp4PRAp
 sQuBJLc5QTCqQ==
From: Adrian Larumbe <adrian.larumbe@collabora.com>
To: daniel@ffwll.ch, thomas.hellstrom@linux.intel.com,
 intel-gfx@lists.freedesktop.org
Date: Tue,  2 Aug 2022 17:51:50 +0100
Message-Id: <20220802165155.165576-3-adrian.larumbe@collabora.com>
X-Mailer: git-send-email 2.37.0
In-Reply-To: <20220802165155.165576-1-adrian.larumbe@collabora.com>
References: <20220802165155.165576-1-adrian.larumbe@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/7] drm/i915: limit ttm to dma32 for i965G[M]
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
Cc: adrian.larumbe@collabora.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Robert Beckett <bob.beckett@collabora.com>

i965G[M] cannot relocate objects above 4GiB.
Ensure ttm uses dma32 on these systems.

Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_region_ttm.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_region_ttm.c b/drivers/gpu/drm/i915/intel_region_ttm.c
index 575d67bc6ffe..88b525f9bb2d 100644
--- a/drivers/gpu/drm/i915/intel_region_ttm.c
+++ b/drivers/gpu/drm/i915/intel_region_ttm.c
@@ -32,10 +32,15 @@
 int intel_region_ttm_device_init(struct drm_i915_private *dev_priv)
 {
 	struct drm_device *drm = &dev_priv->drm;
+	bool use_dma32 = false;
+
+	/* i965g[m] cannot relocate objects above 4GiB. */
+	if (IS_I965GM(dev_priv) || IS_I965G(dev_priv))
+		use_dma32 = true;
 
 	return ttm_device_init(&dev_priv->bdev, i915_ttm_driver(),
 			       drm->dev, drm->anon_inode->i_mapping,
-			       drm->vma_offset_manager, false, false);
+			       drm->vma_offset_manager, false, use_dma32);
 }
 
 /**
-- 
2.37.0

