Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 474CE555067
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 17:55:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9112F112DC4;
	Wed, 22 Jun 2022 15:55:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1503112DC4
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 15:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655913322; x=1687449322;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=BNLVxhxUfcntHidksbzkxAkJi+owoN8kSCvIKCP3pyw=;
 b=AkaNoliA5wdv0YRNcfdxal5aA3zPNYG8ALoogxUaw0EI5SPCi7hOIXu7
 EJ7YTSYuaroqs0/3uvKkM28vCUp9TlZ76lykk0pECoGrMFnKduHlLadq4
 axsBK4RwQAXGHiZGCIP7BkMwaNrhwig+Z1GUEcpQsKGEfGUAedkciIaa9
 +upxuZNPz9wXfz3X09wsY23P/H3qhmbAAbZQF7YBwvouO4wEQ5c1VCBct
 LJe1xT/rZrwfQJ/RFCC61TC1lhrSOxl7T7LGmzTGj93EhZlAet4EgEDd3
 x+dS1II11n4l0RlLMXOgn5VbLMvL8H0nqhdiBVnpIsB2i2CtzGtKvH/mO w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="281188658"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="281188658"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 08:55:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="644264205"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga008.fm.intel.com with SMTP; 22 Jun 2022 08:55:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Jun 2022 18:55:19 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jun 2022 18:54:52 +0300
Message-Id: <20220622155452.32587-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
References: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 9/9] drm/i915: Enable atomic by default on
 ctg/elk
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

The watermark code for ctg/elk has been atomic ready for a long time
so let's just flip the switch now that some of the last CxSR issues
have been sorted out (which granted was a problem for vlv/chv as well
despite them already having atomic enabled by default).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 0e224761d0ed..d4e544d6b28f 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -841,8 +841,11 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (IS_ERR(i915))
 		return PTR_ERR(i915);
 
-	/* Disable nuclear pageflip by default on pre-ILK */
-	if (!i915->params.nuclear_pageflip && match_info->graphics.ver < 5)
+	/* Disable nuclear pageflip by default on pre-CTG/ELK */
+	if (!i915->params.nuclear_pageflip &&
+	    match_info->display.ver < 5 &&
+	    match_info->platform != INTEL_G45 &&
+	    match_info->platform != INTEL_GM45)
 		i915->drm.driver_features &= ~DRIVER_ATOMIC;
 
 	ret = pci_enable_device(pdev);
-- 
2.35.1

