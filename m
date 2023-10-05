Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00EE27B99DE
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 04:19:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A778B10E14B;
	Thu,  5 Oct 2023 02:18:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9C8EB10E14B;
 Thu,  5 Oct 2023 02:18:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7B656A7DFB;
 Thu,  5 Oct 2023 02:18:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Date: Thu, 05 Oct 2023 02:18:21 -0000
Message-ID: <169647230148.7513.2109523220957985366@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231004183625.1307100-1-jonathan.cavitt@intel.com>
In-Reply-To: <20231004183625.1307100-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv5=2C1/4=5D_drm/i915=3A_Add_GuC_TLB?=
 =?utf-8?q?_Invalidation_pci_tags?=
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

Series: series starting with [v5,1/4] drm/i915: Add GuC TLB Invalidation pci tags
URL   : https://patchwork.freedesktop.org/series/124636/
State : warning

== Summary ==

Error: dim checkpatch failed
27e7965d6b55 drm/i915: Add GuC TLB Invalidation pci tags
feb663efcadc drm/i915: Define and use GuC and CTB TLB invalidation routines
-:342: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#342: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1997:
+		GEM_BUG_ON(wait->busy);

total: 0 errors, 1 warnings, 0 checks, 458 lines checked
f59bb1890992 drm/i915: No TLB invalidation on wedged or suspended GT
757482f22624 drm/i915/gt: Increase sleep in gt_tlb selftest sanitycheck


