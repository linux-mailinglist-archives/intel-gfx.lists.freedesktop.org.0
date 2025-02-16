Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADADA3777C
	for <lists+intel-gfx@lfdr.de>; Sun, 16 Feb 2025 21:33:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AAFE10E259;
	Sun, 16 Feb 2025 20:33:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E93B810E259;
 Sun, 16 Feb 2025 20:33:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915/fbc=3A_FBC_Dirty?=
 =?utf-8?q?_rect_feature_support_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sun, 16 Feb 2025 20:33:00 -0000
Message-ID: <173973798094.3047559.7581469349531188703@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250213132559.136815-1-vinod.govindapillai@intel.com>
In-Reply-To: <20250213132559.136815-1-vinod.govindapillai@intel.com>
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

Series: drm/i915/fbc: FBC Dirty rect feature support (rev2)
URL   : https://patchwork.freedesktop.org/series/144725/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_fbc.o
drivers/gpu/drm/i915/display/intel_fbc.c: In function ‘intel_fbc_update_state’:
drivers/gpu/drm/i915/display/intel_fbc.c:1324:48: error: passing argument 1 of ‘__intel_fbc_prepare_dirty_rect’ from incompatible pointer type [-Werror=incompatible-pointer-types]
 1324 |                 __intel_fbc_prepare_dirty_rect(plane_state);
      |                                                ^~~~~~~~~~~
      |                                                |
      |                                                const struct intel_plane_state *
drivers/gpu/drm/i915/display/intel_fbc.c:1259:52: note: expected ‘struct intel_plane *’ but argument is of type ‘const struct intel_plane_state *’
 1259 | __intel_fbc_prepare_dirty_rect(struct intel_plane *plane,
      |                                ~~~~~~~~~~~~~~~~~~~~^~~~~
drivers/gpu/drm/i915/display/intel_fbc.c:1324:17: error: too few arguments to function ‘__intel_fbc_prepare_dirty_rect’
 1324 |                 __intel_fbc_prepare_dirty_rect(plane_state);
      |                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_fbc.c:1259:1: note: declared here
 1259 | __intel_fbc_prepare_dirty_rect(struct intel_plane *plane,
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:207: drivers/gpu/drm/i915/display/intel_fbc.o] Error 1
make[5]: *** [scripts/Makefile.build:465: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:465: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:465: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:465: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:1994: .] Error 2
make: *** [Makefile:251: __sub-make] Error 2
Build failed, no error log produced


