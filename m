Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37AC1252413
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 01:21:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E73026E122;
	Tue, 25 Aug 2020 23:21:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2B0A6E128
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Aug 2020 23:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1598397667;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type;
 bh=xNdewgWH8gCx0lJ9ZMNVoHAdBDGRlASSw/JoCtrkyuQ=;
 b=DBrajKJJlIVh2Z9Y62mOqtofpt/sFrDaJIAfnbBcqSua/lIwp5Bsr1QFou1G5QFM1L2AT3
 e2MUYAdoypaFOWOxAoars1AWd0MTIGJdIZPX8+ySC0CCBkdy9cSq/ujlXW1yLCPIovzGuT
 ib4kOIJ5oVE1s9ISfzM/zQOHMh1HccM=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-562-uKXfJgpkPl-Zh4a_ExkpQQ-1; Tue, 25 Aug 2020 19:21:05 -0400
X-MC-Unique: uKXfJgpkPl-Zh4a_ExkpQQ-1
Received: by mail-qk1-f200.google.com with SMTP id t194so41198qka.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Aug 2020 16:21:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=xNdewgWH8gCx0lJ9ZMNVoHAdBDGRlASSw/JoCtrkyuQ=;
 b=XqIo2qd1QntYXLnRjLNy6e3A7KjiNheHp+iXCL/PLvf6VrA1Esdl9zegl8u81QWHI/
 1UfAY/3JCvKUzvT/5OPfflda2BHVWrHILHmC+7Mjq6+y5XEYFyu2W/LzUDvshLUb0J7M
 +jTy3mKXyuD3/xIFbl4EiOuyRw0cygiq/X4DtpAFTu23jvDqnXlF1fO0XeQgFRjeOCVz
 74vVRyq1C8mVQkk+scPm6Pma8unx933DU+N1iwf3G8HWSg68YZC/IIOMuEfJK9gERo43
 t6q2+MDNhyjo6KBfWAjLSBAxsrlFIyVzdWJ5CBXsn6PkjPg3Jbac41+mYPJn1ydqKlSz
 efsw==
X-Gm-Message-State: AOAM531xtyW1sFYe32EJ4k4k1b1whk7e5lIWzMdIgagZfhFuIovKsG0Y
 ZJ69jN41X+H+F7U/p8ZQpDw0WY5YIIOhTKRulMMw93b5/tu5b5UhVnG+UQOkJNX3xuDCEB+Nvot
 teTM2ze1upHBQK6bzhKPa+xk9tMRj
X-Received: by 2002:ac8:17f1:: with SMTP id r46mr5963449qtk.135.1598397664838; 
 Tue, 25 Aug 2020 16:21:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx8I7EJn0X+Y1AjXauBs3W/d3tk01cGPGwK4MefHhs4PA5UeDTE8BAPGY84Kz1xBSI26HkGwA==
X-Received: by 2002:ac8:17f1:: with SMTP id r46mr5963432qtk.135.1598397664642; 
 Tue, 25 Aug 2020 16:21:04 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com.
 [75.142.250.213])
 by smtp.gmail.com with ESMTPSA id g55sm494590qta.94.2020.08.25.16.21.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Aug 2020 16:21:04 -0700 (PDT)
From: trix@redhat.com
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch,
 jose.souza@intel.com, matthew.d.roper@intel.com, anusha.srivatsa@intel.com,
 pankaj.laxminarayan.bharadiya@intel.com, wambui.karugax@gmail.com,
 vivek.kasireddy@intel.com
Date: Tue, 25 Aug 2020 16:20:57 -0700
Message-Id: <20200825232057.31601-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: redhat.com
Subject: [Intel-gfx] [PATCH] drm/i915/display: fix uninitialized variable
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
Cc: Tom Rix <trix@redhat.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tom Rix <trix@redhat.com>

clang static analysis flags this error

intel_combo_phy.c:268:7: warning: The left expression of the
  compound assignment is an uninitialized value.
  The computed value will also be garbage
                ret &= check_phy_reg(...
                ~~~ ^

ret has no initial values, in icl_combo_phy_verify_state() ret is
set by the next statment and then updated by similar &= logic.

Because the check_phy_req() are only register reads, reorder the
statements.

Fixes: 239bef676d8e ("drm/i915/display: Implement new combo phy initialization step")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_combo_phy.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 6968de4f3477..7622ef66c987 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -264,6 +264,8 @@ static bool icl_combo_phy_verify_state(struct drm_i915_private *dev_priv,
 	if (!icl_combo_phy_enabled(dev_priv, phy))
 		return false;
 
+	ret = cnl_verify_procmon_ref_values(dev_priv, phy);
+
 	if (INTEL_GEN(dev_priv) >= 12) {
 		ret &= check_phy_reg(dev_priv, phy, ICL_PORT_TX_DW8_LN0(phy),
 				     ICL_PORT_TX_DW8_ODCC_CLK_SEL |
@@ -276,8 +278,6 @@ static bool icl_combo_phy_verify_state(struct drm_i915_private *dev_priv,
 				     DCC_MODE_SELECT_CONTINUOSLY);
 	}
 
-	ret = cnl_verify_procmon_ref_values(dev_priv, phy);
-
 	if (phy_is_master(dev_priv, phy)) {
 		ret &= check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW8(phy),
 				     IREFGEN, IREFGEN);
-- 
2.18.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
