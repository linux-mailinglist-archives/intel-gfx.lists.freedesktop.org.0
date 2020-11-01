Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0102A20AD
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Nov 2020 19:05:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E9CD6EB56;
	Sun,  1 Nov 2020 18:05:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E67B36EB55;
 Sun,  1 Nov 2020 18:05:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DA78BA47E9;
 Sun,  1 Nov 2020 18:05:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: rwright@hpe.com
Date: Sun, 01 Nov 2020 18:05:01 -0000
Message-ID: <160425390186.4896.12782909892015297772@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201101174132.10513-1-rwright@hpe.com>
In-Reply-To: <20201101174132.10513-1-rwright@hpe.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Reduce_context_clear_batch_size_to_avoid_gpu_hang_=28rev2?=
 =?utf-8?q?=29?=
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

Series: Reduce context clear batch size to avoid gpu hang (rev2)
URL   : https://patchwork.freedesktop.org/series/83306/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c2bab1fe9322 drm/i915: Introduce quirk QUIRK_RENDERCLEAR_REDUCED
-:20: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#20: FILE: drivers/gpu/drm/i915/i915_drv.h:521:
+#define QUIRK_RENDERCLEAR_REDUCED (1<<8)
                                     ^

total: 0 errors, 0 warnings, 1 checks, 7 lines checked
7cfeb5acfcd5 drm/i915/display: Add function quirk_renderclear_reduced
eaa8b2fa9755 drm/i915/gt: Force reduced batch size if new QUIRK_RENDERCLEAR_REDUCED is set.


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
