Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0B297A472
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 16:50:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 784A910E197;
	Mon, 16 Sep 2024 14:50:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8782F10E39E;
 Mon, 16 Sep 2024 14:50:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_firmware=3A_Avoid_co?=
 =?utf-8?q?reboot_and_sysfb_to_register_a_pdev_for_same_framebuffer?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Javier Martinez Canillas" <javierm@redhat.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Sep 2024 14:50:21 -0000
Message-ID: <172649822154.1018818.17800352294625177564@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240916110040.1688511-1-javierm@redhat.com>
In-Reply-To: <20240916110040.1688511-1-javierm@redhat.com>
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

Series: firmware: Avoid coreboot and sysfb to register a pdev for same framebuffer
URL   : https://patchwork.freedesktop.org/series/138709/
State : warning

== Summary ==

Error: dim checkpatch failed
c0fbd5ca4602 firmware: sysfb: Add a sysfb_handles_screen_info() helper function
090fb9678153 firmware: coreboot: Don't register a pdev if screen_info data is present
-:21: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#21: 
    sysfs: cannot create duplicate filename '/bus/platform/devices/simple-framebuffer.0'

total: 0 errors, 1 warnings, 0 checks, 26 lines checked


