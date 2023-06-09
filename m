Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A6B729C81
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 16:14:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9A7010E6C2;
	Fri,  9 Jun 2023 14:14:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 108DC10E6C0
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 14:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686320081; x=1717856081;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=LcoKp8JQ/4vKRa0Mqz4Co9KS68bgLiGL4LBrsnmhWcI=;
 b=n8K0Qs2Fzzq3+ckp1mVqLS+XuzkvLeIYofKlEt+V0xYMdZGnP7gldktb
 ykk35Xv9q9nuqRO5Fh9mM3nOUcDVDGom5nnVqn9TNH24gUkA6YhycQYvi
 fNk8+57C2fvjqvob1b2gYVcKmUdugzXkbcCRxuogqVSj0dxOhydBAvXkX
 KKbes7BhDsmr1hujRy4uI2or7sD+n/BcTRJakXtOv/M0DuBnMr9imPBi9
 rv0drHh6VtpNzCfqKV+og93BvwdLDSxmwY/oKkjKqyxXGpE3m6qMDAnJP
 IW8Yin7z8rg4FnHCNLPs5y4WsRRJC52kJTrOkKMvFJFXlDLsexe8cr7fI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="385966560"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="385966560"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 07:14:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="740183141"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="740183141"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 09 Jun 2023 07:14:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 09 Jun 2023 17:14:39 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Jun 2023 17:14:02 +0300
Message-Id: <20230609141404.12729-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230609141404.12729-1-ville.syrjala@linux.intel.com>
References: <20230609141404.12729-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 11/13] drm/i915/psr: Don't skip both TP1 and
 TP2/3 on hsw/bdw
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

WA 0479 says: "Do not skip both TP1 and TP2/TP3". Let's just
stick the minimum 100us TP2/3 time in there to avoid that.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 92369f95ee88..97e609365db4 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -628,6 +628,15 @@ static u32 intel_psr1_get_tp_time(struct intel_dp *intel_dp)
 	else
 		val |= EDP_PSR_TP2_TP3_TIME_2500us;
 
+	/*
+	 * WA 0479: hsw,bdw
+	 * "Do not skip both TP1 and TP2/TP3"
+	 */
+	if (DISPLAY_VER(dev_priv) < 9 &&
+	    connector->panel.vbt.psr.tp1_wakeup_time_us == 0 &&
+	    connector->panel.vbt.psr.tp2_tp3_wakeup_time_us == 0)
+		val |= EDP_PSR_TP2_TP3_TIME_100us;
+
 check_tp3_sel:
 	if (intel_dp_source_supports_tps3(dev_priv) &&
 	    drm_dp_tps3_supported(intel_dp->dpcd))
-- 
2.39.3

