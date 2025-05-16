Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C14A7ABBE81
	for <lists+intel-gfx@lfdr.de>; Mon, 19 May 2025 15:00:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A4D310E370;
	Mon, 19 May 2025 13:00:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="sjZmGPmQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-4327.protonmail.ch (mail-4327.protonmail.ch [185.70.43.27])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65CA710EA41
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 May 2025 10:42:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=protonmail3; t=1747392150; x=1747651350;
 bh=5S5LCJKk0So/T0veEYnMbllxlYVebk+O5gwQW07D7hc=;
 h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector:
 List-Unsubscribe:List-Unsubscribe-Post;
 b=sjZmGPmQO2BeCpJF94hzv0d67SMY1MYH/IZ0yOjwTy09QXaNbth7Lfw1+P0JOfIYJ
 RPc57CIk+uuWMs1ZaMAFjOmYI74MGd49m+5ErywHCtzgLrKHnx9EulkUaANqGJUYBd
 vyrfk2wMtNE9A+NflZ6hKKIE22uAabcAb7ztTBLaU/gAIn8TXSPpvDmHx8fZRcYe1v
 u824yQRfjmnOSYXVrM/YJRdPLTGu/jbeeV8mXk42qQieg59PWueVEUECA+Zpc9xlIN
 L2RWTNe5hq6fnOIO+Vj7EuWk2OplsKgGYK2x00wuO5D9wAug6G+J03AZT/1eFmFSw4
 SMf63wKPw6U1A==
Date: Fri, 16 May 2025 10:42:25 +0000
To: intel-xe@lists.freedesktop.org
From: Harry Austen <hpausten@protonmail.com>
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Harry Austen <hpausten@protonmail.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?utf-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v4] drm/xe: Allow building as kernel built-in
Message-ID: <20250516104210.17969-1-hpausten@protonmail.com>
Feedback-ID: 53116287:user:proton
X-Pm-Message-ID: 09e2a1a12e00f3a2b0e22c797cd769bce3479781
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 19 May 2025 13:00:14 +0000
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

Fix Kconfig symbol dependency on KUNIT, which isn't actually required
for XE to be built-in. However, if KUNIT is enabled, it must be built-in
too.

Also, allow DRM_XE_DISPLAY to be built-in. But only as long as DRM_I915
isn't, since that results in duplicate symbol errors.

Fixes: 08987a8b6820 ("drm/xe: Fix build with KUNIT=3Dm")
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Harry Austen <hpausten@protonmail.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
---
v4: Add Jani Nikula's Acked-by tag
v3: Simplify KUNIT dependency, as suggested by Jani Nikula
v2: Ensure DRM_XE_DISPLAY and DRM_I915 can't both be built-in

 drivers/gpu/drm/xe/Kconfig | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/Kconfig b/drivers/gpu/drm/xe/Kconfig
index 9bce047901b22..214f40264fa12 100644
--- a/drivers/gpu/drm/xe/Kconfig
+++ b/drivers/gpu/drm/xe/Kconfig
@@ -1,7 +1,8 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config DRM_XE
 =09tristate "Intel Xe Graphics"
-=09depends on DRM && PCI && MMU && (m || (y && KUNIT=3Dy))
+=09depends on DRM && PCI && MMU
+=09depends on KUNIT || KUNIT=3Dn
 =09select INTERVAL_TREE
 =09# we need shmfs for the swappable backing store, and in particular
 =09# the shmem_readpage() which depends upon tmpfs
@@ -51,7 +52,7 @@ config DRM_XE
=20
 config DRM_XE_DISPLAY
 =09bool "Enable display support"
-=09depends on DRM_XE && DRM_XE=3Dm && HAS_IOPORT
+=09depends on DRM_XE && (DRM_XE=3Dm || DRM_I915!=3Dy) && HAS_IOPORT
 =09select FB_IOMEM_HELPERS if DRM_FBDEV_EMULATION
 =09select I2C
 =09select I2C_ALGOBIT
--=20
2.49.0


