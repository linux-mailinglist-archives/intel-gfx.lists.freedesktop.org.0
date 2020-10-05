Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3462A2841A8
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Oct 2020 22:50:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95CF26E17F;
	Mon,  5 Oct 2020 20:50:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 12FA16E0CA;
 Mon,  5 Oct 2020 20:50:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0099FA8832;
 Mon,  5 Oct 2020 20:50:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 05 Oct 2020 20:50:13 -0000
Message-ID: <160193101397.25152.3298171955391398199@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201005171441.26612-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201005171441.26612-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Rename_i915=5F=7Bsave=2Crestore=7D=5Fstate=28?=
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

Series: drm/i915: Rename i915_{save,restore}_state()
URL   : https://patchwork.freedesktop.org/series/82388/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4c7a7c4e0a80 drm/i915: Rename i915_{save,restore}_state()
-:120: CHECK:CAMELCASE: Avoid CamelCase: <saveDSPARB>
#120: FILE: drivers/gpu/drm/i915/i915_suspend.c:91:
+		dev_priv->regfile.saveDSPARB = I915_READ(DSPARB);

-:125: CHECK:CAMELCASE: Avoid CamelCase: <saveGCDGMBUS>
#125: FILE: drivers/gpu/drm/i915/i915_suspend.c:95:
+				     &dev_priv->regfile.saveGCDGMBUS);

total: 0 errors, 0 warnings, 2 checks, 130 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
