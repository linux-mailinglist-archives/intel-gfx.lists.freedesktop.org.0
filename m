Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 330CC1D8C2F
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 02:23:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DAE66E4C7;
	Tue, 19 May 2020 00:23:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 14F1A6E4C7;
 Tue, 19 May 2020 00:23:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0F13FA0099;
 Tue, 19 May 2020 00:23:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Tue, 19 May 2020 00:23:51 -0000
Message-ID: <158984783104.31239.17447587366227846835@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200518233049.19759-1-lucas.demarchi@intel.com>
In-Reply-To: <20200518233049.19759-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915=3A_move_trace=5Fi91?=
 =?utf-8?q?5=5Freg=5Frw=28=29_to_a_separate_file?=
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

Series: series starting with [1/2] drm/i915: move trace_i915_reg_rw() to a separate file
URL   : https://patchwork.freedesktop.org/series/77378/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
caee6db994c4 drm/i915: move trace_i915_reg_rw() to a separate file
-:66: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#66: 
new file mode 100644

-:85: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#85: FILE: drivers/gpu/drm/i915/i915_trace_reg_rw.h:15:
+TRACE_EVENT_CONDITION(i915_reg_rw,
+	TP_PROTO(bool write, i915_reg_t reg, u64 val, int len, bool trace),

-:91: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#91: FILE: drivers/gpu/drm/i915/i915_trace_reg_rw.h:21:
+	TP_STRUCT__entry(

-:98: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#98: FILE: drivers/gpu/drm/i915/i915_trace_reg_rw.h:28:
+	TP_fast_assign(

-:106: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#106: FILE: drivers/gpu/drm/i915/i915_trace_reg_rw.h:36:
+	TP_printk("%s reg=0x%x, len=%d, val=(0x%x, 0x%x)",
+		__entry->write ? "write" : "read",

total: 0 errors, 1 warnings, 4 checks, 84 lines checked
7f37c24c1d4b drm/i915: trace intel_uncore_*_fw()

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
