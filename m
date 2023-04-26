Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 000AF6EFB8C
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 22:11:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4509610E0F1;
	Wed, 26 Apr 2023 20:11:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E1D1410E0F1;
 Wed, 26 Apr 2023 20:10:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 01EE5A41FB;
 Wed, 26 Apr 2023 20:10:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rob Clark" <robdclark@gmail.com>
Date: Wed, 26 Apr 2023 20:10:58 -0000
Message-ID: <168253985800.17151.10032806988693034494@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230426184131.1173689-1-robdclark@gmail.com>
In-Reply-To: <20230426184131.1173689-1-robdclark@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/syncobj=3A_Add_deadline_support_for_syncobj_waits?=
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

Series: drm/syncobj: Add deadline support for syncobj waits
URL   : https://patchwork.freedesktop.org/series/117007/
State : warning

== Summary ==

Error: dim checkpatch failed
7f9a8376197d drm/syncobj: Add deadline support for syncobj waits
-:42: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#42: FILE: drivers/gpu/drm/drm_syncobj.c:981:
+						  uint32_t *idx,

-:97: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#97: FILE: drivers/gpu/drm/drm_syncobj.c:1264:
+	unsigned possible_flags;

-:138: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#138: FILE: drivers/gpu/drm/drm_syncobj.c:1307:
+	unsigned possible_flags;

total: 0 errors, 2 warnings, 1 checks, 177 lines checked


