Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F558851B42
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Feb 2024 18:23:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5122210EE5A;
	Mon, 12 Feb 2024 17:23:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E99A10EE67;
 Mon, 12 Feb 2024 17:23:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Enable_Adaptive_Sync_SDP_?=
 =?utf-8?q?Support_for_DP_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Feb 2024 17:23:22 -0000
Message-ID: <170775860260.1183349.337551652254165210@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240212164316.1411230-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240212164316.1411230-1-mitulkumar.ajitkumar.golani@intel.com>
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

Series: Enable Adaptive Sync SDP Support for DP (rev6)
URL   : https://patchwork.freedesktop.org/series/126829/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_crtc_state_dump.o
drivers/gpu/drm/i915/display/intel_crtc_state_dump.c: In function ‘intel_dump_dp_as_sdp’:
drivers/gpu/drm/i915/display/intel_crtc_state_dump.c:67:25: error: implicit declaration of function ‘drm_debug_printer’; did you mean ‘drm_dbg_printer’? [-Werror=implicit-function-declaration]
   67 |  struct drm_printer p = drm_debug_printer("AS_SDP");
      |                         ^~~~~~~~~~~~~~~~~
      |                         drm_dbg_printer
drivers/gpu/drm/i915/display/intel_crtc_state_dump.c:67:25: error: invalid initializer
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:243: drivers/gpu/drm/i915/display/intel_crtc_state_dump.o] Error 1
make[5]: *** [scripts/Makefile.build:481: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:481: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:481: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:481: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:1921: .] Error 2
make: *** [Makefile:240: __sub-make] Error 2
Build failed, no error log produced


