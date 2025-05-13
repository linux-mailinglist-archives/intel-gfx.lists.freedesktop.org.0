Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4703FAB51EE
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 12:23:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D438B10E37B;
	Tue, 13 May 2025 10:23:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F20210E379;
 Tue, 13 May 2025 10:23:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Some_=28drm=5Fsched=5F=7C?=
 =?utf-8?q?dma=5F=29fence_lifetime_issues_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@igalia.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 13 May 2025 10:23:01 -0000
Message-ID: <174713178138.74292.12106185620921707112@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250513074513.81727-1-tvrtko.ursulin@igalia.com>
In-Reply-To: <20250513074513.81727-1-tvrtko.ursulin@igalia.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Some (drm_sched_|dma_)fence lifetime issues (rev2)
URL   : https://patchwork.freedesktop.org/series/148826/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/amd/amdgpu/amdgpu_userq_fence.o
drivers/gpu/drm/amd/amdgpu/amdgpu_userq_fence.c:337:10: error: ‘const struct dma_fence_ops’ has no member named ‘use_64bit_seqno’
  337 |         .use_64bit_seqno = true,
      |          ^~~~~~~~~~~~~~~
drivers/gpu/drm/amd/amdgpu/amdgpu_userq_fence.c:337:28: warning: initialization of ‘const char * (*)(struct dma_fence *)’ from ‘int’ makes pointer from integer without a cast [-Wint-conversion]
  337 |         .use_64bit_seqno = true,
      |                            ^~~~
drivers/gpu/drm/amd/amdgpu/amdgpu_userq_fence.c:337:28: note: (near initialization for ‘amdgpu_userq_fence_ops.get_driver_name’)
make[6]: *** [scripts/Makefile.build:203: drivers/gpu/drm/amd/amdgpu/amdgpu_userq_fence.o] Error 1
make[5]: *** [scripts/Makefile.build:461: drivers/gpu/drm/amd/amdgpu] Error 2
make[4]: *** [scripts/Makefile.build:461: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:461: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:461: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:2004: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2
Build failed, no error log produced


