Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5643AD5C8D
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 18:44:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAF5B10E6D7;
	Wed, 11 Jun 2025 16:44:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 597AB10E6D7;
 Wed, 11 Jun 2025 16:44:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Add_WildCat_Lake_support?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Jun 2025 16:44:37 -0000
Message-ID: <174966027735.68523.2337383864054795412@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250611134431.2761487-1-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20250611134431.2761487-1-dnyaneshwar.bhadane@intel.com>
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

Series: Add WildCat Lake support
URL   : https://patchwork.freedesktop.org/series/150101/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/150101/revisions/1/mbox/ not applied
Applying: drm/i915/xe3lpd: Add support for display version 30.02
Applying: drm/xe/xe3: Add support for graphics IP version 30.03
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/xe/xe_pci.c
M	drivers/gpu/drm/xe/xe_wa.c
M	drivers/gpu/drm/xe/xe_wa_oob.rules
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/xe/xe_wa_oob.rules
CONFLICT (content): Merge conflict in drivers/gpu/drm/xe/xe_wa_oob.rules
Auto-merging drivers/gpu/drm/xe/xe_wa.c
Auto-merging drivers/gpu/drm/xe/xe_pci.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0002 drm/xe/xe3: Add support for graphics IP version 30.03
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


