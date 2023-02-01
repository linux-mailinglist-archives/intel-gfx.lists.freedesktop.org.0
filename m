Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F156D685E40
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 05:16:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7986210E11C;
	Wed,  1 Feb 2023 04:16:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8AA1E10E0E6;
 Wed,  1 Feb 2023 04:16:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 85385AA0ED;
 Wed,  1 Feb 2023 04:16:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stephen Rothwell" <sfr@canb.auug.org.au>
Date: Wed, 01 Feb 2023 04:16:25 -0000
Message-ID: <167522498551.25549.4243563852109610941@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230131130305.019029ff@canb.auug.org.au>
In-Reply-To: <20230131130305.019029ff@canb.auug.org.au>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBs?=
 =?utf-8?q?inux-next=3A_manual_merge_of_the_usb_tree_with_the_drm-intel-fi?=
 =?utf-8?q?xes_tree?=
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

Series: linux-next: manual merge of the usb tree with the drm-intel-fixes tree
URL   : https://patchwork.freedesktop.org/series/113544/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  CC [M]  drivers/gpu/drm/i915/gt/intel_execlists_submission.o
drivers/gpu/drm/i915/gt/intel_execlists_submission.c: In function ‘intel_execlists_dump_active_requests’:
drivers/gpu/drm/i915/gt/intel_execlists_submission.c:4164:6: error: implicit declaration of function ‘list_count_nodes’; did you mean ‘list_lru_count_node’? [-Werror=implicit-function-declaration]
 4164 |      list_count_nodes(&engine->sched_engine->hold));
      |      ^~~~~~~~~~~~~~~~
      |      list_lru_count_node
drivers/gpu/drm/i915/gt/intel_execlists_submission.c:4163:31: error: format ‘%zu’ expects argument of type ‘size_t’, but argument 3 has type ‘int’ [-Werror=format=]
 4163 |  drm_printf(m, "\tOn hold?: %zu\n",
      |                             ~~^
      |                               |
      |                               long unsigned int
      |                             %u
 4164 |      list_count_nodes(&engine->sched_engine->hold));
      |      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      |      |
      |      int
cc1: all warnings being treated as errors
make[5]: *** [scripts/Makefile.build:252: drivers/gpu/drm/i915/gt/intel_execlists_submission.o] Error 1
make[4]: *** [scripts/Makefile.build:504: drivers/gpu/drm/i915] Error 2
make[3]: *** [scripts/Makefile.build:504: drivers/gpu/drm] Error 2
make[2]: *** [scripts/Makefile.build:504: drivers/gpu] Error 2
make[1]: *** [scripts/Makefile.build:504: drivers] Error 2
make: *** [Makefile:2021: .] Error 2


