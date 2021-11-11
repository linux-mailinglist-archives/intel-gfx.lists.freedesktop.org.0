Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9608944CE80
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Nov 2021 01:46:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 421D66E81A;
	Thu, 11 Nov 2021 00:45:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79E116E81A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Nov 2021 00:45:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10164"; a="212853091"
X-IronPort-AV: E=Sophos;i="5.87,225,1631602800"; d="scan'208";a="212853091"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2021 16:45:53 -0800
X-IronPort-AV: E=Sophos;i="5.87,225,1631602800"; d="scan'208";a="501715569"
Received: from menghsia-mobl.amr.corp.intel.com (HELO mvcheng-desk2.intel.com)
 ([10.209.91.138])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2021 16:45:52 -0800
From: Michael Cheng <michael.cheng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Nov 2021 16:45:46 -0800
Message-Id: <20211111004549.144706-1-michael.cheng@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/3] Introduce new i915 macros for checking
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

This series is to introduce new macros generic to i915 for checking 0 and 1 bits,
instead on relying on whats defined by the mmu, since it could be different
or non-exisitent between different platforms.

v2: Corrected sender's email.

v3: Corrected spelling error.

v4: Clean up a few other macros that are checking 0 and 1 bits. 
Thanks to Lucas De Marchi for suggesting these cleanups. 

Michael Cheng (3):
  drm/i915: Introduce new macros for i915 PTE
  drm/i915: Clean up GEN6 page valid macros
  drm/i915: Clean up BYT_PTE_WRITEABLE

 drivers/gpu/drm/i915/gt/gen6_ppgtt.c |  2 +-
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c |  6 +++---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 14 +++++++-------
 drivers/gpu/drm/i915/gt/intel_gtt.h  |  6 +++---
 drivers/gpu/drm/i915/gvt/gtt.c       | 12 ++++++------
 5 files changed, 20 insertions(+), 20 deletions(-)

-- 
2.25.1

