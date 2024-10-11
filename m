Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6A799A1A0
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 12:40:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1319F10EAB0;
	Fri, 11 Oct 2024 10:40:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 797DF10EAAA;
 Fri, 11 Oct 2024 10:40:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_series_starting_with_=5Bv?=
 =?utf-8?q?1=2C1/2=5D_drm/dp=3A_fix_warning_for_target=5Frr=5Fdivide_missing?=
 =?utf-8?q?_comment?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sunil Khatri" <sunil.khatri@amd.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Oct 2024 10:40:32 -0000
Message-ID: <172864323249.1240137.5578480678862971185@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241008083710.622153-1-sunil.khatri@amd.com>
In-Reply-To: <20241008083710.622153-1-sunil.khatri@amd.com>
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

Series: series starting with [v1,1/2] drm/dp: fix warning for target_rr_divide missing comment
URL   : https://patchwork.freedesktop.org/series/139881/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/139881/revisions/1/mbox/ not applied
Applying: drm/dp: fix warning for target_rr_divide missing comment
Using index info to reconstruct a base tree...
M	include/drm/display/drm_dp_helper.h
Falling back to patching base and 3-way merge...
Auto-merging include/drm/display/drm_dp_helper.h
CONFLICT (content): Merge conflict in include/drm/display/drm_dp_helper.h
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/dp: fix warning for target_rr_divide missing comment
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


