Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A14793DD70F
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Aug 2021 15:28:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51E706E0E5;
	Mon,  2 Aug 2021 13:28:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 40C116E0E5;
 Mon,  2 Aug 2021 13:28:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 397D5A73C7;
 Mon,  2 Aug 2021 13:28:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Desmond Cheong Zhi Xi" <desmondcheongzx@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 02 Aug 2021 13:28:47 -0000
Message-ID: <162791092721.3902.10714610190952381857@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210802105957.77692-1-desmondcheongzx@gmail.com>
In-Reply-To: <20210802105957.77692-1-desmondcheongzx@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_locking/lockdep=2C_drm=3A_apply_new_lockdep_assert_in_drm?=
 =?utf-8?q?=5Fauth=2Ec?=
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

Series: locking/lockdep, drm: apply new lockdep assert in drm_auth.c
URL   : https://patchwork.freedesktop.org/series/93304/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
60bc4f495a48 locking/lockdep: Provide lockdep_assert{, _once}() helpers
-:30: WARNING:SINGLE_STATEMENT_DO_WHILE_MACRO: Single statement macros should not use a do {} while (0) loop
#30: FILE: include/linux/lockdep.h:309:
+#define lockdep_assert(cond)		\
+	do { WARN_ON(debug_locks && !(cond)); } while (0)

-:37: WARNING:SINGLE_STATEMENT_DO_WHILE_MACRO: Single statement macros should not use a do {} while (0) loop
#37: FILE: include/linux/lockdep.h:312:
+#define lockdep_assert_once(cond)	\
+	do { WARN_ON_ONCE(debug_locks && !(cond)); } while (0)

-:81: CHECK:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email comments mismatch: 'From: Peter Zijlstra <peterz@infradead.org>' != 'Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>'

total: 0 errors, 2 warnings, 1 checks, 58 lines checked
e5ac42473801 drm: add lockdep assert to drm_is_current_master_locked


