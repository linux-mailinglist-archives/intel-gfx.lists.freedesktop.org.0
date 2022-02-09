Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6B24AF39F
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 15:06:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BD1210E4B2;
	Wed,  9 Feb 2022 14:06:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AE8E410E4B2;
 Wed,  9 Feb 2022 14:06:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A8848AADE3;
 Wed,  9 Feb 2022 14:06:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 09 Feb 2022 14:06:37 -0000
Message-ID: <164441559765.23773.414400627334409311@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220209113526.7595-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220209113526.7595-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/7=5D_drm/i915=3A_Move_vblank_wait?=
 =?utf-8?q?s_out_from_IPS_code?=
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

Series: series starting with [1/7] drm/i915: Move vblank waits out from IPS code
URL   : https://patchwork.freedesktop.org/series/99898/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
07fcb18e1bb8 drm/i915: Move vblank waits out from IPS code
38cc565cd61b drm/i915: Change IPS calling convention
ec0006d584e0 drm/i915: Hoover the IPS enable/disable calls into the pre/post update hooks
8f2e708760bd drm/i915: Move the IPS code to its own file
-:35: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#35: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 572 lines checked
79ae7f91c747 drm/i915: Extract hsw_ips_get_config()
57d28de511dc drm/i915: Fix IPS disable in intel_plane_disable_noatomic()
b79f7b4e43e9 drm/i915: Consolidate all pre plane update vblank waits


