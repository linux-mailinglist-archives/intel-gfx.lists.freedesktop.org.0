Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED0F7B7393
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 23:57:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 041A210E31E;
	Tue,  3 Oct 2023 21:57:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CA46210E31E;
 Tue,  3 Oct 2023 21:57:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B03C9A7DFB;
 Tue,  3 Oct 2023 21:57:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Date: Tue, 03 Oct 2023 21:57:43 -0000
Message-ID: <169637026369.4382.635297624932494080@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231003210156.1172732-1-jonathan.cavitt@intel.com>
In-Reply-To: <20231003210156.1172732-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv4=2C1/3=5D_drm/i915=3A_Add_GuC_TLB?=
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

Series: series starting with [v4,1/3] drm/i915: Add GuC TLB Invalidation pci tags
URL   : https://patchwork.freedesktop.org/series/124575/
State : warning

== Summary ==

Error: dim checkpatch failed
2112f658680f drm/i915: Add GuC TLB Invalidation pci tags
febaffe1c6c6 drm/i915: Define and use GuC and CTB TLB invalidation routines
-:124: ERROR:TRAILING_WHITESPACE: trailing whitespace
#124: FILE: drivers/gpu/drm/i915/gt/intel_tlb.c:142:
+^I^I^I/* $

-:224: ERROR:TRAILING_WHITESPACE: trailing whitespace
#224: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc.h:437:
+^I$

-:244: ERROR:TRAILING_WHITESPACE: trailing whitespace
#244: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:1193:
+^I/* $

-:338: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#338: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1991:
+		GEM_BUG_ON(wait->busy);

total: 3 errors, 1 warnings, 0 checks, 459 lines checked
6a9427e33b51 drm/i915: No TLB invalidation on wedged or suspended GT


