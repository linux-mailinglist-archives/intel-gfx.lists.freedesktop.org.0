Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9E1649959
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Dec 2022 08:07:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 597A710E15B;
	Mon, 12 Dec 2022 07:07:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E277A10E15B;
 Mon, 12 Dec 2022 07:07:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A252AA0BA8;
 Mon, 12 Dec 2022 07:07:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Date: Mon, 12 Dec 2022 07:07:33 -0000
Message-ID: <167082885363.12119.8548412407240944833@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221212070228.2563936-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20221212070228.2563936-1-mitulkumar.ajitkumar.golani@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/display=3A_Enable_VDIP_Enable_VSC_whenever_GMP_DIP_enab?=
 =?utf-8?q?led?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/display: Enable VDIP Enable VSC whenever GMP DIP enabled
URL   : https://patchwork.freedesktop.org/series/111835/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  CC [M]  drivers/gpu/drm/i915/display/intel_dp.o
drivers/gpu/drm/i915/display/intel_dp.c: In function ‘intel_dp_set_infoframes’:
drivers/gpu/drm/i915/display/intel_dp.c:3282:4: error: expected ‘)’ before ‘dip_enable’
    dip_enable |= VIDEO_DIP_ENABLE_VSC_HSW;
    ^~~~~~~~~~
drivers/gpu/drm/i915/display/intel_dp.c:3281:5: note: to match this ‘(’
  if (IS_DISPLAY_VER(dev_priv, 13, 14)
     ^
drivers/gpu/drm/i915/display/intel_dp.c:3301:1: error: expected expression before ‘}’ token
 }
 ^
drivers/gpu/drm/i915/display/intel_dp.c:3278:6: error: unused variable ‘dip_enable’ [-Werror=unused-variable]
  u32 dip_enable = VIDEO_DIP_ENABLE_AVI_HSW | VIDEO_DIP_ENABLE_GCP_HSW |
      ^~~~~~~~~~
drivers/gpu/drm/i915/display/intel_dp.c:3277:13: error: unused variable ‘reg’ [-Werror=unused-variable]
  i915_reg_t reg = HSW_TVIDEO_DIP_CTL(crtc_state->cpu_transcoder);
             ^~~
At top level:
drivers/gpu/drm/i915/display/intel_dp.c:3219:13: error: ‘intel_write_dp_sdp’ defined but not used [-Werror=unused-function]
 static void intel_write_dp_sdp(struct intel_encoder *encoder,
             ^~~~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
scripts/Makefile.build:250: recipe for target 'drivers/gpu/drm/i915/display/intel_dp.o' failed
make[5]: *** [drivers/gpu/drm/i915/display/intel_dp.o] Error 1
scripts/Makefile.build:500: recipe for target 'drivers/gpu/drm/i915' failed
make[4]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:500: recipe for target 'drivers/gpu/drm' failed
make[3]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:500: recipe for target 'drivers/gpu' failed
make[2]: *** [drivers/gpu] Error 2
scripts/Makefile.build:500: recipe for target 'drivers' failed
make[1]: *** [drivers] Error 2
Makefile:1992: recipe for target '.' failed
make: *** [.] Error 2


