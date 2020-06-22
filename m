Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 510CE2034A7
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 12:17:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90E936E255;
	Mon, 22 Jun 2020 10:17:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C9FC36E25E;
 Mon, 22 Jun 2020 10:17:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B600FA0BA8;
 Mon, 22 Jun 2020 10:17:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bhanuprakash Modem" <bhanuprakash.modem@intel.com>
Date: Mon, 22 Jun 2020 10:17:34 -0000
Message-ID: <159282105471.9207.891544069521529567@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200622142519.16214-1-bhanuprakash.modem@intel.com>
In-Reply-To: <20200622142519.16214-1-bhanuprakash.modem@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_VRR_capable_attach_prop_in_i915=2C_VRR_debugfs?=
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

Series: VRR capable attach prop in i915, VRR debugfs
URL   : https://patchwork.freedesktop.org/series/78670/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
383b031f7157 drm/i915/dp: Attach and set drm connector VRR property
5d20cfadedc4 drm/debug: Expose connector VRR monitor range via debugfs
-:38: WARNING:TYPO_SPELLING: 'Seperate' may be misspelled - perhaps 'Separate'?
#38: 
* Seperate patch for removal of AMD specific logic (Manasi)

-:82: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
#82: FILE: drivers/gpu/drm/drm_debugfs.c:436:
+	debugfs_create_file("vrr_range", S_IRUGO, root, connector,

total: 0 errors, 2 warnings, 0 checks, 34 lines checked
6206d3194afb Revert "drm/amd/display: Expose connector VRR range via debugfs"

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
