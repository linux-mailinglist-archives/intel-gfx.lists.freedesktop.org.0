Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8851A705952
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 23:14:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D169C10E36D;
	Tue, 16 May 2023 21:14:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6AC3B10E36D;
 Tue, 16 May 2023 21:14:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 631ACAADDA;
 Tue, 16 May 2023 21:14:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Tue, 16 May 2023 21:14:25 -0000
Message-ID: <168427166537.14224.17019079541460354192@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230516133646.3708898-1-andrzej.hajda@intel.com>
In-Reply-To: <20230516133646.3708898-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2CDO=5FNOT=5FMERGE=2C1/3=5D_drm/?=
 =?utf-8?q?i915/mtl=3A_do_not_enable_render_power-gating_on_MTL?=
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

Series: series starting with [CI,DO_NOT_MERGE,1/3] drm/i915/mtl: do not enable render power-gating on MTL
URL   : https://patchwork.freedesktop.org/series/117819/
State : warning

== Summary ==

Error: dim checkpatch failed
e0f1fa65f100 drm/i915/mtl: do not enable render power-gating on MTL
-:10: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'References:', use 'Link:' or 'Closes:' instead
#10: 
References: https://gitlab.freedesktop.org/drm/intel/-/issues/4983

-:28: ERROR:CODE_INDENT: code indent should use tabs where possible
#28: FILE: drivers/gpu/drm/i915/gt/intel_rc6.c:125:
+^I         IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))$

total: 1 errors, 1 warnings, 0 checks, 14 lines checked
496a05f3de25 drm/i915/gt: do not enable render and media power-gating on RPL-S
-:10: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'References:', use 'Link:' or 'Closes:' instead
#10: 
References: https://gitlab.freedesktop.org/drm/intel/-/issues/4983

total: 0 errors, 1 warnings, 0 checks, 9 lines checked
b0d1f92bc92f drm/i915/selftests: add forcewake_with_spinners tests
-:78: CHECK:SPACING: No space is necessary after a cast
#78: FILE: drivers/gpu/drm/i915/selftests/intel_uncore.c:397:
+		intel_klog_error_capture(gt, (intel_engine_mask_t) ~0U);

-:84: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#84: FILE: drivers/gpu/drm/i915/selftests/intel_uncore.c:403:
+	msleep(3);

total: 0 errors, 1 warnings, 1 checks, 104 lines checked


