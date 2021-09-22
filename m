Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFB34149CC
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 14:54:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 674F66EB93;
	Wed, 22 Sep 2021 12:54:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 464BF6EB93;
 Wed, 22 Sep 2021 12:54:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4009DA0003;
 Wed, 22 Sep 2021 12:54:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nathan Chancellor" <nathan@kernel.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 12:54:27 -0000
Message-ID: <163231526723.6942.11126176485062882220@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1631191763.git.jani.nikula@intel.com>
In-Reply-To: <cover.1631191763.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/dp=3A_dp_2=2E0_enabling_prep_work_=28rev4=29?=
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

Series: drm/i915/dp: dp 2.0 enabling prep work (rev4)
URL   : https://patchwork.freedesktop.org/series/93800/
State : failure

== Summary ==

Applying: drm/dp: add DP 2.0 UHBR link rate and bw code conversions
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/drm_dp_helper.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/drm_dp_helper.c
No changes -- Patch already applied.
Applying: drm/dp: use more of the extended receiver cap
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/drm_dp_helper.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/drm_dp_helper.c
No changes -- Patch already applied.
Applying: drm/dp: add LTTPR DP 2.0 DPCD addresses
error: sha1 information is lacking or useless (drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0003 drm/dp: add LTTPR DP 2.0 DPCD addresses
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


