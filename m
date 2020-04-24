Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C95181B826D
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Apr 2020 01:28:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C48CE6E10C;
	Fri, 24 Apr 2020 23:28:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6B9E06E0DF;
 Fri, 24 Apr 2020 23:28:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6544AA432F;
 Fri, 24 Apr 2020 23:28:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Fri, 24 Apr 2020 23:28:05 -0000
Message-ID: <158777088538.10803.7182340092197219304@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200424214841.28076-1-mika.kuoppala@linux.intel.com>
In-Reply-To: <20200424214841.28076-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915=3A_Add_engine_scrat?=
 =?utf-8?q?ch_register_to_live=5Flrc=5Ffixed_=28rev3=29?=
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

Series: series starting with [1/4] drm/i915: Add engine scratch register to live_lrc_fixed (rev3)
URL   : https://patchwork.freedesktop.org/series/76460/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
987eaf2a4f2c drm/i915: Add engine scratch register to live_lrc_fixed
32e6e8c83a82 drm/i915: Add per ctx batchbuffer wa for timestamp
b586ec9ed8ea drm/i915: Add live selftests for indirect ctx batchbuffers
f36c4e38e7aa drm/i915: Use indirect ctx bb to mend CMD_BUF_CCTL
-:47: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#47: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:623:
+#define END(total_state_size) 0, (total_state_size)

total: 1 errors, 0 warnings, 0 checks, 165 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
