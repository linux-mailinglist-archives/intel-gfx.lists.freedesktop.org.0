Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36656B3A951
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 20:02:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 971AD10EA85;
	Thu, 28 Aug 2025 18:02:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F1DE10EA94;
 Thu, 28 Aug 2025 18:02:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Revert_=22drm/dp=3A_Chang?=
 =?utf-8?q?e_AUX_DPCD_probe_address_from_DPCD=5FREV_to_LANE0=5F1=5FSTATUS=22?=
 =?utf-8?q?_=28rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Aug 2025 18:02:10 -0000
Message-ID: <175640413018.280646.6477921636609455543@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250828174932.414566-1-imre.deak@intel.com>
In-Reply-To: <20250828174932.414566-1-imre.deak@intel.com>
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

Series: Revert "drm/dp: Change AUX DPCD probe address from DPCD_REV to LANE0_1_STATUS" (rev7)
URL   : https://patchwork.freedesktop.org/series/153652/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/153652/revisions/7/mbox/ not applied
Applying: Revert "drm/dp: Change AUX DPCD probe address from DPCD_REV to LANE0_1_STATUS"
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/display/drm_dp_helper.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/display/drm_dp_helper.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/display/drm_dp_helper.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 Revert "drm/dp: Change AUX DPCD probe address from DPCD_REV to LANE0_1_STATUS"
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


