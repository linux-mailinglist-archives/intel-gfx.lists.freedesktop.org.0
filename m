Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3D85FACE2
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 08:35:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C8EF10E7C0;
	Tue, 11 Oct 2022 06:34:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AF8110E7B5
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 06:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665470086; x=1697006086;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=chEqpROF7Alh+wr0FPuZAL1Ad12QDWLoSOs0PFeq3fc=;
 b=LNNfCT5wCs58dEMMAbcogcKNBYhgFx4QIAMaBzIkyh/e1YKEMRAzk0D6
 6i1LOv9CuVnXKgVaJ6jx+S/UG1E2Pl4ZxmQ9wQ+8YzrbzK35BuCbENEJF
 CEzs8DPD0h2ehcLytdXf5BjEx5ZbJTGDewWf1njGbm83YzBMURi7CF9wg
 SWGcEic8P+BODTau41FANpIBx4lH2y4mMk4XimwAUP9UBcSU3IT99X8UZ
 16r94it9b19tp+A1Tb2pNqOXZmiFlr9gs3jYkrS/+vh+FrkQfeJ+tRMSb
 f6DnGlN3mqgrkB+751SUvbeyWxBLcnlo67alv0B3QprV4kBIT72/15G3n A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="302031834"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="302031834"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 23:34:42 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="768680354"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="768680354"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 23:34:40 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 12:04:43 +0530
Message-Id: <20221011063447.904649-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221011063447.904649-1-ankit.k.nautiyal@intel.com>
References: <20221011063447.904649-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 4/8] drm/i915/display: Add new member in
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
index 69a68a70ac00..bc14da838c39 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1708,6 +1708,7 @@ struct intel_dp {
 		int pcon_max_frl_bw;
 		u8 max_bpc;
 		bool ycbcr_444_to_420;
+		bool ycbcr420_passthrough;
 		bool rgb_to_ycbcr;
 	} dfp;
 
-- 
2.25.1

