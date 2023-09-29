Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A09207B2D4A
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 09:55:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2793710E6C9;
	Fri, 29 Sep 2023 07:55:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8C8F810E0E8;
 Fri, 29 Sep 2023 07:55:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 84BFEAADE1;
 Fri, 29 Sep 2023 07:55:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mathias Krause" <minipli@grsecurity.net>
Date: Fri, 29 Sep 2023 07:55:36 -0000
Message-ID: <169597413651.19499.7971861765318959016@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230928182019.10256-1-minipli@grsecurity.net>
In-Reply-To: <20230928182019.10256-1-minipli@grsecurity.net>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_fix_rb-tree/llist/list_confusion_=28rev3=29?=
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

Series: drm/i915: fix rb-tree/llist/list confusion (rev3)
URL   : https://patchwork.freedesktop.org/series/123282/
State : warning

== Summary ==

Error: dim checkpatch failed
c3b39f18415f drm/i915: Register engines early to avoid type confusion
-:40: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'sanitiy checks in grsecurity'
#40: 
Reported-by: sanitiy checks in grsecurity

-:40: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#40: 
Reported-by: sanitiy checks in grsecurity
Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

total: 1 errors, 1 warnings, 0 checks, 21 lines checked
98d774df0320 drm/i915: Clarify type evolution of uabi_node/uabi_engines


