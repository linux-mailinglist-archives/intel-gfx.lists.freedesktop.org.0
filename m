Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5981B588084
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 18:52:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BDCB91D5C;
	Tue,  2 Aug 2022 16:52:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6672391D10
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 16:52:06 +0000 (UTC)
Received: from localhost.localdomain (unknown
 [IPv6:2a02:8010:65b5:0:bbb0:f8ec:7bc9:dbe4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: alarumbe)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id C5A786601BCA;
 Tue,  2 Aug 2022 17:52:04 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1659459124;
 bh=dNpmXkPKCodUcxnFkxYTm8rEv2XzjzDLYbHcXbHXRkI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HYvgqxUoly5GqvTQYv36L+cW6H3TG2aKpoSnBxS3hAPPbHsfbyh1xZYkKiU1yFf/A
 gOJiQed7AmD86R26/Rf2k1WncwaTsgj9BcauXIk8L7X+MM9gtjjTrst5B2Bk7idV25
 kBLVkhH4rPPdByecDMq3ah8q9tAPkYUgG7qtdHD+08zr0FI/1i4hs5+dW8gc0xH5Gi
 xKo0mD6eBBmaf9RmUyWy/JU9QRujJ54kJ5Qr9/YrqilBUJng9dbYJOkPIhuVuZzge6
 eJdxjweMYAmbYOmgEmoLl3dRJKfQTqgeH/3JnwMLfx39OBc4sMb1mMKOpjZwj0qDK1
 eOl3dIIulbraQ==
From: Adrian Larumbe <adrian.larumbe@collabora.com>
To: daniel@ffwll.ch, thomas.hellstrom@linux.intel.com,
 intel-gfx@lists.freedesktop.org
Date: Tue,  2 Aug 2022 17:51:51 +0100
Message-Id: <20220802165155.165576-4-adrian.larumbe@collabora.com>
X-Mailer: git-send-email 2.37.0
In-Reply-To: <20220802165155.165576-1-adrian.larumbe@collabora.com>
References: <20220802165155.165576-1-adrian.larumbe@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/ttm: only trust snooping for dgfx
 when deciding default cache_level
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

By default i915_ttm_cache_level() decides I915_CACHE_LLC if HAS_SNOOP.
This is divergent from existing backends code which only considers
HAS_LLC.
Testing shows that trusting snooping on gen5- is unreliable and bsw via
ggtt mappings, so limit DGFX for now and maintain previous behaviour.

Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
index 042c2237e287..a949594237d9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
@@ -52,7 +52,9 @@ static enum i915_cache_level
 i915_ttm_cache_level(struct drm_i915_private *i915, struct ttm_resource *res,
 		     struct ttm_tt *ttm)
 {
-	return ((HAS_LLC(i915) || HAS_SNOOP(i915)) &&
+	bool can_snoop = HAS_SNOOP(i915) && IS_DGFX(i915);
+
+	return ((HAS_LLC(i915) || can_snoop) &&
 		!i915_ttm_gtt_binds_lmem(res) &&
 		ttm->caching == ttm_cached) ? I915_CACHE_LLC :
 		I915_CACHE_NONE;
-- 
2.37.0

