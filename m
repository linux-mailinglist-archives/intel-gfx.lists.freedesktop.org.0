Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE6EA9C48A
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Apr 2025 12:01:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BBC510E8FF;
	Fri, 25 Apr 2025 10:01:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F99D10E094;
 Fri, 25 Apr 2025 10:01:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915=3A_Add_drm=5Fpan?=
 =?utf-8?q?ic_support_=28rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jocelyn Falempe" <jfalempe@redhat.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Apr 2025 10:01:23 -0000
Message-ID: <174557528358.10194.3779016376748652433@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250425094949.473060-1-jfalempe@redhat.com>
In-Reply-To: <20250425094949.473060-1-jfalempe@redhat.com>
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

Series: drm/i915: Add drm_panic support (rev7)
URL   : https://patchwork.freedesktop.org/series/141935/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  LD [M]  drivers/gpu/drm/i915/i915.o
  LD [M]  drivers/gpu/drm/i915/kvmgt.o
  HDRTEST drivers/gpu/drm/i915/display/intel_bo.h
In file included from <command-line>:
./drivers/gpu/drm/i915/display/intel_bo.h:26:59: error: ‘struct iosys_map’ declared inside parameter list will not be visible outside of this definition or declaration [-Werror]
   26 | int intel_bo_panic_map(struct drm_gem_object *obj, struct iosys_map *map);
      |                                                           ^~~~~~~~~
cc1: note: unrecognized command-line option ‘-Wno-unterminated-string-initialization’ may have been intended to silence earlier diagnostics
cc1: all warnings being treated as errors
make[6]: *** [drivers/gpu/drm/i915/Makefile:430: drivers/gpu/drm/i915/display/intel_bo.hdrtest] Error 1
make[5]: *** [scripts/Makefile.build:461: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:461: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:461: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:461: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:2011: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2
Build failed, no error log produced


