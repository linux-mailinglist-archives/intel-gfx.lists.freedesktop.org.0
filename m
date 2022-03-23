Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 011144E58A2
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 19:43:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BF0A89B7B;
	Wed, 23 Mar 2022 18:43:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FC5A89B7B
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 18:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648061034; x=1679597034;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=snae0k9AmzJuYIxCrNrGCG/hCCu0nYFG0X7zLYUSMcM=;
 b=F+k/H3F60TsYwasp6c7XP86f3W/Cy2IX7rqUwuFk8uA9sc291PdsC7y5
 4mUq4RjSfuT3p3/J1LILFaULOwKCKMQoKhZ3KQRdJIzhxbzXjFJQaIYY5
 XZ0k53NedInNekenDpTqs4CGZuJTS25JuVJOoRobQ1xU/6uTZ5y3e7Q67
 +ZdWgrn/3VnnMMe9qOur2tepk3XqycPzZ5goFmHzxeKmSuOCLIEafyB4s
 6jJbZ5h6wfNY+ywoNKT5D75W4ijmcWp6rTXi9MSX36oK1hwFisWX/7e75
 3EM2USiM7BZFOcUsrlAlRS7G3p1ggVAsWXxgR6NvGkdHheUiIAUFJSg/F Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="257025374"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="257025374"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 11:43:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="501114387"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by orsmga003.jf.intel.com with ESMTP; 23 Mar 2022 11:43:51 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Mar 2022 00:15:22 +0530
Message-Id: <20220323184522.1359329-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Extend DP HDR support to hsw+
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

HSW+ platforms are able to send out HDR Metadata SDP DIP
packet as GMP. Hence, extending the support for HDR on DP
encoders for the same.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5389
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9e19165fd175..e10d2c151abf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4939,7 +4939,7 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
 		intel_attach_dp_colorspace_property(connector);
 	}
 
-	if (IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >= 11)
+	if (IS_HASWELL(dev_priv) || DISPLAY_VER(dev_priv) >= 8)
 		drm_object_attach_property(&connector->base,
 					   connector->dev->mode_config.hdr_output_metadata_property,
 					   0);
-- 
2.25.1

