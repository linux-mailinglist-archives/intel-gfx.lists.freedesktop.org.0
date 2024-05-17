Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0EF8C8883
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 16:54:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5891E10EEF3;
	Fri, 17 May 2024 14:54:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PQacFntz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41EB310EEF3
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2024 14:54:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715957642; x=1747493642;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=XRqDd0fc3yB7jysHrLKMnFeZnDKCMm/UzSYogQ2DM7c=;
 b=PQacFntz7WOs2RY59LVifQ7y4p6F1TYJXqjYehjvhbQzBRQEVdKsrS42
 A6Vd/GqgFQ/ES8wnbkMbZLQJ5ferJQiyEKTKs1N3xStudUQviY+zdnquK
 omNMVJFQpqFvH33oXwrGYyzhv4sCxvZ3Oh0IypPibW81G8zDY/KSL9qH+
 ljKl9Ebve7oW6wWZeDI1ASs17c2J/g5hDBUA6U4EPQLZbewAK3BDv6dFR
 JbvRPqNkb64y54Zo5qZw47+QA2zpjtbWiSmdwuEBSxeS2R3xvhV+yhFyn
 Fp9KiIPcR1tQW1hu+ws85edioHofd20mu4I9j1TEf/jbVxUPrlvJgPIlV A==;
X-CSE-ConnectionGUID: 8E8PI+g6TD6fvwPLc44R3A==
X-CSE-MsgGUID: XD/vydbYTfyxhf+9Q3Eagg==
X-IronPort-AV: E=McAfee;i="6600,9927,11075"; a="12008024"
X-IronPort-AV: E=Sophos;i="6.08,168,1712646000"; d="scan'208";a="12008024"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 07:54:02 -0700
X-CSE-ConnectionGUID: 1nR7kbtDT2eEpp69CnoKcw==
X-CSE-MsgGUID: MnnPqKvCQMW59UqwLJ0w3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,168,1712646000"; d="scan'208";a="31800950"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 May 2024 07:54:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 May 2024 17:53:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/7] drm/i915: Drop redundant dsc_decompression_aux check
Date: Fri, 17 May 2024 17:53:50 +0300
Message-ID: <20240517145356.26103-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240517145356.26103-1-ville.syrjala@linux.intel.com>
References: <20240517145356.26103-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

If we have no dsc_decompression_aux (only possible on MST)
then we won't have the dsc_dpcd caps either. So checking
both is not needed.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c0a3b6d50681..1e88449fe5f2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1451,7 +1451,6 @@ static bool intel_dp_supports_dsc(const struct intel_connector *connector,
 		return false;
 
 	return intel_dsc_source_support(crtc_state) &&
-		connector->dp.dsc_decompression_aux &&
 		drm_dp_sink_supports_dsc(connector->dp.dsc_dpcd);
 }
 
-- 
2.44.1

