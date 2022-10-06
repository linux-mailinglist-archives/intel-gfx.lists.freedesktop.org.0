Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E655F609D
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Oct 2022 07:29:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F91E10E4DB;
	Thu,  6 Oct 2022 05:29:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5EBA10E4A0
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Oct 2022 05:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665034167; x=1696570167;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=A+4gDx/HCLjx3LSoK5GvBiGKnJodSb7FfbVsNJ5tPVc=;
 b=ac6pd6QDrqD1eubdGxxAlAmJ83oOCWbP1e9B7XAa5qdaGZ8W76ZiGWzT
 i/YP9YNUJ7U1d+3foLqL3ZU+jHIN+ZMkZdoti2jszpClo+Z5rSdoX+cEY
 2jiqxjMYGTY20FxT3IXOrvAHb6JE7XLv3j9ZiUIBnj7fp85+XdsCVGnx4
 V5Z6X3rFMN21NOdtJao9G2rO/9GzngIuOnKNFVTnIs6LYOT2LGB5V4BwH
 6qlQ1piKSpH/O1O58Z4NVLechelVXJ+mwHjUe2a1mK3XYdbWkpWT4zeRN
 eqau2RLQF7GBLP94+1k1V3oredp8YZPewHAVYXTlbEKrqLvb6Uzm2ImeN g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="300949257"
X-IronPort-AV: E=Sophos;i="5.95,163,1661842800"; d="scan'208";a="300949257"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 22:29:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="687278710"
X-IronPort-AV: E=Sophos;i="5.95,163,1661842800"; d="scan'208";a="687278710"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga008.fm.intel.com with ESMTP; 05 Oct 2022 22:29:27 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Oct 2022 22:31:28 -0700
Message-Id: <20221006053129.663793-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/1] Fix Guc-Err-Capture sizing warning
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

GuC Error capture initialization calculates an estimation
buffer size for worst case scenario of all engines getting
reset. Fix the calculation change from drm_warn to drm_dbg
since its a corner case

Changes from prior revs:
   v2: - Reduce the guc-log-buffer error-capture-region allocation
         from 4MB to 1MB since the corrected math uncovers the
         larger headroom available to us.
       - Modify the code comment to focus on highlighting the
         headroom we have from how min_est is caclulated.
       - Add example min-est data from real hw in the patch comment.
   v1: - Change drm_dbg to drm_warn for the case of the mis-estated
         size not being met (John Harrison).

Alan Previn (1):
  drm/i915/guc: Fix GuC error capture sizing estimation and reporting

 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 29 ++++++++++++-------
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |  6 ++--
 2 files changed, 21 insertions(+), 14 deletions(-)

-- 
2.34.1

