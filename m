Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 037865B436D
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Sep 2022 02:44:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 440E210E252;
	Sat, 10 Sep 2022 00:44:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0BCA110E252;
 Sat, 10 Sep 2022 00:44:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 03C02A7DFC;
 Sat, 10 Sep 2022 00:44:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Date: Sat, 10 Sep 2022 00:44:45 -0000
Message-ID: <166277068597.9589.15762258132439480036@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220910001202.1733349-1-ashutosh.dixit@intel.com>
In-Reply-To: <20220910001202.1733349-1-ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_freq_caps_and_perf=5Flimit=5Freasons_changes_for_MT?=
 =?utf-8?q?L_=28rev4=29?=
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

Series: i915: freq caps and perf_limit_reasons changes for MTL (rev4)
URL   : https://patchwork.freedesktop.org/series/108091/
State : warning

== Summary ==

Error: dim checkpatch failed
97902045691d drm/i915/debugfs: Add perf_limit_reasons in debugfs
-:34: CHECK:SPACING: spaces preferred around that '*' (ctx:ExV)
#34: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c:664:
+		*val = intel_uncore_read(gt->uncore, GT0_PERF_LIMIT_REASONS);
 		^

total: 0 errors, 0 warnings, 1 checks, 50 lines checked
3ca24f7541d0 drm/i915/mtl: PERF_LIMIT_REASONS changes for MTL
-:53: CHECK:SPACING: spaces preferred around that '*' (ctx:ExV)
#53: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c:664:
+		*val = intel_uncore_read(gt->uncore, intel_gt_perf_limit_reasons_reg(gt));
 		^

total: 0 errors, 0 warnings, 1 checks, 66 lines checked
6a8113b64dfe drm/i915/rps: Freq caps for MTL


