Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DBD99C28C
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 10:08:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B72E10E3C4;
	Mon, 14 Oct 2024 08:08:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ybly7kVO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B900D10E3C4;
 Mon, 14 Oct 2024 08:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728893279; x=1760429279;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wXRneGnAltrnAcTpeBoxOrK7MRhjaWnX8HkujFnudnA=;
 b=Ybly7kVOPZsqMVrWNWa1mH7M1zX95I5S5pN/yrJVmbqq8fGXiyLsbfKy
 y5r8wD5EndqoRwcnaCWwHrAFJUjbJAMxmB+2illglJM5buzLdoivOgqzR
 otczDE3MoOXMHV1c/Ej4oSSKKPOqqbFQzmJPVO+7Gr327ukZpanntdmCv
 DpKkPLkupq4s2WC5PPrk6eorSeU5sReTp5IiWY5o3DswQu3AQI00zVBTh
 +BluCPWEpDNvLqYSBJfJwqyG6pV/LTxcpc99DAmq07LJY3nzTMLjIRf+5
 98W6ysJdozcwfqg+Kl0bikTfZUrfzgu+sfl/oDq3YS/kegFFv4RRm/GPz Q==;
X-CSE-ConnectionGUID: 6q+mkfICS72tu5Art/IbZQ==
X-CSE-MsgGUID: jleKOrxmTTKHRqP+I8ToHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="38784435"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="38784435"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 01:07:59 -0700
X-CSE-ConnectionGUID: rOPJP2+QSE65YacCsKwn4w==
X-CSE-MsgGUID: ZXNft0MzRtmDsShx8YeiRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="100834892"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 01:07:57 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 5/9] drm/i915/dp: Add check for hdisplay divisible by slice
 count
Date: Mon, 14 Oct 2024 13:39:56 +0530
Message-ID: <20241014081000.2844245-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241014081000.2844245-1-ankit.k.nautiyal@intel.com>
References: <20241014081000.2844245-1-ankit.k.nautiyal@intel.com>
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

