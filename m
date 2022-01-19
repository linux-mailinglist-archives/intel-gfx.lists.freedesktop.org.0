Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADFF493F6A
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jan 2022 18:54:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC65B10E425;
	Wed, 19 Jan 2022 17:54:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 06AA810E261;
 Wed, 19 Jan 2022 17:54:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 01EACAA914;
 Wed, 19 Jan 2022 17:54:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "H.J. Lu" <hjl.tools@gmail.com>
Date: Wed, 19 Jan 2022 17:54:56 -0000
Message-ID: <164261489600.22603.4891770640608002786@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220119160445.3609367-1-hjl.tools@gmail.com>
In-Reply-To: <20220119160445.3609367-1-hjl.tools@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/bios=3A_Workaround_broken_video_BIOS_in_LG_Gram_20?=
 =?utf-8?q?21?=
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

Series: drm/i915/bios: Workaround broken video BIOS in LG Gram 2021
URL   : https://patchwork.freedesktop.org/series/99052/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
be74e903c53e drm/i915/bios: Workaround broken video BIOS in LG Gram 2021
-:211: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#211: FILE: drivers/gpu/drm/i915/i915_drv.h:406:
+#define QUIRK_USE_FW_SIZE_AS_VBT_SIZE (1<<9)
                                         ^

total: 0 errors, 0 warnings, 1 checks, 155 lines checked


