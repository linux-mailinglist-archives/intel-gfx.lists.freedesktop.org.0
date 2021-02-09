Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C47E315898
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 22:29:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65C736EBF6;
	Tue,  9 Feb 2021 21:29:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF7B76EBB5
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 21:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1612906155;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=r4vHKyxaJAT0/1wV081PetDr4hjwJkdG0DrTm5Hc4Eo=;
 b=P46YH5UUZriqhQ6rLwJgbgKWoLJStaYg/I6fs2N0Q/K26YWPs+QHQqyqK69sfCZAeDM54M
 eb2acMhGbI/WtqSIoseEStDimczBkR/dXlKVFvUr9ZwJchyAO58Oe7mzOJw+4FEMesixFb
 q2APP7jBI/HivbgsNa/zz9y2eky0KyE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-480-ShacVntjP_idw7_mlFjzNA-1; Tue, 09 Feb 2021 16:29:13 -0500
X-MC-Unique: ShacVntjP_idw7_mlFjzNA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AC191835E28;
 Tue,  9 Feb 2021 21:29:10 +0000 (UTC)
Received: from Whitewolf.redhat.com (ovpn-113-53.rdu2.redhat.com
 [10.10.113.53])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8CDAB19C78;
 Tue,  9 Feb 2021 21:29:08 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 Feb 2021 16:28:31 -0500
Message-Id: <20210209212832.1401815-5-lyude@redhat.com>
In-Reply-To: <20210209212832.1401815-1-lyude@redhat.com>
References: <20210209212832.1401815-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Subject: [Intel-gfx] [PATCH v5 4/4] drm/i915/gen9_bc: Add W/A for missing
 STRAP config on TGP PCH + CML combos
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
Cc: David Airlie <airlied@linux.ie>,
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
 open list <linux-kernel@vger.kernel.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, Yijun Shen <Yijun.Shen@dell.com>,
 Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Apparently the new gen9_bc platforms that Intel has introduced don't
provide us with a STRAP config register to read from for initializing DDI
B, C, and D detection. So, workaround this by hard-coding our strap config
in intel_setup_outputs().

Changes since v4:
* Split this into it's own commit

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
[originally from Tejas's work]
Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Signed-off-by: Lyude Paul <lyude@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index beed08c00b6c..4dee37f8659d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -11943,7 +11943,14 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 
 		/* DDI B, C, D, and F detection is indicated by the SFUSE_STRAP
 		 * register */
-		found = intel_de_read(dev_priv, SFUSE_STRAP);
+		if (HAS_PCH_TGP(dev_priv)) {
+			/* W/A due to lack of STRAP config on TGP PCH*/
+			found = (SFUSE_STRAP_DDIB_DETECTED |
+				 SFUSE_STRAP_DDIC_DETECTED |
+				 SFUSE_STRAP_DDID_DETECTED);
+		} else {
+			found = intel_de_read(dev_priv, SFUSE_STRAP);
+		}
 
 		if (found & SFUSE_STRAP_DDIB_DETECTED)
 			intel_ddi_init(dev_priv, PORT_B);
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
