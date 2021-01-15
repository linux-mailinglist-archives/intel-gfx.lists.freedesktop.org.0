Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00BD42F7D80
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 15:03:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4E9D6E0AD;
	Fri, 15 Jan 2021 14:03:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 727616E0AC
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 14:03:11 +0000 (UTC)
IronPort-SDR: Vj6e+mKC8PCE9Kocyse6flNzUgn6plj95EmDGe3v+AGm6uHOH1JWSPeXSgzpNRQo5FZafVi/aY
 lL5PhZ5FHKrw==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="240095239"
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; d="scan'208";a="240095239"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2021 06:03:10 -0800
IronPort-SDR: 9uVNS6GhL96xfRus/auVdhELaj/cpWIKsN8KVsoiJN+ie9RMuOoErR/OUQ3/zKyexJmcmTbVC9
 8c5psjwqAv+w==
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; d="scan'208";a="465585477"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2021 06:03:09 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Jan 2021 19:18:24 +0530
Message-Id: <20210115134825.29521-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210115134825.29521-1-anshuman.gupta@intel.com>
References: <20210115134825.29521-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Fix WARN_ON(data->k >
 INTEL_NUM_PIPES)
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

Initialize no. of streams transmitted on a port to zero
such that intel_hdcp_required_content_stream() can
prepared the content stream after subsequemt attmept to
enable hdcp after a HDCP failure.

Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index db8dff2eeb0a..f24e2c07bfa6 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -55,6 +55,8 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
 
 	if (dig_port->hdcp_auth_status)
 		return 0;
+	else
+		data->k = 0;
 
 	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
