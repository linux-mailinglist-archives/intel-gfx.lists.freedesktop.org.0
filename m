Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED3C64A726
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Dec 2022 19:34:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D367A10E281;
	Mon, 12 Dec 2022 18:34:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B3FAB10E281;
 Mon, 12 Dec 2022 18:34:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AD499A00E6;
 Mon, 12 Dec 2022 18:34:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Mon, 12 Dec 2022 18:34:13 -0000
Message-ID: <167087005367.12119.16837117734975239642@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221212161338.1007659-1-andi.shyti@linux.intel.com>
In-Reply-To: <20221212161338.1007659-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_Reset_twice?=
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

Series: drm/i915/gt: Reset twice
URL   : https://patchwork.freedesktop.org/series/111859/
State : warning

== Summary ==

Error: dim checkpatch failed
1fbbd5f0943a drm/i915/gt: Reset twice
-:46: WARNING:REPEATED_WORD: Possible repeated word: 'see'
#46: FILE: drivers/gpu/drm/i915/gt/intel_reset.c:285:
+		 * On some platforms, e.g. Jasperlake, we see see that the

-:71: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#71: FILE: drivers/gpu/drm/i915/gt/intel_reset.c:310:
+	udelay(50);

-:75: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Chris Wilson <chris@chris-wilson.co.uk>' != 'Signed-off-by: Chris Wilson <hris@chris-wilson.co.uk>'

total: 0 errors, 2 warnings, 1 checks, 52 lines checked


