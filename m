Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFC04D1BEC
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 16:40:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34B0610E272;
	Tue,  8 Mar 2022 15:40:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDD7010E257
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Mar 2022 15:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646754046; x=1678290046;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yl2QcDNupcUp90Epj+o1AzHwnd32Y331Qj4jnMe0fkM=;
 b=RTgLZuJywFPTCo9nDIdEFo1UDfL+ats9N6OBM1HAcbPqH916aI4YLB40
 10bAKdgv8Qftu4LPdNYATerYs92Ikr3bJc80l8E4nsWyy6fExOlre1pUD
 +nQy02zZ0ldvuQExZTPyx8xIXPJGvhezQdYIt5nhEoLawnsSAQIOJ/snQ
 Xy5NWna7TPya6UwGIcVUqjR1qk6CsUUdcuFMxkEhYarESPpAKjLhIQXvI
 tGaETpYC69E3aB5nITYCaLjNMlmvuL6L+0ytQek3MWyS/LWt9Vso/SgvY
 KEeYL5crDVRJaMX8N8YR1QOPcPtPh0iQr9GnQjk9mcI8tGyntBSJ/Ka/a Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="254656246"
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="254656246"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 07:40:46 -0800
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="687960769"
Received: from sshamoon-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.212.47.246])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 07:40:44 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Mar 2022 07:41:36 -0800
Message-Id: <20220308154136.406578-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220308154136.406578-1-jose.souza@intel.com>
References: <20220308154136.406578-1-jose.souza@intel.com>
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

Fixes: 9ce5884e5139 ("drm/i915/display: Only keep PSR enabled if there is active planes")
Reported-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
Reported-by: Charlton Lin <charlton.lin@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index bbd581ed08159..cd05e5fdc8ca9 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1853,6 +1853,9 @@ static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
 
 		mutex_lock(&psr->lock);
 
+		if (psr->sink_not_reliable)
+			continue;
+
 		drm_WARN_ON(&dev_priv->drm, psr->enabled && !crtc_state->active_planes);
 
 		/* Only enable if there is active planes */
-- 
2.35.1

