Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE32086C012
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 06:10:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DA8210E37A;
	Thu, 29 Feb 2024 05:10:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CC4110E363;
 Thu, 29 Feb 2024 05:10:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_linux-next=3A_build_?=
 =?utf-8?q?failure_after_merge_of_the_kunit-next_tree?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stephen Rothwell" <sfr@canb.auug.org.au>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Feb 2024 05:10:25 -0000
Message-ID: <170918342525.375736.11074172386907001188@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240229152653.09ecf771@canb.auug.org.au>
In-Reply-To: <20240229152653.09ecf771@canb.auug.org.au>
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

Series: linux-next: build failure after merge of the kunit-next tree
URL   : https://patchwork.freedesktop.org/series/130537/
State : warning

== Summary ==

Error: dim checkpatch failed
f4534e24d7e8 linux-next: build failure after merge of the kunit-next tree
-:14: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#14: 
  191 |                                        "buddy_alloc failed with bias(%x-%x), size=%u, ps=%u\n",

-:41: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit c70703320e55 ("drm/tests/drm_buddy: add alloc_range_bias test")'
#41: 
  c70703320e55 ("drm/tests/drm_buddy: add alloc_range_bias test")

total: 1 errors, 1 warnings, 0 checks, 8 lines checked


