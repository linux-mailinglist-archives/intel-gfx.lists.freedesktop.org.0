Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 536D688ECEE
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 18:46:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2EEE10FEC2;
	Wed, 27 Mar 2024 17:46:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xq7D3emk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3729310FEC7
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 17:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711561577; x=1743097577;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ConIOsTNDl0puF5zVHTlZnTeRnY6UA2TScLQra48ZGo=;
 b=Xq7D3emkh+j3cY/1fGhKB4S94TOqRvs0LGCg5HaAOpXX4a0iIjBo+ROd
 B8/fIh6gVqc4nESz7sV1Y9KMs7hgyzeVDEGf2HFid0KYZ4yVFFTIu1FPs
 fNsiN7m4XGA5tfsksqU7VoQWa2qIDEUuTlLzrHjD38Lwj6eBwcgu6Ew3A
 kkXG9IDG+y9Khkn9ph2GLGISd40v39U1aMgmsKMqDqdsOH+5Ci7yfp4Vs
 TjXZbImMPc/0uonO7M6HWRr3LUayc8NGROaf32kDrLfzt+rUyq7+LwvPU
 9wy7rVj3a0kYxt2YP33zcdi/JuQyOxLxDsF9bpfgBF3pcrNyP17ZUGDLI Q==;
X-CSE-ConnectionGUID: A1Bk0OQKTyWyOvBMs3RGng==
X-CSE-MsgGUID: /Pd8kLK+SzO9bgvpTkCA2g==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6795466"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6795466"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 10:46:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="827785913"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="827785913"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 27 Mar 2024 10:46:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Mar 2024 19:46:14 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 10/13] drm/i915: Use old mbus_join value when increasing CDCLK
Date: Wed, 27 Mar 2024 19:45:41 +0200
Message-ID: <20240327174544.983-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240327174544.983-1-ville.syrjala@linux.intel.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

In order to make sure we are not breaking the proper sequence
lets to updates step by step and don't change MBUS join value
during MDCLK/CDCLK programming stage.
MBUS join programming would be taken care by pre/post ddb hooks.

v2: - Reworded comment about using old mbus_join value in
      intel_set_cdclk(Ville Syrjälä)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
[v3: vsyrjala: rebase on top of cdclk changes, reword a bit more]
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 98546f384023..4024118a7ffb 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2612,6 +2612,12 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 						 old_cdclk_state->actual.voltage_level);
 	}
 
+	/*
+	 * mbus joining will be changed later by
+	 * intel_dbuf_mbus_{pre,post}_ddb_update()
+	 */
+	cdclk_config.joined_mbus = old_cdclk_state->actual.joined_mbus;
+
 	drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
 
 	intel_set_cdclk(i915, &cdclk_config, new_cdclk_state->pipe,
-- 
2.43.2

