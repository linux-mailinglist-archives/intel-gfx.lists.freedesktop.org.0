Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E15B517C663
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 20:40:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98C086ED57;
	Fri,  6 Mar 2020 19:40:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E68C26ED57;
 Fri,  6 Mar 2020 19:40:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DBD63A363D;
 Fri,  6 Mar 2020 19:40:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Karthik B S" <karthik.b.s@intel.com>
Date: Fri, 06 Mar 2020 19:40:38 -0000
Message-ID: <158352363887.3083.1165232856681221728@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200306113927.16904-1-karthik.b.s@intel.com>
In-Reply-To: <20200306113927.16904-1-karthik.b.s@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Asynchronous_flip_implementation_for_i915?=
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

Series: Asynchronous flip implementation for i915
URL   : https://patchwork.freedesktop.org/series/74386/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
acc147186833 drm/i915: Define flip done functions and enable IER
-:41: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#41: FILE: drivers/gpu/drm/i915/i915_irq.c:2658:
+
+}

-:50: CHECK:LINE_SPACING: Please don't use multiple blank lines
#50: FILE: drivers/gpu/drm/i915/i915_irq.c:2720:
 
+

total: 0 errors, 0 warnings, 2 checks, 68 lines checked
e1403132835c drm/i915: Add support for async flips in I915
95f6839ee4fc drm/i915: Make commit call blocking in case of async flips
ea0c09f4b01b drm/i915: Add checks specific to async flips
6d21dd58995a drm/i915: Add flip_done_handler definition
de25734fbcdc drm/i915: Enable and handle flip done interrupt
2eafb08e7a12 drm/i915: Do not call drm_crtc_arm_vblank_event in async flips

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
