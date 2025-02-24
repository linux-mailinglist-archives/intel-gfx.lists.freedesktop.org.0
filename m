Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E42A42BF1
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 19:49:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CFC710E357;
	Mon, 24 Feb 2025 18:49:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A472B10E35C;
 Mon, 24 Feb 2025 18:49:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_LOBF_enablement_fix_?=
 =?utf-8?q?=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Feb 2025 18:49:14 -0000
Message-ID: <174042295466.1688497.8122835581124721763@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250224080847.326350-1-animesh.manna@intel.com>
In-Reply-To: <20250224080847.326350-1-animesh.manna@intel.com>
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

Series: LOBF enablement fix (rev4)
URL   : https://patchwork.freedesktop.org/series/141974/
State : warning

== Summary ==

Error: dim checkpatch failed
cfe3cb6e3c2c drm/i915/lobf: Add lobf enablement in post plane update
15bce8901a81 drm/i915/lobf: Disintegrate alpm_disable from psr_disable
d39b0f7d630d drm/i915/lobf: Add fixed refresh rate check in compute_config()
1fbac135c307 drm/i915/lobf: Update lobf if any change in dependent parameters
4b6c186ce6af drm/i915/lobf: Add debug interface for lobf
59dbeaf10179 drm/i915/lobf: Check for sink error and disable LOBF
2f3a9d8b8571 drm/i915/lobf: Add mutex for alpm update
-:142: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#142: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1805:
+		struct mutex lock;

total: 0 errors, 0 warnings, 1 checks, 116 lines checked
08b157f18df9 drm/i915/lobf: Add debug print for LOBF


