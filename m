Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 252B484CF4E
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 17:56:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F41F410FE81;
	Wed,  7 Feb 2024 16:56:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84DEC11257C;
 Wed,  7 Feb 2024 16:56:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/panelreplay?=
 =?utf-8?q?=3A_Panel_replay_workaround_with_VRR?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 07 Feb 2024 16:56:19 -0000
Message-ID: <170732497954.1072289.15843116033606834435@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240207143509.2607428-1-animesh.manna@intel.com>
In-Reply-To: <20240207143509.2607428-1-animesh.manna@intel.com>
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

Series: drm/i915/panelreplay: Panel replay workaround with VRR
URL   : https://patchwork.freedesktop.org/series/129632/
State : warning

== Summary ==

Error: dim checkpatch failed
2d9bc540b38f drm/i915/panelreplay: Panel replay workaround with VRR
-:26: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'crtc_vblank_start == crtc_vdisplay'
#26: FILE: drivers/gpu/drm/i915/display/intel_display.c:2625:
+		if (crtc_state->vrr.enable &&  crtc_state->has_panel_replay &&
+		    (crtc_vblank_start == crtc_vdisplay))

total: 0 errors, 0 warnings, 1 checks, 18 lines checked


