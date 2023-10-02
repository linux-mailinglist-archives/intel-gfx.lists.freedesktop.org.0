Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC897B5AAB
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 21:02:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18408891AA;
	Mon,  2 Oct 2023 19:02:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2D777891AA;
 Mon,  2 Oct 2023 19:02:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 26D4DA7DFB;
 Mon,  2 Oct 2023 19:02:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mathias Krause" <minipli@grsecurity.net>
Date: Mon, 02 Oct 2023 19:02:03 -0000
Message-ID: <169627332313.3204.2442626871222429759@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230928182019.10256-1-minipli@grsecurity.net>
In-Reply-To: <20230928182019.10256-1-minipli@grsecurity.net>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_fix_rb-tree/llist/list_confusion_=28rev4=29?=
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

Series: drm/i915: fix rb-tree/llist/list confusion (rev4)
URL   : https://patchwork.freedesktop.org/series/123282/
State : warning

== Summary ==

Error: dim checkpatch failed
1a14c2ee81d7 drm/i915: Register engines early to avoid type confusion
-:40: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'sanitiy checks in grsecurity'
#40: 
Reported-by: sanitiy checks in grsecurity

-:40: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#40: 
Reported-by: sanitiy checks in grsecurity
Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

total: 1 errors, 1 warnings, 0 checks, 21 lines checked
140884d6443c drm/i915: Clarify type evolution of uabi_node/uabi_engines


