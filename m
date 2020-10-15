Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2242F28FB87
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 01:15:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5270B6E2C7;
	Thu, 15 Oct 2020 23:15:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A5526E22C
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 23:15:14 +0000 (UTC)
IronPort-SDR: dqzvzr9X2Xns1hyDPQnpQMvxhPUCFb2TtULVxGv9BUFJKFG57isHOEsjhV5NazUJauE6ZEfCfi
 WjFikT6BFBkw==
X-IronPort-AV: E=McAfee;i="6000,8403,9775"; a="163010298"
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="163010298"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 16:15:14 -0700
IronPort-SDR: ndc15h89sdsu20d9Pt3AgG3s1tXc1fOqLKw/rxuw4ZU7rF+M6H9DcxMmVfD88IW91VRXnY34To
 AEqU7KHqdovQ==
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="531450369"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 16:15:12 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Oct 2020 05:18:54 +0530
Message-Id: <20201015234902.7134-5-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201015234902.7134-1-uma.shankar@intel.com>
References: <20201015234902.7134-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v8 04/12] drm/i915/display: Attach content type
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
index d434cb32f0ff..1eea514c62b3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6697,6 +6697,7 @@ intel_dp_connector_register(struct drm_connector *connector)
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
