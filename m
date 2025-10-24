Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A0EC03F06
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 02:11:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC92010E99B;
	Fri, 24 Oct 2025 00:11:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 97596180aaec (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3725810E9A1;
 Fri, 24 Oct 2025 00:11:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_vfio=3A_Give_VFIO=5FDEVIC?=
 =?utf-8?q?E=5FGET=5FREGION=5FINFO_its_own_op?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Gunthorpe" <jgg@nvidia.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Oct 2025 00:11:54 -0000
Message-ID: <176126471421.49820.2575674548900099910@97596180aaec>
X-Patchwork-Hint: ignore
References: <0-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
In-Reply-To: <0-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
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

Series: vfio: Give VFIO_DEVICE_GET_REGION_INFO its own op
URL   : https://patchwork.freedesktop.org/series/156452/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/156452/revisions/1/mbox/ not applied
Applying: vfio: Provide a get_region_info op
Applying: vfio/hisi: Convert to the get_region_info op
Applying: vfio/virtio: Convert to the get_region_info op
Applying: vfio/nvgrace: Convert to the get_region_info op
Applying: vfio/pci: Fill in the missing get_region_info ops
Applying: vfio/mtty: Provide a get_region_info op
Applying: vfio/mdpy: Provide a get_region_info op
Applying: vfio/mbochs: Provide a get_region_info op
Applying: vfio/platform: Provide a get_region_info op
Applying: vfio/fsl: Provide a get_region_info op
Applying: vfio/cdx: Provide a get_region_info op
Applying: vfio/ccw: Provide a get_region_info op
Applying: vfio/gvt: Provide a get_region_info op
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gvt/kvmgt.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gvt/kvmgt.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gvt/kvmgt.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0013 vfio/gvt: Provide a get_region_info op
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


