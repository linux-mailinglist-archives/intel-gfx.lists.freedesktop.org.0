Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6750E36BA5F
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Apr 2021 21:56:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D2C589B65;
	Mon, 26 Apr 2021 19:56:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C941589137;
 Mon, 26 Apr 2021 19:56:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C0091A47E2;
 Mon, 26 Apr 2021 19:56:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Randy Dunlap" <rdunlap@infradead.org>
Date: Mon, 26 Apr 2021 19:56:40 -0000
Message-ID: <161946700076.18668.16506004056948888807@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210426183516.18957-1-rdunlap@infradead.org>
In-Reply-To: <20210426183516.18957-1-rdunlap@infradead.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_i915=3A_fix_build_when_ACPI_is_disabled_and_BACKLIGH?=
 =?utf-8?b?VD1t?=
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

Series: drm: i915: fix build when ACPI is disabled and BACKLIGHT=m
URL   : https://patchwork.freedesktop.org/series/89509/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1db2d6629e36 drm: i915: fix build when ACPI is disabled and BACKLIGHT=m
-:16: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#16: 
ld: drivers/gpu/drm/i915/display/intel_panel.o: in function `intel_backlight_device_register':

total: 0 errors, 1 warnings, 0 checks, 16 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
