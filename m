Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 530BEA77B84
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Apr 2025 14:59:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7F4C10E5AC;
	Tue,  1 Apr 2025 12:59:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from e6b6f09ec485 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B129F10E59E;
 Tue,  1 Apr 2025 12:59:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_hdrtest=3A_hide_the_disgu?=
 =?utf-8?q?sting_turds?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 01 Apr 2025 12:59:32 -0000
Message-ID: <174351237271.22413.2807281599249456080@e6b6f09ec485>
X-Patchwork-Hint: ignore
References: <20250401121830.21696-1-jani.nikula@intel.com>
In-Reply-To: <20250401121830.21696-1-jani.nikula@intel.com>
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

Series: hdrtest: hide the disgusting turds
URL   : https://patchwork.freedesktop.org/series/147058/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/147058/revisions/1/mbox/ not applied
Applying: drm: place header test files in .hdrtest subdirectories
Applying: drm/xe: place header test files in .hdrtest subdirectories
Applying: drm/i915: place header test files in .hdrtest subdirectories
Applying: kbuild: hdrtest: place header test files in .hdrtest subdirectories
Applying: drm: add config option for extra build-time checks
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/Kconfig
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/Kconfig
CONFLICT (content): Merge conflict in drivers/gpu/drm/Kconfig
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0005 drm: add config option for extra build-time checks
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


