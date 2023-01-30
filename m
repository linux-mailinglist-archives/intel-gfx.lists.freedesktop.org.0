Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5495D681B21
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 21:12:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B9E810E12B;
	Mon, 30 Jan 2023 20:12:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 30D7610E12B;
 Mon, 30 Jan 2023 20:12:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2B410A7E03;
 Mon, 30 Jan 2023 20:12:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Mon, 30 Jan 2023 20:12:44 -0000
Message-ID: <167510956414.3671.8547335214346725765@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230130180540.8972-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230130180540.8972-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_LVDS_cleanup?=
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

Series: drm/i915: LVDS cleanup
URL   : https://patchwork.freedesktop.org/series/113503/
State : warning

== Summary ==

Error: dim checkpatch failed
ed78aebbde6f drm/i915/lvds: Split long lines
-:34: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#34: FILE: drivers/gpu/drm/i915/display/intel_lvds.c:229:
+		       REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK, DIV_ROUND_UP(pps->t4, 1000) + 1));

total: 0 errors, 1 warnings, 0 checks, 20 lines checked
d349e9ae1383 drm/i915/lvds: Use intel_de_rmw()
a2ddc2b5a37a drm/i915/lvds: Use REG_BIT() & co.
c7d9325b3ecf drm/i915/lvds: Extract intel_lvds_regs.h
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:39: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#39: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 173 lines checked
a315da9bcc1a drm/i915/lvds: Fix whitespace
de3f39fece6a drm/i915/lvds: s/dev_priv/i915/
b3f145849bf5 drm/i915/lvds: s/intel_encoder/encoder/ etc.
-:189: CHECK:CAMELCASE: Avoid CamelCase: <SubPixelHorizontalRGB>
#189: FILE: drivers/gpu/drm/i915/display/intel_lvds.c:922:
+	connector->base.display_info.subpixel_order = SubPixelHorizontalRGB;

total: 0 errors, 0 warnings, 1 checks, 252 lines checked
0fc60b0c377c drm/i915/lvds: s/pipe_config/crtc_state/


