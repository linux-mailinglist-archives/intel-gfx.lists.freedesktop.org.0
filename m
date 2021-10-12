Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A59D42A39C
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Oct 2021 13:48:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81D9A6E921;
	Tue, 12 Oct 2021 11:48:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B41FF6E838;
 Tue, 12 Oct 2021 11:48:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A9DA9A9932;
 Tue, 12 Oct 2021 11:48:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vlastimil Babka" <vbabka@suse.cz>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Oct 2021 11:48:18 -0000
Message-ID: <163403929866.14286.15810816732588054559@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211012090621.1357-1-vbabka@suse.cz>
In-Reply-To: <20211012090621.1357-1-vbabka@suse.cz>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_lib/stackdepot=3A_allow_optional_init_and_stack=5Ftable_all?=
 =?utf-8?q?ocation_by_kvmalloc=28=29_=28rev2=29?=
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

Series: lib/stackdepot: allow optional init and stack_table allocation by kvmalloc() (rev2)
URL   : https://patchwork.freedesktop.org/series/95549/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
205d6c25088d lib/stackdepot: allow optional init and stack_table allocation by kvmalloc()
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
Currently, enabling CONFIG_STACKDEPOT means its stack_table will be allocated

-:197: CHECK:UNCOMMENTED_DEFINITION: DEFINE_MUTEX definition without comment
#197: FILE: lib/stackdepot.c:150:
+DEFINE_MUTEX(stack_depot_init_mutex);

-:214: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!stack_table"
#214: FILE: lib/stackdepot.c:174:
+	if (!stack_depot_disable && stack_table == NULL) {

total: 0 errors, 1 warnings, 2 checks, 152 lines checked


