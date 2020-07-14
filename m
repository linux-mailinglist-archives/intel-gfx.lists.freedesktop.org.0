Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4658421EB22
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 10:17:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC2236E821;
	Tue, 14 Jul 2020 08:17:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C73DB6E821;
 Tue, 14 Jul 2020 08:17:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C0058A47DB;
 Tue, 14 Jul 2020 08:17:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Tue, 14 Jul 2020 08:17:50 -0000
Message-ID: <159471467075.6780.2235830979319061422@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200714072239.70198-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20200714072239.70198-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Allow_privileged_user_to_map_the_OA_buffer?=
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

Series: Allow privileged user to map the OA buffer
URL   : https://patchwork.freedesktop.org/series/79460/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
69208bf02940 drm/i915/perf: Map OA buffer to user space
-:214: ERROR:SPACING: space required before the open parenthesis '('
#214: FILE: drivers/gpu/drm/i915/i915_perf.c:1625:
+	if(stream->oa_buffer.cpu_address != 0)

-:280: CHECK:SPACING: No space is necessary after a cast
#280: FILE: drivers/gpu/drm/i915/i915_perf.c:3292:
+	void __user *output = (void __user *) arg;

total: 1 errors, 0 warnings, 1 checks, 393 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
