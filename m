Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD95B8FD078
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 16:09:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 159BE10E179;
	Wed,  5 Jun 2024 14:09:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 776EB10E179;
 Wed,  5 Jun 2024 14:09:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_bdw+_pip?=
 =?utf-8?q?e_interrupt_stuff?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 05 Jun 2024 14:09:34 -0000
Message-ID: <171759657448.1068.1755351639444045259@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240605111832.21373-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240605111832.21373-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: bdw+ pipe interrupt stuff
URL   : https://patchwork.freedesktop.org/series/134497/
State : warning

== Summary ==

Error: dim checkpatch failed
1e0bd32b8a29 drm/i915: Use REG_BIT() for bdw+ pipe interrupts
8711ec9d6af6 drm/i915: Document bdw+ pipe interrupt bits
31327a5af06b drm/i915: Sort bdw+ pipe interrupt bits
f181d09ea92d drm/i915: Extend GEN9_PIPE_PLANE_FLIP_DONE() to cover all universal planes
-:39: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'plane_id' - possible side-effects?
#39: FILE: drivers/gpu/drm/i915/i915_reg.h:2651:
+#define  GEN9_PIPE_PLANE_FLIP_DONE(plane_id) \
+	REG_BIT(((plane_id) >= PLANE_5 ? 16 - PLANE_5 : 3 - PLANE_1) + (plane_id)) /* skl+ */

total: 0 errors, 0 warnings, 1 checks, 18 lines checked
c5a53e5f5b21 drm/i915: Nuke the intermediate pipe fault bitmasks
45d472fc2a27 drm/i915: Enable pipeDMC fault interrupts on tgl+
386081d16cde drm/i915: Enable plane/pipeDMC ATS fault interrupts on mtl


