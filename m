Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98FDE903E91
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 16:21:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9CA710E11D;
	Tue, 11 Jun 2024 14:21:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B81AA10E11D;
 Tue, 11 Jun 2024 14:21:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dsb=3A_DSB_?=
 =?utf-8?q?prep_stuff?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Jun 2024 14:21:21 -0000
Message-ID: <171811568175.67160.10929892097563879764@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915/dsb: DSB prep stuff
URL   : https://patchwork.freedesktop.org/series/134719/
State : warning

== Summary ==

Error: dim checkpatch failed
30ef78394aeb drm/i915: Extract intel_crtc_arm_vblank_event()
9c42649bdcc3 drm/i915: Add async flip tracepoint
-:96: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#96: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:315:
+	    TP_STRUCT__entry(

-:105: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#105: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:324:
+	    TP_fast_assign(

total: 0 errors, 0 warnings, 2 checks, 88 lines checked
92f150649ebe drm/i915: Add flip done tracepoint
-:37: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#37: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:85:
+	    TP_STRUCT__entry(

-:44: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#44: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:92:
+	    TP_fast_assign(

total: 0 errors, 0 warnings, 2 checks, 36 lines checked
549dfea79039 drm/i915: Introduce intel_mode_vdisplay()
8430e718bf6f drm/i915: Pass the whole atomic state to intel_color_prepare_commit()
f8b01ee12a9d drm/i915/dsb: Plumb the whole atomic state into intel_dsb_prepare()
150c9851bbc2 drm/i915/dsb: Convert the DSB code to use intel_display rather than i915
affc63f3cae3 drm/i915/dsb: Add i915.enable_dsb module parameter
-:26: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#26: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:58:
+intel_display_param_named_unsafe(enable_dsb, bool, 0600,
+	"Enable display state buffer (DSB) (default: true)");

total: 0 errors, 0 warnings, 1 checks, 25 lines checked
060c0a9a11f6 drm/i915: Drop useless intel_dsb.h include
543e7163c239 drm/i915/dsb: Document that the ATS fault bits are for mtl+
c8a3364f8a37 drm/i915/dsb: Try to document that DSB_STATUS bit 16 is level triggered


