Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D68C7CA6B47
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Dec 2025 09:31:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EE7710E259;
	Fri,  5 Dec 2025 08:31:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 490E810E259;
 Fri,  5 Dec 2025 08:31:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/=7Bi915=2C_xe=7D=3A_m?=
 =?utf-8?q?igrate_stolen_interface_to_parent_interface=2C_cleanups?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 05 Dec 2025 08:31:42 -0000
Message-ID: <176492350229.60202.5811674668008037779@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <cover.1764868989.git.jani.nikula@intel.com>
In-Reply-To: <cover.1764868989.git.jani.nikula@intel.com>
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

Series: drm/{i915, xe}: migrate stolen interface to parent interface, cleanups
URL   : https://patchwork.freedesktop.org/series/158509/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_fbc.o
drivers/gpu/drm/i915/display/intel_fbc.c: In function ‘fbc_sys_cache_enable’:
drivers/gpu/drm/i915/display/intel_fbc.c:1011:18: error: implicit declaration of function ‘i915_gem_stolen_node_offset’; did you mean ‘intel_parent_stolen_node_offset’? [-Werror=implicit-function-declaration]
 1011 |         offset = i915_gem_stolen_node_offset(fbc->compressed_fb) / (4 * 1024);
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~
      |                  intel_parent_stolen_node_offset
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:287: drivers/gpu/drm/i915/display/intel_fbc.o] Error 1
make[5]: *** [scripts/Makefile.build:556: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:556: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:556: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:556: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:2010: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2
Build failed, no error log produced


