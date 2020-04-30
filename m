Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A49131C011F
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 18:01:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5C006E227;
	Thu, 30 Apr 2020 16:01:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E9E646E930;
 Thu, 30 Apr 2020 16:01:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DE7D7A0BC6;
 Thu, 30 Apr 2020 16:01:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Thu, 30 Apr 2020 16:01:41 -0000
Message-ID: <158826250188.31920.4713099932825699524@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200430154735.22434-1-mika.kuoppala@linux.intel.com>
In-Reply-To: <20200430154735.22434-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/9=5D_Revert_=22drm/i915/tgl=3A_In?=
 =?utf-8?q?clude_ro_parts_of_l3_to_invalidate=22?=
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

Series: series starting with [1/9] Revert "drm/i915/tgl: Include ro parts of l3 to invalidate"
URL   : https://patchwork.freedesktop.org/series/76777/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
53177bdb8662 Revert "drm/i915/tgl: Include ro parts of l3 to invalidate"
7e235ad6db72 drm/i915/gen12: Fix HDC pipeline flush
868476e157a0 drm/i915/gen12: Add L3 fabric flush
-:18: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#18: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:222:
+#define   PIPE_CONTROL_L3_FABRIC_FLUSH		        (1<<30) /* gen12+ */
                                       		          ^

total: 0 errors, 0 warnings, 1 checks, 21 lines checked
8411dc590177 drm/i915/gen12: Flush L3
abb852252bfa drm/i915/gen12: Flush AMFS
-:19: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#19: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:226:
+#define   PIPE_CONTROL_FLUSH_AMFS			(1<<25) /* gen12+ */
                                  			  ^

total: 0 errors, 0 warnings, 1 checks, 21 lines checked
cdb89beff0e2 drm/i915/gen12: Invalidate indirect state pointers
4289817480ba drm/i915/gen12: Wait on previous flush on invalidate
dda90d2bdc6d drm/i915/gen12: Invalidate media state
987ed1f2f5ee drm/i915/gen12: Flush LLC
-:19: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#19: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:226:
+#define   PIPE_CONTROL_FLUSH_LLC			(1<<26) /* gen12+ */
                                 			  ^

total: 0 errors, 0 warnings, 1 checks, 21 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
