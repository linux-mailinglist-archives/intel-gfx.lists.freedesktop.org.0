Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A74A5729C80
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 16:14:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0810710E6BF;
	Fri,  9 Jun 2023 14:14:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D3C310E6BF
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 14:14:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686320079; x=1717856079;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/+8jOgCs5wLrN8V7wuZsRRV78t7BVxejJot3DVgI4rs=;
 b=ONF+MJpOvYDm4rLx4tZ1lufGyah68q8EPEFMfwzoseZa4kEinGKiegPv
 cEQahBcPDMjYHfvocCtdv5y78fArgR7l26CS3Tar5uRZmu23Z9D7xGga8
 R0lH8l+Z66MHYMwV32MTe5m5fjDDzxZCoNlMIqYzAzacTAa0mKxEqDyfM
 z38WwKf1X6NbS7wGGwPAos8IiY9wwGZ1UrheB3AMz7ZMkwRHU9vM0iH9N
 1StqVUrTuscgHQxRjaOIlJik2mjWQQatfACkp1daIdBxzF1SL+xgJDwk9
 Votasp0tPCONE/BZQEWvi/IT1TNYZLtSnOT63wn9oAHawIfuxt/N/QytQ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="385966546"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="385966546"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 07:14:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="740183134"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="740183134"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 09 Jun 2023 07:14:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 09 Jun 2023 17:14:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Jun 2023 17:14:01 +0300
Message-Id: <20230609141404.12729-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230609141404.12729-1-ville.syrjala@linux.intel.com>
References: <20230609141404.12729-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/13] drm/i915/psr: Do no mask display
 register writes on hsw/bdw
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

hsw/bdw lack the pipe register vs. display register distinction
in their PSR masking capabilities. So to keep our CURSURFLIVE
tricks working we need to just unmask all display register writes
on these platforms. The downside being that any display regitster
(eg. even SWF regs) will cause a PSR exit.

Note that WaMaskMMIOWriteForPSR asks us to mask this on bdw, but
that won't work since we need those CURSURFLIVE tricks. Observations
on actual hardware show that this causes one extra PSR exit ~every
10 seconds, which is pretty much irrelevant. I suspect this is
due to the pcode poking at IPS_CTL. Disabling IPS does not stop it
however, so either I'm wrong or pcode pokes at the register
regardless of whether it's actually trying to enable/disable IPS.
Also when the machine is busy (eg. just running 'find /') these
extra PSR exits cease, which again points at pcode or some other
PM entity as being the culprit.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 67de5c7267b9..92369f95ee88 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1393,7 +1393,11 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	       EDP_PSR_DEBUG_MASK_LPSP |
 	       EDP_PSR_DEBUG_MASK_MAX_SLEEP;
 
-	if (DISPLAY_VER(dev_priv) < 11)
+	/*
+	 * No separate pipe reg write mask on hsw/bdw, so have to unmask all
+	 * registers in order to keep the CURSURFLIVE tricks working :(
+	 */
+	if (IS_DISPLAY_VER(dev_priv, 9, 10))
 		mask |= EDP_PSR_DEBUG_MASK_DISP_REG_WRITE;
 
 	intel_de_write(dev_priv, psr_debug_reg(dev_priv, cpu_transcoder), mask);
-- 
2.39.3

