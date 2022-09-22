Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 372E45E703C
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 01:29:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C3E210E7CE;
	Thu, 22 Sep 2022 23:29:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83A8B10E7D6
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 23:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663889359; x=1695425359;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ogr4TaAHWDC0bxbHaaPrudRiCzW43fgT06rqV9NKM/4=;
 b=QGDBhrGBeodL3Co8MlU1AThcOI0uIhFZ3T7C3eRz9QvAIudMWSDfxbck
 i5sDYTiEMqwNCJbId7FkREO3b8d/o+RZ8ZJ7B3OguwjSkS004oap5LL5t
 sbKZEK7tmbYsQ4u01GOidL8Rjd/30XscDTDtJMU280FkKPknUa1xdopSV
 M86QjJGRVwh5+pJ/OREpQ5GmETaHXVayU8PpgZ4Pn4qOo77RnchgeT3Ks
 JLeRsKebFyFJvKv8qTzyLvkDuHy0qaRQZYZHDsa6JfYHb+wxD80ZNdA1j
 Zckf6SAF26eQS3/wxqzC1N5JiDAI3QtUqqOeZama/wGUPj/OMo693gurr A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="364473701"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="364473701"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 16:29:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="948810414"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga005.fm.intel.com with ESMTP; 22 Sep 2022 16:29:18 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Sep 2022 16:31:12 -0700
Message-Id: <20220922233112.243677-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220922233112.243677-1-alan.previn.teres.alexis@intel.com>
References: <20220922233112.243677-1-alan.previn.teres.alexis@intel.com>
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

