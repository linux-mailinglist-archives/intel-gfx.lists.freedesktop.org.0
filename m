Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E87F2B8400
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Nov 2020 19:43:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4EF66E428;
	Wed, 18 Nov 2020 18:43:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 54308898FA;
 Wed, 18 Nov 2020 18:43:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4C7B1A47E8;
 Wed, 18 Nov 2020 18:43:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 18 Nov 2020 18:43:53 -0000
Message-ID: <160572503329.24804.9208919784952794537@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201118165320.26829-1-jani.nikula@intel.com>
In-Reply-To: <20201118165320.26829-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/6=5D_relay=3A_allow_the_use_of_co?=
 =?utf-8?q?nst_callback_structs?=
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

Series: series starting with [1/6] relay: allow the use of const callback structs
URL   : https://patchwork.freedesktop.org/series/84030/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
76e9bf02701b relay: allow the use of const callback structs
-:235: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRUSR' are not preferred. Consider using octal permissions '0400'.
#235: FILE: kernel/relay.c:439:
+				    S_IRUSR, buf, &chan->is_global);

-:247: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRUSR' are not preferred. Consider using octal permissions '0400'.
#247: FILE: kernel/relay.c:473:
+					    S_IRUSR, buf, &chan->is_global);

total: 0 errors, 2 warnings, 0 checks, 267 lines checked
25fce26c36a2 drm/i915: make relay callbacks const
e087a43fd799 ath10k: make relay callbacks const
bd0a1edfcd78 ath11k: make relay callbacks const
ae80849da1c9 ath9k: make relay callbacks const
ac95f490fbc0 blktrace: make relay callbacks const


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
