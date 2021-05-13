Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C199737F4C0
	for <lists+intel-gfx@lfdr.de>; Thu, 13 May 2021 11:20:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EABA6E864;
	Thu, 13 May 2021 09:20:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5FFB86E09E;
 Thu, 13 May 2021 09:20:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4E7D9A0019;
 Thu, 13 May 2021 09:20:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhenyu Wang" <zhenyuw@linux.intel.com>
Date: Thu, 13 May 2021 09:20:14 -0000
Message-ID: <162089761430.26537.7299775580131577211@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210511083332.1740601-1-zhenyuw@linux.intel.com>
In-Reply-To: <20210511083332.1740601-1-zhenyuw@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBG?=
 =?utf-8?q?ix_I915=5FGVT_dependency_=28rev2=29?=
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

Series: Fix I915_GVT dependency (rev2)
URL   : https://patchwork.freedesktop.org/series/89996/
State : failure

== Summary ==

Applying: drm/i915/gvt: Move mdev attribute groups into kvmgt module
Applying: Revert "vfio/gvt: fix DRM_I915_GVT dependency on VFIO_MDEV"
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/Kconfig
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/Kconfig
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/Kconfig
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0002 Revert "vfio/gvt: fix DRM_I915_GVT dependency on VFIO_MDEV"
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
