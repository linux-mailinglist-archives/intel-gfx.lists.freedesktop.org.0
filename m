Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B254E3EB2
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 13:43:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01FB210E55F;
	Tue, 22 Mar 2022 12:43:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA8B210E557
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 12:43:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647953011; x=1679489011;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y3C8hjlwDnPO/S3rQ269AwW1MRjeEDo3/5+nA46Nz4Y=;
 b=ctOiyzSu25GZLEIlQfFfsUNyN6t/2PRs7IUkQnb4Nxh2yT3DrusbooBW
 31gPK+UWSUf7MrlK0m24rfRIMr7UhwJgZQh7KE9d8DVZSIMpoLf7jaSmF
 ZhGgSyjeN7HeMcQXszxar+pL5NpXTJJib3oV33gCbjvTQB18zkV/caT9O
 oHSusJ1+mk81IFFzQHGpdyyzZ2bXUiB143i+2ptT+F6ni68HmC7CNRZxq
 l9AAHUNs9bdFLOW6b8QTJnErQleLTuk2OCf4h/FS0im3Lt/BIHUCyjTCG
 vHYqYutlxXoBadNCf35p8vjgkzaCbnluiWiRkKM4nZn9yXfzzNJmEGPuX Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="257997798"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="257997798"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 05:43:31 -0700
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="518865301"
Received: from mbaulin-mobl2.ccr.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.56.238])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 05:43:29 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Mar 2022 14:43:08 +0200
Message-Id: <20220322124308.308300-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220322124308.308300-1-vinod.govindapillai@intel.com>
References: <20220322124308.308300-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915: Handle the DG2 max bw properly
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

Separate the max bw call for DG2 as it has a constant bandwidth
regardless of the number of planes enabled.

cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 395e48930b08..f1e1feb8db06 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -538,6 +538,13 @@ static unsigned int tgl_max_bw(struct drm_i915_private *dev_priv,
 	return dev_priv->max_bw[0].deratedbw[qgv_point];
 }
 
+static unsigned int dg2_max_bw(struct drm_i915_private *i915)
+{
+	struct intel_bw_info *bi = &i915->max_bw[0];
+
+	return bi->deratedbw[0];
+}
+
 static unsigned int adl_psf_bw(struct drm_i915_private *dev_priv,
 			       int psf_gv_point)
 {
@@ -931,7 +938,9 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	for (i = 0; i < num_qgv_points; i++) {
 		unsigned int max_data_rate;
 
-		if (DISPLAY_VER(dev_priv) > 11)
+		if (IS_DG2(dev_priv))
+			max_data_rate = dg2_max_bw(dev_priv);
+		else if (DISPLAY_VER(dev_priv) > 11)
 			max_data_rate = tgl_max_bw(dev_priv, num_active_planes, i);
 		else
 			max_data_rate = icl_max_bw(dev_priv, num_active_planes, i);
-- 
2.25.1

