Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 161C99E9DE1
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 19:14:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0F7010E4F5;
	Mon,  9 Dec 2024 18:14:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 160C310E4E8;
 Mon,  9 Dec 2024 18:14:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915/cx0=5Fphy=3A_Upd?=
 =?utf-8?q?ate_HDMI_TMDS_C20_algorithm_value_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dnyaneshwar Bhadane" <dnyaneshwar.bhadane@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 09 Dec 2024 18:14:05 -0000
Message-ID: <173376804508.552784.11875806926907105610@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241209153418.49580-1-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20241209153418.49580-1-dnyaneshwar.bhadane@intel.com>
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

Series: drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value (rev2)
URL   : https://patchwork.freedesktop.org/series/141280/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/xe/i915-display/intel_cx0_phy.o
drivers/gpu/drm/i915/display/intel_cx0_phy.c: In function ‘intel_c20_hdmi_tmds_tx_cgf_1’:
drivers/gpu/drm/i915/display/intel_cx0_phy.c:2201:21: error: implicit declaration of function ‘IS_METEORLAKE_U’; did you mean ‘IS_METEORLAKE’? [-Werror=implicit-function-declaration]
 2201 |                 if (IS_METEORLAKE_U(to_i915(display->drm)) ||
      |                     ^~~~~~~~~~~~~~~
      |                     IS_METEORLAKE
drivers/gpu/drm/i915/display/intel_cx0_phy.c:2202:21: error: implicit declaration of function ‘IS_ARROWLAKE_U’; did you mean ‘IS_RAPTORLAKE_U’? [-Werror=implicit-function-declaration]
 2202 |                     IS_ARROWLAKE_U(to_i915(display->drm)) ||
      |                     ^~~~~~~~~~~~~~
      |                     IS_RAPTORLAKE_U
cc1: all warnings being treated as errors
make[6]: *** [drivers/gpu/drm/xe/Makefile:166: drivers/gpu/drm/xe/i915-display/intel_cx0_phy.o] Error 1
make[5]: *** [scripts/Makefile.build:440: drivers/gpu/drm/xe] Error 2
make[4]: *** [scripts/Makefile.build:440: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:440: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:440: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:1989: .] Error 2
make: *** [Makefile:251: __sub-make] Error 2
Build failed, no error log produced


