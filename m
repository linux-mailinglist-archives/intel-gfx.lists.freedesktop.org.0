Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E75DEA08875
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2025 07:39:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BF3D10EFE1;
	Fri, 10 Jan 2025 06:39:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C25E010EFE1;
 Fri, 10 Jan 2025 06:39:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Introduce_drm_sharpness_p?=
 =?utf-8?q?roperty_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nemesa Garg" <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jan 2025 06:39:12 -0000
Message-ID: <173649115280.1875092.16768436573719599935@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250110063244.1129552-1-nemesa.garg@intel.com>
In-Reply-To: <20250110063244.1129552-1-nemesa.garg@intel.com>
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

Series: Introduce drm sharpness property (rev6)
URL   : https://patchwork.freedesktop.org/series/138754/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/138754/revisions/6/mbox/ not applied
Applying: drm: Introduce sharpness strength property
Applying: drm/i915/display: Compute the scaler filter coefficients
Applying: drm/i915/display: Configure the scaler
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/skl_scaler.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/skl_scaler.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/skl_scaler.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0003 drm/i915/display: Configure the scaler
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


