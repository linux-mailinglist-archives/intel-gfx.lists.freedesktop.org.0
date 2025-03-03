Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C1AA4BB44
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Mar 2025 10:55:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AE2510E3BC;
	Mon,  3 Mar 2025 09:55:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BF1710E3B0;
 Mon,  3 Mar 2025 09:54:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_LOBF_enablement_fix_?=
 =?utf-8?q?=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manna, Animesh" <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 03 Mar 2025 09:54:59 -0000
Message-ID: <174099569950.83024.15584361146446018646@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250303083522.845224-1-animesh.manna@intel.com>
In-Reply-To: <20250303083522.845224-1-animesh.manna@intel.com>
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

Series: LOBF enablement fix (rev5)
URL   : https://patchwork.freedesktop.org/series/141974/
State : warning

== Summary ==

Error: dim checkpatch failed
6e00c0aa565f drm/i915/lobf: Add lobf enablement in post plane update
2d2fbd297ebf drm/i915/lobf: Disintegrate alpm_disable from psr_disable
3bcf9166b6a3 drm/i915/lobf: Add fixed refresh rate check in compute_config()
a0a45dc5e4e3 drm/i915/lobf: Update lobf if any change in dependent parameters
b39e17f43f30 drm/i915/lobf: Add debug interface for lobf
8f6a5d57e21e drm/i915/lobf: Check for sink error and disable LOBF
52652daf7a14 drm/i915/lobf: Add mutex for alpm update
-:144: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#144: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1805:
+		struct mutex lock;

total: 0 errors, 0 warnings, 1 checks, 117 lines checked
c4eaf5cf7b9d drm/i915/lobf: Add debug print for LOBF


