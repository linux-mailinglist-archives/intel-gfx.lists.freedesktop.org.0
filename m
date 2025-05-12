Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4467BAB451C
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 21:41:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE2C010E49C;
	Mon, 12 May 2025 19:41:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 598 seconds by postgrey-1.36 at gabe;
 Mon, 12 May 2025 19:41:05 UTC
Received: from 2.mo583.mail-out.ovh.net (2.mo583.mail-out.ovh.net
 [178.33.109.111])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8DF710E49C
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 May 2025 19:41:05 +0000 (UTC)
Received: from director5.ghost.mail-out.ovh.net (unknown [10.108.17.59])
 by mo583.mail-out.ovh.net (Postfix) with ESMTP id 4Zx8d86qZdz1VTm
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 May 2025 19:22:36 +0000 (UTC)
Received: from ghost-submission-5b5ff79f4f-k6ss2 (unknown [10.108.42.203])
 by director5.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 7D44C1FDC0;
 Mon, 12 May 2025 19:22:36 +0000 (UTC)
Received: from etezian.org ([37.59.142.102])
 by ghost-submission-5b5ff79f4f-k6ss2 with ESMTPSA
 id PAMHB3xKImh+WgAAi3VIzw
 (envelope-from <andi@etezian.org>); Mon, 12 May 2025 19:22:36 +0000
Authentication-Results: garm.ovh; auth=pass
 (GARM-102R004feec7e08-a4a0-41de-b9df-ebc1a201b017,
 F6DEC4A513DBFAA389B5B2A47D79B90F74CE2D55) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 178.39.90.92
From: Andi Shyti <andi.shyti@kernel.org>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Andi Shyti <andi.shyti@kernel.org>,
 Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: [CI 2/2] drm/i915/pci: Remove force_probe requirement for DG1
Date: Mon, 12 May 2025 21:22:16 +0200
Message-ID: <20250512192216.301771-3-andi.shyti@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250512192216.301771-1-andi.shyti@kernel.org>
References: <20250512192216.301771-1-andi.shyti@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 5367164858264193609
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdeftddvtdelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvvefufffkofgjfhggtgfgsehtkeertdertdejnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihdrshhhhihtiheskhgvrhhnvghlrdhorhhgqeenucggtffrrghtthgvrhhnpeevveeiffeifefgfeduvdetleffuefhleffjeetjeduvdevkeevhedvjeegfeetveenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecukfhppeduvdejrddtrddtrddupddujeekrdefledrledtrdelvddpfeejrdehledrudegvddruddtvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhnsggprhgtphhtthhopedupdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrghdpoffvtefjohhsthepmhhoheekfegmpdhmohguvgepshhmthhpohhuth
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

Dunno why we still have .require_force_probe=1 on DG1 after
all this time. I'm not aware of any real problems with DG1,
so get rid of the force_probe requirement.

Generally the difficulty with DG1 is that it requires a
4GiB BAR for the local memory, and that's not something
that works on every system.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Link: https://lore.kernel.org/r/20250411144313.11660-3-ville.syrjala@linux.intel.com
Signed-off-by: Andi Shyti <andi.shyti@kernel.org>
---
 drivers/gpu/drm/i915/i915_pci.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 21006c7f615c..b2e311f4791a 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -663,7 +663,6 @@ static const struct intel_device_info dg1_info = {
 	DGFX_FEATURES,
 	.__runtime.graphics.ip.rel = 10,
 	PLATFORM(INTEL_DG1),
-	.require_force_probe = 1,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) |
 		BIT(VCS0) | BIT(VCS2),
-- 
2.49.0

