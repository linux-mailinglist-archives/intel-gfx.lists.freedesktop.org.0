Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BFF0739E49
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 12:19:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3162010E52F;
	Thu, 22 Jun 2023 10:18:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E789910E52D;
 Thu, 22 Jun 2023 10:18:54 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5D9C3617C8;
 Thu, 22 Jun 2023 10:18:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6925BC433C8;
 Thu, 22 Jun 2023 10:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1687429133;
 bh=xqpXPLyBDps1Cg44j/16UrjMgGR6+mPM7epmRhz78VU=;
 h=From:To:Cc:Subject:Date:From;
 b=bA1ijQaxhV2Ba8gH79uS0lA9Q4OSnfs1AflsnyFyATFtOTi3fLv01hAhDvAVYfDLc
 QQKr8n5PDfVOZU8OhQ8wrRBgI4rNIBO3B9ODSHnF1QZPlPf2xtg0rdiWHKTYRaX5f8
 EDI9Nbn/5bJS84IUZK/FDzmfovyJ3Z+dBlTcVw6gpC9Jp3n5sgsnkRshLkxH3Vy7u1
 nOvNNsooLRdyAvNfl6hnDO9rf6sAW37Q4f+V55Be6hQxBgWXaHZlWE6T1FQR6PUvLc
 ecRLU6e90tBq3eFNSdE1i6n3lc31HlBFXgKeQVheZDyingPAcZiudCUWAoypBDay1u
 OXPhcWKWx0/zA==
From: Arnd Bergmann <arnd@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 22 Jun 2023 12:18:41 +0200
Message-Id: <20230622101848.3482277-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] i915: avoid unused-but-set-variable warning
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
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Arnd Bergmann <arnd@arndb.de>

The mchbar_addr variable is only used inside of an #ifdef:

drivers/gpu/drm/i915/soc/intel_gmch.c:41:6: error: variable 'mchbar_addr' set but not used [-Werror,-Wunused-but-set-variable]

Change this to an IS_ENABLED() check to let the compiler see how
it's used and no longer warn about it.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/gpu/drm/i915/soc/intel_gmch.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.c b/drivers/gpu/drm/i915/soc/intel_gmch.c
index 6d0204942f7a5..49c7fb16e934f 100644
--- a/drivers/gpu/drm/i915/soc/intel_gmch.c
+++ b/drivers/gpu/drm/i915/soc/intel_gmch.c
@@ -47,11 +47,9 @@ intel_alloc_mchbar_resource(struct drm_i915_private *i915)
 	mchbar_addr = ((u64)temp_hi << 32) | temp_lo;
 
 	/* If ACPI doesn't have it, assume we need to allocate it ourselves */
-#ifdef CONFIG_PNP
-	if (mchbar_addr &&
+	if (IS_ENABLED(CONFIG_PNP) && mchbar_addr &&
 	    pnp_range_reserved(mchbar_addr, mchbar_addr + MCHBAR_SIZE))
 		return 0;
-#endif
 
 	/* Get some space for it */
 	i915->gmch.mch_res.name = "i915 MCHBAR";
-- 
2.39.2

