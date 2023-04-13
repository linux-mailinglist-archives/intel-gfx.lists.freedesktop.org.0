Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE406E159F
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 22:06:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE00F10EC29;
	Thu, 13 Apr 2023 20:06:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD88810EC29
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 20:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681416368; x=1712952368;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=eWkobQ9WCKqWbEU24ZME2fkJh5S5mLuxuR2IWBKS5Do=;
 b=PlRR9F9MR0ThsVJ7aJ49QzRng5fUgTayYBUjZFpsbHbTx9qEIRUjRV4q
 ythdAazntAe/X3CEN6F1HwCzPuGHLoonEAL17JlVT3It1sM33xG6QcVR4
 ZEpHfk0ZWr+yXWni89U9Xeh658jAhtIEQvSV2RJfxMecRHvbY3F+SNCkT
 Wj8GF6C54mXTCGQsHoT4jSoROfdet2L/qaR0nWmhhooRbhxgZUdVHtc/o
 lb9u8tYWm8loPeRIpzzExIUADpiNm2N1Y1QObKbKl0Z8BXwDxVHZXm8Vv
 w9dUo9oh6SALe4MMIlrIm5HsRzcdvXqmQjcxqGyAKaK12c/W5gyacGVR4 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="344289175"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="344289175"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 13:06:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="689496142"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="689496142"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 13 Apr 2023 13:06:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Apr 2023 23:06:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Apr 2023 23:06:02 +0300
Message-Id: <20230413200602.6037-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230413200602.6037-1-ville.syrjala@linux.intel.com>
References: <20230413200602.6037-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Make intel_get_crtc_new_encoder()
 less oopsy
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

The point of the WARN was to print something, not oops
straight up. Currently that is precisely what happens
if we can't find the connector for the crtc in the atomic
state. Get the dev pointer from the atomic state instead
of the potentially NULL encoder to avoid that.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0334565cec82..5208b07505b2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -959,7 +959,7 @@ intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
 		num_encoders++;
 	}
 
-	drm_WARN(encoder->base.dev, num_encoders != 1,
+	drm_WARN(state->base.dev, num_encoders != 1,
 		 "%d encoders for pipe %c\n",
 		 num_encoders, pipe_name(master_crtc->pipe));
 
-- 
2.39.2

