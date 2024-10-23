Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCAFF9ACEDF
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 17:34:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C72810E812;
	Wed, 23 Oct 2024 15:34:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y16EoV27";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55AF910E812;
 Wed, 23 Oct 2024 15:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729697647; x=1761233647;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kn1oBLUTo7zF0luBRhvX3epiUZgoAxmnL6fzo6DA2x8=;
 b=Y16EoV27BKNZGkscjy82VmOTY5A8oL5qJmCLwP75lQDqabRFDMJ1Vp5E
 EPSdbMrHoE/j/ZtWuhSZ5t/bEkUbiH4O23wqdBFClMXd5GBK983ErrQyH
 px0RHc2AXCE4fLCjqCFidm8RxhWIInO6xJUjlqIxZihBtDdtyGMkRdBkk
 nyTy1zGESWPHOEaOZloeQchUNR/gw+ARUSsQFtpizto6KsKLcTM5ZYPZk
 9J7FRJXFDeqx0grqHe/AXT80x3HDOzTXzPZHfYnj4HklqV80syMDhekPc
 JJzfk4UjSXJIv9v5Y3nB5bxhmTBHK1fEr8B8Pd8138SdTfLIN1AgtAy7c A==;
X-CSE-ConnectionGUID: HCoc4rY6TZ+WkKHqZC3ULQ==
X-CSE-MsgGUID: owty6tW8SUmPMyN23ueWfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29073353"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29073353"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 08:34:07 -0700
X-CSE-ConnectionGUID: kufS64njRdORipslHPFxSA==
X-CSE-MsgGUID: vrr0asMqRYC3td7wsEO1Jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="80276202"
Received: from dnelso2-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.125.110.239])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 08:34:05 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Jani Nikula <jani.nikula@intel.com>,
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Subject: [PATCH v2 0/2] drm/i915/xe2lpd: Update C20 HDMI TMDS algorithm to
 include tx_misc
Date: Wed, 23 Oct 2024 12:33:44 -0300
Message-ID: <20241023153352.144146-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

This is v2 of [1] with an extra patch to have
intel_c20_compute_hdmi_tmds_pll() using crtc_state to simplify the
interface.

[1] https://patchwork.freedesktop.org/series/140136/

Gustavo Sousa (2):
  drm/i915/cx0: Pass crtc_state to intel_c20_compute_hdmi_tmds_pll()
  drm/i915/xe2lpd: Update C20 algorithm to include tx_misc

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 21 ++++++++++++-------
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  2 ++
 2 files changed, 16 insertions(+), 7 deletions(-)

-- 
2.47.0

