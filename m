Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F077C729C77
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 16:14:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E39310E6B6;
	Fri,  9 Jun 2023 14:14:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB95B10E6B6
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 14:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686320053; x=1717856053;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=nr7YnVksYHIPjCFWK8DfbIxI09G4i43QwX9IfGosoR4=;
 b=OETBdm24Mw7N4uPI4A3MAB5WQNB+FC5L96yCMqw2UKYu78S3BSgXbH1G
 xm4S7Dze4XtA94691wPRrq1Uvv4rKFDneQRNer5UlegUUN/AXjwNn/u9c
 tpK8yVZKIz3k9nvpnLRwi4H7CnRF5093qW39QFK/1bhq8yjV0iSLVRWwo
 XtCtPh2g59h2tHdKQUdctMOntTBIX7X/jmYgHTrnhTk3xKfQKQF7hr6Yw
 YY/JI9wv6sfLIyOmyXmPTQEl/MEiVJEqRCkL7FI/2pqrzicnF3us1mXE3
 I9ouCCW0rtltxxx0cgrytE3+hFd3xV3kWZscXVOaGUXm8oNm3cIyDHRyM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="385966317"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="385966317"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 07:14:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="740183038"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="740183038"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 09 Jun 2023 07:14:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 09 Jun 2023 17:14:10 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Jun 2023 17:13:53 +0300
Message-Id: <20230609141404.12729-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230609141404.12729-1-ville.syrjala@linux.intel.com>
References: <20230609141404.12729-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/13] drm/i915/psr: Fix BDW PSR AUX CH data
 register offsets
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

The multiplication got replaced by an addition in some cleanup.
This means we never write the correct data to some of the BDW
PSR data registers and thus we fail to actually wake up the
panel from PSR.

Fixes: 4ab4fa103217 ("drm/i915/psr: Make PSR registers relative to transcoders")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 0f7db617425a..8750cb0d8d9d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -81,7 +81,7 @@
 
 #define _SRD_AUX_DATA_A				0x60814
 #define _SRD_AUX_DATA_EDP			0x6f814
-#define EDP_PSR_AUX_DATA(tran, i)		_MMIO_TRANS2(tran, _SRD_AUX_DATA_A + (i) + 4) /* 5 registers */
+#define EDP_PSR_AUX_DATA(tran, i)		_MMIO_TRANS2(tran, _SRD_AUX_DATA_A + (i) * 4) /* 5 registers */
 
 #define _SRD_STATUS_A				0x60840
 #define _SRD_STATUS_EDP				0x6f840
-- 
2.39.3

