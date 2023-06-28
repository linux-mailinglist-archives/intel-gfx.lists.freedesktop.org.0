Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D40EB74136D
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jun 2023 16:10:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0525310E084;
	Wed, 28 Jun 2023 14:10:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A05D10E084
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jun 2023 14:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687961422; x=1719497422;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fIBHf+YF3o7PWxdGEoaP/aiGmfwvGTzgUqigJy1GPjE=;
 b=gjxrX6Biu/nGwUMROyotNNsCr1qhvA5GmlsOo/nFLizNGudyb4n1quIN
 CJy/qQsKVcqCoB7aOG2PobtfJYaYBVzjkcb40OxjBwnkL6OL5zoMyWd3U
 QwG4/0kkXa+k49Sq0wmx1esWpyAStu9msDJvEOhq5dQxQsQCLzmhyi6sJ
 TztU5k51sZ4hu3Jm4+2qSG42p1O8bDvCkhrXzDVZtQIJ3XXCBAsijXLYh
 dkT80mi99Trab63UEn0nJjVPqwUFDxQfch7uj47QGIdCg7+RkrsnsBHG5
 wk6CbMUgfwdgwRVDWzlyeyxUGGI+jp7NA0jFrZfJJ/hDG+048ynIn9aMq g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="360705722"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="360705722"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 07:10:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="716978587"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="716978587"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga002.jf.intel.com with ESMTP; 28 Jun 2023 07:10:18 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Jun 2023 17:10:17 +0300
Message-Id: <20230628141017.18937-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Don't preserve dpll_hw_state for
 slave crtc in Bigjoiner
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

If we are using Bigjoiner dpll_hw_state is supposed to be exactly
same as for master crtc, so no need to save it's state for slave crtc.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 43d6ba980780..c3e93bdde29d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4568,7 +4568,6 @@ copy_bigjoiner_crtc_state_modeset(struct intel_atomic_state *state,
 	saved_state->uapi = slave_crtc_state->uapi;
 	saved_state->scaler_state = slave_crtc_state->scaler_state;
 	saved_state->shared_dpll = slave_crtc_state->shared_dpll;
-	saved_state->dpll_hw_state = slave_crtc_state->dpll_hw_state;
 	saved_state->crc_enabled = slave_crtc_state->crc_enabled;
 
 	intel_crtc_free_hw_state(slave_crtc_state);
-- 
2.37.3

