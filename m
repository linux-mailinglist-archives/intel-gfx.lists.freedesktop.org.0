Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5079F9FC06C
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2024 17:50:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C175E10E07F;
	Tue, 24 Dec 2024 16:50:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 675ED10E07F;
 Tue, 24 Dec 2024 16:49:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915/cmtg=3A_Disable_?=
 =?utf-8?q?the_CMTG_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Dec 2024 16:49:59 -0000
Message-ID: <173505899942.2505727.18154848160164973560@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241224161714.35293-1-gustavo.sousa@intel.com>
In-Reply-To: <20241224161714.35293-1-gustavo.sousa@intel.com>
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

Series: drm/i915/cmtg: Disable the CMTG (rev2)
URL   : https://patchwork.freedesktop.org/series/142947/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_cmtg.o
drivers/gpu/drm/i915/display/intel_cmtg.c: In function ‘intel_cmtg_check_modeset’:
drivers/gpu/drm/i915/display/intel_cmtg.c:249:50: error: ‘state’ undeclared (first use in this function); did you mean ‘statx’?
  249 |         return intel_modeset_pipes_in_mask_early(state, "updating CMTG config", pipe_mask);
      |                                                  ^~~~~
      |                                                  statx
drivers/gpu/drm/i915/display/intel_cmtg.c:249:50: note: each undeclared identifier is reported only once for each function it appears in
drivers/gpu/drm/i915/display/intel_cmtg.c: In function ‘intel_cmtg_atomic_check’:
drivers/gpu/drm/i915/display/intel_cmtg.c:273:12: error: unused variable ‘pipe_mask’ [-Werror=unused-variable]
  273 |         u8 pipe_mask;
      |            ^~~~~~~~~
drivers/gpu/drm/i915/display/intel_cmtg.c: In function ‘intel_cmtg_force_disabled’:
drivers/gpu/drm/i915/display/intel_cmtg.c:265:1: error: control reaches end of non-void function [-Werror=return-type]
  265 | }
      | ^
drivers/gpu/drm/i915/display/intel_cmtg.c: In function ‘intel_cmtg_check_modeset’:
drivers/gpu/drm/i915/display/intel_cmtg.c:250:1: error: control reaches end of non-void function [-Werror=return-type]
  250 | }
      | ^
drivers/gpu/drm/i915/display/intel_cmtg.c: At top level:
drivers/gpu/drm/i915/display/intel_cmtg.c:192:13: error: ‘intel_cmtg_needs_force_disable’ defined but not used [-Werror=unused-function]
  192 | static bool intel_cmtg_needs_force_disable(struct intel_display *display,
      |             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:194: drivers/gpu/drm/i915/display/intel_cmtg.o] Error 1
make[5]: *** [scripts/Makefile.build:440: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:440: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:440: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:440: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:1989: .] Error 2
make: *** [Makefile:251: __sub-make] Error 2
Build failed, no error log produced


