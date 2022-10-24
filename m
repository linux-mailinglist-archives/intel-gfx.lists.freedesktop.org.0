Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEEF660B469
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 19:42:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDF2E10E55F;
	Mon, 24 Oct 2022 17:42:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ACEE510E55F;
 Mon, 24 Oct 2022 17:42:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6DC59AA0EA;
 Mon, 24 Oct 2022 17:42:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mel Gorman" <mgorman@techsingularity.net>
Date: Mon, 24 Oct 2022 17:42:43 -0000
Message-ID: <166663336342.3427.2195644734444888188@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221024143433.4149839-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20221024143433.4149839-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_mm/huge=5Fmemory=3A_do_not_clobber_swp=5Fentry=5Ft_during_T?=
 =?utf-8?q?HP_split_=28rev2=29?=
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

Series: mm/huge_memory: do not clobber swp_entry_t during THP split (rev2)
URL   : https://patchwork.freedesktop.org/series/110061/
State : warning

== Summary ==

Error: dim checkpatch failed
ddb160aab750 mm/huge_memory: do not clobber swp_entry_t during THP split
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
> With 6.1-rc2 we started hitting the WARN_ON added in 71e2d666ef85 ("mm/huge_memory: do not clobber swp_entry_t during THP split") in i915 automated CI:

-:10: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 71e2d666ef85 ("mm/huge_memory: do not clobber swp_entry_t during THP split")'
#10: 
> With 6.1-rc2 we started hitting the WARN_ON added in 71e2d666ef85 ("mm/huge_memory: do not clobber swp_entry_t during THP split") in i915 automated CI:

-:13: WARNING:REPEATED_WORD: Possible repeated word: 'pages'
#13: 
Thanks for the report. As shmem pages pages are allocated via vma_alloc_folio

total: 1 errors, 2 warnings, 0 checks, 15 lines checked


