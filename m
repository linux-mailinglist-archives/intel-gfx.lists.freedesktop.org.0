Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF264197BC
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Sep 2021 17:22:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E790C89EB4;
	Mon, 27 Sep 2021 15:22:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6B84189EB4;
 Mon, 27 Sep 2021 15:22:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 586A6A00E8;
 Mon, 27 Sep 2021 15:22:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Sep 2021 15:22:22 -0000
Message-ID: <163275614233.14086.17575500179694708987@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210927100240.2527555-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20210927100240.2527555-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gen11=3A_Disable_cursor_clock_gating_in_HDR_mode_?=
 =?utf-8?b?KHJldjUp?=
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

Series: drm/i915/gen11: Disable cursor clock gating in HDR mode (rev5)
URL   : https://patchwork.freedesktop.org/series/91674/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
41d229b94d3c drm/i915/gen11: Disable cursor clock gating in HDR mode
-:19: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#19: 
        - Disable WA when not in HDR mode or cursor plane not active - Ville

-:46: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#46: FILE: drivers/gpu/drm/i915/display/intel_display.c:222:
+	intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe), CURSOR_GATING_DIS, enable ? CURSOR_GATING_DIS : 0);

total: 0 errors, 2 warnings, 0 checks, 62 lines checked


