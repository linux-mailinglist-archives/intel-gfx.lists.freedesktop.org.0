Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F35D25FD1AF
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 02:43:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB65910E11F;
	Thu, 13 Oct 2022 00:43:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AE03C10E11F;
 Thu, 13 Oct 2022 00:43:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 598D4A8830;
 Thu, 13 Oct 2022 00:43:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Thu, 13 Oct 2022 00:43:30 -0000
Message-ID: <166562181033.20367.7791183744467757444@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221013000332.1738078-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20221013000332.1738078-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_prepare_for_uC_loading_on_MTL_=28rev2=29?=
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

Series: drm/i915: prepare for uC loading on MTL (rev2)
URL   : https://patchwork.freedesktop.org/series/108925/
State : warning

== Summary ==

Error: dim checkpatch failed
927847787d62 drm/i915/huc: only load HuC on GTs that have VCS engines
b2f08a65b6df drm/i915/uc: fetch uc firmwares for each GT
fdfff93405bc drm/i915/uc: use different ggtt pin offsets for uc loads
-:13: WARNING:TYPO_SPELLING: 'happend' may be misspelled - perhaps 'happened'?
#13: 
the same GGTT at the same time. On MTL, however, this can happend if both
                                                          ^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 79 lines checked
d039e46d8f9a drm/i915/guc: Add GuC deprivilege feature to MTL
ded43d43f305 drm/i915/mtl: Handle wopcm per-GT and limit calculations.
-:122: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#122: 
rename from drivers/gpu/drm/i915/intel_wopcm.c

total: 0 errors, 1 warnings, 0 checks, 253 lines checked
be260c323dd0 drm/i915/guc: define media GT GuC send regs
0271d7fa9a62 drm/i915/guc: handle interrupts from media GuC


