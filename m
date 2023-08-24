Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C33786968
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 10:05:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E06D510E4EE;
	Thu, 24 Aug 2023 08:05:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B26A10E4E7
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 08:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692864322; x=1724400322;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=axZXzJJP6xDMyOVxmzDyh2Jnd5SwLgKdAXY01saDhdQ=;
 b=RhdcZxq03/oodSnP8Em3QiIJu2oW2gRib4mPsM2Jizi76MEqp+u8tmWd
 GqDvAQ3vh90Ad/O/WT2o3ezXbkfuvHpyzDLxUQfMk6K995VjkLKuk15JL
 MvKGQIISdAQNWLiruZPM6+0fCsu9XSKAyxcXS5lUvxnRLE+QO+/2v8OT1
 VX5L9xapP7M5cW+bJ/UsTM7VdGkfFfvxGD7sGG/M0aU8uuvwy1Z+vJUZY
 3ZEJN7srDPPQUTDwkF0ify0ZxQcvwihO/B4rlPnN5V80YCOabEWd8qr2x
 nMXkvLBoBpV5PyHUP5RnVNYX+gJSQZOUfavHXxNf3VoOTMWsTAi8dkDSX w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="374345884"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="374345884"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="880710342"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:26 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 11:05:10 +0300
Message-Id: <20230824080517.693621-16-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230824080517.693621-1-imre.deak@intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 15/22] drm/i915/dp_mst: Add atomic state for
 all streams on pre-tgl platforms
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

If an MST stream is modeset, its state must be checked along all the
other streams on the same MST link, for instance to resolve a BW
overallocation of a non-sink MST port or to make sure that the FEC is
enabled/disabled the same way for all these streams.

To prepare for that this patch adds all the stream CRTCs to the atomic
state and marks them for modeset similarly to tgl+ platforms. (If the
state computation doesn't change the state the CRTC is switched back to
fastset mode.)

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 930e16b870734..fba91d0fd33dc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -507,9 +507,6 @@ intel_dp_mst_atomic_master_trans_check(struct intel_connector *connector,
 	struct intel_connector *connector_iter;
 	int ret = 0;
 
-	if (DISPLAY_VER(dev_priv) < 12)
-		return  0;
-
 	if (!intel_connector_needs_modeset(state, &connector->base))
 		return 0;
 
-- 
2.37.2

