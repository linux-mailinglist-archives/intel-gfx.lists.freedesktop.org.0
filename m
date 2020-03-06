Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0212A17C30A
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 17:34:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 906966E4B7;
	Fri,  6 Mar 2020 16:34:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3E4496E4B7;
 Fri,  6 Mar 2020 16:34:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 36DBDA0071;
 Fri,  6 Mar 2020 16:34:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Fri, 06 Mar 2020 16:34:24 -0000
Message-ID: <158351246422.3081.12372262522768494973@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200306100557.2077450-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200306100557.2077450-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv4=2C1/3=5D_drm/i915/perf=3A_remove?=
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

Series: series starting with [v4,1/3] drm/i915/perf: remove generated code
URL   : https://patchwork.freedesktop.org/series/74379/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d4ffbb0b3484 drm/i915/perf: remove generated code
-:24: WARNING:UNKNOWN_COMMIT_ID: Unknown commit id '53f8f541ca', maybe rebased or not pulled?
#24: 
commit 53f8f541ca ("lib: Add i915_perf library"), previously this was

-:201: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#201: 
deleted file mode 100644

-:2095: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#2095: FILE: drivers/gpu/drm/i915/selftests/i915_perf.c:69:
+
+}

-:2117: CHECK:LINE_SPACING: Please don't use multiple blank lines
#2117: FILE: drivers/gpu/drm/i915/selftests/i915_perf.c:91:
+
+

total: 0 errors, 2 warnings, 2 checks, 279 lines checked
3a6512ad9340 drm/i915/perf: remove redundant power configuration register override
a2d1de8ada3c drm/i915/perf: introduce global sseu pinning
-:203: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#203: FILE: drivers/gpu/drm/i915/i915_perf.c:2760:
+	user_engine = intel_engine_lookup_user(

total: 0 errors, 0 warnings, 1 checks, 263 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
