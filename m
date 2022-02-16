Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D55D84B9063
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 19:37:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 125AA10E5AA;
	Wed, 16 Feb 2022 18:37:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2912E10E62B;
 Wed, 16 Feb 2022 18:37:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 227F1A008A;
 Wed, 16 Feb 2022 18:37:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Date: Wed, 16 Feb 2022 18:37:30 -0000
Message-ID: <164503665011.16091.14543337660624540985@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220215133727.13450-1-anshuman.gupta@intel.com>
In-Reply-To: <20220215133727.13450-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_DGFX_OpRegion_=28rev2=29?=
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

Series: DGFX OpRegion (rev2)
URL   : https://patchwork.freedesktop.org/series/99738/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6d79d75ff620 drm/i915/opregion: Add intel_opregion_init() wrapper
768f0a166cf5 drm/i915/opregion: Abstract opregion function
-:209: ERROR:SPACING: space required before the open parenthesis '('
#209: FILE: drivers/gpu/drm/i915/display/intel_opregion.c:1265:
+	if(drm_WARN_ON(&i915->drm, !opregion->asls || !opregion->header))

total: 1 errors, 0 warnings, 0 checks, 254 lines checked
80d5f4ca4fd8 drm/i915/opregion: Add dgfx opregion func
f687dde9115c drm/i915/opregion: Cond dgfx opregion func registration
526152d056f6 drm/i915/dgfx: OPROM OpRegion Setup
-:229: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*exprom_hdr)...) over kzalloc(sizeof(struct expansion_rom_header)...)
#229: FILE: drivers/gpu/drm/i915/display/intel_opregion.c:1046:
+	exprom_hdr = kzalloc(sizeof(struct expansion_rom_header), GFP_KERNEL);

-:230: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*exprom_pci_data)...) over kzalloc(sizeof(struct pci_data_structure)...)
#230: FILE: drivers/gpu/drm/i915/display/intel_opregion.c:1047:
+	exprom_pci_data = kzalloc(sizeof(struct pci_data_structure), GFP_KERNEL);

total: 0 errors, 0 warnings, 2 checks, 417 lines checked
5cb086bbc22d drm/i915/dgfx: Get VBT from rvda


