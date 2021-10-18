Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A51C430CF7
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 02:00:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF3BF6E844;
	Mon, 18 Oct 2021 00:00:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 636CE6E844;
 Mon, 18 Oct 2021 00:00:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5BF80A00E8;
 Mon, 18 Oct 2021 00:00:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Oct 2021 00:00:47 -0000
Message-ID: <163451524734.27088.15699146812207098385@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211017234106.2412994-1-airlied@gmail.com>
In-Reply-To: <20211017234106.2412994-1-airlied@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_finish/rebase_fbdev_pin_refactor=2E?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: finish/rebase fbdev pin refactor.
URL   : https://patchwork.freedesktop.org/series/95925/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f1c4731db194 drm/i915/display: refactor fbdev pin/unpin out into functions.
-:38: WARNING:BRACES: braces {} are not necessary for single statement blocks
#38: FILE: drivers/gpu/drm/i915/display/intel_fbdev.c:192:
+	if (IS_ERR(ifbdev->vma)) {
+		return PTR_ERR(ifbdev->vma);
+	}

-:78: WARNING:BRACES: braces {} are not necessary for single statement blocks
#78: FILE: drivers/gpu/drm/i915/display/intel_fbdev.c:255:
+	if (ret) {
 		goto out_unlock;
 	}

total: 0 errors, 2 warnings, 0 checks, 120 lines checked
58e642c8a077 drm/i915/display: move fbdev pin code into fb_pin
-:57: WARNING:BRACES: braces {} are not necessary for single statement blocks
#57: FILE: drivers/gpu/drm/i915/display/intel_fb_pin.c:295:
+	if (IS_ERR(ifbdev->vma)) {
+		return PTR_ERR(ifbdev->vma);
+	}

total: 0 errors, 1 warnings, 0 checks, 117 lines checked
f17b77fe86cd drm/i915/display: drop unused parameter to dpt pin
8f99fb9fce14 drm/i915/display: drop some unused includes


