Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE58C1C0B2B
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 02:03:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD42A6EA52;
	Fri,  1 May 2020 00:03:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 727586EA52;
 Fri,  1 May 2020 00:03:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6C11AA47DA;
 Fri,  1 May 2020 00:03:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 01 May 2020 00:03:42 -0000
Message-ID: <158829142241.18946.14823061210803203627@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200430231529.295556-1-matthew.d.roper@intel.com>
In-Reply-To: <20200430231529.295556-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Steer_multicast_register_workaround_verification?=
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

Series: Steer multicast register workaround verification
URL   : https://patchwork.freedesktop.org/series/76792/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c89d34e99992 drm/i915: Setup multicast register steering for all gen >= 10
4759117a6337 drm/i915: Steer multicast register readback in wa_verify
-:77: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#77: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:59:
+	wal->mcrslice = wal->mcrss = 0;

total: 0 errors, 0 warnings, 1 checks, 195 lines checked
1d656b938337 drm/i915: Don't skip verification of MCR engine workarounds
d348e98bdcf9 drm/i915: Add MCR ranges for gen11 and gen12

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
