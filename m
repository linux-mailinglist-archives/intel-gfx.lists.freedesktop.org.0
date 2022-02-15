Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 540714B6DB7
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 14:37:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7889710E4CB;
	Tue, 15 Feb 2022 13:37:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E6B110E4CB
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 13:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644932259; x=1676468259;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=K3ItX19hXtIdMyCIS2ENUtdSaGJMFNYSX7p4YmhQcgA=;
 b=JbPjLveunplHSo/Gbu6ADA4vVuEANrRmz3sIwWUITX3RMsQlBqGJc7dd
 1HsCiSIt/hM0sBSe+knHFsDvZt8l7rMQ1TH6EmIyc02VQzWQo7Tuue/cj
 7hGWc6d3rPUfuNp+3e78DDe9gA/WdXsHkytNpJfg8BBZVLoWf6aTLdffG
 FEFUc71loUWkrKEYTxNhvE+nHS2eUktyhTPxUEQOioC8qpkBnY0TEQVOG
 7GEXl4z5pfzkn5UpWKUZbUQ0M9x6i3hPcR2EJp4SJZ3kmbUh8VGb27IJh
 4neK7Qeu/CVef4uMiO1hecRMWr8CWTF827tc3DtT7llO6igfgViC4z8bK A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="313625886"
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="313625886"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 05:37:38 -0800
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="603828755"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 05:37:36 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Feb 2022 19:07:21 +0530
Message-Id: <20220215133727.13450-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/6] DGFX OpRegion
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This series setup DGFX OpRegion.
v2 has addressed the review comment to keep only opregion
abstraction stuff in "Abstract opregion function" opregion
patch and some other error handling as mentioned in the 
patches commitlog.

Anshuman Gupta (6):
  drm/i915/opregion: Add intel_opregion_init() wrapper
  drm/i915/opregion: Abstract opregion function
  drm/i915/opregion: Add dgfx opregion func
  drm/i915/opregion: Cond dgfx opregion func registration
  drm/i915/dgfx: OPROM OpRegion Setup
  drm/i915/dgfx: Get VBT from rvda

 drivers/gpu/drm/i915/display/intel_opregion.c | 551 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_opregion.h |   8 +-
 drivers/gpu/drm/i915/i915_driver.c            |   2 +-
 3 files changed, 510 insertions(+), 51 deletions(-)

-- 
2.26.2

