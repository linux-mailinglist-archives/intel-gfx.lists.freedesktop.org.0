Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE449A9F439
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 17:17:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F7B310E38E;
	Mon, 28 Apr 2025 15:17:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA7A310E592;
 Mon, 28 Apr 2025 15:17:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/alpm=3A_Int?=
 =?utf-8?q?roduce_has=5Falpm_to_simplify_alpm_check_in_enable/disable?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Apr 2025 15:17:45 -0000
Message-ID: <174585346593.20741.11795837054155639961@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250428095838.3154962-1-animesh.manna@intel.com>
In-Reply-To: <20250428095838.3154962-1-animesh.manna@intel.com>
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

Series: drm/i915/alpm: Introduce has_alpm to simplify alpm check in enable/disable
URL   : https://patchwork.freedesktop.org/series/148354/
State : warning

== Summary ==

Error: dim checkpatch failed
b0292017aea5 drm/i915/alpm: Introduce has_alpm to simplify alpm check in enable/disable
-:49: WARNING:LINE_SPACING: Missing a blank line after declarations
#49: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:424:
+			u32 alpm_ctl = intel_de_read(display, ALPM_CTL(display, cpu_transcoder));
+			if (alpm_ctl & ALPM_CTL_LOBF_ENABLE) {

-:51: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#51: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:426:
+				intel_de_write(display, ALPM_CTL(display, cpu_transcoder), alpm_ctl);

total: 0 errors, 2 warnings, 0 checks, 66 lines checked


