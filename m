Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CFEA9A1D0C
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2024 10:21:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C89810E7C8;
	Thu, 17 Oct 2024 08:21:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VpIpjtTf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55AC210E7C3;
 Thu, 17 Oct 2024 08:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729153305; x=1760689305;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wXRneGnAltrnAcTpeBoxOrK7MRhjaWnX8HkujFnudnA=;
 b=VpIpjtTfnCpag+CwJQ7wV1OFKa9bX3YwmYRfALcSsn50I9tmpsTnqQG+
 5oOdyDuxogyGJ4HAHssZfys3ZDIBZQy/ARfDlOK3mascFbzKG/5vGrbOn
 8+T69niZFPhabdcCGVQCkU6WZH2968OB7G00Ew597JS1TXGy0hBTkSNa7
 dx52TwQmdwajAGojBlhP5LHlXVuS5HFjkHHmunecZRajAvXjIcK1useww
 nWxIl8qjaMiyvtX572ERg7BN+oODEuh1L8ewHPPqYpjxvintV/41LpkoF
 L5RNAgZD47hXJfAUMgi0byExvXYp3bPlQF4xxJBNCI3hyQQpszzwEqfLW A==;
X-CSE-ConnectionGUID: a6fCGta0S0+hxZ4SHifZWA==
X-CSE-MsgGUID: /4XLMl2eRdGaisorKfuD2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28724859"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28724859"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 01:21:45 -0700
X-CSE-ConnectionGUID: RA1HZVtiRzGPFU4y4E3y/w==
X-CSE-MsgGUID: UrTqMfgqSvypkwlaeLk9Rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="78086227"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 01:21:44 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 05/10] drm/i915/dp: Add check for hdisplay divisible by slice
 count
Date: Thu, 17 Oct 2024 13:53:43 +0530
Message-ID: <20241017082348.3413727-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241017082348.3413727-1-ankit.k.nautiyal@intel.com>
References: <20241017082348.3413727-1-ankit.k.nautiyal@intel.com>
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

As per Bspec:49259 while computing the dsc slice count, we need to
ensure that mode->hdisplay is divisible by the slice count.
This check is there for DSI, where we select slice_count from bios,
but is missing for DP.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 04d22f0c1524..6cfc7d1c96ea 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1031,6 +1031,9 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		if (num_joined_pipes > 1 && valid_dsc_slicecount[i] < 2)
 			continue;
 
+		if (mode_hdisplay % test_slice_count)
+			continue;
+
 		if (min_slice_count <= test_slice_count)
 			return test_slice_count;
 	}
-- 
2.45.2

