Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 917B04CD5B2
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 14:58:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C634910F9B9;
	Fri,  4 Mar 2022 13:58:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 19BF210F9B9;
 Fri,  4 Mar 2022 13:58:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 155CDA47DF;
 Fri,  4 Mar 2022 13:58:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bjorn Andersson" <bjorn.andersson@linaro.org>
Date: Fri, 04 Mar 2022 13:58:02 -0000
Message-ID: <164640228208.21355.4264171644488355205@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220304010827.998080-1-bjorn.andersson@linaro.org>
In-Reply-To: <20220304010827.998080-1-bjorn.andersson@linaro.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5Bv2=2C1/2=5D_drm=3A_Add_HPD_state_to_drm?=
 =?utf-8?b?X2Nvbm5lY3Rvcl9vb2JfaG90cGx1Z19ldmVudCgp?=
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

Series: series starting with [v2,1/2] drm: Add HPD state to drm_connector_oob_hotplug_event()
URL   : https://patchwork.freedesktop.org/series/101048/
State : failure

== Summary ==

Applying: drm: Add HPD state to drm_connector_oob_hotplug_event()
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/drm_connector.c
M	drivers/gpu/drm/i915/display/intel_dp.c
M	drivers/gpu/drm/i915/i915_drv.h
M	include/drm/drm_connector.h
Falling back to patching base and 3-way merge...
Auto-merging include/drm/drm_connector.h
CONFLICT (content): Merge conflict in include/drm/drm_connector.h
Auto-merging drivers/gpu/drm/i915/i915_drv.h
Auto-merging drivers/gpu/drm/i915/display/intel_dp.c
Auto-merging drivers/gpu/drm/drm_connector.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm: Add HPD state to drm_connector_oob_hotplug_event()
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


