Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 486C0728776
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 20:47:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C44BF10E104;
	Thu,  8 Jun 2023 18:47:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5841310E607;
 Thu,  8 Jun 2023 18:47:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 43BADAADF1;
 Thu,  8 Jun 2023 18:47:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 08 Jun 2023 18:47:16 -0000
Message-ID: <168625003624.18384.9696441999532238738@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230608145133.1059554-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20230608145133.1059554-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBm?=
 =?utf-8?q?dinfo_memory_stats?=
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

Series: fdinfo memory stats
URL   : https://patchwork.freedesktop.org/series/119082/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/gem/i915_gem_context.o
In file included from drivers/gpu/drm/i915/gem/i915_gem_context.c:2593:
drivers/gpu/drm/i915/gem/selftests/mock_context.c: In function ‘live_context’:
drivers/gpu/drm/i915/gem/selftests/mock_context.c:86:28: error: passing argument 1 of ‘proto_context_create’ from incompatible pointer type [-Werror=incompatible-pointer-types]
   86 |  pc = proto_context_create(i915, 0);
      |                            ^~~~
      |                            |
      |                            struct drm_i915_private *
drivers/gpu/drm/i915/gem/i915_gem_context.c:282:52: note: expected ‘struct drm_i915_file_private *’ but argument is of type ‘struct drm_i915_private *’
  282 | proto_context_create(struct drm_i915_file_private *fpriv,
      |                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~
In file included from drivers/gpu/drm/i915/gem/i915_gem_context.c:2593:
drivers/gpu/drm/i915/gem/selftests/mock_context.c:86:7: error: too few arguments to function ‘proto_context_create’
   86 |  pc = proto_context_create(i915, 0);
      |       ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gem/i915_gem_context.c:282:1: note: declared here
  282 | proto_context_create(struct drm_i915_file_private *fpriv,
      | ^~~~~~~~~~~~~~~~~~~~
In file included from drivers/gpu/drm/i915/gem/i915_gem_context.c:2593:
drivers/gpu/drm/i915/gem/selftests/mock_context.c: In function ‘kernel_context’:
drivers/gpu/drm/i915/gem/selftests/mock_context.c:155:28: error: passing argument 1 of ‘proto_context_create’ from incompatible pointer type [-Werror=incompatible-pointer-types]
  155 |  pc = proto_context_create(i915, 0);
      |                            ^~~~
      |                            |
      |                            struct drm_i915_private *
drivers/gpu/drm/i915/gem/i915_gem_context.c:282:52: note: expected ‘struct drm_i915_file_private *’ but argument is of type ‘struct drm_i915_private *’
  282 | proto_context_create(struct drm_i915_file_private *fpriv,
      |                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~
In file included from drivers/gpu/drm/i915/gem/i915_gem_context.c:2593:
drivers/gpu/drm/i915/gem/selftests/mock_context.c:155:7: error: too few arguments to function ‘proto_context_create’
  155 |  pc = proto_context_create(i915, 0);
      |       ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gem/i915_gem_context.c:282:1: note: declared here
  282 | proto_context_create(struct drm_i915_file_private *fpriv,
      | ^~~~~~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
make[5]: *** [scripts/Makefile.build:252: drivers/gpu/drm/i915/gem/i915_gem_context.o] Error 1
make[4]: *** [scripts/Makefile.build:494: drivers/gpu/drm/i915] Error 2
make[3]: *** [scripts/Makefile.build:494: drivers/gpu/drm] Error 2
make[2]: *** [scripts/Makefile.build:494: drivers/gpu] Error 2
make[1]: *** [scripts/Makefile.build:494: drivers] Error 2
make: *** [Makefile:2026: .] Error 2
Build failed, no error log produced


