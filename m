Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D6F1C95E9
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 18:04:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A53206E102;
	Thu,  7 May 2020 16:04:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E19F66E102;
 Thu,  7 May 2020 16:04:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DA659A00E7;
 Thu,  7 May 2020 16:04:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 07 May 2020 16:04:37 -0000
Message-ID: <158886747786.2189.14330188498423600006@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200507144503.15506-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200507144503.15506-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_SAGV_support_for_Gen12+_=28rev36=29?=
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

Series: SAGV support for Gen12+ (rev36)
URL   : https://patchwork.freedesktop.org/series/75129/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
74acb8869d96 drm/i915: Introduce skl_plane_wm_level accessor.
37b1bc532f92 drm/i915: Extract skl SAGV checking
f4268af8a090 drm/i915: Make active_pipes check skl specific
-:63: WARNING:LONG_LINE: line over 100 characters
#63: FILE: drivers/gpu/drm/i915/intel_pm.c:3902:
+	if (intel_can_enable_sagv(dev_priv, new_bw_state) != intel_can_enable_sagv(dev_priv, old_bw_state)) {

total: 0 errors, 1 warnings, 0 checks, 55 lines checked
1807e09ca9e6 drm/i915: Add TGL+ SAGV support
3d9400f258c5 drm/i915: Restrict qgv points which don't have enough bandwidth.
7b0099b8e0d1 drm/i915: Enable SAGV support for Gen12

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
