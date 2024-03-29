Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49956891043
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 02:15:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BE4F10E939;
	Fri, 29 Mar 2024 01:15:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C162310E939;
 Fri, 29 Mar 2024 01:15:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_spi=3A_add_driver_for_Int?=
 =?utf-8?q?el_discrete_graphics?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexander Usyskin" <alexander.usyskin@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Mar 2024 01:15:43 -0000
Message-ID: <171167494379.1064396.308318191260583289@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240328122236.1718111-1-alexander.usyskin@intel.com>
In-Reply-To: <20240328122236.1718111-1-alexander.usyskin@intel.com>
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

Series: spi: add driver for Intel discrete graphics
URL   : https://patchwork.freedesktop.org/series/131763/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/131763/revisions/1/mbox/ not applied
Applying: spi: add auxiliary device for intel dg spi
Applying: drm/i915/spi: add spi device for discrete graphics
Applying: drm/i915/spi: add intel_spi_region map
Applying: drm/i915/spi: add support for access mode
Applying: spi: add driver for intel graphics on-die spi device
Applying: spi: intel-dg: implement region enumeration
Applying: spi: intel-dg: implement spi access functions
Applying: spi: intel-dg: spi register with mtd
Applying: spi: intel-dg: implement mtd access handlers
Applying: spi: intel-dg: align 64bit read and write
Applying: spi: intel-dg: wake card on operations
Applying: drm/xe/spi: add on-die spi device
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/xe/Makefile
M	drivers/gpu/drm/xe/xe_device.c
M	drivers/gpu/drm/xe/xe_device_types.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/xe/xe_device_types.h
Auto-merging drivers/gpu/drm/xe/xe_device.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/xe/xe_device.c
Auto-merging drivers/gpu/drm/xe/Makefile
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0012 drm/xe/spi: add on-die spi device
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


