Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93417861935
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Feb 2024 18:18:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D7B310E0B1;
	Fri, 23 Feb 2024 17:18:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=wanadoo.fr header.i=@wanadoo.fr header.b="ZFxKjX92";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 512 seconds by postgrey-1.36 at gabe;
 Fri, 23 Feb 2024 17:18:11 UTC
Received: from smtp.smtpout.orange.fr (smtp-25.smtpout.orange.fr
 [80.12.242.25])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7E97F10E0B1
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Feb 2024 17:18:11 +0000 (UTC)
Received: from fedora.home ([92.140.202.140]) by smtp.orange.fr with ESMTPA
 id dZ3GrKc3YdwEKdZ3GrQYVX; Fri, 23 Feb 2024 18:09:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
 s=t20230301; t=1708708177;
 bh=yqjFD2SSA0fcwHyt4UvJnhSi3JeettLpDMfFQ+pNE78=;
 h=From:To:Cc:Subject:Date;
 b=ZFxKjX92Vu7ZqQCSXP5FXEIV4ARiUZPiTmKDl8DjfrUCWc8awqrlxd1pGs1iaZD1V
 ndBEv+CCPhtf4lo3spUhMT0FIZxcNl1bPZzZ6KgTC/Bd9K22kU90ZiBrLJLa0Gpgit
 r5mpBLS6NhtRdB6oejdlo5L8Vi/byW7v0/CVVenpgBMkRWhHsB41yRVOOjEu4Igjx1
 EpdofouwzhryL49+ZIBtKnONYzCCpGC6fjGpe1iqqsnZfB3F735Hw0+SgVzN8THGMB
 MBvpPyvaAF0KW62UBEvVrNlthJUj5YfQltxx/yG1t0IMxCSFGrMuIlxxscCGsV8qmJ
 mm7/FlCgFIXOQ==
X-ME-Helo: fedora.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Fri, 23 Feb 2024 18:09:37 +0100
X-ME-IP: 92.140.202.140
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Subject: [PATCH] drm/i915/display: Save a few bytes of memory in
 intel_backlight_device_register()
Date: Fri, 23 Feb 2024 18:09:28 +0100
Message-ID: <ecfdb3af5005e05131e2fb93fd870830f39a8c29.1708708142.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

'name' may still be "intel_backlight" when backlight_device_register() is
called.
In such a case, using kstrdup_const() saves a memory duplication when
dev_set_name() is called in backlight_device_register().

Use kfree_const() accordingly.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
Compile tested only
---
 drivers/gpu/drm/i915/display/intel_backlight.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 1946d7fb3c2e..9e4a9d4f1585 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -949,7 +949,7 @@ int intel_backlight_device_register(struct intel_connector *connector)
 	else
 		props.power = FB_BLANK_POWERDOWN;
 
-	name = kstrdup("intel_backlight", GFP_KERNEL);
+	name = kstrdup_const("intel_backlight", GFP_KERNEL);
 	if (!name)
 		return -ENOMEM;
 
@@ -963,7 +963,7 @@ int intel_backlight_device_register(struct intel_connector *connector)
 		 * compatibility. Use unique names for subsequent backlight devices as a
 		 * fallback when the default name already exists.
 		 */
-		kfree(name);
+		kfree_const(name);
 		name = kasprintf(GFP_KERNEL, "card%d-%s-backlight",
 				 i915->drm.primary->index, connector->base.name);
 		if (!name)
@@ -987,7 +987,7 @@ int intel_backlight_device_register(struct intel_connector *connector)
 		    connector->base.base.id, connector->base.name, name);
 
 out:
-	kfree(name);
+	kfree_const(name);
 
 	return ret;
 }
-- 
2.43.2

