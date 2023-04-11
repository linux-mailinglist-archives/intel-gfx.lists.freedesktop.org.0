Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E715F6DE48C
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 21:14:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3896710E644;
	Tue, 11 Apr 2023 19:14:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A808110E632
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 19:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681240489; x=1712776489;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=tOabFyqL7gj66T53mNjoWNKjPhO0EgrG1PUouOqEtOA=;
 b=OIsymQBNbQ3tKz2C2EnxkboMCYfQEGq02+NPgseGURwOpO2DA7s7CkBP
 SYYq+L2rAQOu2Xmlswwecme36kl3lxFQdryaEQBqoFlswtramtClmopXz
 dIrOlB8OjtY42DwxTxWuY7wgmi2V0ICnUE7bVaSrUfdzgTjLkrwTZ3+Q3
 u0PCoPDAKG7fp6ZvAtKmf/xmtchps7SOr9r50hC80lovYUQdioAQDWS7R
 4tIk91xxCRK4U47zMxciVV2mGSF6qEfN45yz8lTP+WWab27UZG/K4YbHV
 3scHD1I6g903+neufOjIRmziXSCEnA8shPOMpJSHk3qW7ttRcSpIXfUaY g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="341202061"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="341202061"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 12:14:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="832446551"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="832446551"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 11 Apr 2023 12:14:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Apr 2023 22:14:47 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Apr 2023 22:14:27 +0300
Message-Id: <20230411191429.29895-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230411191429.29895-1-ville.syrjala@linux.intel.com>
References: <20230411191429.29895-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/8] drm/i915/psr: Add a FIXME for the PSR
 vs. AUX usage conflict
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

We need to disable PSR when we are doing AUX by hand, otherwise
it's possible that the PSR hardware could be using the AUX CH
while we try to do our manual stuff. Add a FIXME for now.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 705915d50565..abf77ba76972 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -268,6 +268,11 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 
 	intel_pps_check_power_unlocked(intel_dp);
 
+	/*
+	 * FIXME PSR should be disabled here to prevent
+	 * it using the same AUX CH simultaneously
+	 */
+
 	/* Try to wait for any previous AUX channel activity */
 	for (try = 0; try < 3; try++) {
 		status = intel_de_read_notrace(i915, ch_ctl);
-- 
2.39.2

