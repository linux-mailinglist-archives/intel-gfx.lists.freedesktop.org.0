Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB13063637F
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 16:27:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9DE210E57C;
	Wed, 23 Nov 2022 15:27:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D052510E572
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 15:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669217220; x=1700753220;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=fzdh0LYQYDLaG/ZP7yZLYlbhGQfJpjRVHZDcHqcSyUo=;
 b=QK5jYzrAgs5D0ieCqJr48/Xpb63dd5JWdVy5orp4Q6A9TIE3A/9ZY3pm
 YSaacL4oD6dar+8WeI/7W9mdyFqffybvqnIoCchY+6YaRPGkiKLy1nCYk
 mCoSy/Kpl8Bzk31POdbt0ui3bT/PtQgLfmJVysR1zCG+27RIm6qFeCnAp
 scJJkhBUUP161SoMx+cIv5bUV0j0/pkAL2nW6o7eLLXUlKsuraXQM3lsJ
 zN8ynD+3YUCSbiNqSP2kSINj+H5owQT4wvBfwx88Dl4/to1HYmLs/3KZm
 QIwNbs41yQzbYatrs53yY8ByIORh43CZ3/69eieu9SGTdvwg5q7FvW13X A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="312789932"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="312789932"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 07:26:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="619650989"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="619650989"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 23 Nov 2022 07:26:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Nov 2022 17:26:55 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 17:26:31 +0200
Message-Id: <20221123152638.20622-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/13] drm/i915: Document LUT "max" register
 precision
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

Document the precision of the LUT "max" registers, just
so we don't have to dig through the spec so much.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 22fb9fd78483..cd0a445814c7 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3620,7 +3620,7 @@
 
 #define  _PIPEAGCMAX           0x70010
 #define  _PIPEBGCMAX           0x71010
-#define PIPEGCMAX(pipe, i)     _MMIO_PIPE2(pipe, _PIPEAGCMAX + (i) * 4)
+#define PIPEGCMAX(pipe, i)     _MMIO_PIPE2(pipe, _PIPEAGCMAX + (i) * 4) /* u1.16 */
 
 #define _PIPE_ARB_CTL_A			0x70028 /* icl+ */
 #define PIPE_ARB_CTL(pipe)		_MMIO_PIPE2(pipe, _PIPE_ARB_CTL_A)
@@ -5304,7 +5304,7 @@
 
 #define  _PREC_PIPEAGCMAX              0x4d000
 #define  _PREC_PIPEBGCMAX              0x4d010
-#define PREC_PIPEGCMAX(pipe, i)        _MMIO(_PIPE(pipe, _PIPEAGCMAX, _PIPEBGCMAX) + (i) * 4)
+#define PREC_PIPEGCMAX(pipe, i)        _MMIO(_PIPE(pipe, _PIPEAGCMAX, _PIPEBGCMAX) + (i) * 4) /* u1.16 */
 
 #define _GAMMA_MODE_A		0x4a480
 #define _GAMMA_MODE_B		0x4ac80
@@ -7551,9 +7551,9 @@ enum skl_power_gate {
 
 #define PREC_PAL_INDEX(pipe)		_MMIO_PIPE(pipe, _PAL_PREC_INDEX_A, _PAL_PREC_INDEX_B)
 #define PREC_PAL_DATA(pipe)		_MMIO_PIPE(pipe, _PAL_PREC_DATA_A, _PAL_PREC_DATA_B)
-#define PREC_PAL_GC_MAX(pipe, i)	_MMIO(_PIPE(pipe, _PAL_PREC_GC_MAX_A, _PAL_PREC_GC_MAX_B) + (i) * 4)
-#define PREC_PAL_EXT_GC_MAX(pipe, i)	_MMIO(_PIPE(pipe, _PAL_PREC_EXT_GC_MAX_A, _PAL_PREC_EXT_GC_MAX_B) + (i) * 4)
-#define PREC_PAL_EXT2_GC_MAX(pipe, i)	_MMIO(_PIPE(pipe, _PAL_PREC_EXT2_GC_MAX_A, _PAL_PREC_EXT2_GC_MAX_B) + (i) * 4)
+#define PREC_PAL_GC_MAX(pipe, i)	_MMIO(_PIPE(pipe, _PAL_PREC_GC_MAX_A, _PAL_PREC_GC_MAX_B) + (i) * 4) /* u1.16 */
+#define PREC_PAL_EXT_GC_MAX(pipe, i)	_MMIO(_PIPE(pipe, _PAL_PREC_EXT_GC_MAX_A, _PAL_PREC_EXT_GC_MAX_B) + (i) * 4) /* u3.16 */
+#define PREC_PAL_EXT2_GC_MAX(pipe, i)	_MMIO(_PIPE(pipe, _PAL_PREC_EXT2_GC_MAX_A, _PAL_PREC_EXT2_GC_MAX_B) + (i) * 4) /* glk+, u3.16 */
 
 #define _PRE_CSC_GAMC_INDEX_A	0x4A484
 #define _PRE_CSC_GAMC_INDEX_B	0x4AC84
-- 
2.37.4

