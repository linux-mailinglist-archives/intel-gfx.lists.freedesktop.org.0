Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6D330CA44
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 19:44:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A124B6E98C;
	Tue,  2 Feb 2021 18:44:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 47D6E89F9F;
 Tue,  2 Feb 2021 18:44:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3F385A363B;
 Tue,  2 Feb 2021 18:44:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 02 Feb 2021 18:44:38 -0000
Message-ID: <161229147825.19548.9320754813505658840@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210202162444.25823-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210202162444.25823-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Revert_=22ALSA=3A_jack=3A_implement_software_jack_injection?=
 =?utf-8?q?_via_debugfs=22?=
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

Series: Revert "ALSA: jack: implement software jack injection via debugfs"
URL   : https://patchwork.freedesktop.org/series/86590/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6adf76b93ea8 Revert "ALSA: jack: implement software jack injection via debugfs"
-:10: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:19: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#19: 
deleted file mode 100644

-:643: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#643: FILE: sound/core/jack.c:352:
+		snd_kctl_jack_report(jack->card, jack_kctl->kctl,
+					    status & jack_kctl->mask_bits);

-:709: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 2 warnings, 1 checks, 480 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
