Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C26967DF8C
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 09:54:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A250C10E175;
	Fri, 27 Jan 2023 08:54:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CD8E110E175;
 Fri, 27 Jan 2023 08:54:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C49D1AADD1;
 Fri, 27 Jan 2023 08:54:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Date: Fri, 27 Jan 2023 08:54:10 -0000
Message-ID: <167480965077.18991.3367670441590947695@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230127082702.3460571-1-jouni.hogander@intel.com>
In-Reply-To: <20230127082702.3460571-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/psr=3A_Split_sel_fetch_plane_configuration_into_ar?=
 =?utf-8?q?m_and_noarm_=28rev2=29?=
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

Series: drm/i915/psr: Split sel fetch plane configuration into arm and noarm (rev2)
URL   : https://patchwork.freedesktop.org/series/113321/
State : warning

== Summary ==

Error: dim checkpatch failed
df442db34504 drm/i915/psr: Split sel fetch plane configuration into arm and noarm
-:59: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#59: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1563:
+void intel_psr2_program_plane_sel_fetch_arm(struct intel_plane *plane,
+					const struct intel_crtc_state *crtc_state,

-:77: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#77: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1581:
+void intel_psr2_program_plane_sel_fetch_noarm(struct intel_plane *plane,
 					const struct intel_crtc_state *crtc_state,

-:113: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#113: FILE: drivers/gpu/drm/i915/display/intel_psr.h:50:
+void intel_psr2_program_plane_sel_fetch_noarm(struct intel_plane *plane,
 					const struct intel_crtc_state *crtc_state,

-:117: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#117: FILE: drivers/gpu/drm/i915/display/intel_psr.h:54:
+void intel_psr2_program_plane_sel_fetch_arm(struct intel_plane *plane,
+					const struct intel_crtc_state *crtc_state,

total: 0 errors, 0 warnings, 4 checks, 87 lines checked


