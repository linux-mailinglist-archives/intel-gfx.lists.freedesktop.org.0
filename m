Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82614729A54
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 14:48:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDACE10E69D;
	Fri,  9 Jun 2023 12:48:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 02E1810E69D;
 Fri,  9 Jun 2023 12:48:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EF415AADF2;
 Fri,  9 Jun 2023 12:48:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 09 Jun 2023 12:48:42 -0000
Message-ID: <168631492297.15970.2637571343898583478@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230609121143.1232420-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20230609121143.1232420-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_fdinfo_memory_stats_=28rev2=29?=
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

Series: fdinfo memory stats (rev2)
URL   : https://patchwork.freedesktop.org/series/119082/
State : warning

== Summary ==

Error: dim checkpatch failed
67ba6f7b318b dma-fence: Bypass signaling annotation from dma_fence_is_signaled
bc390e8b6613 drm/i915: Track buffer objects belonging to clients
-:262: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#262: FILE: drivers/gpu/drm/i915/i915_drm_client.h:79:
+{
+

-:263: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#263: FILE: drivers/gpu/drm/i915/i915_drm_client.h:80:
+
+}

-:267: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#267: FILE: drivers/gpu/drm/i915/i915_drm_client.h:84:
+{
+

-:268: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#268: FILE: drivers/gpu/drm/i915/i915_drm_client.h:85:
+
+}

total: 0 errors, 0 warnings, 4 checks, 228 lines checked
bf30cc82b5a3 drm/i915: Record which clients own a VM
f74104b7e164 drm/i915: Track page table backing store usage
e7e9f6705f0a drm/i915: Account ring buffer and context state storage
-:79: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#79: FILE: drivers/gpu/drm/i915/i915_drm_client.h:88:
 
+}

-:84: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#84: FILE: drivers/gpu/drm/i915/i915_drm_client.h:93:
+{
+

total: 0 errors, 0 warnings, 2 checks, 59 lines checked
a69e31d41fb8 drm: Add drm_gem_prime_fd_to_handle_obj
-:43: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#43: FILE: drivers/gpu/drm/drm_prime.c:303:
+				   uint32_t *handle,

-:117: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#117: FILE: include/drm/drm_prime.h:74:
+				   uint32_t *handle,

total: 0 errors, 0 warnings, 2 checks, 91 lines checked
91ae76e91672 drm/i915: Track imported dma-buf objects in memory stats
9d9b6f173db8 drm/i915: Implement fdinfo memory stats printing


