Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C83055505C
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 17:55:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E3A810FAEB;
	Wed, 22 Jun 2022 15:55:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4545112058
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 15:55:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655913310; x=1687449310;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZcJt9alpGV/xdDBTTDAZGVaod6FogZb+VmzT9BP21Ps=;
 b=V/9LgXzVhSfv3s1GAsKocRyeOeP+WugL4cDyb2NqWcx0f7b4B/huIzRJ
 wXms4F7GPGq8RJVknG/Gx3M1om7lX1YXnLI4n33oVNHSFzjdn+Sj7jpH1
 aVLPKGroYhR2iC0gDJpdx/qPzUlMVxs+i65UK7FZ52DfepcDQHCg0G630
 MTAYTaE7Pw92RMCzoiAcAcXIxAxppwSTHmtCouoojWe3jt8ca7hDlOhNK
 GgABsqMvw7q6LL/LZUPpqbP09V5SQYe0iUl3DljAmepGtV8CHjZ10fQWa
 yb+Sar6hl9es1/ffQPDQmEfBgykH7GxGU+v8tdIM9kTN5uHHqGwfHp39B g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="342144494"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="342144494"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 08:55:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="620964637"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga001.jf.intel.com with SMTP; 22 Jun 2022 08:55:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Jun 2022 18:55:07 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jun 2022 18:54:48 +0300
Message-Id: <20220622155452.32587-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
References: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/9] drm/i915: Add missing invalidate to g4x
 wm readout
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

Let's not forget to mark the unused watermark levels as invalid
after the readout. The vlv/chv codepath has this but the g4x
didn't for some reason.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 45ec00e2e3c4..734deb0bd867 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -6915,6 +6915,8 @@ void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv)
 					     plane_id, USHRT_MAX);
 		g4x_raw_fbc_wm_set(crtc_state, level, USHRT_MAX);
 
+		g4x_invalidate_wms(crtc, active, level);
+
 		crtc_state->wm.g4x.optimal = *active;
 		crtc_state->wm.g4x.intermediate = *active;
 
-- 
2.35.1

