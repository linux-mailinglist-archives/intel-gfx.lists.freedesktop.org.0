Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E2371F4D1
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 23:36:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A51E10E5D6;
	Thu,  1 Jun 2023 21:36:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1511710E5D6;
 Thu,  1 Jun 2023 21:36:32 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D8CA564983;
 Thu,  1 Jun 2023 21:36:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82DE6C433EF;
 Thu,  1 Jun 2023 21:36:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1685655391;
 bh=yOSVSaBHwx99uPQB7KLl4DIUi1SqOYChg3IttbqyV3s=;
 h=From:To:Cc:Subject:Date:From;
 b=Sljypvo10RdZDzMPSueWmMp22OytLYWcXo1+/y3i1x/uVunStdLlpLopvGA7c069d
 Fmf7lV8XkrHq9uO+wrtziKrSGRV+zmTmecN6elCyO1Li4eFR/mZj3Z1G7+nPBefPKT
 ZX1rd5xEYM0HffHF3CZiepUxJcV815NfhdF27u6VFZNEoF29vc2+vg4dssw+BjEcc5
 NiAV4B7ebvhRN3DtoXx8zd0fSVdUf0PlAx7aSm1SL2FMtETCBBMe9PdqYSy/2Tt+H3
 rDBZft6N4Z8a1w3LeOMTRofsdAJyKzmsPFeroG7mj6RNBENHvRXIAGhEXYOk9Camak
 9ydAGaZ2jSZtg==
From: Arnd Bergmann <arnd@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Thu,  1 Jun 2023 23:36:10 +0200
Message-Id: <20230601213624.3510244-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/pxp: use correct format string for
 size_t
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Arnd Bergmann <arnd@arndb.de>

While 'unsigned long' needs the %ld format string, size_t needs the %z
modifier:

drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c: In function 'gsccs_send_message':
include/drm/drm_print.h:456:39: error: format '%ld' expects argument of type 'long int', but argument 4 has type 'size_t' {aka 'unsigned int'} [-Werror=format=]
  456 |         dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)

Fixes: dc9ac125d81fa ("drm/i915/pxp: Add GSC-CS backend to send GSC fw messages")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
index 8dc41de3f6f74..290ed5ac487de 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
@@ -143,7 +143,7 @@ gsccs_send_message(struct intel_pxp *pxp,
 
 	reply_size = header->message_size - sizeof(*header);
 	if (reply_size > msg_out_size_max) {
-		drm_warn(&i915->drm, "caller with insufficient PXP reply size %u (%ld)\n",
+		drm_warn(&i915->drm, "caller with insufficient PXP reply size %u (%zd)\n",
 			 reply_size, msg_out_size_max);
 		reply_size = msg_out_size_max;
 	}
-- 
2.39.2

