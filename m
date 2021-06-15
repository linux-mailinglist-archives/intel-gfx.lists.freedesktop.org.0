Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 612E23A7560
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 05:48:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 614946E202;
	Tue, 15 Jun 2021 03:48:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 366F36E200;
 Tue, 15 Jun 2021 03:48:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2627FA9A43;
 Tue, 15 Jun 2021 03:48:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 15 Jun 2021 03:48:16 -0000
Message-ID: <162372889612.8816.11496487793828220698@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210615033433.1574397-1-matthew.d.roper@intel.com>
In-Reply-To: <20210615033433.1574397-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Explicity_steer_l3bank_multicast_reads_when_necessary?=
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

Series: Explicity steer l3bank multicast reads when necessary
URL   : https://patchwork.freedesktop.org/series/91485/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
16715f8678e5 drm/i915: extract steered reg access to common function
-:89: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#89: FILE: drivers/gpu/drm/i915/intel_uncore.c:2296:
+	old_mcr = mcr = intel_uncore_read_fw(uncore, GEN8_MCR_SELECTOR);

total: 0 errors, 0 warnings, 1 checks, 120 lines checked
3707583bbcf3 drm/i915: Add GT support for multiple types of multicast steering
-:159: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#159: FILE: drivers/gpu/drm/i915/gt/intel_gt_types.h:35:
+       u32 start;$

-:160: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#160: FILE: drivers/gpu/drm/i915/gt/intel_gt_types.h:36:
+       u32 end;$

total: 0 errors, 2 warnings, 0 checks, 214 lines checked
ee481231a00b drm/i915: Add support for explicit L3BANK steering
-:28: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#28: FILE: drivers/gpu/drm/i915/gt/intel_gt.c:87:
+       { 0x00B100, 0x00B3FF },$

-:29: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#29: FILE: drivers/gpu/drm/i915/gt/intel_gt.c:88:
+       { 0xFFFFFF, 0xFFFFFF }, /* terminating entry */$

total: 0 errors, 2 warnings, 0 checks, 169 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
