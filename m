Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F05ACA96818
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Apr 2025 13:47:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3487610E575;
	Tue, 22 Apr 2025 11:47:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b68e5b3b99e1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74DFC10E573;
 Tue, 22 Apr 2025 11:47:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915/pch=3A_fix_warni?=
 =?utf-8?q?ng_for_coffeelake_on_SunrisePoint_PCH?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jiajia Liu" <liujiajia@kylinos.cn>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Apr 2025 11:47:53 -0000
Message-ID: <174532247347.25445.5755772850467961254@b68e5b3b99e1>
X-Patchwork-Hint: ignore
References: <20250418060006.807216-1-liujiajia@kylinos.cn>
In-Reply-To: <20250418060006.807216-1-liujiajia@kylinos.cn>
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

Series: drm/i915/pch: fix warning for coffeelake on SunrisePoint PCH
URL   : https://patchwork.freedesktop.org/series/148028/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/148028/revisions/1/mbox/ not applied
Applying: drm/i915/pch: fix warning for coffeelake on SunrisePoint PCH
Using index info to reconstruct a base tree...
A	drivers/gpu/drm/i915/soc/intel_pch.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_pch.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_pch.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915/pch: fix warning for coffeelake on SunrisePoint PCH
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


