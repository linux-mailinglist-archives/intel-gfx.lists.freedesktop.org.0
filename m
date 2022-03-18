Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D81CB4DD459
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 06:26:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9820410E98B;
	Fri, 18 Mar 2022 05:26:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B848810E98B;
 Fri, 18 Mar 2022 05:26:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B0BC3AA01E;
 Fri, 18 Mar 2022 05:26:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: fei.yang@intel.com
Date: Fri, 18 Mar 2022 05:26:15 -0000
Message-ID: <164758117568.31589.15863927852955622235@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220318051224.3428962-1-fei.yang@intel.com>
In-Reply-To: <20220318051224.3428962-1-fei.yang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_avoid_concurrent_writes_to_aux=5Finv_=28rev6=29?=
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

Series: drm/i915: avoid concurrent writes to aux_inv (rev6)
URL   : https://patchwork.freedesktop.org/series/100772/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d9e840b8dd7a drm/i915: avoid concurrent writes to aux_inv
-:81: CHECK:BRACES: braces {} should be used on all arms of this statement
#81: FILE: drivers/gpu/drm/i915/gt/gen8_engine_cs.c:309:
+		if (rq->engine->class == VIDEO_DECODE_CLASS)
[...]
+		else if (rq->engine->class == VIDEO_ENHANCEMENT_CLASS)
[...]
+		else {
[...]

-:85: CHECK:BRACES: Unbalanced braces around else statement
#85: FILE: drivers/gpu/drm/i915/gt/gen8_engine_cs.c:313:
+		else {

-:101: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#101: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:147:
+#define   MI_LRI_MMIO_REMAP_EN		(1<<17)
                               		  ^

total: 0 errors, 0 warnings, 3 checks, 68 lines checked


