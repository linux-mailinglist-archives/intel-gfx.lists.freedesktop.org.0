Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 248DA4EF6FD
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 17:57:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 588F210F4EC;
	Fri,  1 Apr 2022 15:57:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CD5AE10F4EC;
 Fri,  1 Apr 2022 15:57:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C8AFBAA0EA;
 Fri,  1 Apr 2022 15:57:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 01 Apr 2022 15:57:45 -0000
Message-ID: <164882866579.22007.16481529587068917218@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220401142205.3123159-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20220401142205.3123159-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Per_client_GPU_utilisation_=28rev4=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Per client GPU utilisation (rev4)
URL   : https://patchwork.freedesktop.org/series/100573/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
037908479101 drm/i915: Explicitly track DRM clients
-:130: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#130: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 234 lines checked
8f73b6a749d5 drm/i915: Make GEM contexts track DRM clients
481b0788b111 drm/i915: Track runtime spent in closed and unreachable GEM contexts
f5a45bb5ac9c drm/i915: Track all user contexts per client
07ad43cd0f97 drm/i915: Track context current active time
-:140: WARNING:LINE_SPACING: Missing a blank line after declarations
#140: FILE: drivers/gpu/drm/i915/gt/intel_context_types.h:149:
+			u32 last;
+			I915_SELFTEST_DECLARE(u32 num_underflow);

total: 0 errors, 1 warnings, 0 checks, 308 lines checked
7d0f31c44ba2 drm: Document fdinfo format specification
-:45: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#45: 
new file mode 100644

-:50: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#50: FILE: Documentation/gpu/drm-usage-stats.rst:1:
+.. _drm-client-usage-stats:

total: 0 errors, 2 warnings, 0 checks, 113 lines checked
7703ec507d49 drm/i915: Count engine instances per uabi class
3deb854ecac2 drm/i915: Expose client engine utilisation via fdinfo


