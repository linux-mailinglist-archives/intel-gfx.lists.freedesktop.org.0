Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A52674F52A9
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 05:01:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA9F310EC61;
	Wed,  6 Apr 2022 03:01:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6CC7310EC60;
 Wed,  6 Apr 2022 03:01:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 69CF7AA01E;
 Wed,  6 Apr 2022 03:01:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stephen Rothwell" <sfr@canb.auug.org.au>
Date: Wed, 06 Apr 2022 03:01:07 -0000
Message-ID: <164921406742.5452.4785388720595477379@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220406105049.5f5e01c1@canb.auug.org.au>
In-Reply-To: <20220406105049.5f5e01c1@canb.auug.org.au>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_linux-next=3A_build_failure_after_merge_of_the_drm-misc_tre?=
 =?utf-8?q?e?=
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

Series: linux-next: build failure after merge of the drm-misc tree
URL   : https://patchwork.freedesktop.org/series/102234/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e9f5f04870a7 linux-next: build failure after merge of the drm-misc tree
-:18: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#18: 
  49956b505c53 ("drm/panel: Add panel driver for NewVision NV3052C based LCDs")

-:18: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 49956b505c53 ("drm/panel: Add panel driver for NewVision NV3052C based LCDs")'
#18: 
  49956b505c53 ("drm/panel: Add panel driver for NewVision NV3052C based LCDs")

-:22: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 2cbfa2128662 ("spi: make remove callback a void function")'
#22: 
  2cbfa2128662 ("spi: make remove callback a void function")

total: 2 errors, 1 warnings, 0 checks, 16 lines checked


