Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3879B9D1C98
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 01:37:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0216910E2A3;
	Tue, 19 Nov 2024 00:37:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13B6F10E2A3;
 Tue, 19 Nov 2024 00:37:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/xe3=3A_FBC_?=
 =?utf-8?q?Dirty_rect_feature_support?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Nov 2024 00:37:34 -0000
Message-ID: <173197665409.107654.9008134721873819505@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241118235325.353010-1-vinod.govindapillai@intel.com>
In-Reply-To: <20241118235325.353010-1-vinod.govindapillai@intel.com>
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

Series: drm/i915/xe3: FBC Dirty rect feature support
URL   : https://patchwork.freedesktop.org/series/141527/
State : warning

== Summary ==

Error: dim checkpatch failed
222407216c36 drm/i915/display: update intel_fbc_atomic_check for dirty_fbc support
23854babc8aa drm/i915/display: add register definitions for fbc dirty rect support
-:24: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#24: FILE: drivers/gpu/drm/i915/display/intel_fbc_regs.h:107:
+#define   FBC_DIRTY_RECT_START_LINE(val)	REG_FIELD_PREP(FBC_DIRTY_RECT_START_LINE_MASK, (val))

total: 0 errors, 1 warnings, 0 checks, 15 lines checked
502e65cdddca drm/i915/xe3: add dirty rect support for FBC
-:129: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#129: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:1746:
+static void intel_fbc_compute_dirty_rect(struct intel_plane *plane,
+					struct intel_plane_state *old_plane_state,

total: 0 errors, 0 warnings, 1 checks, 193 lines checked
0c394d4ed02b drm/i915/xe3: disable FBC if PSR2 selective fetch is enabled


