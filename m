Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9929739C5
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 16:24:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1038310E820;
	Tue, 10 Sep 2024 14:24:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F334910E820;
 Tue, 10 Sep 2024 14:24:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm=3A_fix_and_enabl?=
 =?utf-8?q?e_warnings_on_unused_static_inlines?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Sep 2024 14:24:40 -0000
Message-ID: <172597828098.980744.18107375027023522900@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1725962479.git.jani.nikula@intel.com>
In-Reply-To: <cover.1725962479.git.jani.nikula@intel.com>
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

Series: drm: fix and enable warnings on unused static inlines
URL   : https://patchwork.freedesktop.org/series/138460/
State : warning

== Summary ==

Error: dim checkpatch failed
fafb7fc7e7b4 drm/bridge: dw-hdmi-i2s: annotate hdmi_read() with __maybe_unused
-:7: WARNING:REPEATED_WORD: Possible repeated word: 'and'
#7: 
Building with clang and and W=1 leads to warning about unused

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
62e8c6109977 drm: renesas: rcar-du: annotate rcar_cmm_read() with __maybe_unused
-:7: WARNING:REPEATED_WORD: Possible repeated word: 'and'
#7: 
Building with clang and and W=1 leads to warning about unused

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
c7aefebe75b0 drm/kmb: annotate set_test_mode_src_osc_freq_target_{low, hi}_bits() with __maybe_unused
-:7: WARNING:REPEATED_WORD: Possible repeated word: 'and'
#7: 
Building with clang and and W=1 leads to warning about unused

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
13917298934d drm/bridge: ti-sn65dsi86: annotate ti_sn_pwm_pin_{request, release} with __maybe_unused
9141affc8c43 drm/imagination: annotate pvr_fw_version_packed() with __maybe_unused
-:7: WARNING:REPEATED_WORD: Possible repeated word: 'and'
#7: 
Building with clang and and W=1 leads to warning about unused

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
1d85b49da552 drm/meson: dw-hdmi: annotate dw_hdmi_dwc_write_bits() with __maybe_unused
-:7: WARNING:REPEATED_WORD: Possible repeated word: 'and'
#7: 
Building with clang and and W=1 leads to warning about unused

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
0ae4d099d0c1 drm/msmi: annotate pll_cmp_to_fdata() with __maybe_unused
-:6: WARNING:REPEATED_WORD: Possible repeated word: 'and'
#6: 
Building with clang and and W=1 leads to warning about unused

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
7a8418801322 drm: enable warnings on unused static inlines


