Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07084A91A95
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 13:20:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75D5F10EABC;
	Thu, 17 Apr 2025 11:20:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b68e5b3b99e1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E95810EABC;
 Thu, 17 Apr 2025 11:20:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_LOBF_enablement_fix_?=
 =?utf-8?q?=28rev9=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Apr 2025 11:20:46 -0000
Message-ID: <174488884618.14235.5997644429860684042@b68e5b3b99e1>
X-Patchwork-Hint: ignore
References: <20250417094123.1662424-1-animesh.manna@intel.com>
In-Reply-To: <20250417094123.1662424-1-animesh.manna@intel.com>
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

Series: LOBF enablement fix (rev9)
URL   : https://patchwork.freedesktop.org/series/141974/
State : warning

== Summary ==

Error: dim checkpatch failed
7e43e5965b04 drm/i915/alpm: use variable from intel_crtc_state instead of intel_psr
7550dd983841 drm/i915/lobf: Add lobf enablement in post plane update
c1ff44ae2760 drm/i915/lobf: Add debug print for LOBF
19e6b2c04ab6 drm/i915/lobf: Disintegrate alpm_disable from psr_disable
e11a503018e0 drm/i915/lobf: Add fixed refresh rate check in compute_config()
ec1d467d26b3 drm/i915/lobf: Update lobf if any change in dependent parameters
923a1f9783b2 drm/i915/lobf: Add debug interface for lobf
5b1dcaba1521 drm/i915/lobf: Add mutex for alpm update
-:107: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#107: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1809:
+		struct mutex lock;

total: 0 errors, 0 warnings, 1 checks, 82 lines checked
41ac3ce42d2c drm/i915/lobf: Check for sink error and disable LOBF
778b6907448c drm/i915/display: Disintegrate sink alpm enable from psr with lobf


