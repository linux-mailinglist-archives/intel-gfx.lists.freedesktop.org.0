Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC07844810
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 20:35:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26CA810FC89;
	Wed, 31 Jan 2024 19:34:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66C1E10FC84
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 19:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706729686; x=1738265686;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z3Af0EfGKgMOKeh8clrW3fmorNOuEjmc6ui3gOPL5XY=;
 b=UCOqwuDYLqomy2PwMkiJqy5/veJbU2I4ABucabE5h2gV2ZXPJzaYg4FT
 SOhrzR4HXszs2s+z/DVyYpYsitQ/ReKe4r3Rc1amUrBuibBsf6cf9CRDw
 ZrmrmqkPzFCY+cCal9fsFOE5J9f+XvjAHvBjtLmyqUswPByNyoUbITUW/
 7irDoZ4I7VBibzBDOY+ekNm0j313xz+btytEUQdkqVX3wMc7keJRQmQYL
 p+e1oEtR06Z/oQXml61mcrIKTS9G3RR6dSolqoP//TrKLljmqntw1FTVW
 0FesGaDdlTeYiJb2LYgEOuwvAlC8ZoEnPqW46mG/GQdN4bQXtpdsjXM6P g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="467936136"
X-IronPort-AV: E=Sophos;i="6.05,233,1701158400"; d="scan'208";a="467936136"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 11:34:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="822686255"
X-IronPort-AV: E=Sophos;i="6.05,233,1701158400"; d="scan'208";a="822686255"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga001.jf.intel.com with ESMTP; 31 Jan 2024 11:34:44 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 03/10] drm/i915/hdcp: Refactor intel_dp_hdcp2_capable
Date: Thu,  1 Feb 2024 01:02:34 +0530
Message-Id: <20240131193240.938405-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240131193240.938405-1-suraj.kandpal@intel.com>
References: <20240131193240.938405-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Break intel_dp_hdcp2_capable so that the common the code can be
reused for the remote capability check.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index defc90936317..9aeee6b49b3d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -636,8 +636,8 @@ int intel_dp_hdcp2_check_link(struct intel_digital_port *dig_port,
 }
 
 static
-int intel_dp_hdcp2_capable(struct intel_connector *connector,
-			   bool *capable)
+int _intel_dp_hdcp2_capable(struct drm_dp_aux *aux,
+			    bool *capable)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_dp_aux *aux = &dig_port->dp.aux;
@@ -658,6 +658,16 @@ int intel_dp_hdcp2_capable(struct intel_connector *connector,
 	return 0;
 }
 
+static
+int intel_dp_hdcp2_capable(struct intel_connector *connector,
+			   bool *capable)
+{
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct drm_dp_aux *aux = &dig_port->dp.aux;
+
+	return _intel_dp_hdcp2_capable(aux, capable);
+}
+
 static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
 	.write_an_aksv = intel_dp_hdcp_write_an_aksv,
 	.read_bksv = intel_dp_hdcp_read_bksv,
-- 
2.25.1

