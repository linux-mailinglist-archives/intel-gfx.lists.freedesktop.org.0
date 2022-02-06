Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1504AB023
	for <lists+intel-gfx@lfdr.de>; Sun,  6 Feb 2022 16:14:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 202D710E3DD;
	Sun,  6 Feb 2022 15:14:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F04C510E3DD;
 Sun,  6 Feb 2022 15:14:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EA72FA882E;
 Sun,  6 Feb 2022 15:14:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Sun, 06 Feb 2022 15:14:36 -0000
Message-ID: <164416047691.31536.17634812860788159589@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220206144311.5053-1-anshuman.gupta@intel.com>
In-Reply-To: <20220206144311.5053-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_DGFX_OpRegion?=
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

Series: DGFX OpRegion
URL   : https://patchwork.freedesktop.org/series/99738/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f2cee5f27f9b drm/i915/opregion: Abstract opregion function
7b611238fd8b drm/i915/opregion: Register opreg func only for disp parts
00e2ab253c8f drm/i915/dgfx: OPROM OpRegion Setup
-:225: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*exprom_hdr)...) over kzalloc(sizeof(struct expansion_rom_header)...)
#225: FILE: drivers/gpu/drm/i915/display/intel_opregion.c:1012:
+	exprom_hdr = kzalloc(sizeof(struct expansion_rom_header), GFP_KERNEL);

-:226: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*exprom_pci_data)...) over kzalloc(sizeof(struct pci_data_structure)...)
#226: FILE: drivers/gpu/drm/i915/display/intel_opregion.c:1013:
+	exprom_pci_data = kzalloc(sizeof(struct pci_data_structure), GFP_KERNEL);

total: 0 errors, 0 warnings, 2 checks, 402 lines checked
40697cd393f3 drm/i915/dgfx: Get VBT from rvda


