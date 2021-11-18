Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E3045648C
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Nov 2021 21:54:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0E066E332;
	Thu, 18 Nov 2021 20:54:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B04346E069;
 Thu, 18 Nov 2021 20:54:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="215005336"
X-IronPort-AV: E=Sophos;i="5.87,245,1631602800"; d="scan'208";a="215005336"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2021 12:54:38 -0800
X-IronPort-AV: E=Sophos;i="5.87,245,1631602800"; d="scan'208";a="605325064"
Received: from aclausch-mobl.amr.corp.intel.com (HELO mvcheng-desk2.intel.com)
 ([10.209.48.184])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2021 12:54:37 -0800
From: Michael Cheng <michael.cheng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Nov 2021 12:54:31 -0800
Message-Id: <20211118205432.579910-1-michael.cheng@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/1] Use i915 macros to check for PTEs
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
 lucas.demarchi@intel.com, dri-devel@lists.freedesktop.org,
 siva.mullati@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Instead of using _PAGE_RW and _PAGE_PRESENT to check for 0 and 1 bits, this
series replaces them with GEN6_PTE_VALID and BYT_PTE_WRITEABLE. We should be using
macros defined for i915 to check these bits, instead of macros defined by the mmu. 
Some arch does not have these macros defined, thus leading to compilation errors.
 
v2: Corrected sender's email.
 
v3: Corrected spelling error.
 
v4: Clean up a few other macros that are checking 0 and 1 bits.

v5: Instead of introducing new macros for checking 0 and 1 bits,
    re-use already defined macros for i915.


Michael Cheng (1):
  drm/i915: Re-use i915 macros for checking PTEs

 drivers/gpu/drm/i915/gt/gen8_ppgtt.c |  6 +++---
 drivers/gpu/drm/i915/gt/intel_ggtt.c |  2 +-
 drivers/gpu/drm/i915/gvt/gtt.c       | 12 ++++++------
 3 files changed, 10 insertions(+), 10 deletions(-)

-- 
2.25.1

