Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 291E76C6ABE
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:21:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CD0610EAC8;
	Thu, 23 Mar 2023 14:21:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FA6C10EAC2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581268; x=1711117268;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=yI0CGMoxJDWqYcrf9waI0b119nc4+bMX6KIBiHG4ts0=;
 b=bV0Hjl8fbW6zBTVGlwvb+DM+ajwJgTlQCHGpxlTwW8AIajwMWVkZgvs1
 IN/vkYzs0kW5zESunq/xwHAXMtTq4uMwtTrfkxE50eBPCiAVJIAP8dZXa
 lD3tHxcOxnksflSZzgvJZwevk+gWL9Imkxrot5dJ7/9F3vCGezAfbh4em
 VRRcShjJHdtwP17fx/OyqP5Fxpq0rjENyIz1uvHanwTQl9gpYslBf/qsp
 awnxgP1pk5k/JNJ9SjH8vvZLfdQMzzFt6Mmg+AttlEG3bFqsfZ0iq4EHT
 yss+Zioa4leqXUDEn0C2EQtd1/dRQ4Qi1MqcgbRqVhpsDnzTTLBHkmRwB g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892353"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892353"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:21:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722762"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722762"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:21:06 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:34 +0200
Message-Id: <20230323142035.1432621-29-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 28/29] drm/i915: Remove TC PHY disconnect
 workaround
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

After the previous patch the workaround for a TC PHY hang issue is not
required any more, remove it.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 36454ec5e8e09..6dd8208417836 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -1426,14 +1426,6 @@ void intel_tc_port_put_link(struct intel_digital_port *dig_port)
 	intel_tc_port_lock(dig_port);
 	__intel_tc_port_put_link(tc);
 	intel_tc_port_unlock(dig_port);
-
-	/*
-	 * Disconnecting the PHY after the PHY's PLL gets disabled may
-	 * hang the system on ADL-P, so disconnect the PHY here synchronously.
-	 * TODO: remove this once the root cause of the ordering requirement
-	 * is found/fixed.
-	 */
-	intel_tc_port_flush_work(dig_port);
 }
 
 int intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
-- 
2.37.1

