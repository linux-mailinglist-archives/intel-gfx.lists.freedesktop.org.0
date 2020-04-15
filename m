Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 370741A968E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 10:32:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 952C86E916;
	Wed, 15 Apr 2020 08:32:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 748586E914;
 Wed, 15 Apr 2020 08:32:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 66DD0A432F;
 Wed, 15 Apr 2020 08:32:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 15 Apr 2020 08:32:05 -0000
Message-ID: <158693952539.21015.18003796336935109850@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200415075018.7636-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200415075018.7636-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_Update_PMINTRMSK_holding_fw?=
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

Series: drm/i915/gt: Update PMINTRMSK holding fw
URL   : https://patchwork.freedesktop.org/series/75958/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3f39dd53bc11 drm/i915/gt: Update PMINTRMSK holding fw
-:37: ERROR:CODE_INDENT: code indent should use tabs where possible
#37: FILE: drivers/gpu/drm/i915/gt/intel_rps.c:91:
+                           GEN6_PMINTRMSK, rps_pm_mask(rps, rps->last_freq));$

-:37: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#37: FILE: drivers/gpu/drm/i915/gt/intel_rps.c:91:
+	intel_uncore_write(gt->uncore,
+                           GEN6_PMINTRMSK, rps_pm_mask(rps, rps->last_freq));

-:37: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#37: FILE: drivers/gpu/drm/i915/gt/intel_rps.c:91:
+                           GEN6_PMINTRMSK, rps_pm_mask(rps, rps->last_freq));$

-:48: ERROR:CODE_INDENT: code indent should use tabs where possible
#48: FILE: drivers/gpu/drm/i915/gt/intel_rps.c:126:
+                           GEN6_PMINTRMSK, rps_pm_sanitize_mask(rps, ~0u));$

-:48: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#48: FILE: drivers/gpu/drm/i915/gt/intel_rps.c:126:
+	intel_uncore_write(gt->uncore,
+                           GEN6_PMINTRMSK, rps_pm_sanitize_mask(rps, ~0u));

-:48: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#48: FILE: drivers/gpu/drm/i915/gt/intel_rps.c:126:
+                           GEN6_PMINTRMSK, rps_pm_sanitize_mask(rps, ~0u));$

total: 2 errors, 2 warnings, 2 checks, 26 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
