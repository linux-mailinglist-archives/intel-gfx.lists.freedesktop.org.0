Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A30D93B7ACA
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jun 2021 01:50:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D515C6E06D;
	Tue, 29 Jun 2021 23:50:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BAF736E053;
 Tue, 29 Jun 2021 23:50:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B433EA8830;
 Tue, 29 Jun 2021 23:50:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Tue, 29 Jun 2021 23:50:42 -0000
Message-ID: <162501064271.9056.14793971904774190920@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210629232049.7584-1-anusha.srivatsa@intel.com>
In-Reply-To: <20210629232049.7584-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BRFC=2C1/2=5D_drm/i915/dmc=3A_Add_so?=
 =?utf-8?q?c_stepping_to_intel=5Fstep?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [RFC,1/2] drm/i915/dmc: Add soc stepping to intel_step
URL   : https://patchwork.freedesktop.org/series/92039/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
15f341baff60 drm/i915/dmc: Add soc stepping to intel_step
9ab5d8facd04 drm/i915/dmc: Modify stepping/substepping table
-:27: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#27: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:274:
+{
+

-:28: ERROR:SWITCH_CASE_INDENT_LEVEL: switch and case should be at the same indent
#28: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:275:
+	switch (step.soc_step) {
+		case STEP_A0:
[...]
+		case STEP_A2:
[...]
+		case STEP_B0:
[...]
+		case STEP_B1:
[...]
+		case STEP_B2:
[...]
+		case STEP_B10:
[...]
+		case STEP_C0:
[...]
+		case STEP_D0:
[...]
+		case STEP_D1:
[...]
+		case STEP_E0:
[...]
+		case STEP_F0:
[...]
+		case STEP_G0:
[...]
+		case STEP_H0:
[...]
+		case STEP_H5:
[...]
+		case STEP_J0:
[...]
+		case STEP_J1:
[...]
+		case STEP_K0:
[...]
+		case STEP_P0:
[...]
+		case STEP_L0:
[...]
+		case STEP_Q0:
[...]
+		case STEP_R0:
[...]
+		case STEP_Y0:
[...]
+		default:

-:146: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#146: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:396:
+		return INTEL_REVID(dev_priv) < size ? si + INTEL_REVID(dev_priv) : &no_stepping_info;

total: 1 errors, 1 warnings, 1 checks, 133 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
