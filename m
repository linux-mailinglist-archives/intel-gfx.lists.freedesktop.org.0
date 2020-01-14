Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 593ED13D3F3
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 06:50:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5C176EBE6;
	Thu, 16 Jan 2020 05:50:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 850406E33E;
 Tue, 14 Jan 2020 09:51:55 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id p17so12932381wma.1;
 Tue, 14 Jan 2020 01:51:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o6uF9w8E7yvP5smyAJROwJ+EkA/g5VkgLfeYCPIXr3I=;
 b=VDTnAV12L2Bbd0ejVn5vg+4wqrGQ2jw1FU0q4w6S5SfOA/pSQgUwMHIPlXLgYCix23
 DLkjL77Uu+P9zFktrP1nDLVoQkwLdBQ/lxi4iUo9ZptMwPSkjW8niBEMGOroa7kdBk6n
 jO0ZB887EubI2Z/ocKW6zEqJpnTlUmK/vahNi+RyiZ1fNyuDpt6HIBJdiV7S+C1zP+vU
 yT3os+Zh3XBb7Tfefec/a3EJIfxIvB34/QN5Cjygu/T7sZ6EYmj1j3Q7mVGpIKODvvNC
 8gJ4AH4t2EpFMacL6cMTEkTxzELtqd/P5ab1z7Nyoyy6WitF6sxyf0NcIFuOJ0XTLFvs
 blYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o6uF9w8E7yvP5smyAJROwJ+EkA/g5VkgLfeYCPIXr3I=;
 b=JICIKe5hzsWWLgFFxamXLXsYUehA/JgTnfWoayz/pSBQ09I9xfwJkNFRDKs3fr3Ym1
 FeR5E+6HORSSOXU5OrbC5IMUo4bWew1CqCuUBy1SaMI5OiS+9UTXhAbais/nDwlTaEXv
 rriW6jxJojutavCfo+CPoRvZcLi/IHG+VUd8j+ox69L35fW31aQzWxQjDVZ1jdobMZ2s
 6VhyEDmGRGVwcJs8FNiyMUNcGKwGmE3FQ5xFDB/w72Oc4dzmdB0TENNz5ya8CTyJJ/JQ
 8JAELenGGqEe2xuWrfk+4avlu+78jFwnW705O0Rtl8QjSj/4xex+ZdN7YimFXPI8Fptu
 bpkg==
X-Gm-Message-State: APjAAAVVq+3kRBqfQ+1Vw59aEBvQ6OLVKlNKuTJ3eFfe3p2JdTQF3tfk
 16QwVd5xrxBjKTv9JfBNf0w=
X-Google-Smtp-Source: APXvYqyZHiFMjbaCeOQWHXrv2GRCipiqqF+NyL8v599/nPOW9BBAN3WkCBsROYqWOuXyZ5gZOr8Hpw==
X-Received: by 2002:a7b:c318:: with SMTP id k24mr26656383wmj.54.1578995514255; 
 Tue, 14 Jan 2020 01:51:54 -0800 (PST)
Received: from localhost.localdomain ([154.70.37.104])
 by smtp.googlemail.com with ESMTPSA id y20sm17454881wmi.25.2020.01.14.01.51.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 01:51:53 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Tue, 14 Jan 2020 12:51:03 +0300
Message-Id: <20200114095107.21197-2-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200114095107.21197-1-wambui.karugax@gmail.com>
References: <20200114095107.21197-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 16 Jan 2020 05:50:43 +0000
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/atomic: use new logging macros for
 debug
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert to the new struct drm_based logging macros to replace the printk
based macros in i915/display/intel_atomic_plane.c.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 3e97af682b1b..8cbb29a860a3 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -183,10 +183,11 @@ bool intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
 	 * must be true since we have crtc_state).
 	 */
 	if (crtc_state->min_cdclk[plane->id] > dev_priv->cdclk.logical.cdclk) {
-		DRM_DEBUG_KMS("[PLANE:%d:%s] min_cdclk (%d kHz) > logical cdclk (%d kHz)\n",
-			      plane->base.base.id, plane->base.name,
-			      crtc_state->min_cdclk[plane->id],
-			      dev_priv->cdclk.logical.cdclk);
+		drm_dbg_kms(&dev_priv->drm,
+			    "[PLANE:%d:%s] min_cdclk (%d kHz) > logical cdclk (%d kHz)\n",
+			    plane->base.base.id, plane->base.name,
+			    crtc_state->min_cdclk[plane->id],
+			    dev_priv->cdclk.logical.cdclk);
 		return true;
 	}
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
