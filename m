Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A035B6987C7
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 23:24:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A24E10EC6E;
	Wed, 15 Feb 2023 22:24:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3C4010EC68
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 22:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676499869; x=1708035869;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JgEZ6BHD5L38N3csVJrZ0u0jUPUH7jRZ3MC2RbrMCvk=;
 b=Gy5akJBGO7XVQ1e7uQX4ZveD1zVdOLQmfNizHbRVF00c1N+ywhFsjpbk
 sQ3quyAtC9RuSUTvUMNS3kVkwexKxFzJxWe38VX1kQju3saUckLCwU93p
 V1SKnKw12FjO+C6ZGdhSfoY+NFr7CPK2fqKo2xKpeCGj1ddH2f0riDHmn
 aHHJ5F5WLZYRzUvQ5d+4O9bA5blxoykNu9+kmyJiEvklXab70SaTEFhTd
 LJQf6+QpLg/kQ5vy3z7UASuzofQt/qbcaXy5O6BlBOKqoJFvB7dYFhiaj
 Vn3PoXjHeaIpFn9We1VPgFNrdXXAOYpsKE2CZ7/aoQNDhWphehF8LCYPD Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="311923721"
X-IronPort-AV: E=Sophos;i="5.97,300,1669104000"; d="scan'208";a="311923721"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 14:24:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="812708510"
X-IronPort-AV: E=Sophos;i="5.97,300,1669104000"; d="scan'208";a="812708510"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by fmsmga001.fm.intel.com with SMTP; 15 Feb 2023 14:24:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Feb 2023 00:24:26 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Feb 2023 00:24:25 +0200
Message-Id: <20230215222426.26085-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Don't leak the DPT if
 drm_framebuffer_init() fails
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

We are failing to free the already allocated DPT if the final
drm_framebuffer_init() fails. That would require idr_alloc() to
fail, so not very likely, but let's add the cleanup code anyway.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 93d0e46e5481..1ba052a127b9 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -2017,11 +2017,14 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 	ret = drm_framebuffer_init(&dev_priv->drm, fb, &intel_fb_funcs);
 	if (ret) {
 		drm_err(&dev_priv->drm, "framebuffer init failed %d\n", ret);
-		goto err;
+		goto err_free_dpt;
 	}
 
 	return 0;
 
+err_free_dpt:
+	if (intel_fb_uses_dpt(fb))
+		intel_dpt_destroy(intel_fb->dpt_vm);
 err:
 	intel_frontbuffer_put(intel_fb->frontbuffer);
 	return ret;
-- 
2.39.1

