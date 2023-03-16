Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC3C6BD10C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 14:40:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FC6A10E1F5;
	Thu, 16 Mar 2023 13:40:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6638010E1F5
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 13:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678974040; x=1710510040;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Fn2ZZFfLjbqMSunQXi2jYcByEFLhS7eIs5bZMA+aYdA=;
 b=oJyoai1Z7bzfvBIHkATZZhV9DJy0EBCQsX4Ycg92X+vIFtUgLWU6uJV3
 lKgqJ/vUdp49Ae3GVfcMC4QfoEDDrqMkmeh22q4pgk2pRAtE7PLse7btQ
 Lbz7jwI1sbAcurht7xwc5MnKTQnNa21qmPGQH0TkS4ftcnhVM9HjsZ6/5
 IY5L1/h/HzyI6R8bn5MPp+6wf/0v1acW8ZQvQ0/ICMiqNecHJ1dE7lb9v
 H4qLQNFQwMOYJTxIcNnaPK1EQhrenrY4lXR/7C082T/PMnkoDPYaGxup2
 0Kr/aOSqqtaqM5hwCxSeVCzXC8dJa9AS57El4hl6vMzp1d6TBb6tY5jIi Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="339524804"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="339524804"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10650"; a="657171283"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="657171283"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:38 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 15:17:21 +0200
Message-Id: <20230316131724.359612-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230316131724.359612-1-imre.deak@intel.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/14] drm/i915/tc: Assume a TC port is legacy
 if VBT says the port has HDMI
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

Since an HDMI output can only be enabled in legacy mode on TC ports,
assume that VBT is wrong and the port is legacy if VBT says the port is
non-legacy and has HDMI.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index c531fee888a49..e79da640759c3 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4494,6 +4494,13 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 			!intel_bios_encoder_supports_typec_usb(devdata) &&
 			!intel_bios_encoder_supports_tbt(devdata);
 
+		if (!is_legacy && init_hdmi) {
+			drm_dbg_kms(&dev_priv->drm,
+				    "VBT says port %c is non-legacy TC and has HDMI, assume it's legacy TC\n",
+				    port_name(port));
+			is_legacy = true;
+		}
+
 		intel_tc_port_init(dig_port, is_legacy);
 
 		encoder->update_prepare = intel_ddi_update_prepare;
-- 
2.37.1

