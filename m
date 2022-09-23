Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A5F5E70A0
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 02:20:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A576810E282;
	Fri, 23 Sep 2022 00:20:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A919510E27C
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 00:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663892427; x=1695428427;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ogr4TaAHWDC0bxbHaaPrudRiCzW43fgT06rqV9NKM/4=;
 b=QoDjk/W4g8XvjCEfKTszaK+GuRPLzLhaOdTk6xEznNE/NVrOQ8fwtLr9
 PD0gYR7QHRxpMPRjWKcQCQt2KpH2ohv0Xl3OeKM1uZB3n2sIpCgdiqvT0
 8845BLiD5Xpkc0Un3oEb34p2lHl4iaHdWFHHfrn6MYX8nsbgwSaE29I2d
 fwh7XdcQdpsvv4pwyS0OpzFLYc9j5NejEHcb3XtnV+5Fl5CN7n6rRhoPR
 v2sUWjaKCXMPj6l+4wNRqT26aDk0iF0QvXaqfs68qaKQUbCfktKJbE3Us
 1AINZqcxm+GZvKRomoadop81Nk7X6ozTFU3Cwr693lggnOkx4+i2afMjZ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="326797400"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="326797400"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 17:20:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="709105418"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Sep 2022 17:20:27 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Sep 2022 17:22:21 -0700
Message-Id: <20220923002221.281179-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220923002221.281179-1-alan.previn.teres.alexis@intel.com>
References: <20220923002221.281179-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/pxp: Add firmware status when ARB
 session fails
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

Add firmware status using a drm_warn when ARB session fails
or else a drm_dbg when the ARB session register slot bit did
get set.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c | 1 +
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
index 1bb5b5249157..c4f5c994ca51 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
@@ -77,6 +77,7 @@ static int pxp_create_arb_session(struct intel_pxp *pxp)
 		drm_err(&gt->i915->drm, "arb session failed to go in play\n");
 		return ret;
 	}
+	drm_dbg(&gt->i915->drm, "PXP ARB session is alive\n");
 
 	if (!++pxp->key_instance)
 		++pxp->key_instance;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index 4b6f5655fab5..b388c9e77b59 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -174,6 +174,8 @@ int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
 
 	if (ret)
 		drm_err(&i915->drm, "Failed to send tee msg ret=[%d]\n", ret);
+	else if (msg_out.header.status != 0x0)
+		drm_warn(&i915->drm, "PXP firmware failed arb session init request ret=[0x%08x]\n", msg_out.header.status);
 
 	return ret;
 }
-- 
2.25.1

