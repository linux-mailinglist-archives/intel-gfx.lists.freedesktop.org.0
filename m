Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFD4505AA2
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Apr 2022 17:09:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA2C510E176;
	Mon, 18 Apr 2022 15:09:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CB9510E176
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Apr 2022 15:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650294585;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=cUw3XHOsMjFtgtZcLx01UJE0eztMspOPvZQwvmbedaA=;
 b=FcsZcfKiexBy2fU/GuO/fZ//wI31xGr7Vp4magTPeHQISjDTdb/EZp+smtr/dsHW7ZnW5l
 Imt8O+jXSG8i7fEkyy1pnHqBysT+1R5eBOWALSNWuBPl/1GmZXGrxLBcHwrwXnu9xyuvDX
 SJDra0ODkFA+wGpdFZ2XgxTJEMn2ozY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-605-cawvkDz8MoGoq0ELhHsnHw-1; Mon, 18 Apr 2022 11:09:39 -0400
X-MC-Unique: cawvkDz8MoGoq0ELhHsnHw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A0AB9833965;
 Mon, 18 Apr 2022 15:09:38 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.192.104])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9CFD32166BA2;
 Mon, 18 Apr 2022 15:09:37 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Mon, 18 Apr 2022 17:09:36 +0200
Message-Id: <20220418150936.5499-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix DISP_POS_Y and DISP_HEIGHT defines
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Commit 428cb15d5b00 ("drm/i915: Clean up pre-skl primary plane registers")
introduced DISP_POS_Y and DISP_HEIGHT defines but accidentally set these
their masks to REG_GENMASK(31, 0) instead of REG_GENMASK(31, 16).

This breaks the primary display pane on at least pineview machines, fix
the mask to fix the primary display pane only showing black.

Tested on an Acer One AO532h with an Intel N450 SoC.

Fixes: 428cb15d5b00 ("drm/i915: Clean up pre-skl primary plane registers")
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
Note this fixes a regression in 5.18-rc# and I'm not entirely sure what
the procedure is here. Once I get a Reviewed-by or Acked-by and I push
this to drm-intel-next (where it also is necessary), should I then also
push it to drm-intel-fixes or will the current drm-intel-fixes
maintainer pick it up?
---
 drivers/gpu/drm/i915/i915_reg.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 51f46fe45c72..5f1f38684d65 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4352,12 +4352,12 @@
 #define _DSPAADDR				0x70184
 #define _DSPASTRIDE				0x70188
 #define _DSPAPOS				0x7018C /* reserved */
-#define   DISP_POS_Y_MASK		REG_GENMASK(31, 0)
+#define   DISP_POS_Y_MASK		REG_GENMASK(31, 16)
 #define   DISP_POS_Y(y)			REG_FIELD_PREP(DISP_POS_Y_MASK, (y))
 #define   DISP_POS_X_MASK		REG_GENMASK(15, 0)
 #define   DISP_POS_X(x)			REG_FIELD_PREP(DISP_POS_X_MASK, (x))
 #define _DSPASIZE				0x70190
-#define   DISP_HEIGHT_MASK		REG_GENMASK(31, 0)
+#define   DISP_HEIGHT_MASK		REG_GENMASK(31, 16)
 #define   DISP_HEIGHT(h)		REG_FIELD_PREP(DISP_HEIGHT_MASK, (h))
 #define   DISP_WIDTH_MASK		REG_GENMASK(15, 0)
 #define   DISP_WIDTH(w)			REG_FIELD_PREP(DISP_WIDTH_MASK, (w))
-- 
2.35.1

