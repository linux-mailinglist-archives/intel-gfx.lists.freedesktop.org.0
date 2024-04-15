Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D69508A5C41
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 22:31:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10A241127DB;
	Mon, 15 Apr 2024 20:31:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B5DF1127D9;
 Mon, 15 Apr 2024 20:31:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/mst=3A_Fix_NULL_point?=
 =?utf-8?q?er_dereference_at_drm=5Fdp=5Fadd=5Fpayload=5Fpart2_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lin, Wayne" <wayne.lin@amd.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Apr 2024 20:31:22 -0000
Message-ID: <171321308250.1423804.15688168656903958991@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240307062957.2323620-1-Wayne.Lin@amd.com>
In-Reply-To: <20240307062957.2323620-1-Wayne.Lin@amd.com>
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

Series: drm/mst: Fix NULL pointer dereference at drm_dp_add_payload_part2 (rev2)
URL   : https://patchwork.freedesktop.org/series/130851/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/130851/revisions/2/mbox/ not applied
Applying: drm/mst: Fix NULL pointer dereference at drm_dp_add_payload_part2
error: patch failed: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c:363
error: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c: patch does not apply
error: patch failed: drivers/gpu/drm/display/drm_dp_mst_topology.c:3430
error: drivers/gpu/drm/display/drm_dp_mst_topology.c: patch does not apply
error: patch failed: drivers/gpu/drm/i915/display/intel_dp_mst.c:1160
error: drivers/gpu/drm/i915/display/intel_dp_mst.c: patch does not apply
error: patch failed: drivers/gpu/drm/nouveau/dispnv50/disp.c:915
error: drivers/gpu/drm/nouveau/dispnv50/disp.c: patch does not apply
error: patch failed: include/drm/display/drm_dp_mst_helper.h:851
error: include/drm/display/drm_dp_mst_helper.h: patch does not apply
error: Did you hand edit your patch?
It does not apply to blobs recorded in its index.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/display/drm_dp_mst_topology.c
M	drivers/gpu/drm/i915/display/intel_dp_mst.c
M	include/drm/display/drm_dp_mst_helper.h
Patch failed at 0001 drm/mst: Fix NULL pointer dereference at drm_dp_add_payload_part2
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


