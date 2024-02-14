Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD148540B6
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 01:11:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4252C10E6F7;
	Wed, 14 Feb 2024 00:11:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0309C10E59D;
 Wed, 14 Feb 2024 00:11:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/dp=3A_move_intel=5Fdp?=
 =?utf-8?q?=5Fvsc=5Fsdp=5Fpack=28=29_to_generic_helper?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Abhinav Kumar" <quic_abhinavk@quicinc.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Feb 2024 00:11:36 -0000
Message-ID: <170786949600.1218994.4500927935579436266@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240213234513.2411604-1-quic_abhinavk@quicinc.com>
In-Reply-To: <20240213234513.2411604-1-quic_abhinavk@quicinc.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/dp: move intel_dp_vsc_sdp_pack() to generic helper
URL   : https://patchwork.freedesktop.org/series/129866/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/129866/revisions/1/mbox/ not applied
Applying: drm/dp: move intel_dp_vsc_sdp_pack() to generic helper
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/display/drm_dp_helper.c
M	drivers/gpu/drm/i915/display/intel_dp.c
M	include/drm/display/drm_dp_helper.h
Falling back to patching base and 3-way merge...
Auto-merging include/drm/display/drm_dp_helper.h
Auto-merging drivers/gpu/drm/i915/display/intel_dp.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_dp.c
Auto-merging drivers/gpu/drm/display/drm_dp_helper.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/dp: move intel_dp_vsc_sdp_pack() to generic helper
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


