Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D734D68B8
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 19:51:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00F1410E9A2;
	Fri, 11 Mar 2022 18:51:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 692E910E9A2
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 18:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647024658; x=1678560658;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zbgPSyrT+1csXwaj9ENBA5WHd6CA0YVjMxHRA8q5HF0=;
 b=VA+dYU3EsOysekFdmuezb9GDJjUQffDrjjuun42KI1nONZhqEGfA/9PJ
 xgcAU5A/nsTwoI0WB/o/r4IYZHceDLT20CFueZVNP3c1h884WWz6yrzb4
 D0cnoB22GNh5mFRVVsOcpfjRKlh9HG7SZfc7uWhtx5TCft0GFbN51vhVM
 FjrNxu+AvZTcUZRMMZC7E1AFc15QyyZTIH5BnklWKMoqgg1H6nLCUMMMH
 OrX1qULRyt4mHEL9v+r/RIdqiO1E3i5JWvAyyNOkUtkV4FwsYLH82A6TI
 uRorsiNn7Mp0pgpnyIWUB2gSxkVgGIMpA2aolMCalKsQy9CIHWuPhI28T Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="236234469"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="236234469"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 10:50:58 -0800
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="712935836"
Received: from wangxin1-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.209.177.147])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 10:50:56 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 10:51:49 -0800
Message-Id: <20220311185149.110527-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220311185149.110527-1-jose.souza@intel.com>
References: <20220311185149.110527-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/display: Do not re-enable PSR
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

