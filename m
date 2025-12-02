Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15AA7C9A789
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 08:36:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A08F510E584;
	Tue,  2 Dec 2025 07:36:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EXkOkpwc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 699C110E584;
 Tue,  2 Dec 2025 07:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764661013; x=1796197013;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5NHyPR4GEBuso56QQrSL5MRjuV7/I/i9XjtuHO1snmg=;
 b=EXkOkpwcKzvpypJDLrKY22RV2LcZ/3vT9tx5kQXjPKTZQh9XL9pQJp0l
 VwUcSn9YaD2zxc10kkU6brZzfY53+hznj8rL7SUZAsrTBVs6oE8RiuQgd
 1DAKOq0th8s9du35hdzSj0L/EZn/MaKdxXT7oRsVrsrvXW9jVP1oFeJK6
 yn781qNwW0iAqqWQzgwvRtrPoe99a+6BQ3X750GkWrM/poVhCIGdVMIgg
 51lA4ocD6gP4Tj243Ch3T1Hm2sffrZbGWxRwlTzEpvUfSwPzDyiawqzUe
 azeNVDo3lSl8aN3AR65gSiSd/gcjZmvuJu6SAUOfa3ZSHYx7p0nr82Lkn g==;
X-CSE-ConnectionGUID: bg7h9sw+S4iaJZaxfWY6Zw==
X-CSE-MsgGUID: 0SAtfIO5Tze7J4k9jSl1Mg==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="84219211"
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="84219211"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 23:36:53 -0800
X-CSE-ConnectionGUID: Xh5b03DuQKaLdPzlcXqaiw==
X-CSE-MsgGUID: 5PB5kEhOQVa04fo8Xa9LqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="198504797"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa003.jf.intel.com with ESMTP; 01 Dec 2025 23:36:51 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com,
 uma.shankar@intel.com, jani.nikula@intel.com
Subject: [PATCH v10 06/17] drm/i915/vrr: Add state dump for DC Balance params
Date: Tue,  2 Dec 2025 13:06:41 +0530
Message-ID: <20251202073659.926838-7-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
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

Add state dump for dc balance params to track DC Balance
crtc state config.

-v1:
-- nitpick: s/Vblank target/vblank target. (Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index c2a6217c2262..234843b8f83a 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -303,6 +303,14 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 	drm_printf(&p, "vrr: vmin vblank: %d, vmax vblank: %d, vmin vtotal: %d, vmax vtotal: %d\n",
 		   intel_vrr_vmin_vblank_start(pipe_config), intel_vrr_vmax_vblank_start(pipe_config),
 		   intel_vrr_vmin_vtotal(pipe_config), intel_vrr_vmax_vtotal(pipe_config));
+	drm_printf(&p, "vrr: dc balance: %s, vmin: %d vmax: %d guardband: %d, slope: %d max increase: %d max decrease: %d vblank target: %d\n",
+		   str_yes_no(pipe_config->vrr.dc_balance.enable),
+		   pipe_config->vrr.dc_balance.vmin, pipe_config->vrr.dc_balance.vmax,
+		   pipe_config->vrr.dc_balance.guardband,
+		   pipe_config->vrr.dc_balance.slope,
+		   pipe_config->vrr.dc_balance.max_increase,
+		   pipe_config->vrr.dc_balance.max_decrease,
+		   pipe_config->vrr.dc_balance.vblank_target);
 
 	drm_printf(&p, "requested mode: " DRM_MODE_FMT "\n",
 		   DRM_MODE_ARG(&pipe_config->hw.mode));
-- 
2.48.1

