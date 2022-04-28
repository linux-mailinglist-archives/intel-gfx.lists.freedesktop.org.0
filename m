Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D38A1513D12
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Apr 2022 23:10:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AE2410E1A0;
	Thu, 28 Apr 2022 21:10:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AB3A10E1A0
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Apr 2022 21:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651180219; x=1682716219;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gZrb0RP6sdwQeRZ0lwRTZHXNBp2qTsZNtmcw08wSXYY=;
 b=aPFp6gInj3g5+CjP/zIBKa/7LH2GiXeDje07rGOnjJ3gnlHA7wNk7toY
 ux6DMWPzwhDCBEF53YpIdSPtKmN/BP5c5nSyktAbE9apF1DDVFNFlNoDn
 MVnn6Nvq6cjKrmNsdOyuDwkg2QIrohcWF6aER8AZs+KtZTNdMDnMqXJNl
 UeN1uXUQGJwonmvo6u/Erg8SgUlidSEdW2xOQz4pfeQ1BE4vTfLfkMctK
 uQL5gwVdxji2M13lNYsI47lwVQ61cFURnvATgR9amtxaFgGIGB1BFYjsT
 dnw98F8tSzGR1g/pjSttlY57LupKdtr+sfKaT7uAU1a2vTje9LB9niYmP Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10331"; a="266581184"
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="266581184"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 14:10:18 -0700
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="581644212"
Received: from unknown (HELO josouza-mobl2.fso.intel.com) ([10.230.18.139])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 14:10:17 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Apr 2022 14:10:56 -0700
Message-Id: <20220428211058.399630-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/display: Do not schedule DRRS work
 thread when it is not active
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

Frontbuffer updates were scheduling the execution of DRRS work thread
even if DRRS is not active.
There was no issues with it because intel_drrs_downclock_work() checks
if DRRS is active but there is no reason to keep scheduling this work
thread and wasting CPU time.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_drrs.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 166caf293f7bc..04bc296761be0 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -236,6 +236,11 @@ static void intel_drrs_frontbuffer_update(struct drm_i915_private *dev_priv,
 		else
 			crtc->drrs.busy_frontbuffer_bits &= ~frontbuffer_bits;
 
+		if (!intel_drrs_is_active(crtc)) {
+			mutex_unlock(&crtc->drrs.mutex);
+			continue;
+		}
+
 		/* flush/invalidate means busy screen hence upclock */
 		intel_drrs_set_state(crtc, DRRS_REFRESH_RATE_HIGH);
 
-- 
2.36.0

