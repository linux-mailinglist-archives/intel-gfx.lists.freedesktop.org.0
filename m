Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6D738B3CB
	for <lists+intel-gfx@lfdr.de>; Thu, 20 May 2021 17:55:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97FEB6E250;
	Thu, 20 May 2021 15:55:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4E12A6E165;
 Thu, 20 May 2021 15:55:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 46454A00E6;
 Thu, 20 May 2021 15:55:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 20 May 2021 15:55:02 -0000
Message-ID: <162152610226.11680.14417036284762462540@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210520151254.959958-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210520151254.959958-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Per_client_engine_busyness?=
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

Series: Per client engine busyness
URL   : https://patchwork.freedesktop.org/series/90375/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1455dee675ac drm/i915: Explicitly track DRM clients
-:84: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#84: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 287 lines checked
bfb2b185e63f drm/i915: Update client name on context create
8b3d87efebae drm/i915: Make GEM contexts track DRM clients
bc02e5505f79 drm/i915: Track runtime spent in closed and unreachable GEM contexts
f7fcc7b31e1a drm/i915: Track all user contexts per client
2b0b1913bd6c drm/i915: Track context current active time
-:136: WARNING:LINE_SPACING: Missing a blank line after declarations
#136: FILE: drivers/gpu/drm/i915/gt/intel_context_types.h:125:
+			u32 last;
+			I915_SELFTEST_DECLARE(u32 num_underflow);

total: 0 errors, 1 warnings, 0 checks, 296 lines checked
d5123f923671 drm/i915: Expose client engine utilisation via fdinfo
-:10: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 874442541133 ("drm/amdgpu: Add show_fdinfo() interface")'
#10: 
874442541133 ("drm/amdgpu: Add show_fdinfo() interface"), using the

-:31: WARNING:TYPO_SPELLING: 'writting' may be misspelled - perhaps 'writing'?
#31: 
in order to enable writting of generic top-like tools.
                   ^^^^^^^^

-:127: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#127: FILE: drivers/gpu/drm/i915/i915_drm_client.c:228:
+	seq_printf(m, "drm-driver:\ti915\n");

total: 1 errors, 2 warnings, 0 checks, 96 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
