Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3AA3916C1
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 13:55:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA4176ECBC;
	Wed, 26 May 2021 11:55:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C36AA6ECBB;
 Wed, 26 May 2021 11:55:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BC87CA47DB;
 Wed, 26 May 2021 11:55:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nischal Varide" <nischal.varide@intel.com>
Date: Wed, 26 May 2021 11:55:09 -0000
Message-ID: <162203010974.13404.11899953235473186762@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210526020611.27572-1-nischal.varide@intel.com>
In-Reply-To: <20210526020611.27572-1-nischal.varide@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/xelpd=3A_Enabling_dithering_after_the_CC1?=
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

Series: drm/i915/xelpd: Enabling dithering after the CC1
URL   : https://patchwork.freedesktop.org/series/90583/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a7d93728c6c9 drm/i915/xelpd: Enabling dithering after the CC1
-:27: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'crtc_state->pipe_bpp == 36'
#27: FILE: drivers/gpu/drm/i915/display/intel_color.c:1614:
+		if (!crtc_state->dither_force_disable &&
+		    (crtc_state->pipe_bpp == 36))

-:60: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'crtc_state->pipe_bpp != 36'
#60: FILE: drivers/gpu/drm/i915/display/intel_display.c:5749:
+	if (crtc_state->dither && (crtc_state->pipe_bpp != 36))

total: 0 errors, 0 warnings, 2 checks, 55 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
