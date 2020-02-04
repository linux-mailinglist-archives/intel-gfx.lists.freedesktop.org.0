Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E51315203B
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 19:12:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 411486E8B0;
	Tue,  4 Feb 2020 18:12:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1FE7E6E899;
 Tue,  4 Feb 2020 18:12:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 196A5A00C7;
 Tue,  4 Feb 2020 18:12:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Igor Druzhinin" <igor.druzhinin@citrix.com>
Date: Tue, 04 Feb 2020 18:12:08 -0000
Message-ID: <158083992808.25089.9019383029950230708@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1580742421-25194-1-git-send-email-igor.druzhinin@citrix.com>
In-Reply-To: <1580742421-25194-1-git-send-email-igor.druzhinin@citrix.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gvt=3A_more_locking_for_ppgtt_mm_LRU_list?=
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

Series: drm/i915/gvt: more locking for ppgtt mm LRU list
URL   : https://patchwork.freedesktop.org/series/72927/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5eeb11aab588 drm/i915/gvt: more locking for ppgtt mm LRU list
-:6: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 72aabfb862e4 ("drm/i915/gvt: Add mutual lock for ppgtt mm LRU list")'
#6: 
When the lock was introduced in 72aabfb862e40 ("drm/i915/gvt: Add mutual

total: 1 errors, 0 warnings, 0 checks, 11 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
