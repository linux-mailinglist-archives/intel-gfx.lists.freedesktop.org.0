Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16CB76EA9E5
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 14:03:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63DF910EE12;
	Fri, 21 Apr 2023 12:03:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6598810EE0C
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 12:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682078621; x=1713614621;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=xtKg76LqwgwtAmlGv0Ypkp8ORUQ6s9AK8W2RzI6YGHE=;
 b=cQqmKusURvdK8x/TCiYOBq4dlEtIUXBZQfcPUHy31Hk7jSrL1FKuwtdV
 1HjJxakPbPfZAD6Ouje6uGC0ff36lSPTpJ4EdW+nlAlY2pIDPgNnAQWRC
 tEes789EZc/dVsjW9qgvndsAg61sTg+c9Lx8eLrLDJH/BbWbyMBqqY91a
 CV5K84W9XYvsu0H79lYYBnhX9VnKG8CkRiabTjTHDEAPTkgWTjiQroWJm
 nT8vUO3lBa5zjKhJCB7zWF9auQefaic613SaiClnxzWsfd6mBUFHV+hK1
 kOCHa9jB16c40yfHpGhUiCxtIDLN7ayxBCyQXWeQvLwc2qmgKvyPkRJqu g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="373900143"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="373900143"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 05:03:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="722725465"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="722725465"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 21 Apr 2023 05:03:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Apr 2023 15:03:38 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Apr 2023 15:03:04 +0300
Message-Id: <20230421120307.24793-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
References: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/13] drm/i915/psr: Do no mask display register
 writes on hsw/bdw
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
index f5089565e800..d871a7d3357a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1392,7 +1392,11 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
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
2.39.2

