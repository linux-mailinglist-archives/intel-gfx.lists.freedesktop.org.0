Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FD950A524
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Apr 2022 18:22:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E46D10E0AC;
	Thu, 21 Apr 2022 16:22:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6117A10E0AC
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Apr 2022 16:22:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650558146; x=1682094146;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Dd3U04lBJYe22WeEnN5HOe73I8xIok7aZHehpXnvuEw=;
 b=Waw8XQ8Tko+JWD3bhQBsQFtYQ/mn2u+ADKSNrIZ0DrxOUzdGbmIil+La
 Ltbqm9bWthk0bsEckZjv8IJcFXtZ1BUmFCexwQsHMrZ5Jgar3OHV/P2I3
 5cv77tPFyLCAp5hPbwzrHIk8k0RUclIh/1HMljnvYBg8zNmM7yLV/imMn
 a/wwa5Z/MvJL0oHlXjKKlxUd/5GaZQzs8d6cCHvrubwEntfYRd6OtB13z
 gZhN3rvR2fmJfbNGMSNW9fLQPx0MLwY5AYKaDqEAaAGzBhQtWvUuMc7d5
 GNG+YvqSRsEcqE8GjACf5s4vYgz4pTe1ekX9VRn1OIZHjesc32rQwodIv g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="350847974"
X-IronPort-AV: E=Sophos;i="5.90,279,1643702400"; d="scan'208";a="350847974"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2022 09:22:25 -0700
X-IronPort-AV: E=Sophos;i="5.90,279,1643702400"; d="scan'208";a="530375250"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2022 09:22:24 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Apr 2022 19:22:21 +0300
Message-Id: <20220421162221.2261895-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix SEL_FETCH_PLANE_*(PIPE_B+)
 register addresses
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix typo in the _SEL_FETCH_PLANE_BASE_1_B register base address.

Fixes: a5523e2ff074a5 ("drm/i915: Add PSR2 selective fetch registers")
References: https://gitlab.freedesktop.org/drm/intel/-/issues/5400
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: <stable@vger.kernel.org> # v5.9+
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 04d86cb6224fc..0ca6517b4595a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5172,7 +5172,7 @@
 #define _SEL_FETCH_PLANE_BASE_6_A		0x70940
 #define _SEL_FETCH_PLANE_BASE_7_A		0x70960
 #define _SEL_FETCH_PLANE_BASE_CUR_A		0x70880
-#define _SEL_FETCH_PLANE_BASE_1_B		0x70990
+#define _SEL_FETCH_PLANE_BASE_1_B		0x71890
 
 #define _SEL_FETCH_PLANE_BASE_A(plane) _PICK(plane, \
 					     _SEL_FETCH_PLANE_BASE_1_A, \
-- 
2.30.2

