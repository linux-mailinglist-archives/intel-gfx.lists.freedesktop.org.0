Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E819B68EF70
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 13:59:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F9CB10E775;
	Wed,  8 Feb 2023 12:59:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E383F10E775;
 Wed,  8 Feb 2023 12:59:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C65B1A0169;
 Wed,  8 Feb 2023 12:59:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 08 Feb 2023 12:59:22 -0000
Message-ID: <167586116277.387.18444726039406668763@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1675849634.git.jani.nikula@intel.com>
In-Reply-To: <cover.1675849634.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/wm=3A_legacy_watermark_code_shuffling?=
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

Series: drm/i915/wm: legacy watermark code shuffling
URL   : https://patchwork.freedesktop.org/series/113775/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  CC [M]  drivers/gpu/drm/i915/display/i9xx_wm.o
drivers/gpu/drm/i915/display/i9xx_wm.c:3839:6: error: no previous prototype for ‘ilk_wm_get_hw_state’ [-Werror=missing-prototypes]
 3839 | void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv)
      |      ^~~~~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
make[5]: *** [scripts/Makefile.build:252: drivers/gpu/drm/i915/display/i9xx_wm.o] Error 1
make[4]: *** [scripts/Makefile.build:504: drivers/gpu/drm/i915] Error 2
make[3]: *** [scripts/Makefile.build:504: drivers/gpu/drm] Error 2
make[2]: *** [scripts/Makefile.build:504: drivers/gpu] Error 2
make[1]: *** [scripts/Makefile.build:504: drivers] Error 2
make: *** [Makefile:2021: .] Error 2


