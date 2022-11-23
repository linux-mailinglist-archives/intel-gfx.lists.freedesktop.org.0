Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C429636387
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 16:27:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 880D110E57D;
	Wed, 23 Nov 2022 15:27:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C12010E585
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 15:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669217218; x=1700753218;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rvz9Ww0jPSEAKi5uxu7mmmOPHyxGbnZDuEbe59bXAIE=;
 b=Ax97/81n5EgSlgLRr2WBjCneWQaM9rp8riU7dHbzM7SaqH5MGGIUc389
 JRVWaQgbMruikjdEx+G5XvDRrwlV6uv3u8xrLoi2X2EaHF3Lued+mSOOP
 tTHsNuTIf3KOC9gNCmY23mnolSuKBgwETPBW9jo6WjX6ABnC/z4F2sVI6
 liSdgufOTSTxR7FWeb76UKaMYA/LEbcErYNmN1cubU74I1NgxrfJLgVN3
 7nje7AVu4oUBttDb+lLWunZuyBRgFtHnDWtYHYXBM77mBbZEDxJgWikZl
 Uu5+bDfLxwYH6yZqE1YK6SCsTqHsj0guNhDYoF1fDeuXXSN3C3x8kqtbP A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="312789894"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="312789894"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 07:26:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="619650953"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="619650953"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 23 Nov 2022 07:26:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Nov 2022 17:26:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 17:26:28 +0200
Message-Id: <20221123152638.20622-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/13] drm/i915: Define skl+ palette
 anti-collision bit
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

I've been frobbing the palette anti-collision logic bit
while playing around with DSB. Not sure we'll have real
use for this but let's define the bit anyways so I don't
have to carry it around locally.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 52d289f55ce1..80ac50d80af4 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5311,6 +5311,7 @@
 #define GAMMA_MODE(pipe) _MMIO_PIPE(pipe, _GAMMA_MODE_A, _GAMMA_MODE_B)
 #define  PRE_CSC_GAMMA_ENABLE			REG_BIT(31) /* icl+ */
 #define  POST_CSC_GAMMA_ENABLE			REG_BIT(30) /* icl+ */
+#define  PALETTE_ANTICOL_DISABLE		REG_BIT(15) /* skl+ */
 #define  GAMMA_MODE_MODE_MASK			REG_GENMASK(1, 0)
 #define  GAMMA_MODE_MODE_8BIT			REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 0)
 #define  GAMMA_MODE_MODE_10BIT			REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 1)
-- 
2.37.4

