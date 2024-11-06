Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BD59BF423
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 18:16:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C837F10E066;
	Wed,  6 Nov 2024 17:16:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10D1010E08C;
 Wed,  6 Nov 2024 17:16:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_series_starting_with_=5B0?=
 =?utf-8?q?1/10=5D_drm/xe=3A_Remove_double_pageflip?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 06 Nov 2024 17:16:00 -0000
Message-ID: <173091336006.1418196.2091217494788747855@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241106143837.195642-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20241106143837.195642-1-maarten.lankhorst@linux.intel.com>
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

Series: series starting with [01/10] drm/xe: Remove double pageflip
URL   : https://patchwork.freedesktop.org/series/141008/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/141008/revisions/1/mbox/ not applied
Applying: drm/xe: Remove double pageflip
Applying: drm/xe/display: Add intel_plane_initial_vblank_wait
Applying: drm/xe: Move suballocator init to after display init
Applying: drm/xe: Defer irq init until after xe_display_init_noaccel
Applying: drm/xe/display: Use a single early init call for display
Applying: drm/xe/sriov: Move VF bootstrap and query_config to vf_guc_init
Applying: drm/xe: Simplify GuC early initialisation
Applying: drm/xe: Make it possible to read instance0 MCR registers after xe_gt_mcr_init_early
Applying: drm/xe: Split init of xe_gt_init_hwconfig to xe_gt_init and *_early
error: sha1 information is lacking or useless (drivers/gpu/drm/xe/xe_device.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0009 drm/xe: Split init of xe_gt_init_hwconfig to xe_gt_init and *_early
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


