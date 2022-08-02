Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBEC588086
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 18:53:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7806291E09;
	Tue,  2 Aug 2022 16:52:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 584EF91CED
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 16:52:07 +0000 (UTC)
Received: from localhost.localdomain (unknown
 [IPv6:2a02:8010:65b5:0:bbb0:f8ec:7bc9:dbe4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: alarumbe)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id 287B46601BCC;
 Tue,  2 Aug 2022 17:52:05 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1659459125;
 bh=safWY6EyCEMUgyd8ZuTr7yyCBeqonJkmx8sFHtX533k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cEvlp3echjmxhs8rcHn3iEobVoVLh6IssC5Nv3pYvhcRG0Z1Y5QY2W0+RiGfZdJoG
 +RtIduJHY+zeA5GdAqywAdg8eOdXVWCULhnuQkzIAjqaFK3dGRcyfy2R6S1wsB9K3l
 we12HIkVhick3/77EMKyPoLKZKZOz///DB0Ct0RLV95G8433016r6fRJKveHulWXGJ
 fxnQ1EBmr3gYsBOBl3+d4w0mbtWURgcIDeJ4aLNHiLntptVhnZHaDboOUljoteJxzD
 Fs1noog9B12j162bemdWADinQNNNKtCocaw3P66dlFqsh1+8CzB/S4AXlxUTKHeAmn
 lW4Odsvu7lYAw==
From: Adrian Larumbe <adrian.larumbe@collabora.com>
To: daniel@ffwll.ch, thomas.hellstrom@linux.intel.com,
 intel-gfx@lists.freedesktop.org
Date: Tue,  2 Aug 2022 17:51:53 +0100
Message-Id: <20220802165155.165576-6-adrian.larumbe@collabora.com>
X-Mailer: git-send-email 2.37.0
In-Reply-To: <20220802165155.165576-1-adrian.larumbe@collabora.com>
References: <20220802165155.165576-1-adrian.larumbe@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/7] drm/i915: Pick the right memory allocation
 flags for older devices
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

i965gm devices cannot relocate objects above 4GiB. This situation was
already being handled in the older shmem GEM object backend, but not in TTM
for BO's that are allocated in system memory.

Borrow the code from shmem so that TTM handles them in the same way.

Signed-off-by: Adrian Larumbe <adrian.larumbe@collabora.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 0332d5214aab..b232aed4927e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -207,6 +207,11 @@ static int i915_ttm_tt_shmem_populate(struct ttm_device *bdev,
 			return PTR_ERR(filp);
 
 		mask = GFP_HIGHUSER | __GFP_RECLAIMABLE;
+		if (IS_I965GM(i915) || IS_I965G(i915)) {
+			/* 965gm cannot relocate objects above 4GiB. */
+			mask &= ~__GFP_HIGHMEM;
+			mask |= __GFP_DMA32;
+		}
 
 		mapping = filp->f_mapping;
 		mapping_set_gfp_mask(mapping, mask);
-- 
2.37.0

