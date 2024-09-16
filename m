Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2587B979D6D
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 10:57:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C047E10E313;
	Mon, 16 Sep 2024 08:57:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D1VcLLkb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6A8910E313
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 08:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726477044; x=1758013044;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hB59liQfS15HZBzEXxzRqCWK03WB9JVUwT7CX7EEC54=;
 b=D1VcLLkbgSO7ZhUQwLfeVC1/I/EJ5Qc2Pe64hviIXAypU+brS/igM8YH
 rl0L7TeIFEkLnSX53tgvX6ym+WDfpqijRE8jWDO/QohWexmirNnkMFFp5
 7ps4/iTJlf59siSV9C5CcA+D6/gRv5DvPpmpLgGPMfzOUMf88QGkORW7/
 PCktc32X+ea5wYgHSSGBQTXLqRQw1aUTHnWdbTcV8b21la6Vgs7THiOEK
 wlZ8gkF/T/3bU0BlTlfUWbmHz5ONE7g2YaQXXWFNB9UJP5rbZBxQGqf+b
 A+pybfTvqH1ZEwHVfFSTYBjU95k0u1samh9mA7c5xjZWyo+j28fObg5Mq Q==;
X-CSE-ConnectionGUID: DdnS+EkyTO+mlsw9PQihKA==
X-CSE-MsgGUID: pbLNOvNbSCKlFVSzc0KCZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11196"; a="50711736"
X-IronPort-AV: E=Sophos;i="6.10,232,1719903600"; d="scan'208";a="50711736"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 01:57:24 -0700
X-CSE-ConnectionGUID: wudURmosSSeQqXxDkWGI5Q==
X-CSE-MsgGUID: rB5h6HE5TQCcQDmiDC8vIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,232,1719903600"; d="scan'208";a="73187436"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.28])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 01:57:20 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/psr: eDP Panel Replay is not supported on pipes
 other than A and B
Date: Mon, 16 Sep 2024 11:57:06 +0300
Message-Id: <20240916085706.2160511-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
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

Do not allow Panel Replay if pipe is other than A or B.

Bspec: 68920

Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2736
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1a4ef231a53ca..699892b8c967a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1582,6 +1582,10 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 
 	/* Remaining checks are for eDP only */
 
+	if (to_intel_crtc(crtc_state->uapi.crtc)->pipe != PIPE_A &&
+	    to_intel_crtc(crtc_state->uapi.crtc)->pipe != PIPE_B)
+		return false;
+
 	/* 128b/132b Panel Replay is not supported on eDP */
 	if (intel_dp_is_uhbr(crtc_state)) {
 		drm_dbg_kms(display->drm,
-- 
2.34.1

