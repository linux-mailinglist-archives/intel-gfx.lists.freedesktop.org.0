Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2070A54F6AE
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 13:28:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62C1811ACDB;
	Fri, 17 Jun 2022 11:28:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8922F11ACDB
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 11:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655465291; x=1687001291;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qcZbWZnfTdRUs/NgJ1K3SIf5Irt+s43WTYzwU5rMD5Y=;
 b=n7NJv0vJlmdtShE15383BLO9yWQv07RqrJfbT+qSPUat8T7hdk5kvtfq
 8px6UpeS9SojEEhmo8sKtLxH026nMpyac/pLTzH7YbVSYGXsm1SWbaMu3
 X4ZbNomvbgfqNJrb9zv4hs92W112JfM6Dc0RijWdWxYufl3NQlpv4yGhf
 bnSujgCdotGxrfYSqcUppGfpLMIdOoUUfodPaI/aOS7pQ1IeZg2HqU60d
 JAnFoxm1dNBBPZAzcfGbR97TbSCMo869wtOD2rwWK9xkFcAy5iXwoXJCS
 judnKsKKlnNfW4QnjrFtDlRwJkIMHrB8CDVa6FPR82Edw+v3UdVPOcj5D A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="343447992"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="343447992"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 04:28:11 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="653592576"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 04:28:09 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jun 2022 14:28:07 +0300
Message-Id: <20220617112807.1586621-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/tgl+: Fix HDMI transcoder clock vs.
 DDI BUF disabling order
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
Cc: Sandeep K Lakkakula <sandeep.k.lakkakula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Starting with TGL the disabling order of HDMI transcoder clock vs. DDI
BUF has swapped, fix this. There hasn't been any issues seen related to
this, but let's follow the spec.

Reported-by: Sandeep K Lakkakula <sandeep.k.lakkakula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 272e1bf6006be..4b874c31398a2 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2691,10 +2691,14 @@ static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
 	dig_port->set_infoframes(encoder, false,
 				 old_crtc_state, old_conn_state);
 
-	intel_ddi_disable_pipe_clock(old_crtc_state);
+	if (DISPLAY_VER(dev_priv) < 12)
+		intel_ddi_disable_pipe_clock(old_crtc_state);
 
 	intel_disable_ddi_buf(encoder, old_crtc_state);
 
+	if (DISPLAY_VER(dev_priv) >= 12)
+		intel_ddi_disable_pipe_clock(old_crtc_state);
+
 	intel_display_power_put(dev_priv,
 				dig_port->ddi_io_power_domain,
 				fetch_and_zero(&dig_port->ddi_io_wakeref));
-- 
2.30.2

