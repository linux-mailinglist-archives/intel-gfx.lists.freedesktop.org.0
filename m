Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF6592A96F
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2024 21:00:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4257210E3E5;
	Mon,  8 Jul 2024 19:00:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GcJi4xnd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 833F410E3E5
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2024 19:00:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720465226; x=1752001226;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fR2vjlaxMr2VM2UARGtGuJzSQMcXbEALHewh0ahiSGw=;
 b=GcJi4xnd4DQRuCjhUkhsNqebH2WVebo37QCR5kU1wwZv5uCviGmRAYVX
 eWpe7zYtRKs3UYuAjpqiAG7z4/np5pryQHPMd+mjp6Ge400aOzNWtVsuL
 /9SEYYyqR3JFr6dzbzNcz7o+zV5vtvVp9Grx/EvN6mNNRekh5D8SepqBm
 swEKQfVgXDSovs7BKSdsxdVY7hWQc7g1MR62BafWh/fTYsIbs8B2qqRJT
 thufKhKjkrABru0lD/GAQvd3heZCgT0HrLgnjQ5P27KEu98SWubGKKDIR
 gl5NMQmTfpSkHbVVF3MiGx+QzqO/yqTMDEkmENo9Kn83F0OFbFCOXzDO4 Q==;
X-CSE-ConnectionGUID: seAg93lzQOSU6e6b+IQ1Yw==
X-CSE-MsgGUID: YiGgQ5z9TAq6+w/MvTsL6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="17821058"
X-IronPort-AV: E=Sophos;i="6.09,192,1716274800"; d="scan'208";a="17821058"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 12:00:26 -0700
X-CSE-ConnectionGUID: bfYCCxlVQZugLHkTlOlB7A==
X-CSE-MsgGUID: 05acWZ2jQBe6BVNVIQpoug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,192,1716274800"; d="scan'208";a="85140022"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 12:00:26 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v2 6/6] drm/i915/dp: Dump the LTTPR PHY descriptors
Date: Mon,  8 Jul 2024 22:00:29 +0300
Message-ID: <20240708190029.271247-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240708190029.271247-1-imre.deak@intel.com>
References: <20240708190029.271247-1-imre.deak@intel.com>
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

Dump the descriptor of the detected LTTPRs in non-transparent mode to
help the debugging related to LTTPRs easier.

v2: Use drm_dp_dump_lttpr_desc() instead of the driver specific
    equivalent.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> # v1
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index af0b71bdf1fcf..ab72aa1d664dc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -20,6 +20,7 @@
  * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
  * IN THE SOFTWARE.
  */
+#include <drm/display/drm_dp_helper.h>
 
 #include "i915_drv.h"
 #include "intel_display_types.h"
@@ -206,8 +207,10 @@ static int intel_dp_init_lttpr(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEI
 
 	lttpr_count = intel_dp_init_lttpr_phys(intel_dp, dpcd);
 
-	for (i = 0; i < lttpr_count; i++)
+	for (i = 0; i < lttpr_count; i++) {
 		intel_dp_read_lttpr_phy_caps(intel_dp, dpcd, DP_PHY_LTTPR(i));
+		drm_dp_dump_lttpr_desc(&intel_dp->aux, DP_PHY_LTTPR(i));
+	}
 
 	return lttpr_count;
 }
-- 
2.43.3

