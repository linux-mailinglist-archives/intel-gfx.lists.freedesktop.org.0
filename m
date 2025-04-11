Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E68F6A85DA1
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 14:50:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A476010E0B8;
	Fri, 11 Apr 2025 12:50:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 32c37dd7f93d (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6904610E0B8;
 Fri, 11 Apr 2025 12:50:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/selftest/mm?=
 =?utf-8?q?ap=5Fmigrate=3A_wait_for_clear_memory?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mikolaj Wasiak" <mikolaj.wasiak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Apr 2025 12:50:18 -0000
Message-ID: <174437581842.4396.11951391673345568613@32c37dd7f93d>
X-Patchwork-Hint: ignore
References: <lirio6uzqw4v62akcfcoo7w37gai24nbgefoyzxviysjape7aj@ck7iwwcnvpx4>
In-Reply-To: <lirio6uzqw4v62akcfcoo7w37gai24nbgefoyzxviysjape7aj@ck7iwwcnvpx4>
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

Series: drm/i915/selftest/mmap_migrate: wait for clear memory
URL   : https://patchwork.freedesktop.org/series/147582/
State : warning

== Summary ==

Error: dim checkpatch failed
6bfe6056e652 drm/i915/selftest/mmap_migrate: wait for clear memory
-:73: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#73: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:1240:
+		err = igt_fill_mappable(placements[0], &objects,
+				flags & IGT_MMAP_MIGRATE_UNFAULTABLE);

total: 0 errors, 0 warnings, 1 checks, 54 lines checked


