Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A26319C55D6
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 12:11:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BFB810E5C5;
	Tue, 12 Nov 2024 11:10:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UBzIfZC0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CFB610E5C4;
 Tue, 12 Nov 2024 11:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731409857; x=1762945857;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9iqyaaq5vWxrT4e658QLQvD2LiWX5aYFsIcXTCZDgrg=;
 b=UBzIfZC0vPoPbumKCSTyKfG0NL/SjVykMuJWszGKNgttJCGXUdZunQ49
 1lkRTWrXuIOozx9pykQdHOomF/IwuxFoNDy6lDBVztVgPBqPQdckOHjBX
 4Q1UbJZmaRWONJL8kcOqVWCmNyugwRWuycT3HjRubz9Cq/ymgpZ4sc9Or
 MJhHbSi39SuEfuw8RinOs6QK8i2mlmtGRPsCmUK2oGeeMiFltZ83NIr8G
 BO40x0ULsqsZKc1iOQLYKhkCCc7MPaOHfeJDJ57HNau77vhvt8g3cohE/
 qo82TH06CXE3Y2UNFRnx1pRoAfielzGVoYySaJwSYtDtYWxM4US4aRAId A==;
X-CSE-ConnectionGUID: Cvfed8ALQsGXKR/6+HkROQ==
X-CSE-MsgGUID: cTQ+5axwRTycDXsyXo8FlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31094621"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="31094621"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 03:10:57 -0800
X-CSE-ConnectionGUID: lV291OECS2amYJ3U7v4SjA==
X-CSE-MsgGUID: vnf1nEvbQ6iNP03im3MThw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="92362465"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.121])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 03:10:55 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Imre Deak <imre.deak@intel.com>
Subject: [CI v2 1/8] drm/i915/mst: pass primary encoder to primary encoder
 hooks
Date: Tue, 12 Nov 2024 13:10:37 +0200
Message-Id: <a0151fddfdd5ec11a26345232cdd3ae59c8cf56a.1731409802.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731409802.git.jani.nikula@intel.com>
References: <cover.1731409802.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Pass the primary encoder to the primary encoder hooks. This is
pedantically correct, but intel_ddi_post_pll_disable() also works with
the fake encoder by coincidence.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 29f2f8952c39..7723f36ad256 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1113,7 +1113,7 @@ static void intel_mst_post_pll_disable_dp(struct intel_atomic_state *state,
 
 	if (intel_dp->active_mst_links == 0 &&
 	    dig_port->base.post_pll_disable)
-		dig_port->base.post_pll_disable(state, encoder, old_crtc_state, old_conn_state);
+		dig_port->base.post_pll_disable(state, &dig_port->base, old_crtc_state, old_conn_state);
 }
 
 static void intel_mst_pre_pll_enable_dp(struct intel_atomic_state *state,
-- 
2.39.5

