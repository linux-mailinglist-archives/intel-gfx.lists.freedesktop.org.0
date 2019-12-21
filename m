Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6F212869F
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Dec 2019 03:32:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1673B6E41F;
	Sat, 21 Dec 2019 02:32:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 980A16E41F;
 Sat, 21 Dec 2019 02:32:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8F5CBA0073;
 Sat, 21 Dec 2019 02:32:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Sat, 21 Dec 2019 02:32:01 -0000
Message-ID: <157689552156.32690.1636480429039939502@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191221020109.27871-1-manasi.d.navare@intel.com>
In-Reply-To: <20191221020109.27871-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915_Fixes_for_8K_tiled_displays?=
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

Series: i915 Fixes for 8K tiled displays
URL   : https://patchwork.freedesktop.org/series/71235/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b90df2468d1d drm/915/display: Prepare for fastset external dependencies check
94f17ada3b67 drm/i915/dp: Make sure all tiled connectors get added to the state with full modeset
820e2f97a5cb drm/i915/dp: Make port sync mode assignments only if all tiles present
-:244: CHECK:LINE_SPACING: Please don't use multiple blank lines
#244: FILE: drivers/gpu/drm/i915/display/intel_display.c:12778:
 
+

total: 0 errors, 0 warnings, 1 checks, 241 lines checked
97197e6a3f19 drm/i915/dp: Disable Port sync mode correctly on teardown

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
