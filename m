Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2158374D4
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jan 2024 22:06:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84DEA10EF7C;
	Mon, 22 Jan 2024 21:05:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65F3010EF7C;
 Mon, 22 Jan 2024 21:05:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Fix_VMA_?=
 =?utf-8?q?UAF_on_destroy_against_deactivate_race?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Janusz Krzysztofik" <janusz.krzysztofik@linux.intel.com>
Date: Mon, 22 Jan 2024 21:05:43 -0000
Message-ID: <170595754341.665201.16237290732718135426@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240122141007.401490-5-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20240122141007.401490-5-janusz.krzysztofik@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Fix VMA UAF on destroy against deactivate race
URL   : https://patchwork.freedesktop.org/series/129026/
State : warning

== Summary ==

Error: dim checkpatch failed
55cc6a52bd6b drm/i915/vma: Fix UAF on destroy against retire race
90d6c8b0ef9a Manually revert "drm/i915: Fix a VMA UAF for multi-gt platform"
-:7: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit f56fe3e91787 ("drm/i915: Fix a VMA UAF for multi-gt platform")'
#7: 
This reverts changes introduced by commit f56fe3e91787, obsoleted by

total: 1 errors, 0 warnings, 0 checks, 45 lines checked
940d2453dbc1 Revert "drm/i915: Wait for active retire before i915_active_fini()"


