Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B5D443666
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Nov 2021 20:18:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5423A7376D;
	Tue,  2 Nov 2021 19:18:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4831C7376D;
 Tue,  2 Nov 2021 19:18:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 41407A363C;
 Tue,  2 Nov 2021 19:18:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Tue, 02 Nov 2021 19:18:31 -0000
Message-ID: <163588071123.15502.11468206482131209421@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211102180347.25674-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20211102180347.25674-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/perf=3A_Detect_offset_in_context_image_for_OA_ctx_?=
 =?utf-8?q?control_reg?=
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

Series: drm/i915/perf: Detect offset in context image for OA ctx control reg
URL   : https://patchwork.freedesktop.org/series/96507/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4715ece29768 drm/i915/perf: Detect offset in context image for OA ctx control reg
-:60: WARNING:PREFER_PR_LEVEL: Prefer [subsystem eg: netdev]_alert([subsystem]dev, ... then dev_alert(dev, ... then pr_alert(...  to printk(KERN_ALERT ...
#60: FILE: drivers/gpu/drm/i915/selftests/i915_perf.c:189:
+		printk(KERN_ALERT "OA: offset %08x for %08x\n", offset, reg);

-:62: WARNING:PREFER_PR_LEVEL: Prefer [subsystem eg: netdev]_alert([subsystem]dev, ... then dev_alert(dev, ... then pr_alert(...  to printk(KERN_ALERT ...
#62: FILE: drivers/gpu/drm/i915/selftests/i915_perf.c:191:
+		printk(KERN_ALERT "OA: offset not found for %08x\n", reg);

total: 0 errors, 2 warnings, 0 checks, 135 lines checked


