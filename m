Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 718CC98C65C
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 21:58:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB1CA10E66D;
	Tue,  1 Oct 2024 19:58:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sc6BYdhU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7BD010E66D
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2024 19:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727812689; x=1759348689;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hQreyJi9B1hMytvtD5+7CProKN0mTqDO3ZGAnBMDKag=;
 b=Sc6BYdhUV2acgfx8adeAZ7k2pb1GUjujdnzkkg+2gz4HwAOatAe5UCQD
 kQQ9rBO+HioESrLhEFvuc6XcpKAnFSdVMCFnD68bm3Rh7AnY2utr6psXx
 3VFs3vVM0koNWXYA1KA+45X3ukauRosBwFSr/skXmQJ9Zu73JVeiSdIun
 6nJm9uTjViEVp0cT4vzKN0vtTLajFyIaB2jWbNzwJDxcbz+KKAHF3vjG8
 UcfPW8PbwFghXfZFW4TCDTbI3u2y7paXvjGRR0bDzjdRfDs0tmdwB7AC7
 qW+t0MNGicXbCw3zCnfC1Ru+t+jmAaSEtlU0udusEMBYOpfiWsY9i7Vwa w==;
X-CSE-ConnectionGUID: 7aw+bz5GSXagTLRjm7n1Ww==
X-CSE-MsgGUID: dX7no23PRkqI2iSxEJYVSQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="26852031"
X-IronPort-AV: E=Sophos;i="6.11,169,1725346800"; d="scan'208";a="26852031"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 12:58:09 -0700
X-CSE-ConnectionGUID: LFGW5ne7Rrql8SJr4M6mrg==
X-CSE-MsgGUID: C3SWl3ZtRQuKfW1SS9pu4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,169,1725346800"; d="scan'208";a="73899353"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 01 Oct 2024 12:58:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Oct 2024 22:58:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/4] drm/i915/irq: Nuke stale comments
Date: Tue,  1 Oct 2024 22:58:00 +0300
Message-ID: <20241001195803.3371-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241001195803.3371-1-ville.syrjala@linux.intel.com>
References: <20241001195803.3371-1-ville.syrjala@linux.intel.com>
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

Remove the tall tales about getting passed pipe indices into
the .vblank_{enable,disable}() hooks. This hasn't been true since
commit 08fa8fd0faa5 ("drm/i915: Switch to per-crtc vblank vfuncs").

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 8c548ee56c12..0ea1fcc61dde 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1259,9 +1259,6 @@ void gen11_display_irq_handler(struct drm_i915_private *i915)
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
 }
 
-/* Called from drm generic code, passed 'crtc' which
- * we use as a pipe index
- */
 int i8xx_enable_vblank(struct drm_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
@@ -1394,9 +1391,6 @@ int bdw_enable_vblank(struct drm_crtc *_crtc)
 	return 0;
 }
 
-/* Called from drm generic code, passed 'crtc' which
- * we use as a pipe index
- */
 void i8xx_disable_vblank(struct drm_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
-- 
2.45.2

