Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA92111E68A
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 16:29:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 143E46E902;
	Fri, 13 Dec 2019 15:29:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7340D6E902;
 Fri, 13 Dec 2019 15:29:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6C71DA011A;
 Fri, 13 Dec 2019 15:29:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 13 Dec 2019 15:29:01 -0000
Message-ID: <157625094144.23800.11821761504123897637@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191213133453.22152-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191213133453.22152-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/6=5D_drm/i915/fbc=3A_Reject_PLANE?=
 =?utf-8?q?=5FOFFSET=2Ey=254!=3D0_on_icl+_too?=
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

Series: series starting with [1/6] drm/i915/fbc: Reject PLANE_OFFSET.y%4!=0 on icl+ too
URL   : https://patchwork.freedesktop.org/series/70883/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ebb81ae8272f drm/i915/fbc: Reject PLANE_OFFSET.y%4!=0 on icl+ too
b4e5657e75ab drm/i915/fbc: Remove second redundant intel_fbc_pre_update() call
54e2dc31a9c3 drm/i915/fbc: Move the plane state check into the fbc functions
a84c1d1acf34 drm/i915/fbc: Nuke fbc_supported()
a9bc1b69a844 drm/i915/fbc: Add fbc tracepoints
-:68: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#68: FILE: drivers/gpu/drm/i915/i915_trace.h:348:
+	    TP_STRUCT__entry(

-:74: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#74: FILE: drivers/gpu/drm/i915/i915_trace.h:354:
+	    TP_fast_assign(

-:88: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#88: FILE: drivers/gpu/drm/i915/i915_trace.h:368:
+	    TP_STRUCT__entry(

-:94: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#94: FILE: drivers/gpu/drm/i915/i915_trace.h:374:
+	    TP_fast_assign(

-:108: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#108: FILE: drivers/gpu/drm/i915/i915_trace.h:388:
+	    TP_STRUCT__entry(

-:114: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#114: FILE: drivers/gpu/drm/i915/i915_trace.h:394:
+	    TP_fast_assign(

total: 0 errors, 0 warnings, 6 checks, 101 lines checked
b2bd1c12ad0d drm/i915: Rename pipe update tracepoints

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
