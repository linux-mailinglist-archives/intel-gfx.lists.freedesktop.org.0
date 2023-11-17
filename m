Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3752F7EF6E1
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 18:18:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9730610E307;
	Fri, 17 Nov 2023 17:18:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8881310E307
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 17:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700241522; x=1731777522;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=4Efv1LYaYC8bmtKnCehiDmDn7hopzAW2YJ2AA9mHQpk=;
 b=Qt9RaUBVbKxGkgojmSk113/DC2Yc2zInQCNKa+T8AwPOZXbbxAHy+nI0
 1kYMR/TXDSzpbgOxa/yZl8Wjviv2JFrd5esQ+oDQkDRd6VWZN+82B7q0k
 hC6NVqX3WL+pwOTMsPcsuNNs+AxswIwKPChcClAdxJqpFV6CHzsGhJJ49
 99hii8C6SP0VIfpEXZ8NyCGJsyF2bnlznu0BOawdji9vk6RAZ6vRzC67R
 ZBl/LjQgIrRu+TyS96FV61bECot3ENFibDGi2UoS7PLoNeBfYOlg9CB6U
 lNSHGzNWtojLKu1pJHImk+AVXsdkZ+M2SQzSjyUWYGjUiDxYu9y0vGzbu g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="422428580"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="422428580"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 09:18:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="759225804"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="759225804"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 17 Nov 2023 09:18:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Nov 2023 19:18:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Nov 2023 19:18:33 +0200
Message-ID: <20231117171833.25816-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231117171833.25816-1-ville.syrjala@linux.intel.com>
References: <20231117171833.25816-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/fbc: Bump ivb FBC max surface size
 to 4kx4k
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

IVB Bspec says:
"Frame Buffer Compression is only supported with memory surfaces of 4096 lines
or less and pipe source sizes of 4096 pixels by 2048 lines or less. "

so seems like we should be able to bump the offset+size limit to
at least 4kx4k. Make it so.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 0ac222eaddd2..63f389a1707d 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1034,7 +1034,7 @@ static bool intel_fbc_hw_tracking_covers_screen(const struct intel_plane_state *
 	} else if (DISPLAY_VER(i915) >= 10) {
 		max_w = 5120;
 		max_h = 4096;
-	} else if (DISPLAY_VER(i915) >= 8 || IS_HASWELL(i915)) {
+	} else if (DISPLAY_VER(i915) >= 7) {
 		max_w = 4096;
 		max_h = 4096;
 	} else if (IS_G4X(i915) || DISPLAY_VER(i915) >= 5) {
-- 
2.41.0

