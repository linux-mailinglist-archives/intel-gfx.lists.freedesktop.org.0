Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C06B6CF16E
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 19:50:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D73F10EBE0;
	Wed, 29 Mar 2023 17:50:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3E06810EBE4;
 Wed, 29 Mar 2023 17:50:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 35B91A882E;
 Wed, 29 Mar 2023 17:50:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Date: Wed, 29 Mar 2023 17:50:26 -0000
Message-ID: <168011222621.23904.5413983379977415142@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230329132130.105355-1-christian.koenig@amd.com>
In-Reply-To: <20230329132130.105355-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/5=5D_drm/debugfs=3A_drop_debugfs?=
 =?utf-8?q?=5Finit=28=29_for_the_render_and_accel_node_v2?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/5] drm/debugfs: drop debugfs_init() for the render and accel node v2
URL   : https://patchwork.freedesktop.org/series/115793/
State : warning

== Summary ==

Error: dim checkpatch failed
ec995fc695c1 drm/debugfs: drop debugfs_init() for the render and accel node v2
-:43: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
da39d5843431 drm/debugfs: rework debugfs directory creation v2
-:418: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 321 lines checked
81d2f35746aa drm/debugfs: remove dev->debugfs_list and debugfs_mutex v2
-:165: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 115 lines checked
63dfc9fe1265 drm/debugfs: rework drm_debugfs_create_files implementation
-:271: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 0 checks, 203 lines checked
77d71d41765c drm/debugfs: remove debugfs_root pointer from minor
-:153: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IWUSR' are not preferred. Consider using octal permissions '0200'.
#153: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_rap.c:125:
+	debugfs_create_file("rap_test", S_IWUSR, root, adev,

-:198: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IWUSR' are not preferred. Consider using octal permissions '0200'.
#198: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_securedisplay.c:180:
+	debugfs_create_file("securedisplay_test", S_IWUSR, adev_to_drm(adev)->debugfs_root,

-:199: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#199: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_securedisplay.c:181:
+	debugfs_create_file("securedisplay_test", S_IWUSR, adev_to_drm(adev)->debugfs_root,
 				adev, &amdgpu_securedisplay_debugfs_ops);

-:279: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRUGO | S_IWUSR' are not preferred. Consider using octal permissions '0644'.
#279: FILE: drivers/gpu/drm/arm/malidp_drv.c:555:
+	debugfs_create_file("debug", S_IRUGO | S_IWUSR, minor->dev->debugfs_root,

-:521: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRUSR' are not preferred. Consider using octal permissions '0400'.
#521: FILE: drivers/gpu/drm/i915/i915_debugfs.c:814:
+	debugfs_create_file("i915_forcewake_user", S_IRUSR, minor->dev->debugfs_root,

-:579: WARNING:EXPORTED_WORLD_WRITABLE: Exporting world writable files is usually an error. Consider more restrictive permissions.
#579: FILE: drivers/gpu/drm/msm/adreno/a5xx_debugfs.c:157:
+	debugfs_create_file_unsafe("reset", S_IWUGO, minor->dev->debugfs_root, dev,

-:579: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IWUGO' are not preferred. Consider using octal permissions '0222'.
#579: FILE: drivers/gpu/drm/msm/adreno/a5xx_debugfs.c:157:
+	debugfs_create_file_unsafe("reset", S_IWUGO, minor->dev->debugfs_root, dev,

-:580: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#580: FILE: drivers/gpu/drm/msm/adreno/a5xx_debugfs.c:158:
+	debugfs_create_file_unsafe("reset", S_IWUGO, minor->dev->debugfs_root, dev,
 				&reset_fops);

-:646: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRUSR' are not preferred. Consider using octal permissions '0400'.
#646: FILE: drivers/gpu/drm/msm/msm_debugfs.c:314:
+	debugfs_create_file("gpu", S_IRUSR, minor->dev->debugfs_root,

-:647: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#647: FILE: drivers/gpu/drm/msm/msm_debugfs.c:315:
+	debugfs_create_file("gpu", S_IRUSR, minor->dev->debugfs_root,
 		dev, &msm_gpu_fops);

-:650: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRUSR' are not preferred. Consider using octal permissions '0400'.
#650: FILE: drivers/gpu/drm/msm/msm_debugfs.c:317:
+	debugfs_create_file("kms", S_IRUSR, minor->dev->debugfs_root,

-:651: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#651: FILE: drivers/gpu/drm/msm/msm_debugfs.c:318:
+	debugfs_create_file("kms", S_IRUSR, minor->dev->debugfs_root,
 		dev, &msm_kms_fops);

-:655: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#655: FILE: drivers/gpu/drm/msm/msm_debugfs.c:321:
+	debugfs_create_u32("hangcheck_period_ms", 0600, minor->dev->debugfs_root,
 		&priv->hangcheck_period);

-:659: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#659: FILE: drivers/gpu/drm/msm/msm_debugfs.c:324:
+	debugfs_create_bool("disable_err_irq", 0600, minor->dev->debugfs_root,
 		&priv->disable_err_irq);

-:662: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRWXU' are not preferred. Consider using octal permissions '0700'.
#662: FILE: drivers/gpu/drm/msm/msm_debugfs.c:326:
+	debugfs_create_file("shrink", S_IRWXU, minor->dev->debugfs_root,

-:663: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#663: FILE: drivers/gpu/drm/msm/msm_debugfs.c:327:
+	debugfs_create_file("shrink", S_IRWXU, minor->dev->debugfs_root,
 		dev, &shrink_fops);

-:691: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
#691: FILE: drivers/gpu/drm/msm/msm_perf.c:217:
+	debugfs_create_file("perf", S_IFREG | S_IRUGO, minor->dev->debugfs_root,

-:704: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
#704: FILE: drivers/gpu/drm/msm/msm_rd.c:264:
+	debugfs_create_file(name, S_IFREG | S_IRUGO, minor->dev->debugfs_root, rd,

-:1001: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRUGO | S_IWUSR' are not preferred. Consider using octal permissions '0644'.
#1001: FILE: drivers/gpu/drm/sti/sti_drv.c:100:
+	debugfs_create_file("fps_show", S_IRUGO | S_IWUSR, minor->dev->debugfs_root,

-:1210: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 13 warnings, 7 checks, 805 lines checked


