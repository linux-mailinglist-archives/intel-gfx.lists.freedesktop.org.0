Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4AE01C339B
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 09:28:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC4616E1C4;
	Mon,  4 May 2020 07:28:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C4A2C6E1C4;
 Mon,  4 May 2020 07:28:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BDFBBA011B;
 Mon,  4 May 2020 07:28:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sultan Alsawaf" <sultan@kerneltoast.com>
Date: Mon, 04 May 2020 07:28:21 -0000
Message-ID: <158857730174.5818.16089404293983523532@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200430214654.51314-1-sultan@kerneltoast.com>
In-Reply-To: <20200430214654.51314-1-sultan@kerneltoast.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Don=27t_enable_WaIncreaseLatencyIPCEnabled_when?=
 =?utf-8?q?_IPC_is_disabled?=
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

Series: drm/i915: Don't enable WaIncreaseLatencyIPCEnabled when IPC is disabled
URL   : https://patchwork.freedesktop.org/series/76889/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7839d28f2393 drm/i915: Don't enable WaIncreaseLatencyIPCEnabled when IPC is disabled
-:7: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 5a7d202b1574 ("drm/i915: Drop WaIncreaseLatencyIPCEnabled/1140 for cnl")'
#7: 
In commit 5a7d202b1574, a logical AND was erroneously changed to an OR,

total: 1 errors, 0 warnings, 0 checks, 8 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
