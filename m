Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48BB2A87D85
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 12:24:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C12EF10E53B;
	Mon, 14 Apr 2025 10:24:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b68e5b3b99e1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A99710E53B;
 Mon, 14 Apr 2025 10:24:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Macro_for_3_DSC_engi?=
 =?utf-8?q?nes_per_pipe_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Apr 2025 10:24:32 -0000
Message-ID: <174462627256.621.2025325458446378418@b68e5b3b99e1>
X-Patchwork-Hint: ignore
References: <20250414024256.2782702-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250414024256.2782702-1-ankit.k.nautiyal@intel.com>
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

Series: Macro for 3 DSC engines per pipe (rev2)
URL   : https://patchwork.freedesktop.org/series/147643/
State : warning

== Summary ==

Error: dim checkpatch failed
203a9b2612d9 drm/i915/display: Add macro for checking 3 DSC engines
-:28: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#28: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:166:
+#define HAS_DSC_3ENGINES(__display)	(DISPLAY_VERx100(__display) == 1401 && HAS_DSC(__display))

total: 0 errors, 0 warnings, 1 checks, 7 lines checked
62f72f804fdc drm/i915/dp: Check for HAS_DSC_3ENGINES while configuring DSC slices


