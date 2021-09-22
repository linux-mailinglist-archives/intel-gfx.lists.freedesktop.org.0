Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A424A414FC8
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 20:24:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE2506E02F;
	Wed, 22 Sep 2021 18:24:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9E8326E02F;
 Wed, 22 Sep 2021 18:24:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 978C3AADD2;
 Wed, 22 Sep 2021 18:24:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Harry Wentland" <harry.wentland@amd.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 18:24:01 -0000
Message-ID: <163233504161.6944.1700292275683715142@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1631191763.git.jani.nikula@intel.com>
In-Reply-To: <cover.1631191763.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/dp=3A_dp_2=2E0_enabling_prep_work_=28rev5=29?=
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

Series: drm/i915/dp: dp 2.0 enabling prep work (rev5)
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
Applying: drm/amd/display: Only define DP 2.0 symbols if not already defined
error: sha1 information is lacking or useless (drivers/gpu/drm/amd/display/dc/dc_dp_types.h).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0003 drm/amd/display: Only define DP 2.0 symbols if not already defined
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


