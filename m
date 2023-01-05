Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6FB65EB76
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 14:00:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B925310E71C;
	Thu,  5 Jan 2023 13:00:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9046410E721
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 13:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672923604; x=1704459604;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZXylVYOKH0H/n3XlhGe6kyVm+b9gUU9QZ1lPozVeESU=;
 b=XxWpHaJ4X/FmP3q1mzwHbdEIliMvYBkNcp2wPXp78SSWJEa48h3GD5ZQ
 tc3tn9So1m/YUayysfvITgKLGnrHh78sPTDFDYmwFct8HlIb/zwRv85+Z
 VtQHttW6hTY2McefomU6gMmlHxiV8Pizg/27Ya8tyP6EYkOedC3lgi0Lz
 pI/O7zmA8aU7fGd5GxkJIaf3WWqMEUabvq7c8BcIQJPv4079fWOYjxPsP
 daTR0Id7evsYcFXzFmnePniIkW9ZAyYTpsXRsus9bFk3bzoi9tJEpT6sw
 wxxF7k0eNw5+bcJfZ6uxoSYOFvU6vyAXLPgDmApdI7Jbyazhp4zU/AGDo g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="305697862"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="305697862"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 05:00:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="829541169"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="829541169"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga005.jf.intel.com with ESMTP; 05 Jan 2023 05:00:02 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Jan 2023 14:54:38 +0200
Message-Id: <20230105125446.960504-14-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230105125446.960504-1-mika.kahola@intel.com>
References: <20230105125446.960504-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 13/21] drm/i915/mtl: For DP2.0 10G and 20G
 rates use MPLLA
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

Use MPLLA for DP2.0 rates 20G and 20G, when ssc is enabled.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20221014124740.774835-14-mika.kahola@intel.com
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 7520f50d4ffc..67e8889aec29 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2128,8 +2128,12 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 		if (!intel_panel_use_ssc(i915))
 			ssc_enabled = false;
 
-		/* TODO: DP2.0 10G and 20G rates enable MPLLA*/
-		val |= ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
+		/* DP2.0 10G and 20G rates enable MPLLA*/
+		if (crtc_state->port_clock == 1000000 || crtc_state->port_clock == 2000000) {
+			val |= ssc_enabled ? XELPDP_SSC_ENABLE_PLLA : 0;
+		} else {
+			val |= ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
+		}
 	}
 
 	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
-- 
2.34.1

