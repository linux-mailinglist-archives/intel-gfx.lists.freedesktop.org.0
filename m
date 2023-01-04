Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13FB765DC92
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 20:12:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8D8A10E46A;
	Wed,  4 Jan 2023 19:12:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D86A810E46A;
 Wed,  4 Jan 2023 19:12:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D5E5FA77A5;
 Wed,  4 Jan 2023 19:12:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Juha-Pekka Heikkila" <juhapekka.heikkila@gmail.com>
Date: Wed, 04 Jan 2023 19:12:32 -0000
Message-ID: <167285955287.24957.4581279577126124378@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230104124448.7418-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20230104124448.7418-1-juhapekka.heikkila@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_assume_some_pixelrate_for_src_smaller_t?=
 =?utf-8?q?han_1?=
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

Series: drm/i915/display: assume some pixelrate for src smaller than 1
URL   : https://patchwork.freedesktop.org/series/112396/
State : warning

== Summary ==

Error: dim checkpatch failed
2c7cc185eea1 drm/i915/display: assume some pixelrate for src smaller than 1
-:32: CHECK:SPACING: No space is necessary after a cast
#32: FILE: drivers/gpu/drm/i915/display/intel_atomic_plane.c:159:
+	dst_wh = max(dst_w * dst_h, (unsigned) 1);

-:32: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#32: FILE: drivers/gpu/drm/i915/display/intel_atomic_plane.c:159:
+	dst_wh = max(dst_w * dst_h, (unsigned) 1);

total: 0 errors, 1 warnings, 1 checks, 20 lines checked


