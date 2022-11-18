Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E5C62F309
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 11:55:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4D5710E6B2;
	Fri, 18 Nov 2022 10:55:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F383110E245
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 10:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668768934; x=1700304934;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=lll4/Q41IA/Y8+Tax0f0REIG5RcsEtMEgpRFnb0Pc48=;
 b=dhEHA8O65TNeSYibho/j+M4H4J4mSEapXtxC4SoKux811ZhhN739fB9h
 ZI3RaKr+bGuiYZw3vc6ONHXDmaOdw1aFXv3MvrU9x8WgiscVCEmjO9R/o
 8ewZBnQJ5YDboMIDFFRKA2+Ftr3+G7mMB+DCj5LdBok1XbRpGUsUGNhGh
 Uoo0/96j9i+90NuXfGFozJxiHVKtJdiNbbP8Uyp6m2gnfnPs6Qqt/DKx9
 lNIPQkb50BPdAdZH7LjBxo0J26djDr4fOtjtZAjaPBpoKYRA6ELQnPY1+
 ByGfjvwNdQS1/RfbMHR9uWSC1ku4PW1/BHzbZ4wnmH3Ydl7xnlC5FOaOl Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="310741720"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="310741720"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 02:55:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="708994388"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="708994388"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga004.fm.intel.com with SMTP; 18 Nov 2022 02:55:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Nov 2022 12:55:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Nov 2022 12:55:18 +0200
Message-Id: <20221118105525.27254-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221118105525.27254-1-ville.syrjala@linux.intel.com>
References: <20221118105525.27254-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/9] drm/i915/dvo: Don't leak connector state on
 DVO init failure
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

If we can't initialize the DVO encoder also free the connector
state allocated by intel_connector_alloc().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dvo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 94dcc43876c9..8859e400b860 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -535,5 +535,5 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 	}
 
 	kfree(intel_dvo);
-	kfree(intel_connector);
+	intel_connector_free(intel_connector);
 }
-- 
2.37.4

