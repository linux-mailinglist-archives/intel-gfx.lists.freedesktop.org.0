Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14976289BF6
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Oct 2020 00:57:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1908E6EE50;
	Fri,  9 Oct 2020 22:56:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 11CD56EE4F;
 Fri,  9 Oct 2020 22:56:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 094C9A0019;
 Fri,  9 Oct 2020 22:56:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "tip-bot2 for Thomas Gleixner" <tip-bot2@linutronix.de>
Date: Fri, 09 Oct 2020 22:56:58 -0000
Message-ID: <160228421800.1825.16384460014166276369@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <160226288395.7002.10138923121624324637.tip-bot2@tip-bot2>
In-Reply-To: <160226288395.7002.10138923121624324637.tip-bot2@tip-bot2>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Cleanup_PREEMPT=5FCOUNT_leftovers?=
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

Series: drm/i915: Cleanup PREEMPT_COUNT leftovers
URL   : https://patchwork.freedesktop.org/series/82529/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b575fedacceb drm/i915: Cleanup PREEMPT_COUNT leftovers
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit fatal: bad o ("e96e7a5244bbadaa1")'
#8: 
Commit-ID:     5d35c1c982ffaaccd1ec974e96e7a5244bbadaa1

-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
Gitweb:        https://git.kernel.org/tip/5d35c1c982ffaaccd1ec974e96e7a5244bbadaa1

-:55: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'tip-bot2 for Thomas Gleixner <tip-bot2@linutronix.de>'

total: 1 errors, 2 warnings, 0 checks, 16 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
