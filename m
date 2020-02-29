Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93AFA1746F6
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Feb 2020 14:02:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2D2C6E326;
	Sat, 29 Feb 2020 13:02:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1B72B6E326;
 Sat, 29 Feb 2020 13:02:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 13D63A0071;
 Sat, 29 Feb 2020 13:02:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Sat, 29 Feb 2020 13:02:35 -0000
Message-ID: <158298135505.19638.11231447028943774262@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200229125022.1694679-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200229125022.1694679-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915/perf=3A_remove_gene?=
 =?utf-8?q?rated_code?=
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

Series: series starting with [1/3] drm/i915/perf: remove generated code
URL   : https://patchwork.freedesktop.org/series/74107/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
882c81c4e09c drm/i915/perf: remove generated code
-:24: WARNING:UNKNOWN_COMMIT_ID: Unknown commit id '53f8f541ca', maybe rebased or not pulled?
#24: 
commit 53f8f541ca ("lib: Add i915_perf library"), previously this was

-:199: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#199: 
deleted file mode 100644

total: 0 errors, 2 warnings, 0 checks, 143 lines checked
db590d909d4c drm/i915/perf: reintroduce wait on OA configuration completion
-:29: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!rq"
#29: FILE: drivers/gpu/drm/i915/i915_perf.c:1388:
+	GEM_BUG_ON(rq == NULL);

-:46: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "stream->configure_request"
#46: FILE: drivers/gpu/drm/i915/i915_perf.c:1412:
+	GEM_BUG_ON(stream->configure_request != NULL);

-:66: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "stream->configure_request"
#66: FILE: drivers/gpu/drm/i915/i915_perf.c:2013:
+		GEM_BUG_ON(stream->configure_request != NULL);

-:123: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "stream->configure_request"
#123: FILE: drivers/gpu/drm/i915/i915_perf.c:2895:
+	GEM_BUG_ON(stream->configure_request != NULL);

total: 0 errors, 0 warnings, 4 checks, 123 lines checked
f1b1e775d6d9 drm/i915/perf: introduce global sseu pinning
-:239: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#239: FILE: drivers/gpu/drm/i915/i915_perf.c:2766:
+	user_engine = intel_engine_lookup_user(

-:252: CHECK:LINE_SPACING: Please don't use multiple blank lines
#252: FILE: drivers/gpu/drm/i915/i915_perf.c:2779:
+
+

total: 0 errors, 0 warnings, 2 checks, 328 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
