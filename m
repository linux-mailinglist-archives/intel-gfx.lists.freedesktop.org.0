Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A719519EDB
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 14:05:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF40910E140;
	Wed,  4 May 2022 12:05:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4FEDF10E103;
 Wed,  4 May 2022 12:05:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4DBDFA3C0D;
 Wed,  4 May 2022 12:05:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Wed, 04 May 2022 12:05:03 -0000
Message-ID: <165166590328.678.2631860741708870072@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220504114808.1578304-1-andrzej.hajda@intel.com>
In-Reply-To: <20220504114808.1578304-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/fbdev=3A_print_erro?=
 =?utf-8?q?r_in_case_drm=5Ffb=5Fhelper=5Finitial=5Fconfig_fails?=
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

Series: series starting with [1/2] drm/i915/fbdev: print error in case drm_fb_helper_initial_config fails
URL   : https://patchwork.freedesktop.org/series/103533/
State : warning

== Summary ==

Error: dim checkpatch failed
049b4153799b drm/i915/fbdev: print error in case drm_fb_helper_initial_config fails
1f84c1806ac0 tty/vt: add some logging to vt error path
-:19: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#19: FILE: drivers/tty/vt/vt.c:3630:
+#define ERR(__err) ({ void *err = ERR_PTR(__err); pr_err("%s:%d: err=%pe\n", __func__, __LINE__, err); PTR_ERR(err); })

total: 0 errors, 1 warnings, 0 checks, 56 lines checked


