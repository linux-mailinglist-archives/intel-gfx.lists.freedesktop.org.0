Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5585EFE54
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 22:05:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41BF310ECA9;
	Thu, 29 Sep 2022 20:04:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A04A410EC9C;
 Thu, 29 Sep 2022 20:04:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7AC68AA0ED;
 Thu, 29 Sep 2022 20:04:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Gunthorpe" <jgg@nvidia.com>
Date: Thu, 29 Sep 2022 20:04:51 -0000
Message-ID: <166448189149.11952.17268145332808339781@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <0-v1-013609965fe8+9d-vfio_gvt_unregister_jgg@nvidia.com>
In-Reply-To: <0-v1-013609965fe8+9d-vfio_gvt_unregister_jgg@nvidia.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/gvt=3A_Add_missing_vfio=5Funregister=5Fgroup=5Fdev=28?=
 =?utf-8?q?=29_call?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/gvt: Add missing vfio_unregister_group_dev() call
URL   : https://patchwork.freedesktop.org/series/109264/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/109264/revisions/1/mbox/ not applied
Applying: drm/i915/gvt: Add missing vfio_unregister_group_dev() call
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gvt/kvmgt.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gvt/kvmgt.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gvt/kvmgt.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915/gvt: Add missing vfio_unregister_group_dev() call
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


