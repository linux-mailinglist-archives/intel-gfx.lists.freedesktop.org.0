Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B207E46AB0D
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Dec 2021 22:52:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A10B6733BC;
	Mon,  6 Dec 2021 21:52:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94401733BC
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Dec 2021 21:52:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="261477880"
X-IronPort-AV: E=Sophos;i="5.87,292,1631602800"; d="scan'208";a="261477880"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2021 13:52:49 -0800
X-IronPort-AV: E=Sophos;i="5.87,292,1631602800"; d="scan'208";a="514940156"
Received: from mdfaisal-mobl.amr.corp.intel.com (HELO mvcheng-desk2.intel.com)
 ([10.212.148.159])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2021 13:52:48 -0800
From: Michael Cheng <michael.cheng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Dec 2021 13:52:44 -0800
Message-Id: <20211206215245.513677-1-michael.cheng@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 0/1] Introduce new i915 macros for checking
 PTEs
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
Cc: michael.cheng@intel.com, wayne.boyer@intel.com, jani.nikula@intel.com,
 lucas.demarchi@intel.com, siva.mullati@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This series is to introduce new macros generic to i915 for checking 0 and 1
bits, instead on relying on whats defined by the mmu, since it could
be different or non-exisitent between different platforms.

v2: Corrected sender's email.

v3: Corrected spelling error.

v4: Clean up a few other macros that are checking 0 and 1 bits.
Thanks to Lucas De Marchi for suggesting these cleanups.

v5: Remove changes to GEN6_PTE_VALID/GEN6_PDE_VALID and BYT_PTE_WRITEABLE.
Those macros checks for 32bit PTEs, and our new macro is checking for 64bit.

v6: Use GEN8_* instead of I915_*

Michael Cheng (1):
  drm/i915: Introduce new macros for i915 PTE

 drivers/gpu/drm/i915/gt/gen8_ppgtt.c |  6 +++---
 drivers/gpu/drm/i915/gt/intel_ggtt.c |  2 +-
 drivers/gpu/drm/i915/gt/intel_gtt.h  |  3 +++
 drivers/gpu/drm/i915/gvt/gtt.c       | 12 ++++++------
 4 files changed, 13 insertions(+), 10 deletions(-)

-- 
2.25.1

