Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D368DA3EBF9
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2025 05:48:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D327610E215;
	Fri, 21 Feb 2025 04:48:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DE2510E215;
 Fri, 21 Feb 2025 04:48:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/vdsc=3A_Cor?=
 =?utf-8?q?rect_the_conditions_of_DSC1=2E1_and_DSC_1=2E2_for_rc_params_calcu?=
 =?utf-8?q?lation?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: gareth.yu@intel.com
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Feb 2025 04:48:18 -0000
Message-ID: <174011329864.378510.2448060766181928855@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250221041401.2219258-1-gareth.yu@intel.com>
In-Reply-To: <20250221041401.2219258-1-gareth.yu@intel.com>
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

Series: drm/i915/vdsc: Correct the conditions of DSC1.1 and DSC 1.2 for rc params calculation
URL   : https://patchwork.freedesktop.org/series/145209/
State : warning

== Summary ==

Error: dim checkpatch failed
1e9add002d68 drm/i915/vdsc: Correct the conditions of DSC1.1 and DSC 1.2 for rc params calculation
-:25: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'vdsc_cfg->dsc_version_minor >= 2'
#25: FILE: drivers/gpu/drm/i915/display/intel_vdsc.c:323:
+	if ((DISPLAY_VER(dev_priv) >= 14) && (vdsc_cfg->dsc_version_minor >= 2)) {

total: 0 errors, 0 warnings, 1 checks, 8 lines checked


