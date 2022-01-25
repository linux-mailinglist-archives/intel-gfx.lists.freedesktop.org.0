Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A23D49A19E
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 01:02:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 397E910E297;
	Tue, 25 Jan 2022 00:02:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EE4A610E297;
 Tue, 25 Jan 2022 00:02:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E9827A882E;
 Tue, 25 Jan 2022 00:02:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 25 Jan 2022 00:02:42 -0000
Message-ID: <164306896291.27371.4269520028201234010@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220124193136.2397-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220124193136.2397-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915=3A_s/GRAPHICS=5FVER?=
 =?utf-8?q?/DISPLAY=5FVER/_where_appropriate?=
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

Series: series starting with [1/2] drm/i915: s/GRAPHICS_VER/DISPLAY_VER/ where appropriate
URL   : https://patchwork.freedesktop.org/series/99278/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
cf24e52f7816 drm/i915: s/GRAPHICS_VER/DISPLAY_VER/ where appropriate
-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#25: FILE: drivers/gpu/drm/i915/i915_drv.h:1467:
+#define HAS_GMBUS_BURST_READ(dev_priv) (DISPLAY_VER(dev_priv) >= 11 || \
 					IS_GEMINILAKE(dev_priv) || \
 					IS_KABYLAKE(dev_priv))

-:37: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#37: FILE: drivers/gpu/drm/i915/i915_drv.h:1481:
+#define HAS_CUR_FBC(dev_priv)	(!HAS_GMCH(dev_priv) && DISPLAY_VER(dev_priv) >= 7)

total: 0 errors, 0 warnings, 2 checks, 61 lines checked
bb2df423a3f8 drm/i915: Introduce ilk_pch_pre_enable()


