Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F69E152489
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 02:42:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13C9F6F433;
	Wed,  5 Feb 2020 01:42:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 816226F433;
 Wed,  5 Feb 2020 01:42:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7A1DBA0094;
 Wed,  5 Feb 2020 01:42:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 05 Feb 2020 01:42:54 -0000
Message-ID: <158086697447.17318.15955129881375000774@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1580823606.git.jani.nikula@intel.com>
In-Reply-To: <cover.1580823606.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_modeset_probe/remove_cleanup=2C_again?=
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

Series: drm/i915: modeset probe/remove cleanup, again
URL   : https://patchwork.freedesktop.org/series/72967/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
bfd1d4acd77e drm/i915: register vga switcheroo later, unregister earlier
f9cd0e2c9313 drm/i915: switch i915_driver_probe() to use i915 local variable
ec3d44fffd64 drm/i915: split intel_modeset_driver_remove() to pre/post irq uninstall
897afb1a1a69 drm/i915: split i915_driver_modeset_remove() to pre/post irq uninstall
99a2a2e57bc4 drm/i915: split i915_driver_modeset_probe() to pre/post irq install
195344732323 drm/i915: split intel_modeset_init() to pre/post irq install
51b9df678a38 drm/i915: split intel_modeset_init() pre/post gem init
746a03a7f5f5 drm/i915: move more display related probe/remove stuff to display
3d71c701f713 drm/i915: remove the now redundant i915_driver_modeset_* call layer
-:96: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#96: FILE: drivers/gpu/drm/i915/i915_drv.c:1462:
+	 * working irqs for e.g. gmbus and dp aux transfers. */

total: 0 errors, 1 warnings, 0 checks, 111 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
