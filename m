Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE708687F85
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 15:05:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA92C10E52B;
	Thu,  2 Feb 2023 14:05:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8F65C10E52B;
 Thu,  2 Feb 2023 14:05:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 86688AADD4;
 Thu,  2 Feb 2023 14:05:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 02 Feb 2023 14:05:51 -0000
Message-ID: <167534675150.11116.9810966811165617353@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1675339447.git.jani.nikula@intel.com>
In-Reply-To: <cover.1675339447.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dmc=3A_some_dmc_id_related_fixes_and_cleanups?=
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

Series: drm/i915/dmc: some dmc id related fixes and cleanups
URL   : https://patchwork.freedesktop.org/series/113596/
State : warning

== Summary ==

Error: dim checkpatch failed
20fa69323f49 drm/i915/dmc: add proper name to dmc id enum and use it
b2de2d242648 drm/i915/dmc: add for_each_dmc_id() and use it
-:18: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__dmc_id' - possible side-effects?
#18: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:252:
+#define for_each_dmc_id(__dmc_id) \
+	for ((__dmc_id) = DMC_FW_MAIN; (__dmc_id) < DMC_FW_MAX; (__dmc_id)++)

total: 0 errors, 0 warnings, 1 checks, 57 lines checked
0fc5c95928a2 drm/i915/dmc: remove unnecessary dmc_id validity check
4e42b93e1826 drm/i915/dmc: add is_valid_dmc_id() and use it
a7f94ff438db drm/i915/dmc: check incoming dmc id validity


