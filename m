Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A63540C45F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 13:27:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 196606E90A;
	Wed, 15 Sep 2021 11:27:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-relay-canonical-1.canonical.com
 (smtp-relay-canonical-1.canonical.com [185.125.188.121])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14DD46E90A;
 Wed, 15 Sep 2021 11:27:05 +0000 (UTC)
Received: from localhost (1.general.cking.uk.vpn [10.172.193.212])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPSA id 74E0E3F245; 
 Wed, 15 Sep 2021 11:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1631705222;
 bh=cc3O1bxDlaxpZJKHx5bBL2k1ahxsr3eUxsuOrkSwHes=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type;
 b=TXL8wXtA8ZNQjBox1VLATAG9KebKRJQ75kVbfVXhc+YmCZgVMdKMdP78idKG6W7D0
 71deGXXjILTv7+HKK7/6DrDKopGZCIe3eAbWY+VTXbJN2Ma36v6YdTFyDQbBLxWaHJ
 i8F38dQ0tYY2My/9FVqViYzt3tVD/BbhesJd9bgKtO0iM3eICVCn/MWd+nRn6uR6T1
 eUIocUimfXiBQQbiMPL+jpoH8xAjTVlK2y108xWUr0sjStXHCsfx0ZR3yoxKcYhlTZ
 BzNy44x8kz8vCzH64XEphHCXwJCpE+hDjMZYyMwxe9BpI4fXPHCAUvA0r2JHHjRo8G
 l+6oEltjH/T0w==
From: Colin King <colin.king@canonical.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Date: Wed, 15 Sep 2021 12:27:02 +0100
Message-Id: <20210915112702.12783-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH][next] drm/i915: make array states static const
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

From: Colin Ian King <colin.king@canonical.com>

Don't populate the read-only array states on the stack but instead it
static. Also makes the object code smaller.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index cce1a926fcc1..a60710348613 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -893,7 +893,7 @@ static u32
 sanitize_target_dc_state(struct drm_i915_private *dev_priv,
 			 u32 target_dc_state)
 {
-	u32 states[] = {
+	static const u32 states[] = {
 		DC_STATE_EN_UPTO_DC6,
 		DC_STATE_EN_UPTO_DC5,
 		DC_STATE_EN_DC3CO,
-- 
2.32.0

