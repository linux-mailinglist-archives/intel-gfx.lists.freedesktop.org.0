Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 788A6823FD2
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 11:49:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEE1E10E41F;
	Thu,  4 Jan 2024 10:49:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC39A10E41F
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 10:49:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704365378; x=1735901378;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Uqaxbu/n2bsEl4Nep5cEzQowESCY37nBMiHr2nJpwY0=;
 b=TmzyXJ1nMHGiEgvCGH40A/cqNaUV/2BRySMR7+TD9uIMsdWMeorzc+Fm
 eHOPTuQ7cWDu79QqVAqti9hGRUWpGhc920Q+mXYp0PsyB7dxC/YyQ1Tu4
 4Tt+5LoxGtcCg53KE1h1Tj2i8Ivv4KMXUDxdtKIYUujUKEUCm2RhooTx8
 bBTV62AUsgmajr4Pllo0t0exZESSbYNwHXY7rip/94lkDdg/mtHTHboAu
 S7m+b3As0yt40sqcYPyVHpL6ynhOm3cnGsF8Dq5joGU2gVGfEmSY4bzTi
 ZIfFoD8fTM76uIgkK6i9sVOULIDxS37t2Udlp6pPHRPHRirx6m2zs9L73 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="396928118"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="396928118"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 02:49:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="923863623"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="923863623"
Received: from jstopfor-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.51.226])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 02:49:36 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 07/12] drm/i915/psr: Add sink_panel_replay_su_support to
 intel_psr
Date: Thu,  4 Jan 2024 12:48:16 +0200
Message-Id: <20240104104821.1822988-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240104104821.1822988-1-jouni.hogander@intel.com>
References: <20240104104821.1822988-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Add new boolean to store panel replay selective update support of sink.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index d2aa3f33da2a..eedf0908b71c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1717,6 +1717,7 @@ struct intel_psr {
 	u16 su_y_granularity;
 	bool source_panel_replay_support;
 	bool sink_panel_replay_support;
+	bool sink_panel_replay_su_support;
 	bool panel_replay_enabled;
 	u32 dc3co_exitline;
 	u32 dc3co_exit_delay;
-- 
2.34.1

