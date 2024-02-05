Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 634CF849650
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 10:21:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AE1D11246F;
	Mon,  5 Feb 2024 09:21:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A20C711246F;
 Mon,  5 Feb 2024 09:21:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Cursor_Fault_Fixes_=28rev?=
 =?utf-8?q?3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 05 Feb 2024 09:21:11 -0000
Message-ID: <170712487166.1024443.14154094400756625958@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240205064836.3645402-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20240205064836.3645402-1-chaitanya.kumar.borah@intel.com>
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

Series: Cursor Fault Fixes (rev3)
URL   : https://patchwork.freedesktop.org/series/129517/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_atomic_plane.o
drivers/gpu/drm/i915/display/intel_atomic_plane.c: In function ‘intel_cleanup_plane_fb’:
drivers/gpu/drm/i915/display/intel_atomic_plane.c:1174:27: error: unused variable ‘i915’ [-Werror=unused-variable]
 1174 |  struct drm_i915_private *i915 = to_i915(_old_plane_state->plane->dev);
      |                           ^~~~
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:243: drivers/gpu/drm/i915/display/intel_atomic_plane.o] Error 1
make[5]: *** [scripts/Makefile.build:481: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:481: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:481: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:481: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:1921: .] Error 2
make: *** [Makefile:240: __sub-make] Error 2
Build failed, no error log produced


