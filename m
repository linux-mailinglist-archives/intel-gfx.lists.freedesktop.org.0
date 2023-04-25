Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF946EE0AA
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 12:55:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C139010E6FB;
	Tue, 25 Apr 2023 10:55:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CB7810E6F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 10:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682420105; x=1713956105;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=LJwsiurU/q61VnmSnKbOhWKDv0u1R/T8d9w/XFa94eM=;
 b=lhVYBzhwEs6X4G+yoJ+koK+/GOWEwpnxq8WaLrLNs5YntQQPNMWNSses
 TX+vkcDO4mQQcYSu9D3sOWbuWcM1cxhLX7xuF7RMrRO7JkI/sd95xWS8Q
 aXSw75qbhh0Q0ZP7ZC7sLCiO3KKGUeJqfmwWGrp1KEEpVsRj58HzFnOkW
 XlW8ofaqO0paT9FIIsC22MUIRp6x7tgpmaL8jX9YkZxHFlzXfsKKTop25
 Uyy+yDyGEpatkclV3cIg70nH707C+qntTF77dHmLWauWji/KQDCany/vw
 d4FvUZTPaVpmFI6VNI9z125C8vjZmB6S5GssikxO9FDoQisSOO/RtmQbK A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="412019611"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="412019611"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 03:55:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="687367376"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="687367376"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 25 Apr 2023 03:55:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Apr 2023 13:55:02 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Apr 2023 13:54:40 +0300
Message-Id: <20230425105450.18441-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
References: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/14] drm/i915/dsi: Print the VBT MIPI sequence
 delay duration
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Help out debugging things by printing out how long the VBT
delay sequence is supposed to wait.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 695b0d69a4cb..bb84f3da0851 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -235,7 +235,7 @@ static const u8 *mipi_exec_delay(struct intel_dsi *intel_dsi, const u8 *data)
 	struct drm_i915_private *i915 = to_i915(intel_dsi->base.base.dev);
 	u32 delay = *((const u32 *) data);
 
-	drm_dbg_kms(&i915->drm, "\n");
+	drm_dbg_kms(&i915->drm, "%d usecs\n", delay);
 
 	usleep_range(delay, delay + 10);
 	data += 4;
-- 
2.39.2

