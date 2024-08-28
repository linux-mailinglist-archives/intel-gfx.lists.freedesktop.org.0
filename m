Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE109961DA8
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2024 06:34:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7105810E495;
	Wed, 28 Aug 2024 04:34:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10E9510E145;
 Wed, 28 Aug 2024 04:34:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915/hwmon=3A_expose_?=
 =?utf-8?q?package_temperature?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Raag Jadav" <raag.jadav@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Aug 2024 04:34:16 -0000
Message-ID: <172481965606.809009.10595758574131119084@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240828044512.2710381-1-raag.jadav@intel.com>
In-Reply-To: <20240828044512.2710381-1-raag.jadav@intel.com>
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

Series: drm/i915/hwmon: expose package temperature
URL   : https://patchwork.freedesktop.org/series/137874/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/137874/revisions/1/mbox/ not applied
Applying: drm/i915/hwmon: expose package temperature
Using index info to reconstruct a base tree...
M	Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
M	drivers/gpu/drm/i915/i915_hwmon.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/i915_hwmon.c
Auto-merging Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
CONFLICT (content): Merge conflict in Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915/hwmon: expose package temperature
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


