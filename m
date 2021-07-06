Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 819FE3BD598
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jul 2021 14:20:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4BC589C08;
	Tue,  6 Jul 2021 12:20:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DCB1089C08;
 Tue,  6 Jul 2021 12:20:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B4F3EA0078;
 Tue,  6 Jul 2021 12:20:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "gushengxian" <gushengxian507419@gmail.com>
Date: Tue, 06 Jul 2021 12:20:44 -0000
Message-ID: <162557404471.25115.5487390642210326579@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210703072502.646239-1-gushengxian507419@gmail.com>
In-Reply-To: <20210703072502.646239-1-gushengxian507419@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_include/uapi/drm=3A_fix_spelling_mistakes_in_header_files?=
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

Series: include/uapi/drm: fix spelling mistakes in header files
URL   : https://patchwork.freedesktop.org/series/92241/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e3357f9cb249 include/uapi/drm: fix spelling mistakes in header files
-:14: WARNING:TYPO_SPELLING: 'successfuly' may be misspelled - perhaps 'successfully'?
#14: 
successfuly ==> successfully
^^^^^^^^^^^

-:17: WARNING:TYPO_SPELLING: 'automaticaly' may be misspelled - perhaps 'automatically'?
#17: 
automaticaly ==> automatically
^^^^^^^^^^^^

total: 0 errors, 2 warnings, 0 checks, 95 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
