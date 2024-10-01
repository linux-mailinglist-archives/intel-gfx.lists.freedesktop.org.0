Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F4098C027
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 16:35:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA27910E637;
	Tue,  1 Oct 2024 14:35:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B18E910E637;
 Tue,  1 Oct 2024 14:35:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_random=3A_Resolve_ci?=
 =?utf-8?q?rcular_include_dependency_and_include_=3Clinux/percpu=2Eh=3E_=28r?=
 =?utf-8?q?ev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uros Bizjak" <ubizjak@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 01 Oct 2024 14:35:23 -0000
Message-ID: <172779332371.1142311.9338803001513130635@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240930123702.803617-1-ubizjak@gmail.com>
In-Reply-To: <20240930123702.803617-1-ubizjak@gmail.com>
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

Series: random: Resolve circular include dependency and include <linux/percpu.h> (rev3)
URL   : https://patchwork.freedesktop.org/series/138406/
State : warning

== Summary ==

Error: dim checkpatch failed
e57f6165b8c7 x86/kaslr: Include <linux/prandom.h> instead of <linux/random.h>
3237876156b0 crypto: testmgr: Include <linux/prandom.h> instead of <linux/random.h>
185460ac514c drm/i915/selftests: Include <linux/prandom.h> instead of <linux/random.h>
9ce76e078695 drm/lib: Include <linux/prandom.h> instead of <linux/random.h>
1afda8c1ebf4 media: vivid: Include <linux/prandom.h> in vivid-vid-cap.c
38c36e7a4789 mtd: tests: Include <linux/prandom.h> instead of <linux/random.h>
0882ce108f3c fscrypt: Include <linux/once.h> in fs/crypto/keyring.c
63619fd546a3 scsi: libfcoe: Include <linux/prandom.h> instead of <linux/random.h>
e5b2e5556e7e bpf: Include <linux/prandom.h> instead of <linux/random.h>
03dc0616833b lib/interval_tree_test.c: Include <linux/prandom.h> instead of <linux/random.h>
ba0d2becb551 kunit: string-stream-test: Include <linux/prandom.h>
ef36306dff9e random32: Include <linux/prandom.h> instead of <linux/random.h>
6b0c4d72fd56 lib/rbtree-test: Include <linux/prandom.h> instead of <linux/random.h>
7c60efe55d03 bpf/tests: Include <linux/prandom.h> instead of <linux/random.h>
53c0e1c923ec lib/test_parman: Include <linux/prandom.h> instead of <linux/random.h>
a8010d7cf06e lib/test_scanf: Include <linux/prandom.h> instead of <linux/random.h>
3e30a428e452 netem: Include <linux/prandom.h> in sch_netem.c
e7b1ae03093a random: Do not include <linux/prandom.h> in <linux/random.h>
ddb345b11876 prandom: Include <linux/percpu.h> in <linux/prandom.h>
-:7: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit d9f29deb7fe8 ("prandom: Remove unused include")'
#7: 
in d9f29deb7fe8 ("prandom: Remove unused include") because

-:21: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit d9f29deb7fe8 ("prandom: Remove unused include")'
#21: 
This patch is basically a revert of d9f29deb7fe8

total: 2 errors, 0 warnings, 0 checks, 7 lines checked


