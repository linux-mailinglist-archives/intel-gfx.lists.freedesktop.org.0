Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B3E6189A9
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 21:39:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B555110E03C;
	Thu,  3 Nov 2022 20:39:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2CB6710E03C;
 Thu,  3 Nov 2022 20:39:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2471AAADDC;
 Thu,  3 Nov 2022 20:39:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mauro Carvalho Chehab" <mauro.chehab@linux.intel.com>
Date: Thu, 03 Nov 2022 20:39:31 -0000
Message-ID: <166750797111.9191.17782485450686405899@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221103162302.4ba62d72@maurocar-mobl2>
In-Reply-To: <20221103162302.4ba62d72@maurocar-mobl2>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_KUnit_issues_-_Was=3A_=5Bigt-dev=5D_=5BPATCH_RFC_v2_8/8=5D_?=
 =?utf-8?q?drm/i915=3A_check_if_current-=3Emm_is_not_NULL?=
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

Series: KUnit issues - Was: [igt-dev] [PATCH RFC v2 8/8] drm/i915: check if current->mm is not NULL
URL   : https://patchwork.freedesktop.org/series/110492/
State : warning

== Summary ==

Error: dim checkpatch failed
68f3d9527a29 KUnit issues - Was: [igt-dev] [PATCH RFC v2 8/8] drm/i915: check if current->mm is not NULL
-:78: WARNING:BAD_SIGN_OFF: Use a single space after To:
#78: 
To:

-:78: ERROR:BAD_SIGN_OFF: Unrecognized email address: ''
#78: 
To:

-:80: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#80: 
Subject: [igt-dev] [PATCH RFC v2 8/8] drm/i915: check if current->mm is not NULL

-:125: WARNING:TYPO_SPELLING: 'an user' may be misspelled - perhaps 'a user'?
#125: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:1849:
+		pr_err("Test called without an user context!\n");
 		                            ^^^^^^^

total: 1 errors, 3 warnings, 0 checks, 10 lines checked


