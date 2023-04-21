Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C6C6EA9E6
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 14:03:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72CA810EE16;
	Fri, 21 Apr 2023 12:03:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AFBA10EE16
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 12:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682078624; x=1713614624;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Cn9ZNEibVw7/CDJecYGfuDhZk8kGqs9yIsbMHlCeh7c=;
 b=N0GewvDn+I3cE8wrgscUWNKTUpzIuHbHmu/d+JV//9SLjhWIIQaCCQOi
 UgP/JR5JogP5QSrlNFf/Mjwwc1j3Fmida6RtDAUOHSq0TBmpystbJhixs
 oKOOoh/uTAy16pSs2IkNhyvCo/mZKAH1MzwomLfkKuJN7LVWaBX4I9jEv
 s1iFo10r2YW5E/KpAp9IuQC6ZZyY084PNYdULly5xq64rhxaCym0teSot
 nslCsdDOoLs/K19HUYOMBXjtGLqhZ4N5PjIzLDoeq/1Fz0kijlhRl2BeO
 14/10MELxo9oEebHUxME9a+M/KWIU3ajGVF47P/5qvNWqg5W+2Kbnu4Wa Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="373900153"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="373900153"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 05:03:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="722725469"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="722725469"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 21 Apr 2023 05:03:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Apr 2023 15:03:41 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Apr 2023 15:03:05 +0300
Message-Id: <20230421120307.24793-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
References: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/13] drm/i915/psr: Don't skip both TP1 and
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
index d871a7d3357a..072a431ec257 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -627,6 +627,15 @@ static u32 intel_psr1_get_tp_time(struct intel_dp *intel_dp)
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
2.39.2

