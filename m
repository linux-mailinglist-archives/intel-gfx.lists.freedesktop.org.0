Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BE351D0E8
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 07:51:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FB9210E23E;
	Fri,  6 May 2022 05:51:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 448E310E23E
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 May 2022 05:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651816271; x=1683352271;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UiA6JBA3gEjofe7q4wsbbS7QEQHR2LyXvLUejx5sl44=;
 b=RURqyhkGuOwMqCwynHAG3eZ7MB3+hmGFjf8ZB/MlgaYYOVDdCADGZPj5
 4HxG30VBoECyULda/Wq0uu6TEDRzGfYZtlGW/ruL4PNpyLJSRKKBcgoaj
 LkgsPuPR+lyT2PPcxtetEuS/aIs+hzaxnAm3O62mLMMGbZrSjhPlOxPrM
 LPbh1dTysRbznUIpuaIthR966ZzBstnlgzhYi/bj1p75EC9dTBlSEVJG7
 3H19jN6b2u23+sJKDyfMNP+6kOXze629jfTNQ7adgVKD1bc3vA5NB8oIw
 /BYSgbe0PA3RKeyNNq/gbAhaqtKgho1RzmcMW01i7p4OdDOMbkN9ikAGf A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="293567210"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="293567210"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 22:51:10 -0700
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="585788692"
Received: from hoturkar-mobl.gar.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.34.121])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 22:51:08 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 May 2022 08:48:33 +0300
Message-Id: <20220506054834.2822650-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220506054834.2822650-1-jouni.hogander@intel.com>
References: <20220506054834.2822650-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/psr: Use full update In case of
 area calculation fails
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
Cc: Mark Pearson <markpearson@lenovo.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently we have some corner cases where area calculation fails.  For
these sel fetch are calculation ends up having update area as y1 = 0,
y2 = 4. Instead of these values safer option is full update.

Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Tested-by: Mark Pearson <markpearson@lenovo.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 06db407e2749..8c099d24de86 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1770,6 +1770,9 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		clip_area_update(&pipe_clip, &damaged_area);
 	}
 
+	if (pipe_clip.y1 == -1)
+		full_update = true;
+
 	if (full_update)
 		goto skip_sel_fetch_set_loop;
 
-- 
2.25.1

