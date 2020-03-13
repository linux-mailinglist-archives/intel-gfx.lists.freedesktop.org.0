Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58187184AAB
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 16:27:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 964D76EBF1;
	Fri, 13 Mar 2020 15:27:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A8FC46EBF1;
 Fri, 13 Mar 2020 15:27:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A05C1A0019;
 Fri, 13 Mar 2020 15:27:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Fri, 13 Mar 2020 15:27:05 -0000
Message-ID: <158411322565.30351.14856461102735447831@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200313143440.2476876-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200313143440.2476876-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv5=2C1/3=5D_drm/i915/perf=3A_remove?=
 =?utf-8?q?_generated_code?=
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

Series: series starting with [v5,1/3] drm/i915/perf: remove generated code
URL   : https://patchwork.freedesktop.org/series/74681/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3d2548e48f90 drm/i915/perf: remove generated code
-:24: WARNING:UNKNOWN_COMMIT_ID: Unknown commit id '53f8f541ca', maybe rebased or not pulled?
#24: 
commit 53f8f541ca ("lib: Add i915_perf library"), previously this was

-:203: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#203: 
deleted file mode 100644

-:2098: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#2098: FILE: drivers/gpu/drm/i915/selftests/i915_perf.c:70:
+
+}

-:2120: CHECK:LINE_SPACING: Please don't use multiple blank lines
#2120: FILE: drivers/gpu/drm/i915/selftests/i915_perf.c:92:
+
+

total: 0 errors, 2 warnings, 2 checks, 280 lines checked
9380df5c81a4 drm/i915/perf: remove redundant power configuration register override
b80536241e67 drm/i915/perf: introduce global sseu pinning
-:205: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#205: FILE: drivers/gpu/drm/i915/i915_perf.c:2759:
+	user_engine = intel_engine_lookup_user(

total: 0 errors, 0 warnings, 1 checks, 262 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
