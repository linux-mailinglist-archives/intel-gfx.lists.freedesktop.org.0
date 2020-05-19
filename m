Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 947EB1D9DCA
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 19:22:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D94F26E358;
	Tue, 19 May 2020 17:22:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E7F066E358;
 Tue, 19 May 2020 17:22:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E5730A0099;
 Tue, 19 May 2020 17:22:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 19 May 2020 17:22:01 -0000
Message-ID: <158990892193.31236.9460247737298592873@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200519131117.17190-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200519131117.17190-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBD?=
 =?utf-8?q?onsider_DBuf_bandwidth_when_calculating_CDCLK_=28rev14=29?=
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

Series: Consider DBuf bandwidth when calculating CDCLK (rev14)
URL   : https://patchwork.freedesktop.org/series/74739/
State : failure

== Summary ==

Applying: drm/i915: Decouple cdclk calculation from modeset checks
Applying: drm/i915: Extract cdclk requirements checking to separate function
Applying: drm/i915: Check plane configuration properly
Applying: drm/i915: Plane configuration affects CDCLK in Gen11+
Applying: drm/i915: Introduce for_each_dbuf_slice_in_mask macro
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_display_power.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_display_power.h
Applying: drm/i915: Adjust CDCLK accordingly to our DBuf bw needs
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_bw.c
M	drivers/gpu/drm/i915/display/intel_bw.h
M	drivers/gpu/drm/i915/display/intel_cdclk.c
M	drivers/gpu/drm/i915/display/intel_display.c
M	drivers/gpu/drm/i915/i915_drv.h
M	drivers/gpu/drm/i915/intel_pm.c
M	drivers/gpu/drm/i915/intel_pm.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/intel_pm.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/intel_pm.h
Auto-merging drivers/gpu/drm/i915/intel_pm.c
Auto-merging drivers/gpu/drm/i915/i915_drv.h
Auto-merging drivers/gpu/drm/i915/display/intel_display.c
Auto-merging drivers/gpu/drm/i915/display/intel_cdclk.c
Auto-merging drivers/gpu/drm/i915/display/intel_bw.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_bw.h
Auto-merging drivers/gpu/drm/i915/display/intel_bw.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_bw.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0006 drm/i915: Adjust CDCLK accordingly to our DBuf bw needs
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
