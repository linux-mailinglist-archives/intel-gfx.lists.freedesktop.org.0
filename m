Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D65C6F3F48
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 10:38:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 613EC10E4E0;
	Tue,  2 May 2023 08:38:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F40A10E4E1
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 08:38:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683016705; x=1714552705;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uTJVYAjUnW+kISfCuzKBtVLq/Lb7HJfETssR0eJZ9oo=;
 b=BA6B3ie/KAx8IDNVKduqlkXLElZn9IkDLvScatCsKJvxhHk27GOc1Rkb
 6ElewHXiEGkTA5lZQLG8I8AFWgJK66qpXI1iI5AZmHlrUt7m2Ewma0tz+
 aohufp/2oXpGmfkMvrTgO79431XBPBjrD75Hg8n1hpV84oAwKaZKkDLTU
 BAuO/0AoyVifB4KwFkHfux4dz2MygrAbkA+xx9VLFI6IjlCjaIe6wtNaE
 ZDXUqoSIPT0BD9JYrC3COs6IbDnsMMS0LaTbhve4xP8SdFLZqT/biiMuG
 AExNeY3njaa7Hrh5pElS/PC/3ywYYXfbh7AjAfM+lMMp1XD8ifCityLTZ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10697"; a="413781241"
X-IronPort-AV: E=Sophos;i="5.99,243,1677571200"; d="scan'208";a="413781241"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 01:38:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10697"; a="765689602"
X-IronPort-AV: E=Sophos;i="5.99,243,1677571200"; d="scan'208";a="765689602"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga004.fm.intel.com with ESMTP; 02 May 2023 01:38:22 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 14:06:52 +0530
Message-Id: <20230502083652.463435-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/hdcp: Check if media_gt exists
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

Check if media_gt exits if we are using gsc cs

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 650232c4892b..f3956eca4ec4 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -214,7 +214,7 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
 
 	/* If MTL+ make sure gsc is loaded and proxy is setup */
 	if (intel_hdcp_gsc_cs_required(dev_priv))
-		if (!intel_uc_fw_is_running(&gsc->fw))
+		if (!gt || !intel_uc_fw_is_running(&gsc->fw))
 			return false;
 
 	/* MEI/GSC interface is solid depending on which is used */
-- 
2.25.1

