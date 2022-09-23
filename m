Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 613D75E7137
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 03:12:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0273510E089;
	Fri, 23 Sep 2022 01:12:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4304F10E089;
 Fri, 23 Sep 2022 01:12:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3BF45A73C7;
 Fri, 23 Sep 2022 01:12:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Fri, 23 Sep 2022 01:12:01 -0000
Message-ID: <166389552121.30120.5728026494797809665@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220922221117.458087-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220922221117.458087-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_prepare_for_uC_loading_on_MTL?=
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

Series: drm/i915: prepare for uC loading on MTL
URL   : https://patchwork.freedesktop.org/series/108925/
State : warning

== Summary ==

Error: dim checkpatch failed
c6f416737aa1 drm/i915/huc: only load HuC on GTs that have VCS engines
946fd3c4cb17 drm/i915/uc: fetch uc firmwares for each GT
ea97d7e64607 drm/i915/uc: use different ggtt pin offsets for uc loads
-:13: WARNING:TYPO_SPELLING: 'happend' may be misspelled - perhaps 'happened'?
#13: 
the same GGTT at the same time. On MTL, however, this can happend if both
                                                          ^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 42 lines checked
f394b49db4fe drm/i915/guc: Add GuC deprivilege feature to MTL
811093c9215e drm/i915/mtl: Handle wopcm per-GT and limit calculations.
-:118: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#118: 
rename from drivers/gpu/drm/i915/intel_wopcm.c

total: 0 errors, 1 warnings, 0 checks, 252 lines checked
fa19820e3717 drm/i915/guc: define media GT GuC send regs
c0a6b5d87e24 drm/i915/guc: handle interrupts from media GuC


