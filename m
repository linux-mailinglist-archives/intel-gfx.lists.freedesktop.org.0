Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E849C0FC1
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 21:32:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 631E210E8DA;
	Thu,  7 Nov 2024 20:32:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M2oMgrTy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 659C210E8D4;
 Thu,  7 Nov 2024 20:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731011554; x=1762547554;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+rkEzxqZYg1BRZBEfakRHtvFJKcfwU0ZAk3weD5WK4I=;
 b=M2oMgrTyI7byyQS3sru6qJ5gdsz+pH32hhBSO/xveWe0Ombk5+61Iyf9
 oga06vJunKsp6vrSF8f8S7mD9NyU20UpgHEOv2o4tvPOWG6LN6CV+b20v
 1iHZWoccV+Est/TvrYkCyq3V6iGUeEpniZC2x+gQc4WkdpI/Ozk03emCw
 EKB9p2rFBMYEFaoxGDyx6AsqbwPjj+VQYXXk+oIWO/G2GUIgVj3uSMWBC
 TOiCyT8EzsYEMwJkHFq9M2BDzb9CD5Yb2eBI7qEQDqnGS7nh60NH6a05B
 rGWgIpnLmN7K2yAxljSluGIKF6t9/1In+MqZHXs0bg/2ajiG6WvfuqbpY Q==;
X-CSE-ConnectionGUID: XGoaZ5qeRhOMSmhKEttU0A==
X-CSE-MsgGUID: 2yXhNwHbQ7a/3PqZGggiCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41439173"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41439173"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 12:32:34 -0800
X-CSE-ConnectionGUID: +sElp/xGQC67Ue+ckssdhQ==
X-CSE-MsgGUID: lQuEzHmqRpOPC3bW/nc4aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="122738323"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.233])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 12:32:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH 1/8] drm/i915/mst: pass primary encoder to primary encoder
 hooks
Date: Thu,  7 Nov 2024 22:32:14 +0200
Message-Id: <c14340984c4313d85531f2f31746d79f365a935a.1731011435.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731011435.git.jani.nikula@intel.com>
References: <cover.1731011435.git.jani.nikula@intel.com>
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

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 13449c85162d..9670a48586ea 100644
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

