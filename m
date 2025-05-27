Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D205AC4C56
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 12:37:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E86A910E439;
	Tue, 27 May 2025 10:37:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F61110E439;
 Tue, 27 May 2025 10:37:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915/dp=3A_Enable_DSC?=
 =?utf-8?q?_on_external_DP_display_if_VBT_allows?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee, Shawn C" <shawn.c.lee@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 27 May 2025 10:37:51 -0000
Message-ID: <174834227125.23610.11512778334448387475@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250527075906.65542-1-shawn.c.lee@intel.com>
In-Reply-To: <20250527075906.65542-1-shawn.c.lee@intel.com>
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

Series: drm/i915/dp: Enable DSC on external DP display if VBT allows
URL   : https://patchwork.freedesktop.org/series/149518/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_link_bw.o
drivers/gpu/drm/i915/display/intel_link_bw.c: In function ‘connector_supports_dsc’:
drivers/gpu/drm/i915/display/intel_link_bw.c:394:41: error: passing argument 1 of ‘intel_dp_has_dsc’ from incompatible pointer type [-Werror=incompatible-pointer-types]
  394 |                 return intel_dp_has_dsc(connector);
      |                                         ^~~~~~~~~
      |                                         |
      |                                         struct intel_connector *
In file included from drivers/gpu/drm/i915/display/intel_link_bw.c:18:
drivers/gpu/drm/i915/display/intel_dp.h:86:40: note: expected ‘struct intel_dp *’ but argument is of type ‘struct intel_connector *’
   86 | bool intel_dp_has_dsc(struct intel_dp *intel_dp, const struct intel_connector *connector);
      |                       ~~~~~~~~~~~~~~~~~^~~~~~~~
drivers/gpu/drm/i915/display/intel_link_bw.c:394:24: error: too few arguments to function ‘intel_dp_has_dsc’
  394 |                 return intel_dp_has_dsc(connector);
      |                        ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_dp.h:86:6: note: declared here
   86 | bool intel_dp_has_dsc(struct intel_dp *intel_dp, const struct intel_connector *connector);
      |      ^~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:203: drivers/gpu/drm/i915/display/intel_link_bw.o] Error 1
make[5]: *** [scripts/Makefile.build:461: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:461: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:461: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:461: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:2003: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2
Build failed, no error log produced


