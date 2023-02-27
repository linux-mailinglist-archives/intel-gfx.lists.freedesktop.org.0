Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C72E6A39F2
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 05:06:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C7C510E0D2;
	Mon, 27 Feb 2023 04:06:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9881A10E0CE
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Feb 2023 04:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677470761; x=1709006761;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2ZSP3fxIP3mHUeh9DmXYA3Yrdv7fa0atObf3LxUC8ts=;
 b=QFM8dkhPQ9KM1Gbk+8yHpQ3n+zByGAsKJPRG4uEWHiuT95sJgWrnYFs3
 zYG99dFZMgSS9OARoC0YgePVaIUNfhbnPJ+DbbwPrI/QJcXbck0029VWF
 lJcQm6y618EZE/7/Dl3nQYIvi+6hzdvolz784wXUkiA8l6PUQtpKXtnK/
 YORUrp3DlXu19PEBb7Fhjl7hlurJluMRK+RStrPvSHJv/KxU7iIrUHw4G
 14lHEnnnJ7aHPfp2zsXgByh4X7hEYYUdbErVLSNupqdGMWw4YEg0CqLyY
 C+wybGpf3A8KTUMUHaT3wQqq+ukNNj15Um2amJ7DBPTkbKyHv0qWBwlcm A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="335251370"
X-IronPort-AV: E=Sophos;i="5.97,330,1669104000"; d="scan'208";a="335251370"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2023 20:06:01 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="783146989"
X-IronPort-AV: E=Sophos;i="5.97,330,1669104000"; d="scan'208";a="783146989"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2023 20:05:59 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Feb 2023 09:33:13 +0530
Message-Id: <20230227040324.130811-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230227040324.130811-1-ankit.k.nautiyal@intel.com>
References: <20230227040324.130811-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 02/13] drm/i915/display: Add new member in
 intel_dp to store ycbcr420 passthrough cap
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

New member to store the YCBCR20 Pass through capability of the DP sink.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c28835d9db6f..1be15a1caa39 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1733,6 +1733,7 @@ struct intel_dp {
 		int pcon_max_frl_bw;
 		u8 max_bpc;
 		bool ycbcr_444_to_420;
+		bool ycbcr420_passthrough;
 		bool rgb_to_ycbcr;
 	} dfp;
 
-- 
2.25.1

