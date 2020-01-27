Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5960D14AB58
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 21:53:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD68F6EA6D;
	Mon, 27 Jan 2020 20:53:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 58D176EA5F;
 Mon, 27 Jan 2020 20:53:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 54529A011A;
 Mon, 27 Jan 2020 20:53:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Mon, 27 Jan 2020 20:53:21 -0000
Message-ID: <158015840134.9687.7990172392824281702@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200127075653.8523-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200127075653.8523-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm=3A_Introduce_struct_drm=5Fdevice_based_WARN*_and_use_them_in?=
 =?utf-8?q?_i915_=28rev4=29?=
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

Series: drm: Introduce struct drm_device based WARN* and use them in i915 (rev4)
URL   : https://patchwork.freedesktop.org/series/72035/
State : failure

== Summary ==

Applying: drm/i915/display: Make WARN* drm specific where drm_device ptr is available
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_display.c
M	drivers/gpu/drm/i915/display/intel_dp.c
M	drivers/gpu/drm/i915/display/intel_dpll_mgr.c
M	drivers/gpu/drm/i915/display/intel_hdmi.c
M	drivers/gpu/drm/i915/display/intel_hotplug.c
M	drivers/gpu/drm/i915/display/intel_lvds.c
M	drivers/gpu/drm/i915/display/intel_pipe_crc.c
M	drivers/gpu/drm/i915/display/intel_sdvo.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_sdvo.c
Auto-merging drivers/gpu/drm/i915/display/intel_pipe_crc.c
Auto-merging drivers/gpu/drm/i915/display/intel_lvds.c
Auto-merging drivers/gpu/drm/i915/display/intel_hotplug.c
Auto-merging drivers/gpu/drm/i915/display/intel_hdmi.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_hdmi.c
Auto-merging drivers/gpu/drm/i915/display/intel_dpll_mgr.c
Auto-merging drivers/gpu/drm/i915/display/intel_dp.c
Auto-merging drivers/gpu/drm/i915/display/intel_display.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_display.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch' to see the failed patch
Patch failed at 0001 drm/i915/display: Make WARN* drm specific where drm_device ptr is available
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
