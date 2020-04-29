Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5731BE84D
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 22:18:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEE176EB1E;
	Wed, 29 Apr 2020 20:18:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AE3866EB1E;
 Wed, 29 Apr 2020 20:18:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A743AA47E8;
 Wed, 29 Apr 2020 20:18:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 29 Apr 2020 20:18:13 -0000
Message-ID: <158819149366.6698.8598600596387345296@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200429185457.26235-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200429185457.26235-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915=3A_Nuke_mode=2Evref?=
 =?utf-8?q?resh_usage?=
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

Series: series starting with [1/3] drm/i915: Nuke mode.vrefresh usage
URL   : https://patchwork.freedesktop.org/series/76741/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c72890c16d9b drm/i915: Nuke mode.vrefresh usage
e45bfe3703e2 drm/i915: Rename variables to be consistent with bspec
01ba9553032f drm/i915: Streamline the artihmetic
-:97: WARNING:LONG_LINE: line over 100 characters
#97: FILE: drivers/gpu/drm/i915/display/intel_audio.c:563:
+	hblank_rise = (link_clks_active + 6 * DIV_ROUND_UP(link_clks_active, 250) + 4) * pixel_clk / link_clk;

total: 0 errors, 1 warnings, 0 checks, 107 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
