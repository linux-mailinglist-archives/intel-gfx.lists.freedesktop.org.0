Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB5D90635A
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 07:14:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D57510E202;
	Thu, 13 Jun 2024 05:14:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YVIj0wuD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAEB210E102;
 Thu, 13 Jun 2024 05:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718255674; x=1749791674;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jKBLNDc0JaQ33vAfq9m5Y6cGHYOAJi1Q+J7Z5veYdqo=;
 b=YVIj0wuDg4G4BENLTM8KUHuS3/97jBA4GKuKKUgXDnCyUZyUZKbELyhq
 6A4pXAZpq6XgjwBEEdPFPT4ruDPKjA8m34RcadtrEbf1XFefSKFaOdQHG
 sLKom8CSXzqI1LdEaByDdR3YuRwMx+bJHwbQVZo55kyMAvTqPh69O7l4P
 4R6IHWTRdn8TWsx4kLgx7EM9V39i+QDJJWF6Df5nggLup3nPTvmhzpTXk
 8AJHlMQbAiWxQ3cuTaQPCtRl0PwtlY/yxul7HJxeKxQDmsy6XomasSpu9
 EeG2n/i5Qa+Q3BcA4bESqMBfNXJCXpLcE/oREfzScYNb7IuavYv4jSG2r g==;
X-CSE-ConnectionGUID: Dl9ljVOkReCwb530AbMlzg==
X-CSE-MsgGUID: fFpKq0xaS/mIXYobcsPJ0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="14774870"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="14774870"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 22:13:08 -0700
X-CSE-ConnectionGUID: PaV6sNLpSPy9ILNaV1z/9g==
X-CSE-MsgGUID: YSNFnUKlTIu3ySQBIWbn8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="40126093"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa009.jf.intel.com with ESMTP; 12 Jun 2024 22:13:06 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: mitulkumar.ajitkumar.golani@intel.com, ankit.k.nautiyal@intel.com,
 suraj.kandpal@intel.com, jani.nikula@linux.intel.com, sfr@canb.auug.org.au
Subject: [PATCH 0/2] CMRR patch fixes
Date: Thu, 13 Jun 2024 10:43:15 +0530
Message-ID: <20240613051317.345753-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
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

Address following issues regarding CMRR

1. Describe target_rr_divider in struct drm_dp_as_sdp.
3. Use required macro to avoid overflow.

Mitul Golani (2):
  drm/dp: Describe target_rr_divider in struct drm_dp_as_sdp
  drm/i915/display: Update calculation to avoid overflow

 drivers/gpu/drm/i915/display/intel_vrr.c | 9 +++++----
 include/drm/display/drm_dp_helper.h      | 1 +
 2 files changed, 6 insertions(+), 4 deletions(-)

-- 
2.45.2

