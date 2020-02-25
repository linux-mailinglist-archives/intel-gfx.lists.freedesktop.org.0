Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0452C16C2AE
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 14:46:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EBE26EABF;
	Tue, 25 Feb 2020 13:46:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 173766EAC6;
 Tue, 25 Feb 2020 13:46:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 10A7DA47E2;
 Tue, 25 Feb 2020 13:46:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 25 Feb 2020 13:46:29 -0000
Message-ID: <158263838906.5725.16834728300704959762@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200225115024.2386811-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200225115024.2386811-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_avoid_spurious_EBUSY_due_to_nonblocking_atomic_modes?=
 =?utf-8?q?ets_=28rev3=29?=
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

Series: drm: avoid spurious EBUSY due to nonblocking atomic modesets (rev3)
URL   : https://patchwork.freedesktop.org/series/45968/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fa89a2596808 drm: avoid spurious EBUSY due to nonblocking atomic modesets
-:35: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#35: 
References: https://lists.freedesktop.org/archives/dri-devel/2018-July/182281.html

-:52: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#52: FILE: drivers/gpu/drm/drm_atomic.c:1365:
+	unsigned requested_crtc = 0;

-:53: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#53: FILE: drivers/gpu/drm/drm_atomic.c:1366:
+	unsigned affected_crtc = 0;

-:93: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 4 warnings, 0 checks, 46 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
