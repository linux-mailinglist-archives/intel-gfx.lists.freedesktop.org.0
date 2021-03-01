Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3370328308
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 17:06:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0720A6E7EC;
	Mon,  1 Mar 2021 16:06:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E7E316E03D;
 Mon,  1 Mar 2021 16:06:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DFBC5A73C9;
 Mon,  1 Mar 2021 16:06:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Mon, 01 Mar 2021 16:06:48 -0000
Message-ID: <161461480891.9387.15992817733513580736@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210301154347.50052-1-hdegoede@redhat.com>
In-Reply-To: <20210301154347.50052-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display/vlv=5Fdsi=3A_Do_no_shut_down_displays_on_r?=
 =?utf-8?q?eboot_if_a_DSI_panel_is_used?=
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

Series: drm/i915/display/vlv_dsi: Do no shut down displays on reboot if a DSI panel is used
URL   : https://patchwork.freedesktop.org/series/87498/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3994974850ed drm/i915/display/vlv_dsi: Do no shut down displays on reboot if a DSI panel is used
-:69: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#69: FILE: drivers/gpu/drm/i915/i915_drv.h:486:
+#define QUIRK_SKIP_SHUTDOWN (1<<8)
                               ^

total: 0 errors, 0 warnings, 1 checks, 25 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
