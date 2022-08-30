Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C485A5F80
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 11:34:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C491210E029;
	Tue, 30 Aug 2022 09:34:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A404F10E029
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 09:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661852073; x=1693388073;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lHw4MmjmzWhv2HJ17HgYfpkprfYD0w+TuCeakv5N7+s=;
 b=T/Sanf1EO/PwBh3gbLYO0z8FnYebSjJL/Kmf6+dL7yvXzDkWteMq8NNK
 SW0+LzR4jic4QNrSHej4pmEV7xcBYTKslF6jclgaCJdCEO3i360rjHRm6
 7kICsCD571W8datuSYFbtUACM/f0+eZpX2QNoCmCbhLTNG88yF9i/8KNQ
 51wRAC0cmh5HbR+Qnw3hXhP8AH1Fn6BfE5ZXyA/V7/zMYGXEJjvfGW7uM
 PrRY3x2hqf//kDb60ynR/vhiTp6kFTYDoqBdM2308yUBFmiPO4mX5ERE1
 hdV4upI5QTKb/re1GI6bis/qACJof0W6m/xfKmej88xWYdZIvJJGSewhx Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="293875109"
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="293875109"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 02:34:21 -0700
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="641303290"
Received: from amrabet-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.211])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 02:34:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Aug 2022 12:34:07 +0300
Message-Id: <20220830093411.1511040-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/5] drm/i915/crt: remove BUG_ON()
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

Avoid BUG_ON(). We don't have such checks on output type anywhere else
either, so just remove.

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 6a3893c8ff22..d766c506b235 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -643,8 +643,6 @@ static bool intel_crt_detect_ddc(struct drm_connector *connector)
 	struct i2c_adapter *i2c;
 	bool ret = false;
 
-	BUG_ON(crt->base.type != INTEL_OUTPUT_ANALOG);
-
 	i2c = intel_gmbus_get_adapter(dev_priv, dev_priv->vbt.crt_ddc_pin);
 	edid = intel_crt_get_edid(connector, i2c);
 
-- 
2.34.1

