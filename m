Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A587D80916D
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 20:35:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD5FC10E958;
	Thu,  7 Dec 2023 19:35:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC12310E96C
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Dec 2023 19:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701977700; x=1733513700;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=1Mgeanvu43EVZXNZS3bsBmhbDjDSEG4zs6dmrb9cxuY=;
 b=O3KFgwT2eEfy2DnNj2eX5F2a9L2hH1HgyIt4ilMbDOvGE6hYTpXDtzER
 4jm13Y3YPUKUDtGxh56xCxLVbKg6Ih2SJeQeZ79I4LrWFbzYLVMhKk02L
 gwdRhHcHx1Jy7ul4ObgGp/8vA3HpotRujC93xHrJa2KNzTyPUeB5KQfGd
 vvpqHbHphX5oQDiMXlSqKe1oOCx1vBASx0+pckA/sOjE6//AxACybRZXS
 8TLgdKtgVla3zOthRs4C3IgEU9+WHM4KW5nrN8RK9iE7SETMeEJiB2wGI
 /FIawf9rV+eIRVBydwMy5RbO7K0MMORtj5HuW1qEApdWwF0SSxsn+JDmE w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="384694379"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="384694379"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 11:35:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="765213163"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="765213163"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 07 Dec 2023 11:34:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Dec 2023 21:34:57 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/8] drm/i915: Drop NULL fb check from intel_fb_uses_dpt()
Date: Thu,  7 Dec 2023 21:34:38 +0200
Message-ID: <20231207193441.20206-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231207193441.20206-1-ville.syrjala@linux.intel.com>
References: <20231207193441.20206-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

intel_fb_uses_dpt() should not be called with a NULL fb, so
drop the check.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 69c3cfe3120e..85dbb8a5abf3 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -771,7 +771,7 @@ bool intel_fb_modifier_uses_dpt(struct drm_i915_private *i915, u64 modifier)
 
 bool intel_fb_uses_dpt(const struct drm_framebuffer *fb)
 {
-	return fb && to_i915(fb->dev)->display.params.enable_dpt &&
+	return to_i915(fb->dev)->display.params.enable_dpt &&
 		intel_fb_modifier_uses_dpt(to_i915(fb->dev), fb->modifier);
 }
 
-- 
2.41.0

