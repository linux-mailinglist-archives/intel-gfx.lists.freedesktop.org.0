Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0393611A439
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 06:58:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 379516EA70;
	Wed, 11 Dec 2019 05:57:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4FF1A6EA70;
 Wed, 11 Dec 2019 05:57:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 47A81A47DF;
 Wed, 11 Dec 2019 05:57:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Wed, 11 Dec 2019 05:57:57 -0000
Message-ID: <157604387728.30689.6097119285656120951@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191210223238.12022-1-manasi.d.navare@intel.com>
In-Reply-To: <20191210223238.12022-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_DRM_and_i915_fixes_to_handle_hotplug/unplug_for_8K_tiled_di?=
 =?utf-8?q?splays?=
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

Series: DRM and i915 fixes to handle hotplug/unplug for 8K tiled displays
URL   : https://patchwork.freedesktop.org/series/70722/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e95624b467dd drm: Handle connector tile support only for modes that match tile size
26cd16d87f13 drm/fbdev: Fallback to non tiled mode if all tiles not present
-:26: WARNING:TYPO_SPELLING: 'Chcek' may be misspelled - perhaps 'Check'?
#26: 
* Chcek Num tiled conns that are connected (Manasi)

total: 0 errors, 1 warnings, 0 checks, 110 lines checked
09aa086f5c07 drm/i915/dp: Make sure all tiled connectors get added to the state with full modeset
-:84: CHECK:BRACES: braces {} should be used on all arms of this statement
#84: FILE: drivers/gpu/drm/i915/display/intel_display.c:14124:
+		if (connector_state->crtc &&
[...]
+		} else
[...]

-:92: CHECK:BRACES: Unbalanced braces around else statement
#92: FILE: drivers/gpu/drm/i915/display/intel_display.c:14132:
+		} else

total: 0 errors, 0 warnings, 2 checks, 90 lines checked
4d39ec6004ef drm/i915/dp: Make port sync mode assignments only if all tiles present
bc6fd5c9dfe5 drm/i915/dp: Disable Port sync mode correctly on teardown

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
