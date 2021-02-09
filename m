Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93497315891
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 22:29:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B1386E140;
	Tue,  9 Feb 2021 21:29:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7519D6E140
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 21:29:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1612906140;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2N3ca9p7lH/QIyPYN9HaRFvz+R5PWguxowknFdwLol8=;
 b=JzzGaSW9Yp0gPqUsE4Xik0j0iVeR9sFGWgx2IySC+d6gp95p8YMbwxlXBSoLLYmjeDz3hX
 fA2eGJXF16t+uA8cj/Ns2qdB5ojGjwU8TY4e67GeHFX/KmGwFhLTXbcJ6rJcQ9LudY40rY
 TTLQxxBFDJKbL10W+uwKmCCt/3qXltk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-231-OYYlAEAZMyiimlEYYG6IaQ-1; Tue, 09 Feb 2021 16:28:57 -0500
X-MC-Unique: OYYlAEAZMyiimlEYYG6IaQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 71B68107ACE6;
 Tue,  9 Feb 2021 21:28:55 +0000 (UTC)
Received: from Whitewolf.redhat.com (ovpn-113-53.rdu2.redhat.com
 [10.10.113.53])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 136AD19C78;
 Tue,  9 Feb 2021 21:28:53 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 Feb 2021 16:28:28 -0500
Message-Id: <20210209212832.1401815-2-lyude@redhat.com>
In-Reply-To: <20210209212832.1401815-1-lyude@redhat.com>
References: <20210209212832.1401815-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Subject: [Intel-gfx] [PATCH v5 1/4] drm/i915/gen9_bc: Recognize TGP PCH +
 CML combos
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
Cc: David Airlie <airlied@linux.ie>, open list <linux-kernel@vger.kernel.org>,
 Yijun Shen <Yijun.Shen@dell.com>,
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since Intel has introduced the gen9_bc platform, a combination of
Tigerpoint PCHs and CML CPUs, let's recognize such platforms as valid and
avoid WARNing on them.

Changes since v4:
* Split this into it's own patch - vsyrjala

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
[originally from Tejas's work]
Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Signed-off-by: Lyude Paul <lyude@redhat.com>
---
 drivers/gpu/drm/i915/intel_pch.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
index 4813207fc053..7476f0e063c6 100644
--- a/drivers/gpu/drm/i915/intel_pch.c
+++ b/drivers/gpu/drm/i915/intel_pch.c
@@ -121,7 +121,8 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 	case INTEL_PCH_TGP2_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Tiger Lake LP PCH\n");
 		drm_WARN_ON(&dev_priv->drm, !IS_TIGERLAKE(dev_priv) &&
-			    !IS_ROCKETLAKE(dev_priv));
+			    !IS_ROCKETLAKE(dev_priv) &&
+			    !IS_GEN9_BC(dev_priv));
 		return PCH_TGP;
 	case INTEL_PCH_JSP_DEVICE_ID_TYPE:
 	case INTEL_PCH_JSP2_DEVICE_ID_TYPE:
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
