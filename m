Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C484D1F3D
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 18:41:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F49310E2A7;
	Tue,  8 Mar 2022 17:41:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C86EF10E2A7
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Mar 2022 17:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646761263; x=1678297263;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+2Rr4zgvUokLjzBqc0qzAgKyUtkqyWlwsRwoDTB1RgQ=;
 b=TkTj5BPMLByWydUoW5rkMfVn6JwoF6T03UdimmTpF7QsmM2c0eyk0tWm
 f3RvuWtZqPHgzHEBQ+kQkuzUOB8hcsLK7OJZFbDOpPjlAasQw7jvxugEz
 MB24qxwHC6OgcMVbifNYjs+wAKJ6XBumaOB61Nh3GJ7KA1ykJVZe8Vlcn
 Owjwe7LzWGafOtNqMz5igxpW4vuvzgp5Ei/JbnA55U5GB0Tj20OrekHTJ
 XPC/Zy2Se9fLDqgcCsCGLZ0VvrYjPuC8byq3VBa25R0Ga7mgkgptcA8ZA
 FyDwlb27ynWDy1zQrumq6mbgs/stDPwo/s3QRJiEUntBT2oPnXyXUQlDt A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="234713934"
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="234713934"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 09:32:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="687999590"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 08 Mar 2022 09:32:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Mar 2022 19:32:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Mar 2022 19:32:29 +0200
Message-Id: <20220308173230.4182-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220308173230.4182-1-ville.syrjala@linux.intel.com>
References: <20220308173230.4182-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/6] drm/i915: Reject excessive SAGV block time
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

If the mailbox returns an exceesively large SAGV block time let's just
reject it. This avoids having to worry about overflows when we add the
SAGV block time to the wm0 latency.

We shall put the limit arbitrarily at U16_MAX. >65msec latency
doesn't really make sense to me in any case.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 36f5bccabf64..166246fa27e4 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3716,6 +3716,12 @@ static void intel_sagv_init(struct drm_i915_private *i915)
 	drm_dbg_kms(&i915->drm, "SAGV supported: %s, original SAGV block time: %u us\n",
 		    str_yes_no(intel_has_sagv(i915)), i915->sagv_block_time_us);
 
+	/* avoid overflow when adding with wm0 latency/etc. */
+	if (drm_WARN(&i915->drm, i915->sagv_block_time_us > U16_MAX,
+		     "Excessive SAGV block time %u, ignoring\n",
+		     i915->sagv_block_time_us))
+		i915->sagv_block_time_us = 0;
+
 	if (!intel_has_sagv(i915))
 		i915->sagv_block_time_us = 0;
 }
-- 
2.34.1

