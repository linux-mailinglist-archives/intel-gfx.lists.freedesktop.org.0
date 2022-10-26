Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF78960DFC8
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 13:40:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A54ED10E4BF;
	Wed, 26 Oct 2022 11:40:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 267E110E4B8
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 11:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666784355; x=1698320355;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=H3AR9lEyFOMyxHnPI2i0KW+2vgTCEHxN/askRn28vo8=;
 b=CFqxyWd1zTniU60T37u7S4V/rBn++xtEmGLYe0cgaLUyuJJVFFsc1Mfp
 PmkIp6jGd5k6MdTLN3If2hEKqhUil1q/KEBZEAMqCHVM/LcixtJpg+6vq
 nlk/ua8jk1MIfB5Sj8MDcRvi24oJOMterzg1ocPfMIL03lnWyBkV4C0fi
 JzchdxgHv40YHNKp/hNhkMErKgbbxWQlVrUqdVAvHPDXgJaGF+SdS8vd8
 S3r17SHzQQB1KYUzYJeIUBmIkt9Cf5I6h3dcCbD+W81Eb0aOSHY2SNQeY
 bX5FS/Q/wxoEp+fDKnVUEyQKmXa84QYU7zS0voDML3OXbhl4cNVZ0H+8S g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="309614206"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="309614206"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 04:39:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="663164364"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="663164364"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 26 Oct 2022 04:39:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 14:39:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 14:38:57 +0300
Message-Id: <20221026113906.10551-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
References: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/11] drm/i915: Use _MMIO_PIPE() for
 SKL_BOTTOM_COLOR
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

No need to use _MMIO_PIPE2() for SKL_BOTTOM_COLOR
since all pipe registers are evenly spread on skl+.
Switch to _MMIO_PIPE() and thus avoid the hidden dev_priv.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 99a853519395..89ad893bbf07 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3758,9 +3758,10 @@
 
 /* Skylake+ pipe bottom (background) color */
 #define _SKL_BOTTOM_COLOR_A		0x70034
+#define _SKL_BOTTOM_COLOR_B		0x71034
 #define   SKL_BOTTOM_COLOR_GAMMA_ENABLE		REG_BIT(31)
 #define   SKL_BOTTOM_COLOR_CSC_ENABLE		REG_BIT(30)
-#define SKL_BOTTOM_COLOR(pipe)		_MMIO_PIPE2(pipe, _SKL_BOTTOM_COLOR_A)
+#define SKL_BOTTOM_COLOR(pipe)		_MMIO_PIPE(pipe, _SKL_BOTTOM_COLOR_A, _SKL_BOTTOM_COLOR_B)
 
 #define _ICL_PIPE_A_STATUS			0x70058
 #define ICL_PIPESTATUS(pipe)			_MMIO_PIPE2(pipe, _ICL_PIPE_A_STATUS)
-- 
2.37.4

