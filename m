Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9D7974215
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 20:26:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C955B10E8E6;
	Tue, 10 Sep 2024 18:26:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 694BB10E8E7;
 Tue, 10 Sep 2024 18:26:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_firmware=3A_framebuf?=
 =?utf-8?q?fer-coreboot=3A_duplicate_device_name_=22simple-framebuffer=2E0?=
 =?utf-8?q?=22?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Brian Norris" <briannorris@chromium.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Sep 2024 18:26:51 -0000
Message-ID: <172599281142.981790.1860182715530989190@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <CALvjV29jozswRtmYxDur2TuEQ=1JSDrM+uWVHmghW3hG5Y9F+w@mail.gmail.com>
In-Reply-To: <CALvjV29jozswRtmYxDur2TuEQ=1JSDrM+uWVHmghW3hG5Y9F+w@mail.gmail.com>
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

Series: firmware: framebuffer-coreboot: duplicate device name "simple-framebuffer.0"
URL   : https://patchwork.freedesktop.org/series/138487/
State : warning

== Summary ==

Error: dim checkpatch failed
a62bef51266a firmware: framebuffer-coreboot: duplicate device name "simple-framebuffer.0"
-:12: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#12: 
> Looking at your log, the first warn is in framebuffer_coreboot. Some mess in

-:85: WARNING:MISSING_FIXES_TAG: The commit message has 'Call Trace:', perhaps it also needs a 'Fixes:' tag?

total: 0 errors, 2 warnings, 0 checks, 9 lines checked


