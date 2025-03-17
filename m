Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FE3A6542D
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Mar 2025 15:47:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21B8510E414;
	Mon, 17 Mar 2025 14:47:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 18a75f3d1eae (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2212110E414;
 Mon, 17 Mar 2025 14:47:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_ice=3A_make_const_read-on?=
 =?utf-8?q?ly_array_dflt=5Frules_static?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Colin Ian King" <colin.i.king@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Mar 2025 14:47:51 -0000
Message-ID: <174222287114.43461.10691484816727516775@18a75f3d1eae>
X-Patchwork-Hint: ignore
References: <20250317144606.478431-1-colin.i.king@gmail.com>
In-Reply-To: <20250317144606.478431-1-colin.i.king@gmail.com>
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

Series: ice: make const read-only array dflt_rules static
URL   : https://patchwork.freedesktop.org/series/146396/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/146396/revisions/1/mbox/ not applied
Applying: ice: make const read-only array dflt_rules static
Using index info to reconstruct a base tree...
M	drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
CONFLICT (content): Merge conflict in drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 ice: make const read-only array dflt_rules static
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


