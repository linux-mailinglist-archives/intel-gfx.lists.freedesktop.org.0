Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A519A4D9CE7
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 15:02:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E345610E45E;
	Tue, 15 Mar 2022 14:02:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DFEE10E45E
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 14:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647352962; x=1678888962;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=PEkCtjUYE92Kne+DGafWV0VJi5OGIT0OhkxD17J7z0M=;
 b=SSH/UQZfGXm2+mBKgBrQsXZ6bqj7spy9YCijYbc7uqkN5V0XaFT8dL2z
 quFD3Fa3Uk/sAURxcNaRjxH+JvTAeI6EEThrREQWLpsX8cN3EOoyiZdfD
 PpZOnkWoFMNNIJzeR6b6AsijdnuTnWYs6WEFvYdK11BUINkaWxiT/dWrl
 K3NRYhnkFwB1hTJ8lNZD4g0S2QPGRGTgC7t79k65qzWUnOnu5kATTxkKy
 VsUf3JXFVJNZzMSUmFFqiUoR8gXec5AzRHYFY8lSelXZmiKQsTjAhykzx
 Ft2uVkFxYr4JDrszuvepa/CNK6xodrOF/XlSbH9KocDm1yAd21+vu2x6z Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="253867870"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="253867870"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 07:00:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="580521312"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 15 Mar 2022 07:00:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Mar 2022 16:00:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 16:00:01 +0200
Message-Id: <20220315140001.1172-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220315140001.1172-1-ville.syrjala@linux.intel.com>
References: <20220315140001.1172-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/7] drm/i915/fbc: Call intel_fbc_activate()
 directly from frontbuffer flush
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

Remove the pointless detour via __intel_fbc_post_update() during
frontbuffer flush.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 0187c61fa063..8720344cf48e 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1378,7 +1378,7 @@ static void __intel_fbc_flush(struct intel_fbc *fbc,
 	if (fbc->active)
 		intel_fbc_nuke(fbc);
 	else
-		__intel_fbc_post_update(fbc);
+		intel_fbc_activate(fbc);
 
 out:
 	mutex_unlock(&fbc->lock);
-- 
2.34.1

