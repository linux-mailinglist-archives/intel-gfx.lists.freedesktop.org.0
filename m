Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6D26EB384
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 23:22:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E71810E344;
	Fri, 21 Apr 2023 21:22:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CD3B810E344;
 Fri, 21 Apr 2023 21:22:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C6140A0BA8;
 Fri, 21 Apr 2023 21:22:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: fei.yang@intel.com
Date: Fri, 21 Apr 2023 21:22:47 -0000
Message-ID: <168211216777.5825.15161132580167727090@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230421173801.3369303-1-fei.yang@intel.com>
In-Reply-To: <20230421173801.3369303-1-fei.yang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/mtl=3A_Define_MOCS_and_PAT_tables_for_MTL_=28rev10?=
 =?utf-8?q?=29?=
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

Series: drm/i915/mtl: Define MOCS and PAT tables for MTL (rev10)
URL   : https://patchwork.freedesktop.org/series/115980/
State : warning

== Summary ==

Error: dim checkpatch failed
9e568e869ce8 drm/i915/mtl: Define MOCS and PAT tables for MTL
61f1e9e5a3cd drm/i915/mtl: fix mocs selftest
fea798a30121 drm/i915/mtl: Add PTE encode function
5e9f621ae3f4 drm/i915: preparation for using PAT index
28e4dd4c864a drm/i915: use pat_index instead of cache_level
5ff383845c93 drm/i915: make sure correct pte encode is used
-:26: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#26: FILE: drivers/gpu/drm/i915/gt/gen8_ppgtt.c:59:
+static u64 gen12_pte_encode(dma_addr_t addr,
 			  unsigned int pat_index,

total: 0 errors, 0 warnings, 1 checks, 18 lines checked
a3038577a7c3 drm/i915/mtl: end support for set caching ioctl
70b58f9ac8cc drm/i915: Allow user to set cache at BO creation


