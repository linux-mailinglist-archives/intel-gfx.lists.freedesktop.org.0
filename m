Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E289A9EEE
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 11:45:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD2C110E312;
	Tue, 22 Oct 2024 09:45:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HOcfCk0U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9692E10E30B
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2024 09:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729590355; x=1761126355;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=NByTJ9TYPpl9QaAk+Mqz18c354HrQPQbYq5gTILi17s=;
 b=HOcfCk0USPcPt3TtzpMe6rnjvo3IPBwHqamarNfs1HrjHah4DUDzL1jb
 OvL/6fwkjuxVBXDFHp4wFc7rIBUMYL/zVOSQRDr1jzla/7NTZhiCwPE1a
 HyTjoJ1653Q3TUk6EbhAkQz1b3JwYrL5Vx08HHpRYASmw+tbI5CAmzML0
 hqLTAPZyavWi6WdRzWnISWSwW7UbVNz5/f18uw1ezBSzwj0ehQOj1yh7M
 ZdvNe4xnEdMlUKOHClxIGwqEicpwcjXdS0WpX0k3k/GTMPawBUIjmEZwg
 y5t28Fbt54yG1PsCp3ibPCicohjfxZ8msqBvuOehKOM35QAYRTxKZw1Jf g==;
X-CSE-ConnectionGUID: WGfOfz4IT7uLmDv7Eix/2g==
X-CSE-MsgGUID: shwZTIUzQ86SFXDXObrUHg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28893157"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28893157"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 02:45:54 -0700
X-CSE-ConnectionGUID: kydqWU+zQpOpJSGGrWZ08Q==
X-CSE-MsgGUID: jdY+Cx8HRvaqHhoxDnA1Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="80621850"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 02:45:53 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v4 8/8] drm/i915/dp: Write the source OUI for non-eDP sinks as
 well
Date: Tue, 22 Oct 2024 12:46:24 +0300
Message-ID: <20241022094624.2696428-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241016132405.2231744-9-imre.deak@intel.com>
References: <20241016132405.2231744-9-imre.deak@intel.com>
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

At least the i-tec USB-C Nano 2x Display Docking Station (containing a
Synaptics MST branch device) requires the driver to update the source
OUI DPCD registers to expose its DSC capability. Accordingly update the
OUI for all sink types (besides eDP where this has been done already).

v2: Rebased on latest patch version.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11776
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 65f383ae66b0d..2d40a5b272334 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3406,9 +3406,6 @@ intel_dp_init_source_oui(struct intel_dp *intel_dp)
 	u8 oui[] = { 0x00, 0xaa, 0x01 };
 	u8 buf[3] = {};
 
-	if (!intel_dp_is_edp(intel_dp))
-		return;
-
 	if (READ_ONCE(intel_dp->oui_valid))
 		return;
 
@@ -6133,6 +6130,8 @@ intel_dp_hpd_pulse(struct intel_digital_port *dig_port, bool long_hpd)
 
 	if (long_hpd) {
 		intel_dp->reset_link_params = true;
+		intel_dp_invalidate_source_oui(intel_dp);
+
 		return IRQ_NONE;
 	}
 
-- 
2.44.2

