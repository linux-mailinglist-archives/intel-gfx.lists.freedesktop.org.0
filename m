Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F532154163
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 10:49:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C83589EB4;
	Thu,  6 Feb 2020 09:49:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id ACA9089E9B;
 Thu,  6 Feb 2020 09:49:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A5329A0118;
 Thu,  6 Feb 2020 09:49:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 06 Feb 2020 09:49:17 -0000
Message-ID: <158098255764.14482.17896730343814503005@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <158096002290.14483.7984505581902713018@emeril.freedesktop.org>
In-Reply-To: <158096002290.14483.7984505581902713018@emeril.freedesktop.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/selftests=3A_Trim_blitter_block_size_=28rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/selftests: Trim blitter block size (rev2)
URL   : https://patchwork.freedesktop.org/series/73066/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c015b6f11a83 drm/i915/selftests: Trim blitter block size
-:54: WARNING:MEMORY_BARRIER: memory barrier without comment
#54: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c:289:
+				mb();

-:99: WARNING:MEMORY_BARRIER: memory barrier without comment
#99: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c:416:
+				mb();

total: 0 errors, 2 warnings, 0 checks, 84 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
