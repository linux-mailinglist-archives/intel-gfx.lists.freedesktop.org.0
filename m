Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9D39392C6
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 18:54:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9241510E1E0;
	Mon, 22 Jul 2024 16:54:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a1HdLU7b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AED1510E1DB
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2024 16:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721667294; x=1753203294;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=JPp8PTP2yChhejhTJdUg2j0WpQ/6Icg/mLo6vixhSBs=;
 b=a1HdLU7bniCB0Y8QYaLxs4mX3DL9ODy7DBsWgokuEtoqfc22/2s0cav1
 Mz+5UdJTffmNZaBeE5SuqkhoUuGj5lkvtXRfbX1rNWK37/TkgzCCLrvoW
 dKtGFChChPKzgwFhHXB7iCZ8uigEBce4JNSFEvRrneATtMs3a6BTjiEG8
 4kzpUjqnTE2khDbfO3cu8rklMoHrEjKGilmwoHDnOCfk3xJB0bp0vJrwj
 I2fbjpo5Jbj2l7qszJT1ca3UH8wTxTa3X22uihN5Wd+l1HAdZTMWiVcuK
 Ua7i05q2YhM3NNrFOdufhFcLZ8USPzUiE0l4CnfF4hY6cBXxMcbZGjf2R Q==;
X-CSE-ConnectionGUID: SVwNIyNaQe2RvhxU+hllHw==
X-CSE-MsgGUID: jHIaxT+RSQKFLWGzp6QWew==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="23117306"
X-IronPort-AV: E=Sophos;i="6.09,228,1716274800"; d="scan'208";a="23117306"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 09:54:54 -0700
X-CSE-ConnectionGUID: aAAa8dddQPC7NxrhgaU2Dw==
X-CSE-MsgGUID: pV1TzoCcQj+VSm+IUeQEUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,228,1716274800"; d="scan'208";a="57056209"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 09:54:53 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 04/14] drm/i915/ddi: For an active output call the DP encoder
 sync_state() only for DP
Date: Mon, 22 Jul 2024 19:54:53 +0300
Message-ID: <20240722165503.2084999-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240722165503.2084999-1-imre.deak@intel.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
MIME-Version: 1.0
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

If the DDI encoder output is enabled in HDMI mode there is no point in
calling intel_dp_sync_state(), as in that case the DPCD initialization
will fail - as expected - with AUX timeouts. Prevent calling the hook in
this case.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index a07aca96e5517..11ee4406dce8f 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4172,7 +4172,8 @@ static void intel_ddi_sync_state(struct intel_encoder *encoder,
 		intel_tc_port_sanitize_mode(enc_to_dig_port(encoder),
 					    crtc_state);
 
-	if (intel_encoder_is_dp(encoder))
+	if ((crtc_state && intel_crtc_has_dp_encoder(crtc_state)) ||
+	    (!crtc_state && intel_encoder_is_dp(encoder)))
 		intel_dp_sync_state(encoder, crtc_state);
 }
 
-- 
2.44.2

