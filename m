Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0547A63A1D8
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 08:15:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87A4410E1CD;
	Mon, 28 Nov 2022 07:15:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77AD410E1C4
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 07:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669619694; x=1701155694;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7J35V3Lj8kvpg0MPjz/CTuBwOocbjSyUlFzpZm0G0C0=;
 b=bHqeVSSTlEqprCvkdvUiESvzX3zuprJAeFk1QiJs8xMj712Ul1JlJOZa
 X/OSg6QM5NXXZcCHAGhVkKYzQo64+Nyj0dlcBiF9nWV18u5yN+Ke9vfNJ
 H1M6w7l35w9YhLXkJPI5+MIt/LRyFZoRR8wz3KbXJR+VVaaoFZNez/76J
 IQay5MPsH7x9KRUwKg6ZlniTqDB954j8QXfjDEjvDVV9pb1g3Gt0wV6cL
 6J0AANK/GoY9KCYnTsc/Fdw3me/o3pUgBStRBZ5hLVEI9bmL2yORJr3yv
 u62lGHSm/ybNAA1lY8rDFpkD9HJaCtMpp6U/qGKllmcR/5i8xX5yO2Is1 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="315919483"
X-IronPort-AV: E=Sophos;i="5.96,199,1665471600"; d="scan'208";a="315919483"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2022 23:14:54 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="785518556"
X-IronPort-AV: E=Sophos;i="5.96,199,1665471600"; d="scan'208";a="785518556"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2022 23:14:52 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Nov 2022 12:45:35 +0530
Message-Id: <20221128071544.4115881-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221128071544.4115881-1-ankit.k.nautiyal@intel.com>
References: <20221128071544.4115881-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 02/11] drm/i915/display: Add new member in
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
index a7c9fdb44101..9e31aa008f22 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1728,6 +1728,7 @@ struct intel_dp {
 		int pcon_max_frl_bw;
 		u8 max_bpc;
 		bool ycbcr_444_to_420;
+		bool ycbcr420_passthrough;
 		bool rgb_to_ycbcr;
 	} dfp;
 
-- 
2.25.1

