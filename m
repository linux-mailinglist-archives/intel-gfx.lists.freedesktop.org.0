Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D34949DEB3A
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 17:41:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A43F10E539;
	Fri, 29 Nov 2024 16:41:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED7F310E542;
 Fri, 29 Nov 2024 16:41:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915=3A_Add_drm=5Fpan?=
 =?utf-8?q?ic_support?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jocelyn Falempe" <jfalempe@redhat.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Nov 2024 16:41:27 -0000
Message-ID: <173289848796.343649.11337293273413208343@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241129162232.7594-1-jfalempe@redhat.com>
In-Reply-To: <20241129162232.7594-1-jfalempe@redhat.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Add drm_panic support
URL   : https://patchwork.freedesktop.org/series/141935/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/xe/i915-display/intel_atomic_plane.o
drivers/gpu/drm/i915/display/intel_atomic_plane.c:46:10: fatal error: gem/i915_gem_object.h: No such file or directory
   46 | #include "gem/i915_gem_object.h"
      |          ^~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[6]: *** [drivers/gpu/drm/xe/Makefile:165: drivers/gpu/drm/xe/i915-display/intel_atomic_plane.o] Error 1
make[5]: *** [scripts/Makefile.build:478: drivers/gpu/drm/xe] Error 2
make[4]: *** [scripts/Makefile.build:478: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:478: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:478: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:1936: .] Error 2
make: *** [Makefile:224: __sub-make] Error 2
Build failed, no error log produced


