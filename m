Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79FD893EE5B
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 09:23:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E2AC10E312;
	Mon, 29 Jul 2024 07:23:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 943A910E2EA;
 Mon, 29 Jul 2024 07:23:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915/pps=3A_Disable_D?=
 =?utf-8?q?PLS=5FGATING_around_pps_sequence_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jul 2024 07:23:31 -0000
Message-ID: <172223781160.406613.2725892175272190987@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240416093730.625486-2-suraj.kandpal@intel.com>
In-Reply-To: <20240416093730.625486-2-suraj.kandpal@intel.com>
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

Series: drm/i915/pps: Disable DPLS_GATING around pps sequence (rev4)
URL   : https://patchwork.freedesktop.org/series/132495/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/132495/revisions/4/mbox/ not applied
Applying: drm/i915/pps: Disable DPLS_GATING around pps sequence
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_pps.c
M	drivers/gpu/drm/i915/i915_reg.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/i915_reg.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_reg.h
Auto-merging drivers/gpu/drm/i915/display/intel_pps.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915/pps: Disable DPLS_GATING around pps sequence
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


