Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B49545267
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jun 2022 18:52:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 800F411B0AB;
	Thu,  9 Jun 2022 16:52:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E44C11AB75;
 Thu,  9 Jun 2022 16:52:29 +0000 (UTC)
Received: from hermes-devbox.fritz.box (82-71-8-225.dsl.in-addr.zen.co.uk
 [82.71.8.225])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: bbeckett)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id EBC5266017EC;
 Thu,  9 Jun 2022 17:52:27 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1654793548;
 bh=8vOVoJXWNBNoAe7uHxF6kK6AtRixKpYtIjs6ocUktn4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Xihi5B5e5WHHgSAo6HedsLzSorg92CMGBrBGBqJ8uY5Rml9yp9GaLMXyJQd4zgYlx
 fQkX7x3wfEaMEqebyc8LVvxtzhtrGJRDpOF0bDzklafhaUfcCX23O6Y0FG45CJ4u+V
 9zOdG/94nIeKMjWDxshowaCqawMaXhT+/+2yaSI3Hi3PVnw4MCDOqc8hBBfK8wKcKa
 BEC7VtPddb3oRQMdf4zH1YaSfRassGwea/vyR4N4hhYRB19ri/6DhRHtmDK4xToKwh
 Nvk1vqQij6fdjd2amg4aJN3DexdQdMb7j6sWxIa+0sGXNpb6Kg0AEpxvV5r1ZKCRCq
 v/4cMtg3TG6vA==
From: Robert Beckett <bob.beckett@collabora.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Date: Thu,  9 Jun 2022 16:51:59 +0000
Message-Id: <20220609165200.842821-8-bob.beckett@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220609165200.842821-1-bob.beckett@collabora.com>
References: <20220609165200.842821-1-bob.beckett@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 7/8] drm/i915/ttm: only trust snooping for
 dgfx when deciding default cache_level
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 kernel@collabora.com, Matthew Auld <matthew.auld@intel.com>,
 linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

By default i915_ttm_cache_level() decides I915_CACHE_LLC if HAS_SNOOP.
This is divergent from existing backends code which only considers
HAS_LLC.
Testing shows that trusting snooping on gen5- is unreliable and bsw via
ggtt mappings, so limit DGFX for now and maintain previous behaviour.

Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
index 4c1de0b4a10f..40249fa28a7a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
@@ -46,7 +46,9 @@ static enum i915_cache_level
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
2.25.1

