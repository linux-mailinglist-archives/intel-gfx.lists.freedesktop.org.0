Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FC48FD0F6
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 16:38:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9106F10E002;
	Wed,  5 Jun 2024 14:38:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B595110E002;
 Wed,  5 Jun 2024 14:38:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Implement_CMRR_Support_?=
 =?utf-8?q?=28rev12=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 05 Jun 2024 14:38:33 -0000
Message-ID: <171759831373.1068.6409499970258012086@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240605122802.488124-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240605122802.488124-1-mitulkumar.ajitkumar.golani@intel.com>
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

Series: Implement CMRR Support (rev12)
URL   : https://patchwork.freedesktop.org/series/126443/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/126443/revisions/12/mbox/ not applied
Applying: drm/i915: Protect CRC reg macro arguments for consistency
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h
Falling back to patching base and 3-way merge...
No changes -- Patch already applied.
Applying: drm-tip: 2024y-06m-05d-09h-52m-50s UTC integration manifest
Using index info to reconstruct a base tree...
Falling back to patching base and 3-way merge...
CONFLICT (add/add): Merge conflict in integration-manifest
Auto-merging integration-manifest
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0002 drm-tip: 2024y-06m-05d-09h-52m-50s UTC integration manifest
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


