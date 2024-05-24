Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F78B8CE8A4
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 18:28:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40EF310E088;
	Fri, 24 May 2024 16:28:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F46F10E088;
 Fri, 24 May 2024 16:28:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Fix_SEL?=
 =?utf-8?q?=5FFETCH=5F=7BSIZE=2COFFSET=7D_registers?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 24 May 2024 16:28:06 -0000
Message-ID: <171656808605.2171858.5868346306589662763@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240524155000.13358-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240524155000.13358-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: Fix SEL_FETCH_{SIZE,OFFSET} registers
URL   : https://patchwork.freedesktop.org/series/134026/
State : warning

== Summary ==

Error: dim checkpatch failed
f0f015e3695b drm/i915: Fix SEL_FETCH_{SIZE,OFFSET} registers
-:33: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#33: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:422:
+								_SEL_FETCH_PLANE_SIZE_1_A, _SEL_FETCH_PLANE_SIZE_1_B, \

-:34: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#34: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:423:
+								_SEL_FETCH_PLANE_SIZE_2_A, _SEL_FETCH_PLANE_SIZE_2_B, \

-:35: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#35: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:424:
+								_SEL_FETCH_PLANE_SIZE_5_A, _SEL_FETCH_PLANE_SIZE_5_B, \

-:36: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#36: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:425:
+								_SEL_FETCH_PLANE_SIZE_6_A, _SEL_FETCH_PLANE_SIZE_6_B)

-:48: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#48: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:437:
+								_SEL_FETCH_PLANE_OFFSET_1_A, _SEL_FETCH_PLANE_OFFSET_1_B, \

-:49: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#49: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:438:
+								_SEL_FETCH_PLANE_OFFSET_2_A, _SEL_FETCH_PLANE_OFFSET_2_B, \

-:50: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#50: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:439:
+								_SEL_FETCH_PLANE_OFFSET_5_A, _SEL_FETCH_PLANE_OFFSET_5_B, \

-:51: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#51: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:440:
+								_SEL_FETCH_PLANE_OFFSET_6_A, _SEL_FETCH_PLANE_OFFSET_6_B)

total: 0 errors, 8 warnings, 0 checks, 27 lines checked


