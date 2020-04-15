Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1141AAD43
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 18:22:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F8496EA2D;
	Wed, 15 Apr 2020 16:22:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AAFD46EA2E;
 Wed, 15 Apr 2020 16:22:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A41C1A47E0;
 Wed, 15 Apr 2020 16:22:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 15 Apr 2020 16:22:03 -0000
Message-ID: <158696772364.21013.12602068675164792498@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200415131259.32732-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200415131259.32732-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_drm/i915/selftests=3A_Exercise_basic_R?=
 =?utf-8?q?PS_interrupt_generation_=28rev3=29?=
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

Series: series starting with drm/i915/selftests: Exercise basic RPS interrupt generation (rev3)
URL   : https://patchwork.freedesktop.org/series/75973/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0454a6c7dd1e drm/i915/selftests: Exercise basic RPS interrupt generation
-:46: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#46: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 252 lines checked
8c90502c194a drm/i915/gt: Update PMINTRMSK holding fw
-:39: ERROR:CODE_INDENT: code indent should use tabs where possible
#39: FILE: drivers/gpu/drm/i915/gt/intel_rps.c:91:
+                           GEN6_PMINTRMSK, rps_pm_mask(rps, rps->last_freq));$

-:39: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#39: FILE: drivers/gpu/drm/i915/gt/intel_rps.c:91:
+	intel_uncore_write(gt->uncore,
+                           GEN6_PMINTRMSK, rps_pm_mask(rps, rps->last_freq));

-:39: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#39: FILE: drivers/gpu/drm/i915/gt/intel_rps.c:91:
+                           GEN6_PMINTRMSK, rps_pm_mask(rps, rps->last_freq));$

-:50: ERROR:CODE_INDENT: code indent should use tabs where possible
#50: FILE: drivers/gpu/drm/i915/gt/intel_rps.c:126:
+                           GEN6_PMINTRMSK, rps_pm_sanitize_mask(rps, ~0u));$

-:50: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#50: FILE: drivers/gpu/drm/i915/gt/intel_rps.c:126:
+	intel_uncore_write(gt->uncore,
+                           GEN6_PMINTRMSK, rps_pm_sanitize_mask(rps, ~0u));

-:50: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#50: FILE: drivers/gpu/drm/i915/gt/intel_rps.c:126:
+                           GEN6_PMINTRMSK, rps_pm_sanitize_mask(rps, ~0u));$

total: 2 errors, 2 warnings, 2 checks, 26 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
