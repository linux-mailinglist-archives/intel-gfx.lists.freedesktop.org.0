Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A03D53C79C2
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 00:37:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F6496E141;
	Tue, 13 Jul 2021 22:36:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2FAB56E141;
 Tue, 13 Jul 2021 22:36:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 292F6AA916;
 Tue, 13 Jul 2021 22:36:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aria Kraft" <aria.m.kraft@intel.com>
Date: Tue, 13 Jul 2021 22:36:57 -0000
Message-ID: <162621581714.711.12516173078590487463@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210713201701.1231730-1-aria.m.kraft@intel.com>
In-Reply-To: <20210713201701.1231730-1-aria.m.kraft@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/ehl=3A_Resolve_insufficient_header_credits_in_MIPI?=
 =?utf-8?q?_DSI?=
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

Series: drm/i915/ehl: Resolve insufficient header credits in MIPI DSI
URL   : https://patchwork.freedesktop.org/series/92498/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fa23f279ade1 drm/i915/ehl: Resolve insufficient header credits in MIPI DSI
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
MIPI DSI initialization on EHL can fail due to not enough header credits available.

-:67: WARNING:BRACES: braces {} are not necessary for single statement blocks
#67: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:163:
+	if (!wait_for_header_credits(dev_priv, dsi_trans, 1)) {
 		return -1;
 	}

total: 0 errors, 2 warnings, 0 checks, 48 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
