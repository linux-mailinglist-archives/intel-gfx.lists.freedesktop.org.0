Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1C6D3031F
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 12:14:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0441610E883;
	Fri, 16 Jan 2026 11:14:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 339DB10E87D;
 Fri, 16 Jan 2026 11:14:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Enable_seamless_boot_=28f?=
 =?utf-8?q?astboot=29_for_PTL?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Juasheem Sultan" <jdsultan@google.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Jan 2026 11:14:53 -0000
Message-ID: <176856209320.161648.688969179990207373@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260115-upstream-prep-v1-0-001d5b38fc11@google.com>
In-Reply-To: <20260115-upstream-prep-v1-0-001d5b38fc11@google.com>
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

Series: Enable seamless boot (fastboot) for PTL
URL   : https://patchwork.freedesktop.org/series/160188/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/160188/revisions/1/mbox/ not applied
Applying: drm/i915/display: Implement passive initialization for splash screen preservation
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_connector.c
M	drivers/gpu/drm/i915/display/intel_ddi.c
M	drivers/gpu/drm/i915/display/intel_dp.c
M	drivers/gpu/drm/i915/display/intel_dp.h
M	drivers/gpu/drm/i915/display/intel_hdmi.c
M	drivers/gpu/drm/i915/display/intel_hdmi.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_hdmi.h
Auto-merging drivers/gpu/drm/i915/display/intel_hdmi.c
Auto-merging drivers/gpu/drm/i915/display/intel_dp.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_dp.h
Auto-merging drivers/gpu/drm/i915/display/intel_dp.c
Auto-merging drivers/gpu/drm/i915/display/intel_ddi.c
Auto-merging drivers/gpu/drm/i915/display/intel_connector.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915/display: Implement passive initialization for splash screen preservation
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


