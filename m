Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 070334C5312
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Feb 2022 02:39:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 191DE10EC86;
	Sat, 26 Feb 2022 01:39:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CB08110EC81;
 Sat, 26 Feb 2022 01:39:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C5BD9A0096;
 Sat, 26 Feb 2022 01:39:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Sat, 26 Feb 2022 01:39:24 -0000
Message-ID: <164583956476.9639.5621565136796072480@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220225214934.383168-1-hdegoede@redhat.com>
In-Reply-To: <20220225214934.383168-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/5=5D_drm/i915/vlv=5Fdsi=3A_Add_DM?=
 =?utf-8?q?I_quirk_for_wrong_panel_modeline_in_BIOS_on_Asus_TF103C_=28v2?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/5] drm/i915/vlv_dsi: Add DMI quirk for wrong panel modeline in BIOS on Asus TF103C (v2)
URL   : https://patchwork.freedesktop.org/series/100766/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
96525232d483 drm/i915/vlv_dsi: Add DMI quirk for wrong panel modeline in BIOS on Asus TF103C (v2)
a7de4d49f9f5 drm/i915/vlv_dsi: Add DMI quirk for wrong panel size on Lenovo Yoga Tablet 2 series
45d18533c834 drm/i915/dsi: Add some debug logging to mipi_exec_i2c
255314e8c90a drm/i915/dsi: Skip MIPI I2C sequences if not listed as a I2cSerialBus resource
-:21: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#21: 
i915 0000:00:02.0: [drm] *ERROR* Failed to xfer payload of size (1) to reg (169)

total: 0 errors, 1 warnings, 0 checks, 28 lines checked
c7e5a3fbe0e4 drm/i915/vlv_dsi: Skip MIPI I2C sequences on Microsoft Surface 3
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
i915 0000:00:02.0: [drm] mipi_exec_i2c bus 5 client-addr 0x2c reg 0x01 data 01

total: 0 errors, 1 warnings, 0 checks, 30 lines checked


