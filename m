Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F14B48C64B4
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 12:04:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 823A410E672;
	Wed, 15 May 2024 10:04:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bs1kEIR8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1FA010E648
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 10:04:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715767478; x=1747303478;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Xt4m+OEP29fttCyoHbwSPPQJIHd9v/lfKbUi8uL7Yfk=;
 b=Bs1kEIR8ovf5uW/6uRJxZZGBHqOF+4Gywik8g1S2StAUdkWd+9jlYrtx
 C2uMMpm2xu4m35EZV1vU11UfB4GGd0VekPcu5aoow1Ap92bUuusz/5yNw
 +MS2HfmA4nVvxd4kcbXQgZpAFrYzpW7gl6O37yMMJyS8RA59RO3lVh5CW
 uDHW84Wfq4y05w+Pz1g4FytLjja/ZGOZyJvz0Wc0O36CEB6dxqnKFTP2+
 dxsdX0IP3IW6mOGBdc3ke2eyFw/OgUep8QS9jcLEeaJw7Z0Tz+qp6MX8L
 WPNkt5owGNFa4AApJO2pR0U+qAXT56apRuhReH7POLQ9aWQjBT/iV5l0j A==;
X-CSE-ConnectionGUID: q8ariW05QYC/9ig5+l3gMQ==
X-CSE-MsgGUID: uUy8SRC2Snqt5EDSgUskXA==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="11937023"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="11937023"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 03:04:38 -0700
X-CSE-ConnectionGUID: XWRSvUFaT5ysZZLznkISKQ==
X-CSE-MsgGUID: SV0aMBw+SvezzB8a4LrEsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="31584256"
Received: from sghitax-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.210.177])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 03:04:37 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 7/8] drm/i915/display: Skip Panel Replay on pipe comparison if
 no active planes
Date: Wed, 15 May 2024 13:04:10 +0300
Message-Id: <20240515100411.691203-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240515100411.691203-1-jouni.hogander@intel.com>
References: <20240515100411.691203-1-jouni.hogander@intel.com>
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

Panel Replay is not enabled if there are no active planes. Do not compare
it on pipe comparison. Otherwise we get pipe mismatch.

Fixes: ac9ef327327b ("drm/i915/psr: Panel replay has to be enabled before link training")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4035b3ec311d..bb8a0922a7f3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5318,7 +5318,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	 * Panel replay has to be enabled before link training. PSR doesn't have
 	 * this requirement -> check these only if using panel replay
 	 */
-	if (current_config->has_panel_replay || pipe_config->has_panel_replay) {
+	if (current_config->active_planes &&
+	    (current_config->has_panel_replay ||
+	     pipe_config->has_panel_replay)) {
 		PIPE_CONF_CHECK_BOOL(has_psr);
 		PIPE_CONF_CHECK_BOOL(has_sel_update);
 		PIPE_CONF_CHECK_BOOL(enable_psr2_sel_fetch);
-- 
2.34.1

