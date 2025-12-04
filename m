Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D73CA34A0
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 11:48:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4048F10E92A;
	Thu,  4 Dec 2025 10:48:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lHbAux4m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB4BC10E929;
 Thu,  4 Dec 2025 10:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764845288; x=1796381288;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wipLQP8YZT454aIy6Gagn1El6x/gmtyiPubUa3mV7wQ=;
 b=lHbAux4mYZR0KvcJySK3N94NHNxU/7tPcRU53033M3Egqf8EJpeLjxgs
 woud29b0oOGRgXGBhyz42upCJiX+0fsBQo/WoKOYm780Jc+11+T4AfB7h
 oFpMQnMjQ1kbp7j+F4G4+bGhYZQS0IlJxBtNP8JY/biIpjqZZy0hiWtbc
 7JJ3fs8073NDqHU26ZtuDnKnwAkM3Yblf1NFy0meEWO9rqlMvG3AX48Hl
 xXS+9YXylf2Cr+ubnv8JvvusfujX7+Q6uiLvImVce4TD1C7NUPlpRsUZ2
 WAiZR42EpPUEaeyhP4wMq5u6QlFAZ3CWrY58LElo/iqdjcH0unna2aIdS g==;
X-CSE-ConnectionGUID: a7UxdS75QIC3Dt2NMKS26g==
X-CSE-MsgGUID: QF1ZJ7u6RDacgeNODfwt0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="66901807"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="66901807"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:48:08 -0800
X-CSE-ConnectionGUID: +KcxFL73QTi8zO2+HZO5Ow==
X-CSE-MsgGUID: 4HQOi0LHQom3Avk0ahiv5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="194018763"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.248])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:48:05 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Imre Deak <imre.deak@intel.com>
Subject: [PATCH v3 5/8] drm/i915/psr: Clear pr_dpcd as well on disconnect
Date: Thu,  4 Dec 2025 12:47:30 +0200
Message-ID: <20251204104733.1106145-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251204104733.1106145-1-jouni.hogander@intel.com>
References: <20251204104733.1106145-1-jouni.hogander@intel.com>
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

Currently we are leaving pr_dpcd containing Panel Replay capability DPCD
registers as it is on disconnect. Clear it as well on disconnect.

v2: add FIXME

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index dcceb0ae2a56d..3838835e7e7eb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6048,7 +6048,15 @@ intel_dp_detect(struct drm_connector *_connector,
 
 	if (status == connector_status_disconnected) {
 		intel_dp_test_reset(intel_dp);
+		/*
+		 * FIXME: Resetting these caps here cause
+		 * state computation fail if the connector need to be
+		 * modeset after sink disconnect. Move resetting them
+		 * to where new sink is connected.
+		 */
 		memset(connector->dp.dsc_dpcd, 0, sizeof(connector->dp.dsc_dpcd));
+		memset(connector->dp.panel_replay_caps.dpcd, 0,
+		       sizeof(connector->dp.panel_replay_caps.dpcd));
 		intel_dp->psr.sink_panel_replay_support = false;
 		intel_dp->psr.sink_panel_replay_su_support = false;
 		intel_dp->psr.sink_panel_replay_dsc_support =
-- 
2.43.0

