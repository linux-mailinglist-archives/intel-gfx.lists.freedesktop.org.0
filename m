Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 368A211C2C2
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 02:53:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DDC66EC2F;
	Thu, 12 Dec 2019 01:53:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 85C266EC2F;
 Thu, 12 Dec 2019 01:53:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7C037A0091;
 Thu, 12 Dec 2019 01:53:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Thu, 12 Dec 2019 01:53:36 -0000
Message-ID: <157611561648.32010.7704249659182621888@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191211211425.17821-1-manasi.d.navare@intel.com>
In-Reply-To: <20191211211425.17821-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915_fixes_to_handle_hotplug_cases_on_8K_tiled_monitor?=
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

Series: i915 fixes to handle hotplug cases on 8K tiled monitor
URL   : https://patchwork.freedesktop.org/series/70788/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8279f374e563 drm/i915/dp: Make sure all tiled connectors get added to the state with full modeset
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
4fe2b74a1644 drm/i915/dp: Make port sync mode assignments only if all tiles present
58e4b57a23e0 drm/i915/dp: Disable Port sync mode correctly on teardown

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
