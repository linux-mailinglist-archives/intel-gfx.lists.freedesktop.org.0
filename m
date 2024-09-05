Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D5A96D7DE
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 14:06:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B366310E885;
	Thu,  5 Sep 2024 12:06:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D03510E887;
 Thu,  5 Sep 2024 12:06:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915=3ARemove_unused_?=
 =?utf-8?q?parameter_in_marco=2E_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "He Lugang" <helugang@uniontech.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 05 Sep 2024 12:06:04 -0000
Message-ID: <172553796403.950487.13742202611874046392@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <F84191BE8AA4A690+20240831135114.497043-1-helugang@uniontech.com>
In-Reply-To: <F84191BE8AA4A690+20240831135114.497043-1-helugang@uniontech.com>
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

Series: drm/i915:Remove unused parameter in marco. (rev2)
URL   : https://patchwork.freedesktop.org/series/138076/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/138076/revisions/2/mbox/ not applied
Applying: drm/i915:Remove unused parameter in marco.
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_alpm.c
M	drivers/gpu/drm/i915/display/intel_psr.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_psr.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_psr.c
Auto-merging drivers/gpu/drm/i915/display/intel_alpm.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915:Remove unused parameter in marco.
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


