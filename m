Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 698FD613884
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 14:57:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C87ED10E2B9;
	Mon, 31 Oct 2022 13:57:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAD9810E2B6
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 13:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667224635; x=1698760635;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=EtqOzDmm67gh0+qe/6ATs8V1fyrgcecNlHgmgYg1DO0=;
 b=ejjnlM/87fReRMHkHtPKEd/ZBLa8raaAMgbVREsPesJXSCKjcpAL770I
 Z8uPhD62GbAMS4yktRpV7HePohEo0yz2rZStH8PO7n0Rxy2YmVtMeIXf7
 AkR2JZlL2qraUbYMjedARihBmt0RAefnw6g/QECu18Co7cC7Ktwba3xZR
 goOuI70JfDRnP3XAd3fTZGn+ddQelGRvYvimWt5M2haH7MASqBf0o1Xzd
 ArwmtegTY85E6GtuwIwaEnc30DAUaTHrgYbR/TTDP2HwM4s2ev4W8mnnM
 THS6P1poVsT50JqWZwgmZsHLvYLzNa8ealmsNR7E9mq4/DP9b5mLXv7Ql A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="307624824"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; d="scan'208";a="307624824"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 06:57:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="633532169"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; d="scan'208";a="633532169"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 31 Oct 2022 06:57:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 31 Oct 2022 15:57:12 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 31 Oct 2022 15:57:00 +0200
Message-Id: <20221031135703.14670-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221031135703.14670-1-ville.syrjala@linux.intel.com>
References: <20221031135703.14670-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/6] drm/i915: Fix cs timestamp frequency for
 cl/bw
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

Despite what the spec says the TIMESTAMP register seems to
tick once every hrawclk (confirmed on i965gm and g35).

v2: Rebase

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
index 23a27e49b898..2a6a4ca7fdad 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
@@ -147,8 +147,10 @@ static u32 gen4_read_clock_frequency(struct intel_uncore *uncore)
 	 *     "The value in this register increments once every 16
 	 *      hclks." (through the “Clocking Configuration”
 	 *      (“CLKCFG”) MCHBAR register)
+	 *
+	 * Testing on actual hardware has shown there is no /16.
 	 */
-	return RUNTIME_INFO(uncore->i915)->rawclk_freq * 1000 / 16;
+	return RUNTIME_INFO(uncore->i915)->rawclk_freq * 1000;
 }
 
 static u32 read_clock_frequency(struct intel_uncore *uncore)
-- 
2.37.4

