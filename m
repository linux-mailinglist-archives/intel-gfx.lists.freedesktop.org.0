Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1C91E08D4
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2020 10:30:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B6D889B9F;
	Mon, 25 May 2020 08:30:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CDAD089B8F;
 Mon, 25 May 2020 08:30:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C7196A47E8;
 Mon, 25 May 2020 08:30:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 25 May 2020 08:30:25 -0000
Message-ID: <159039542581.4526.13710912545818515536@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200525080731.2244-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200525080731.2244-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Revert_CDCLK_changes_to_unbreak_geminilake?=
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

Series: drm/i915: Revert CDCLK changes to unbreak geminilake
URL   : https://patchwork.freedesktop.org/series/77628/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c692f23a099e drm/i915: Revert CDCLK changes to unbreak geminilake
-:10: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit cac91e671ad5 ("drm/i915: Fix includes and local vars order")'
#10: 
cac91e671ad5 ("drm/i915: Fix includes and local vars order")

-:11: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 82ea174dc542 ("drm/i915: Remove unneeded hack now for CDCLK")'
#11: 
82ea174dc542 ("drm/i915: Remove unneeded hack now for CDCLK")

-:12: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit cd1915460861 ("drm/i915: Adjust CDCLK accordingly to our DBuf bw needs")'
#12: 
cd1915460861 ("drm/i915: Adjust CDCLK accordingly to our DBuf bw needs")

-:497: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 4 errors, 0 warnings, 0 checks, 431 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
