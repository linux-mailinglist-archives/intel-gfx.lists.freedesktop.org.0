Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8B233F5A7
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Mar 2021 17:37:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F24B6E833;
	Wed, 17 Mar 2021 16:37:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0CD36E833
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Mar 2021 16:37:27 +0000 (UTC)
IronPort-SDR: warfXt0JRI2hhyI43UCq8BsvDM81KDw9mWqvtI5PMxCYsKmhX4xVhmzG9KL9o2T3W6KDeKd8pr
 gx0rylZKoQEw==
X-IronPort-AV: E=McAfee;i="6000,8403,9926"; a="189593491"
X-IronPort-AV: E=Sophos;i="5.81,256,1610438400"; d="scan'208";a="189593491"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 09:37:27 -0700
IronPort-SDR: k4eCA859NdR6K8BI9VAUDku1HSlycAgjwp4uMUh9Nw/m+1kNIqNdqYUGnnoM9a2n5ZWTIwGuqe
 YoA7fXt/Byjw==
X-IronPort-AV: E=Sophos;i="5.81,256,1610438400"; d="scan'208";a="405994548"
Received: from jpferrer-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.46.99])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 09:37:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Mar 2021 18:36:43 +0200
Message-Id: <44559ef456015f65a863c3d89a9bea9157d13a05.1615998927.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1615998927.git.jani.nikula@intel.com>
References: <cover.1615998927.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 04/14] drm/i915/bios: move aux ch and ddc
 checks at a lower level
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 5e7dc0899ab1..3db41fe0c546 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1505,6 +1505,9 @@ static enum port get_port_by_ddc_pin(struct drm_i915_private *i915, u8 ddc_pin)
 	const struct ddi_vbt_port_info *info;
 	enum port port;
 
+	if (!ddc_pin)
+		return PORT_NONE;
+
 	for_each_port(port) {
 		info = &i915->vbt.ddi_port_info[port];
 
@@ -1521,9 +1524,6 @@ static void sanitize_ddc_pin(struct drm_i915_private *i915,
 	struct ddi_vbt_port_info *info = &i915->vbt.ddi_port_info[port];
 	enum port p;
 
-	if (!info->alternate_ddc_pin)
-		return;
-
 	p = get_port_by_ddc_pin(i915, info->alternate_ddc_pin);
 	if (p == PORT_NONE)
 		return;
@@ -1555,6 +1555,9 @@ static enum port get_port_by_aux_ch(struct drm_i915_private *i915, u8 aux_ch)
 	const struct ddi_vbt_port_info *info;
 	enum port port;
 
+	if (!aux_ch)
+		return PORT_NONE;
+
 	for_each_port(port) {
 		info = &i915->vbt.ddi_port_info[port];
 
@@ -1571,9 +1574,6 @@ static void sanitize_aux_ch(struct drm_i915_private *i915,
 	struct ddi_vbt_port_info *info = &i915->vbt.ddi_port_info[port];
 	enum port p;
 
-	if (!info->alternate_aux_channel)
-		return;
-
 	p = get_port_by_aux_ch(i915, info->alternate_aux_channel);
 	if (p == PORT_NONE)
 		return;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
