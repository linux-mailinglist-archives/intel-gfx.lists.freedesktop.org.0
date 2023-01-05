Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E6365EB7A
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 14:00:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C493C10E723;
	Thu,  5 Jan 2023 13:00:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37A8B10E723
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 13:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672923611; x=1704459611;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tm6yWc9NZykWU0GAWJH7ZLMeSedmDPZut44Fv2lGS+U=;
 b=gBpvn0f2UYKipdZRGtahgihnXC04GG9QHkyqXdx3WCS3mux8x/tiA9PC
 eSm5s4bjLnU4iFOYI0Qp/cqrjp6ttIDlLim/nom0EfCMDzRA1jwG3k6M9
 1vR3z7QutJB6EAAneNxrVRmHT9u8GD7rB/ySjcvQEhbU7kn+TZ3T+Oa4H
 10NTCMxKkfqSCSjbHSsI9mwnuXXpxdA0SbwIaOfqG2I1wEGo/DIjv9SEa
 H7AprpsgMprVA4wHpEWkbSn/0xbLYfvw8geQLlsq07G9mK4sCLRGRbjks
 zFfx7VusykvHFoKuim5ryuws0KS8Of0qU8hm2mOtOCFXNivd8Ncw+uNQr Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="305697896"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="305697896"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 05:00:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="829541295"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="829541295"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga005.jf.intel.com with ESMTP; 05 Jan 2023 05:00:08 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Jan 2023 14:54:41 +0200
Message-Id: <20230105125446.960504-17-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230105125446.960504-1-mika.kahola@intel.com>
References: <20230105125446.960504-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 16/21] drm/i915/mtl: Enable TC ports
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Finally, we can enable TC ports for Meteorlake.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20221014124740.774835-17-mika.kahola@intel.com
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 87cd6a808938..302c795c2e3f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7885,9 +7885,12 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		return;
 
 	if (IS_METEORLAKE(dev_priv)) {
-		/* TODO: initialize TC ports as well */
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_B);
+		intel_ddi_init(dev_priv, PORT_TC1);
+		intel_ddi_init(dev_priv, PORT_TC2);
+		intel_ddi_init(dev_priv, PORT_TC3);
+		intel_ddi_init(dev_priv, PORT_TC4);
 	} else if (IS_DG2(dev_priv)) {
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_B);
-- 
2.34.1

