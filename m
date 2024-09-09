Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFDE97226C
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 21:15:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73E8410E661;
	Mon,  9 Sep 2024 19:15:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 821C710E661;
 Mon,  9 Sep 2024 19:15:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_random=3A_Resolve_ci?=
 =?utf-8?q?rcular_include_dependency_and_include_=3Clinux/percpu=2Eh=3E_=28r?=
 =?utf-8?q?ev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uros Bizjak" <ubizjak@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 09 Sep 2024 19:15:06 -0000
Message-ID: <172590930652.977951.9417002413683660376@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240909070742.75425-1-ubizjak@gmail.com>
In-Reply-To: <20240909070742.75425-1-ubizjak@gmail.com>
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

Series: random: Resolve circular include dependency and include <linux/percpu.h> (rev2)
URL   : https://patchwork.freedesktop.org/series/138406/
State : warning

== Summary ==

Error: dim checkpatch failed
6974330fce51 x86/kaslr: Include <linux/prandom.h> instead of <linux/random.h>
e459471f46b5 crypto: testmgr: Include <linux/prandom.h> instead of <linux/random.h>
57cf0d24140f drm/i915/selftests: Include <linux/prandom.h> instead of <linux/random.h>
d85498e92c07 drm/lib: Include <linux/prandom.h> instead of <linux/random.h>
ddad7f03246b media: vivid: Include <linux/prandom.h> in vivid-vid-cap.c
3f38aa14caa6 mtd: tests: Include <linux/prandom.h> instead of <linux/random.h>
59f0b9e5cfdf fscrypt: Include <linux/once.h> in fs/crypto/keyring.c
b7b56a600a8a scsi: libfcoe: Include <linux/prandom.h> instead of <linux/random.h>
f52b8807a83a bpf: Include <linux/prandom.h> instead of <linux/random.h>
e23ef0db9490 lib/interval_tree_test.c: Include <linux/prandom.h> instead of <linux/random.h>
ab89d6e351ca kunit: string-stream-test: Include <linux/prandom.h> instead of <linux/random.h>
3764a4b7582a random32: Include <linux/prandom.h> instead of <linux/random.h>
25a1ccd46da4 lib/rbtree-test: Include <linux/prandom.h> instead of <linux/random.h>
63ebeb1c5b33 bpf/tests: Include <linux/prandom.h> instead of <linux/random.h>
1a17356d6397 lib/test_parman: Include <linux/prandom.h> instead of <linux/random.h>
9ae5ba65a82f lib/test_scanf: Include <linux/prandom.h> instead of <linux/random.h>
d467a79c51b6 netem: Include <linux/prandom.h> in sch_netem.c
bbcf3f3902c6 random: Do not include <linux/prandom.h> in <linux/random.h>
32a501f7ba32 prandom: Include <linux/percpu.h> in <linux/prandom.h>
-:7: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit d9f29deb7fe8 ("prandom: Remove unused include")'
#7: 
in d9f29deb7fe8 ("prandom: Remove unused include") because

-:21: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit d9f29deb7fe8 ("prandom: Remove unused include")'
#21: 
This patch is basically a revert of d9f29deb7fe8

total: 2 errors, 0 warnings, 0 checks, 7 lines checked


