Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 457955A5F83
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 11:35:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D465A10E036;
	Tue, 30 Aug 2022 09:34:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03E2010E02E
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 09:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661852074; x=1693388074;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LUFMV7RfzL0S//iwqhaT2bdQrD6ybjc/o7SCwKgcWD8=;
 b=gm5UbK7xbUdb6ad7zo7AAYrHmTb/ncDVhrzFiTmOy9RXvqWvsRaetufa
 Nd+IvDbQoq1SB9SAlEvJmTbyxIlgiUGf9Y7SjM+rUB8CSrMim/DOZePgr
 DusiZKmPMuwedkV97vFlgA/hIVlVimPj9Hf5xJ80WpPMEse2jdt/BERpK
 zTm+9IjaHvCDcUBs2Z8K7quNxwoNIZUs3fYGZus8m284NLhwHIpVJoa8i
 SlChlt90zOfDIRdHIVtidlEwUGwPh9fuE0B6MV5itTwQcKJOVV5RyBwt8
 4nbUT8R2llzzcytF7lrWUaUoT+vY5Q1aNhTIEZ69a6mPkfMj3s5hbSwh/ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="293875124"
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="293875124"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 02:34:29 -0700
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="588532595"
Received: from amrabet-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.211])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 02:34:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Aug 2022 12:34:09 +0300
Message-Id: <20220830093411.1511040-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220830093411.1511040-1-jani.nikula@intel.com>
References: <20220830093411.1511040-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/5] drm/i915/pch: replace BUG_ON() with
 drm_WARN_ON()
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

Avoid BUG_ON(). Replace with drm_WARN_ON().

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pch_refclk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index ee72400759a3..2f95a0c65f8b 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -654,7 +654,7 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 		}
 	}
 
-	BUG_ON(val != final);
+	drm_WARN_ON(&dev_priv->drm, val != final);
 }
 
 /*
-- 
2.34.1

