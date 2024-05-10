Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F718C211B
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 11:38:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D27710E7F5;
	Fri, 10 May 2024 09:38:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dly1Zfky";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18F8610E7D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 09:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715333923; x=1746869923;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XPCO9MjDKLEjt28S3Adz1MKIpDeDyR6zR9Khia0Ikf8=;
 b=Dly1ZfkyGL7RP9v5L8L918rpDkycMQTRgbO9HRZbWdsgFjr6YcHsYXGD
 5HCebi8SCObGfJKp1AKzG7BdU2TAD4MyWbxYXVlMqBhhr/UbbQWH5WOK8
 kLEZ2tN31k/D3fi40cReJd/ENX2RpAUhNeKXSgTSBaojm6CbxtdTve4aK
 xOyZyAYc6w48K8g7HInCkQ2PjPTwHWGAFDybCpUkVaL0bQ0i829astQV8
 Mf833N2agnGkzrKiXt6K9Vfn7WaBUbtVtRw1XuSmVJnatiT/FI26uPk2+
 k3WZi84E9yGbLFEyG5uTEBK4JATnCPbAXswPAqzpZZqdgvrTkwTvxnszm Q==;
X-CSE-ConnectionGUID: /wZRRCtkRjq/CFVMGEERbA==
X-CSE-MsgGUID: MeJU9BU0Sum4nEdBDu7o+g==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="36684688"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="36684688"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 02:38:43 -0700
X-CSE-ConnectionGUID: QS/M6TzoSXWG5Xxq+FFUzw==
X-CSE-MsgGUID: 0UxUc83VSFGl2q79tAKNGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="34075465"
Received: from dlazzaro-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.51.148])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 02:38:42 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v10 02/12] drm/i915/display: Do not print "psr: enabled" for
 on Panel Replay
Date: Fri, 10 May 2024 12:38:13 +0300
Message-Id: <20240510093823.3146455-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240510093823.3146455-1-jouni.hogander@intel.com>
References: <20240510093823.3146455-1-jouni.hogander@intel.com>
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

After setting has_psr for panel replay as well crtc state dump is
improperly printing "psr: enabled" for Panel Replay as well. Fix this by
checking also has_panel_replay.

Fixes: 5afa6e496098 ("drm/i915/psr: Set intel_crtc_state->has_psr on panel replay as well")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 1da4c122c52e..bddcc9edeab4 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -252,7 +252,8 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 			   str_enabled_disabled(pipe_config->sdp_split_enable));
 
 		drm_printf(&p, "psr: %s, selective update: %s, panel replay: %s, selective fetch: %s\n",
-			   str_enabled_disabled(pipe_config->has_psr),
+			   str_enabled_disabled(pipe_config->has_psr &&
+						!pipe_config->has_panel_replay),
 			   str_enabled_disabled(pipe_config->has_sel_update),
 			   str_enabled_disabled(pipe_config->has_panel_replay),
 			   str_enabled_disabled(pipe_config->enable_psr2_sel_fetch));
-- 
2.34.1

