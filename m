Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C738B48D745
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 13:13:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0494310FA60;
	Thu, 13 Jan 2022 12:13:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 94E2910FA5E;
 Thu, 13 Jan 2022 12:13:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 90731A008A;
 Thu, 13 Jan 2022 12:13:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 13 Jan 2022 12:13:36 -0000
Message-ID: <164207601658.19001.10474180192284118045@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1642072583.git.jani.nikula@intel.com>
In-Reply-To: <cover.1642072583.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/opregion=3A_fixes_and_cleanups?=
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

Series: drm/i915/opregion: fixes and cleanups
URL   : https://patchwork.freedesktop.org/series/98836/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
47685d212d83 drm/i915/opregion: check port number bounds for SWSCI display power state
e97c1b58c9e7 drm/i915/opregion: abstract the check for valid swsci function
80f4e243d899 drm/i915/opregion: early exit from encoder notify if SWSCI isn't there
ce14222cfad0 drm/i915/opregion: handle SWSCI Mailbox #2 obsoletion
42015ca38464 drm/i915/opregion: debug log about Mailbox #2 for backlight
-:39: WARNING:BRACES: braces {} are not necessary for single statement blocks
#39: FILE: drivers/gpu/drm/i915/display/intel_opregion.c:961:
+	if (mboxes & MBOX_BACKLIGHT) {
+		drm_dbg(&dev_priv->drm, "Mailbox #2 for backlight present\n");
+	}

total: 0 errors, 1 warnings, 0 checks, 25 lines checked


