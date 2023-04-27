Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88DEA6F074B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 16:26:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CFB710E381;
	Thu, 27 Apr 2023 14:26:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1BB310E33C
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 14:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682605581; x=1714141581;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OCaFIoc7JOWRmc2WZrT1CELC9rbANGMZJUzX516BDBo=;
 b=hLxpVrBm3GGFSXo2mK3x3txMVpZtJzClOlbz7NaYpCGJXrmIHcbyiclE
 T4uSGuBjZQVHUc4yk01waeIJCy1uOmLhytVqu9FIg8jLiQIBLAStcpF/i
 7bOwnoOS8uDzoxldXzEzUaSFF8sD4pCYcccznNCGP+zPdseVpQSypfuCi
 7qQIChsCme8KAbxWBXiFaq7sjV1EEPz0IwqFsyVXKyvdSGANeCyy4dWrI
 y5+2BKUtz/mxwGlxZkTHhEuPAHSn/7ChVjW7PUnnSvFJQcYrlhoXjtxgP
 Tz2iqWqm20tnlo+xxs74tBSuN3onbg+ihpzouhU5g7WFB7ez741ICB45H w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="375438537"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="375438537"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 07:26:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="838403561"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="838403561"
Received: from jfedorov-mobl2.ccr.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.251.216.111])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 07:26:17 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Apr 2023 17:25:57 +0300
Message-Id: <20230427142604.1565580-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230427142604.1565580-1-vinod.govindapillai@intel.com>
References: <20230427142604.1565580-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/8] drm/i915: fix the derating percentage
 for MTL
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Follow the values from bspec for the percentage overhead for
efficiency in MTL BW calculations.

Bspec: 64631

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 597d5816ad1b..ab405c48ca3a 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -379,7 +379,7 @@ static const struct intel_sa_info mtl_sa_info = {
 	.deburst = 32,
 	.deprogbwlimit = 38, /* GB/s */
 	.displayrtids = 256,
-	.derating = 20,
+	.derating = 10,
 };
 
 static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel_sa_info *sa)
-- 
2.34.1

