Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCB7504F79
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Apr 2022 13:41:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB7B810EC30;
	Mon, 18 Apr 2022 11:41:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4E86C10EC14;
 Mon, 18 Apr 2022 11:41:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4A85AA0003;
 Mon, 18 Apr 2022 11:41:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Mon, 18 Apr 2022 11:41:46 -0000
Message-ID: <165028210627.11401.7259040339151067549@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220418105408.13444-1-anshuman.gupta@intel.com>
In-Reply-To: <20220418105408.13444-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_DGFX_OpRegion_=28rev4=29?=
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

Series: DGFX OpRegion (rev4)
URL   : https://patchwork.freedesktop.org/series/99738/
State : warning

== Summary ==

Error: dim checkpatch failed
f20709da5fa0 drm/i915/opregion: Add intel_opregion_init() wrapper
78a0ce03f189 drm/i915/opregion: Abstract opregion function
69eb07b28866 drm/i915/opregion: Add dgfx opregion func
6268b7ad8dd7 drm/i915/opregion: Cond dgfx opregion func registration
9cbb10bdb056 drm/i915/dgfx: OPROM OpRegion Setup
-:236: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*exprom_hdr)...) over kzalloc(sizeof(struct expansion_rom_header)...)
#236: FILE: drivers/gpu/drm/i915/display/intel_opregion.c:1046:
+	exprom_hdr = kzalloc(sizeof(struct expansion_rom_header), GFP_KERNEL);

-:237: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*exprom_pci_data)...) over kzalloc(sizeof(struct pci_data_structure)...)
#237: FILE: drivers/gpu/drm/i915/display/intel_opregion.c:1047:
+	exprom_pci_data = kzalloc(sizeof(struct pci_data_structure), GFP_KERNEL);

total: 0 errors, 0 warnings, 2 checks, 395 lines checked
bcbd63a312ee drm/i915/dgfx: Get VBT from rvda


