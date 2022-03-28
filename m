Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1900E4E9BF9
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 18:10:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 791CB10E71B;
	Mon, 28 Mar 2022 16:10:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4FF210E71B
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 16:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648483846; x=1680019846;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2GaG6qa60skR2oeaDbGD86qrbi2emfyl1JiGlnur31s=;
 b=NvGCikUxjqIwJlLZsmVoQEjXAykUlES/6lCF/3duTMfDcQfVXh0aBumn
 cLtKhrr6s3trYY1fQ0QHC0lVPJVPes2mSI/SG4trNSoZrDBmCYuDHT4fT
 WrkTSmNkNeFDI6hCdFH4QnRObiU1R/a0xo3m85A57L1CeajPefgFRZaaU
 5sOMlxJoq4bAOF7alITuU84l4vjoXJD2Zq/8psRT9pJV+J04LNhq5Svpb
 X5a4NZIRzdvO/OVJFhE37a127hEX/JqpVTByZDrbgTLPOPnnM5QARiJxN
 HBh6WCuuwgX6nsKBCAd78JLI9XlUZcazuh0r9KqBYL7KNFzlgW/JF15ZR w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="345476292"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="345476292"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 09:10:46 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="694415314"
Received: from kmacakov-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.249.42.47])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 09:10:45 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Mar 2022 19:10:25 +0300
Message-Id: <20220328161025.175993-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220328161025.175993-1-vinod.govindapillai@intel.com>
References: <20220328161025.175993-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/1] drm/i915: Handle the DG2 max bw properly
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

DG2 has a constant bandwidth regardless of the number of planes
enabled. Handle the DG2 bw separately.

cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index ac11ff19e47d..8955f9f8476a 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1003,7 +1003,9 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	for (i = 0; i < num_qgv_points; i++) {
 		unsigned int max_data_rate;
 
-		if (DISPLAY_VER(dev_priv) > 11)
+		if (IS_DG2(dev_priv))
+			max_data_rate = dev_priv->max_bw[0].deratedbw[0];
+		else if (DISPLAY_VER(dev_priv) > 11)
 			max_data_rate = tgl_max_bw(dev_priv, num_active_planes, i);
 		else
 			max_data_rate = icl_max_bw(dev_priv, num_active_planes, i);
-- 
2.25.1

