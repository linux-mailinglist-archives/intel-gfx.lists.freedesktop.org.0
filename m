Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF44D86B26D
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 15:53:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BF2C10E68C;
	Wed, 28 Feb 2024 14:53:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mnY4/dNi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 716DF10E68C
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 14:53:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709132035; x=1740668035;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fpasNn7idfHHrllxUXrRf5lG21K0aP4wxKlmND0JIr8=;
 b=mnY4/dNiKHPsLih4ffqmKQcBjEQUbcjTufO/UKJGqor46WW/PZOxzObB
 6nNyl0LQOqYUMQEazGK1+im0GjSGeFGyjHK4EewGXfla5wGLNx4swsaZO
 rrMWsH2YsIF4ugPc5DC7M4GQqxegmZbjlPNFFhtY8j3dD1GrcPTb7ov3p
 cEaNpKzHAN4T795QkdwHBlOTUnNGOdQUMn1PG4SkP3fffZdY04WIajljc
 k1DfYcNHkhMecYkhuC8776NvKrBMRk3V2Gdg5vjyK06TWs0pr10JenFDN
 CLuAR3VDtkoZRwFcw29luR+EpkYJZPeneK5Zz94ouyIA95Gr4ACRvXTUR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="3696286"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="3696286"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 06:53:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; d="scan'208";a="12173606"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa003.jf.intel.com with ESMTP; 28 Feb 2024 06:53:54 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCHv2] drm/i915/display/dp: Remove support for UHBR13.5
Date: Wed, 28 Feb 2024 20:13:50 +0530
Message-Id: <20240228144350.3184930-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230620025243.979317>
References: <20230620025243.979317>
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

UHBR13.5 is not supported in MTL and also the DP2.1 spec says UHBR13.5
is optional. Hence removing UHBR135 from the supported link rates.

Fixes: https://gitlab.freedesktop.org/drm/intel/-/issues/8686

v2: Reframed the commit message and added link to the the issue.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6ece2c563c7a..c11d9055981f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -498,7 +498,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 	/* The values must be in increasing order */
 	static const int mtl_rates[] = {
 		162000, 216000, 243000, 270000, 324000, 432000, 540000, 675000,
-		810000,	1000000, 1350000, 2000000,
+		810000,	1000000, 2000000,
 	};
 	static const int icl_rates[] = {
 		162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000,
-- 
2.25.1

