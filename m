Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 162BE625165
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 04:16:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B028310E73E;
	Fri, 11 Nov 2022 03:16:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F250310E73E;
 Fri, 11 Nov 2022 03:16:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EF64EA8830;
 Fri, 11 Nov 2022 03:16:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Date: Fri, 11 Nov 2022 03:16:42 -0000
Message-ID: <166813660297.870.10029980878732515469@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221110150307.3366-1-animesh.manna@intel.com>
In-Reply-To: <20221110150307.3366-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Panel_replay_phase1_implementation_=28rev4=29?=
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

Series: Panel replay phase1 implementation (rev4)
URL   : https://patchwork.freedesktop.org/series/94470/
State : warning

== Summary ==

Error: dim checkpatch failed
03d1576a6e6b drm/i915/panelreplay: dpcd register definition for panelreplay
474dba49884a drm/i915/panelreplay: Added HAS_PANEL_REPLAY() macro
6c3dfa5959d6 drm/i915/panelreplay: Initializaton and compute config for panel replay
-:33: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_dp' - possible side-effects?
#33: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1931:
+#define CAN_PANEL_REPLAY(intel_dp) ((intel_dp)->psr.sink_panel_replay_support && \
+				    (intel_dp)->psr.source_panel_replay_support)

total: 0 errors, 0 warnings, 1 checks, 184 lines checked
0ee64c0bb07b drm/i915/panelreplay: enable/disable panel replay


