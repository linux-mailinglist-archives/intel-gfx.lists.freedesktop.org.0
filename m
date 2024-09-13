Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC874978BF3
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Sep 2024 01:45:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E8B910E29E;
	Fri, 13 Sep 2024 23:45:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9168410E275;
 Fri, 13 Sep 2024 23:45:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_firmware=3A_coreboot?=
 =?utf-8?q?=3A_Don=27t_register_a_pdev_if_screen=5Finfo_data_is_present_=28r?=
 =?utf-8?q?ev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Javier Martinez Canillas" <javierm@redhat.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Sep 2024 23:45:12 -0000
Message-ID: <172627111258.998736.5374360185008465382@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240913213246.1549213-1-javierm@redhat.com>
In-Reply-To: <20240913213246.1549213-1-javierm@redhat.com>
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

Series: firmware: coreboot: Don't register a pdev if screen_info data is present (rev2)
URL   : https://patchwork.freedesktop.org/series/138665/
State : warning

== Summary ==

Error: dim checkpatch failed
87d709d4b8a4 firmware: coreboot: Don't register a pdev if screen_info data is present
-:21: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#21: 
    sysfs: cannot create duplicate filename '/bus/platform/devices/simple-framebuffer.0'

total: 0 errors, 1 warnings, 0 checks, 37 lines checked


