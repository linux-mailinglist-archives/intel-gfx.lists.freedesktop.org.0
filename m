Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2CB820B0B3
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 13:40:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B203D6EC79;
	Fri, 26 Jun 2020 11:40:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 40D236EC79;
 Fri, 26 Jun 2020 11:40:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3AA2FA0071;
 Fri, 26 Jun 2020 11:40:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Fri, 26 Jun 2020 11:40:49 -0000
Message-ID: <159317164923.22985.15672973434024272794@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200622142519.16214-1-bhanuprakash.modem@intel.com>
In-Reply-To: <20200622142519.16214-1-bhanuprakash.modem@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBW?=
 =?utf-8?q?RR_capable_attach_prop_in_i915=2C_VRR_debugfs_=28rev3=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: VRR capable attach prop in i915, VRR debugfs (rev3)
URL   : https://patchwork.freedesktop.org/series/78670/
State : failure

== Summary ==

Applying: drm/i915/dp: Attach and set drm connector VRR property
Applying: drm/debug: Expose connector VRR monitor range via debugfs
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/drm_debugfs.c
Falling back to patching base and 3-way merge...
No changes -- Patch already applied.
Applying: Revert "drm/amd/display: Expose connector VRR range via debugfs"
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_debugfs.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_debugfs.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_debugfs.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0003 Revert "drm/amd/display: Expose connector VRR range via debugfs"
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
