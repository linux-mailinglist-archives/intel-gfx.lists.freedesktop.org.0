Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C184FA085AD
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2025 03:47:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FA8F10EF85;
	Fri, 10 Jan 2025 02:47:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0AB310EF81;
 Fri, 10 Jan 2025 02:47:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/guc=3A_Debu?=
 =?utf-8?q?g_print_LRC_state_entries_only_if_the_context_is_pinned?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jan 2025 02:47:20 -0000
Message-ID: <173647724099.1818340.8588681380821530092@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250110002851.3584310-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20250110002851.3584310-1-daniele.ceraolospurio@intel.com>
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

Series: drm/i915/guc: Debug print LRC state entries only if the context is pinned
URL   : https://patchwork.freedesktop.org/series/143361/
State : warning

== Summary ==

Error: dim checkpatch failed
f52e022b8e3d drm/i915/guc: Debug print LRC state entries only if the context is pinned
-:33: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#33: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:5524:
+		drm_printf(p, "\t\tLRC Head: Internal %u, Memory %u\n",
+			ce->ring->head,

-:36: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#36: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:5527:
+		drm_printf(p, "\t\tLRC Tail: Internal %u, Memory %u\n",
+			ce->ring->tail,

-:41: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#41: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:5532:
+		drm_printf(p, "\t\tLRC Head: Internal %u, Memory not pinned\n",
+			ce->ring->head);

-:43: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#43: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:5534:
+		drm_printf(p, "\t\tLRC Tail: Internal %u, Memory not pinned\n",
+			ce->ring->tail);

total: 0 errors, 0 warnings, 4 checks, 26 lines checked


