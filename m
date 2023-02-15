Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F11D0698356
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 19:32:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61E2510EB78;
	Wed, 15 Feb 2023 18:32:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 301E410EB78;
 Wed, 15 Feb 2023 18:32:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 27830AADD6;
 Wed, 15 Feb 2023 18:32:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 15 Feb 2023 18:32:34 -0000
Message-ID: <167648595415.30603.14449594525406502106@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230215141910.433043-1-jani.nikula@intel.com>
In-Reply-To: <20230215141910.433043-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv3=2C1/5=5D_drm/i915/wm=3A_move_ILK?=
 =?utf-8?q?_watermark_sanitization_to_i9xx=5Fwm=2E=5Bch=5D?=
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

Series: series starting with [v3,1/5] drm/i915/wm: move ILK watermark sanitization to i9xx_wm.[ch]
URL   : https://patchwork.freedesktop.org/series/114055/
State : warning

== Summary ==

Error: dim checkpatch failed
0a089d0ac10a drm/i915/wm: move ILK watermark sanitization to i9xx_wm.[ch]
cf777d7c7bb0 drm/i915/wm: warn about ilk_wm_sanitize() on display ver 9+
2c91a9e0013f drm/i915/wm: move watermark debugfs to intel_wm.c
f6734d77c3e5 drm/i915: rename intel_pm_types.h -> display/intel_wm_types.h
-:44: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#44: 
rename from drivers/gpu/drm/i915/intel_pm_types.h

total: 0 errors, 1 warnings, 0 checks, 39 lines checked
c1a6ab934cfd drm/i915/wm: remove ILK+ nop funcs fallback


