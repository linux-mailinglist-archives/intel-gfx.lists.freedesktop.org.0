Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB927F5527
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 01:08:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA52A10E6BC;
	Thu, 23 Nov 2023 00:08:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5760110E6BA;
 Thu, 23 Nov 2023 00:08:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 48B2BA0169;
 Thu, 23 Nov 2023 00:08:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Andr=C3=A9_Almeida?= <andrealmeid@igalia.com>
Date: Thu, 23 Nov 2023 00:08:53 -0000
Message-ID: <170069813326.8136.8163534945316041668@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231122161941.320564-1-andrealmeid@igalia.com>
In-Reply-To: <20231122161941.320564-1-andrealmeid@igalia.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Add_support_for_atomic_async_page-flip?=
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

Series: drm: Add support for atomic async page-flip
URL   : https://patchwork.freedesktop.org/series/126776/
State : warning

== Summary ==

Error: dim checkpatch failed
f67ff1ac2013 drm: Refuse to async flip with atomic prop changes
-:43: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#43: FILE: drivers/gpu/drm/drm_atomic_uapi.c:1026:
+			    uint64_t prop_value,

-:47: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#47: FILE: drivers/gpu/drm/drm_atomic_uapi.c:1030:
+	uint64_t old_val;

-:100: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#100: FILE: drivers/gpu/drm/drm_atomic_uapi.c:1100:
+			drm_dbg_atomic(prop->dev,
+				"[OBJECT:%d] Only primary planes can be changed during async flip\n",

-:137: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#137: FILE: drivers/gpu/drm/drm_crtc_internal.h:256:
+			    uint64_t prop_value, bool async_flip);

total: 0 errors, 0 warnings, 4 checks, 116 lines checked
b744d7256084 drm: allow DRM_MODE_PAGE_FLIP_ASYNC for atomic commits
f7ba583e7663 drm: introduce DRM_CAP_ATOMIC_ASYNC_PAGE_FLIP
5b3e36f04459 drm/doc: Define KMS atomic state set


