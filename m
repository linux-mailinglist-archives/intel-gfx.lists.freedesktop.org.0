Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7522A48A8
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 15:54:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AE6589A91;
	Tue,  3 Nov 2020 14:54:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 000CC893EF
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 14:54:19 +0000 (UTC)
IronPort-SDR: 1LKaiZJPs7S4cx/oAjXRcguSZvfdE51FWmlwakmeWosPdrPRvjcY5zycy2yqWKpeJ/FnOO3ajV
 Iprq0UUOZtug==
X-IronPort-AV: E=McAfee;i="6000,8403,9793"; a="230690811"
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="230690811"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 06:54:19 -0800
IronPort-SDR: NBSrtGD2J91zuBmLfpmGLaxgj5Ht39G51n7lBEiB8hmjdBHTTFLpSCnRQcpgrBx5/xCXKVjHpU
 cJIb0FMnLC/A==
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="470824303"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 06:54:18 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Nov 2020 20:58:26 +0530
Message-Id: <20201103152834.12727-5-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201103152834.12727-1-uma.shankar@intel.com>
References: <20201103152834.12727-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v9 04/12] drm/i915/display: Attach content type
 property for LSPCON
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Content type is supported on HDMI sink devices. Attached the
property for the same for LSPCON based devices.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0ce3204473fa..79a49d1cbb21 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6736,6 +6736,7 @@ intel_dp_connector_register(struct drm_connector *connector)
 			drm_object_attach_property(&connector->base,
 						   connector->dev->mode_config.hdr_output_metadata_property,
 						   0);
+		drm_connector_attach_content_type_property(connector);
 	}
 
 	return ret;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
