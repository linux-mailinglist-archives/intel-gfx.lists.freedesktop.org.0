Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC5C4D52E9
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 21:10:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7D1C10EAE8;
	Thu, 10 Mar 2022 20:10:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FCBE10EAE8
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 20:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646943029; x=1678479029;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zbgPSyrT+1csXwaj9ENBA5WHd6CA0YVjMxHRA8q5HF0=;
 b=Q/72yvbsbA9R4uk4W+ZOW5EdeLTc3bAepc1D6RrBHwz/tE6Hw/wcFnH6
 ll3CDxorF8UaELJJUswhmec2j4EK5kgn/29yA9Sm4jpj1WTnIqTXucY2z
 YvPQ201tZJark3plsqgTz0/YMIzfcQOpYPR1PapkShwVyMAnswTGoCJPV
 jMw3TQUZObZiPfK2jM0hSxoEyuEnHRc86OoklAWHwuuAt1ISoc5Hl5YbF
 of688o446gUYjSSfX94LLWI/eAxF0yA1pHlWMKJh3UKu+zezE768gZ41C
 H6ypP33/SlaNI0kGP5z4b/YnxH3KbTlTjxTzRLhICVmPHPSRY4wZ2sJ+I Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="235317168"
X-IronPort-AV: E=Sophos;i="5.90,171,1643702400"; d="scan'208";a="235317168"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 12:04:27 -0800
X-IronPort-AV: E=Sophos;i="5.90,171,1643702400"; d="scan'208";a="688795408"
Received: from josouza-mobl2.fso.intel.com (HELO josouza-mobl2.intel.com)
 ([10.230.19.131])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 12:04:26 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Mar 2022 12:05:18 -0800
Message-Id: <20220310200518.247909-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220310200518.247909-1-jose.souza@intel.com>
References: <20220310200518.247909-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display: Do not re-enable PSR
 after it was marked as not reliable
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
Cc: Charlton Lin <charlton.lin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If a error happens and sink_not_reliable is set, PSR should be disabled
for good but that is not happening.
It would be disabled by the function handling the PSR error but then
on the next fastset it would be enabled again in
_intel_psr_post_plane_update().
It would only be disabled for good in the next modeset where has_psr
will be set false.

v2:
- release psr lock before continue

Fixes: 9ce5884e5139 ("drm/i915/display: Only keep PSR enabled if there is active planes")
Reported-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
Reported-by: Charlton Lin <charlton.lin@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index bbd581ed08159..80002ca6a6ebe 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1853,6 +1853,9 @@ static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
 
 		mutex_lock(&psr->lock);
 
+		if (psr->sink_not_reliable)
+			goto exit;
+
 		drm_WARN_ON(&dev_priv->drm, psr->enabled && !crtc_state->active_planes);
 
 		/* Only enable if there is active planes */
@@ -1863,6 +1866,7 @@ static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
 		if (crtc_state->crc_enabled && psr->enabled)
 			psr_force_hw_tracking_exit(intel_dp);
 
+exit:
 		mutex_unlock(&psr->lock);
 	}
 }
-- 
2.35.1

