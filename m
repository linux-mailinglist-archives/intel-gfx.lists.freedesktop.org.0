Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCE631DA4C
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 14:24:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 659296E52E;
	Wed, 17 Feb 2021 13:24:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9B2636E52E;
 Wed, 17 Feb 2021 13:24:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9577FA8831;
 Wed, 17 Feb 2021 13:24:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nathan Chancellor" <nathan@kernel.org>
Date: Wed, 17 Feb 2021 13:24:12 -0000
Message-ID: <161356825260.25001.10410005804339594965@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210216212953.24458-1-nathan@kernel.org>
In-Reply-To: <20210216212953.24458-1-nathan@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Enable_-Wuninitialized?=
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

Series: drm/i915: Enable -Wuninitialized
URL   : https://patchwork.freedesktop.org/series/87153/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a32effc3aaeb drm/i915: Enable -Wuninitialized
-:20: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#20: 
References: 2ea4a7ba9bf6 ("drm/i915/gt: Avoid uninitialized use of rpcurupei in frequency_show")

-:20: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 2ea4a7ba9bf6 ("drm/i915/gt: Avoid uninitialized use of rpcurupei in frequency_show")'
#20: 
References: 2ea4a7ba9bf6 ("drm/i915/gt: Avoid uninitialized use of rpcurupei in frequency_show")

-:21: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 2034c2129bc4 ("drm/i915/display: Ensure that ret is always initialized in icl_combo_phy_verify_state")'
#21: 
References: 2034c2129bc4 ("drm/i915/display: Ensure that ret is always initialized in icl_combo_phy_verify_state")

total: 2 errors, 1 warnings, 0 checks, 7 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
