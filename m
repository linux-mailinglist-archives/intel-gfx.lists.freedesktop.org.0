Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE74F6BFCFF
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Mar 2023 23:03:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FF7410E155;
	Sat, 18 Mar 2023 22:03:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 23F4310E155;
 Sat, 18 Mar 2023 22:03:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 20FD0AADF0;
 Sat, 18 Mar 2023 22:03:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Sat, 18 Mar 2023 22:03:00 -0000
Message-ID: <167917698013.6191.85539065744138190@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230318203616.183765-1-andi.shyti@linux.intel.com>
In-Reply-To: <20230318203616.183765-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Some_debugfs_refactoring_and_improvements_=28rev3=29?=
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

Series: Some debugfs refactoring and improvements (rev3)
URL   : https://patchwork.freedesktop.org/series/114510/
State : warning

== Summary ==

Error: dim checkpatch failed
89ea655c4c11 drm/i915/gt: Create per-gt debugfs files
98f2b7d2ac07 drm/i915/debugfs: Enable upper layer interfaces to act on all gt's
-:7: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 82a149a62b6b ("drm/i915/gt: move remaining debugfs interfaces into gt")'
#7: 
The commit 82a149a62b6b5 ('drm/i915/gt: move remaining debugfs
interfaces into gt') moved gt-related debugfs files in the gtX/

total: 1 errors, 0 warnings, 0 checks, 60 lines checked


