Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65925A699E6
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Mar 2025 21:02:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3BA610E582;
	Wed, 19 Mar 2025 20:02:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 18a75f3d1eae (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFE8410E582;
 Wed, 19 Mar 2025 20:02:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_LOBF_enablement_fix_?=
 =?utf-8?q?=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Mar 2025 20:02:16 -0000
Message-ID: <174241453671.55758.5398640567124859049@18a75f3d1eae>
X-Patchwork-Hint: ignore
References: <20250319191508.2751216-1-animesh.manna@intel.com>
In-Reply-To: <20250319191508.2751216-1-animesh.manna@intel.com>
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

Series: LOBF enablement fix (rev6)
URL   : https://patchwork.freedesktop.org/series/141974/
State : warning

== Summary ==

Error: dim checkpatch failed
a79423161ead drm/i915/lobf: Add lobf enablement in post plane update
23f69eb0d7ac drm/i915/lobf: Disintegrate alpm_disable from psr_disable
12e298d9233e drm/i915/lobf: Add fixed refresh rate check in compute_config()
b51329c9dd0f drm/i915/lobf: Update lobf if any change in dependent parameters
d1b897b87f67 drm/i915/lobf: Add debug interface for lobf
dafe16fc1032 drm/i915/lobf: Check for sink error and disable LOBF
f4dca76a9c86 drm/i915/lobf: Add mutex for alpm update
-:87: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#87: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1809:
+		struct mutex lock;

total: 0 errors, 0 warnings, 1 checks, 68 lines checked
60bae0568de2 drm/i915/lobf: Add debug print for LOBF


