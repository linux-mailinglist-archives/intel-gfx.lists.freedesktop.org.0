Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C22F1ED432
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 18:24:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DC5689CDE;
	Wed,  3 Jun 2020 16:24:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9BD5B89CBC;
 Wed,  3 Jun 2020 16:24:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 956E2A47E8;
 Wed,  3 Jun 2020 16:24:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 03 Jun 2020 16:24:07 -0000
Message-ID: <159120144760.12265.1909503251791691921@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200603145529.3851-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200603145529.3851-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Restore_=2208fff7aeddc9_=28=22drm/i915/tgl=3A_Wa=5F16071383?=
 =?utf-8?b?NDAiKSAocmV2Mik=?=
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

Series: Restore "08fff7aeddc9 ("drm/i915/tgl: Wa_1607138340") (rev2)
URL   : https://patchwork.freedesktop.org/series/77959/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
86cd48e787fe Restore "08fff7aeddc9 ("drm/i915/tgl: Wa_1607138340")
-:6: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 08fff7aeddc9 ("drm/i915/tgl: Wa_1607138340")'
#6: 
This restores 08fff7aeddc9 ("drm/i915/tgl: Wa_1607138340") by reverting

-:7: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 921f0c47f228 ("drm/i915: Revert "drm/i915/tgl: Wa_1607138340"")'
#7: 
commit 921f0c47f228 ("drm/i915: Revert "drm/i915/tgl: Wa_1607138340"").

-:16: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 08fff7aeddc9 ("drm/i915/tgl: Wa_1607138340")'
#16: 
References: 08fff7aeddc9 ("drm/i915/tgl: Wa_1607138340")

total: 3 errors, 0 warnings, 0 checks, 10 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
