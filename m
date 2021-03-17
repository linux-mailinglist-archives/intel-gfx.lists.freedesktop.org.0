Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A70F533E7AC
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Mar 2021 04:35:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 675696E4AB;
	Wed, 17 Mar 2021 03:34:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 03B126E0C5;
 Wed, 17 Mar 2021 03:34:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F012FA41FB;
 Wed, 17 Mar 2021 03:34:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stephen Rothwell" <sfr@canb.auug.org.au>
Date: Wed, 17 Mar 2021 03:34:57 -0000
Message-ID: <161595209795.17368.12540266890550268036@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210317140824.0a28ffec@canb.auug.org.au>
In-Reply-To: <20210317140824.0a28ffec@canb.auug.org.au>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_linux-next=3A_manual_merge_of_the_drm-intel_tree_with_the_d?=
 =?utf-8?q?rm_tree?=
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

Series: linux-next: manual merge of the drm-intel tree with the drm tree
URL   : https://patchwork.freedesktop.org/series/88033/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6193c9b6da03 linux-next: manual merge of the drm-intel tree with the drm tree
-:15: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 92f1d09ca4ed ("drm: Switch to %p4cc format modifier")'
#15: 
  92f1d09ca4ed ("drm: Switch to %p4cc format modifier")

-:19: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 46d12f911821 ("drm/i915: migrate skl planes code new file (v5)")'
#19: 
  46d12f911821 ("drm/i915: migrate skl planes code new file (v5)")

total: 2 errors, 0 warnings, 0 checks, 18 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
