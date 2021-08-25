Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F37D83F6F81
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 08:30:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F9426E154;
	Wed, 25 Aug 2021 06:30:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 675646E151;
 Wed, 25 Aug 2021 06:30:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 60B24AA917;
 Wed, 25 Aug 2021 06:30:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Koba Ko" <koba.ko@canonical.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Aug 2021 06:30:27 -0000
Message-ID: <162987302737.17673.8440879311162111481@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210825043522.346512-1-koba.ko@canonical.com>
In-Reply-To: <20210825043522.346512-1-koba.ko@canonical.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm=3A_i915=3A_move_intel=5F?=
 =?utf-8?q?pch=2Eh_to_include/drm?=
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

Series: series starting with [1/2] drm: i915: move intel_pch.h to include/drm
URL   : https://patchwork.freedesktop.org/series/93987/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
475a28975d6c drm: i915: move intel_pch.h to include/drm
-:59: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#59: 
rename from drivers/gpu/drm/i915/intel_pch.h

total: 0 errors, 1 warnings, 0 checks, 36 lines checked
20da4f30a35c drm/amdgpu: Disable PCIE_DPM on Intel RKL Platform


