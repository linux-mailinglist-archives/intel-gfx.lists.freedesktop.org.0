Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCCA3F7D84
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 23:11:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62A59899A5;
	Wed, 25 Aug 2021 21:11:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CFDAE89935;
 Wed, 25 Aug 2021 21:11:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C5FC2A66C9;
 Wed, 25 Aug 2021 21:11:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Aug 2021 21:11:34 -0000
Message-ID: <162992589478.17673.10773407355209781300@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1629906431.git.jani.nikula@intel.com>
In-Reply-To: <cover.1629906431.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/fdi=3A_refactor_some_fdi_code_out_of_intel=5Fdispl?=
 =?utf-8?q?ay=2Ec?=
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

Series: drm/i915/fdi: refactor some fdi code out of intel_display.c
URL   : https://patchwork.freedesktop.org/series/94026/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b573cd162507 drm/i915/fdi: move intel_update_fdi_pll_freq to intel_fdi.c
e2f0b2d220b7 drm/i915/fdi: move fdi bc bifurcation functions to intel_fdi.c
-:125: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#125: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:218:
+		BUG();

total: 0 errors, 1 warnings, 0 checks, 117 lines checked
efc363bfa49e drm/i915/fdi: move more FDI stuff to FDI link train hooks
dd2f514ed896 drm/i915/fdi: move fdi mphy reset and programming to intel_fdi.c
8e6bd97aa2be drm/i915/fdi: convert BUG()'s to MISSING_CASE()


