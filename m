Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5265D8D35D8
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 13:58:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 774D110E1EC;
	Wed, 29 May 2024 11:58:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6BDD10E1EC;
 Wed, 29 May 2024 11:58:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Region_Early_Transpo?=
 =?utf-8?q?rt_debugfs_support?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 29 May 2024 11:58:14 -0000
Message-ID: <171698389480.2232183.14636170358239471062@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240529093849.1016172-1-jouni.hogander@intel.com>
In-Reply-To: <20240529093849.1016172-1-jouni.hogander@intel.com>
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

Series: Region Early Transport debugfs support
URL   : https://patchwork.freedesktop.org/series/134181/
State : warning

== Summary ==

Error: dim checkpatch failed
1ce79fc570e6 drm/i915/psr: Add Early Transport status boolean into intel_psr
a0c2ac8d1420 drm/i915/psr: Get Early Transport status in intel_psr_pipe_get_config
1ec1eab810ad drm/i915/psr: Use enable boolean from intel_crtc_state for Early Transport
0b8bb162a78a drm/i915/display: Selective fetch Y position on Region Early Transport
94c0045daeb1 drm/i915/psr: Allow setting I915_PSR_DEBUG_SU_REGION_ET_DISABLE via debugfs
b3f24730d566 drm/i915/psr: Add Early Transport into psr debugfs interface
-:28: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#28: FILE: drivers/gpu/drm/i915/display/intel_psr.c:3615:
+		seq_printf(m, " (Early Transport)");

-:34: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#34: FILE: drivers/gpu/drm/i915/display/intel_psr.c:3620:
+		seq_printf(m, " (Early Transport)");

-:35: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#35: FILE: drivers/gpu/drm/i915/display/intel_psr.c:3621:
+	seq_printf(m, "\n");

total: 0 errors, 3 warnings, 0 checks, 52 lines checked


