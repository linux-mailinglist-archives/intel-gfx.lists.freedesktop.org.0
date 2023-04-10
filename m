Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F032C6DCA93
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Apr 2023 20:14:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 529DE10E1DF;
	Mon, 10 Apr 2023 18:14:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFD5F10E1AD;
 Mon, 10 Apr 2023 18:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681150489; x=1712686489;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jr21YHmGpKB6Of6v+UPnY1Z78p9e25JmF85u+zYeZxM=;
 b=bczY/XR4AsQtID8I9iPs1teYLZy/khL/2AN0W/m769UgFM3ec8/1oaZZ
 hYjt2jvoEvyFfzNn2R7i3ldmoZsrHnkpQryf1o46W5/n0Pbh+kfXoyyK3
 U7qdO+hQdhqiHoqDe8OKI0RZ80Bhknjx8mfSP6acc2rQzcYcEhw5mhyz6
 WWZ2KHQGASuMATejAKbdVEAfqGaLvJQauv/TujX+wJ/xngdQADH6tzlzD
 QPPckJfKAq1/oSuSIGN8ge+SLk93vwUNIwe1Xf8WnaCYgATbh6ADzAhhC
 7XedDO4TY5YXOTP6TH8TarDiKzfkbcu8/MDVCAz9ZHUSKUrfN+klbk4yc Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="346087214"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="346087214"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2023 11:14:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="832056831"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="832056831"
Received: from josouza-mobl2.fso.intel.com ([10.230.18.148])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2023 11:14:48 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Apr 2023 11:14:38 -0700
Message-Id: <20230410181438.147117-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230410181438.147117-1-jose.souza@intel.com>
References: <20230410181438.147117-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Only initialize dlk phy lock in
 display 12 and newer
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
Cc: intel-xe@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This spin lock will not be used in older display versions, so no need
to initialize it.

Cc: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dkl_phy.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.c b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
index 5bce7b5b27bc7..1c5d410b74e5d 100644
--- a/drivers/gpu/drm/i915/display/intel_dkl_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
@@ -108,5 +108,6 @@ intel_dkl_phy_posting_read(struct drm_i915_private *i915, struct intel_dkl_phy_r
 void
 intel_dkl_phy_init(struct drm_i915_private *i915)
 {
-	spin_lock_init(&i915->display.dkl.phy_lock);
+	if (DISPLAY_VER(i915) >= 12)
+		spin_lock_init(&i915->display.dkl.phy_lock);
 }
-- 
2.40.0

