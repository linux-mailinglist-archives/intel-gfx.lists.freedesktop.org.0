Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6131756D0A8
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Jul 2022 19:59:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D3F618A226;
	Sun, 10 Jul 2022 17:59:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7A5B518A226;
 Sun, 10 Jul 2022 17:59:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6DBA9A66C8;
 Sun, 10 Jul 2022 17:59:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: priyanka.dandamudi@intel.com
Date: Sun, 10 Jul 2022 17:59:05 -0000
Message-ID: <165747594541.6686.15772005083105671699@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220710172925.2465158-1-priyanka.dandamudi@intel.com>
In-Reply-To: <20220710172925.2465158-1-priyanka.dandamudi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_support_for_LMEM_PCIe_resizable_bar?=
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

Series: Add support for LMEM PCIe resizable bar
URL   : https://patchwork.freedesktop.org/series/106160/
State : warning

== Summary ==

Error: dim checkpatch failed
f56a085e66b5 drm/i915: Add support for LMEM PCIe resizable bar
d4d1f141dc3c drm/i915: Add lmem_bar_size modparam
-:55: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 32)
#55: FILE: drivers/gpu/drm/i915/gt/intel_region_lmem.c:71:
+		if (!(bar_sizes & BIT(pci_rebar_bytes_to_size(rebar_size))) ||
[...]
+				rebar_size = lmem_size;

total: 0 errors, 1 warnings, 0 checks, 58 lines checked


