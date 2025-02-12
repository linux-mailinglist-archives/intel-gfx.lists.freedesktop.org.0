Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F743A326F7
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 14:27:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F145510E8A0;
	Wed, 12 Feb 2025 13:27:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mv+3DlcD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B38F510E8A0;
 Wed, 12 Feb 2025 13:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739366843; x=1770902843;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=zQ0B5LmUmWXct9wbzy+2CRmJ7hF+yzEqgT3I6hmYEAE=;
 b=Mv+3DlcDrD6m49GyiEcriryP1Vj7h0ojADL+pijc4p5gBEz2uSjq1jeA
 nD4ty2sm5kqxoAsNCUuRzx/ygp4tvV0QA7nWstkERUPp6sQA7FPBhEgCc
 ydBxcpac/tLwWXIzrAzD9n9rg7QMswaeC9irr/6AwE2O9mmEvGZ6njUFE
 JLRYFHSSOKMsp7KVCFW8KLIIYNoqfKwjtAoV227kTcozTxGh79UsgNM40
 g95vi8iYUMl8HOk57CSUg1F1lV9O/AsCQp5XX8p9/8CWEhCKMakme5HdT
 dEL3fBLJQX2+c3GXxaywZtg+qbtFoEoGHj5TfjctLY3qAnRriqUbG2rxt w==;
X-CSE-ConnectionGUID: VdgA+C2FQTiW87oXs8xMqw==
X-CSE-MsgGUID: XsSO0mdjTeqPp7tKVGMkzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="51416189"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="51416189"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 05:27:23 -0800
X-CSE-ConnectionGUID: RdhaNaQUTZiJv/t8P174YA==
X-CSE-MsgGUID: DQdB6a6/Rg2r1o9r41RQhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="112655796"
Received: from dnelso2-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.108.97])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 05:27:21 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 2/2] drm/i915/display: Make POWER_DOMAIN_*() always result in
 enum intel_display_power_domain
Date: Wed, 12 Feb 2025 10:26:38 -0300
Message-ID: <20250212132658.323640-3-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250212132658.323640-1-gustavo.sousa@intel.com>
References: <20250212132658.323640-1-gustavo.sousa@intel.com>
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

In the hope of contributing to type safety in our code, let's ensure
that the type returned by the POWER_DOMAIN_*() macros is always of type
enum intel_display_power_domain.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 3caa3f517a32..ab4c9a1e7e02 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -117,12 +117,13 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_INVALID = POWER_DOMAIN_NUM,
 };
 
-#define POWER_DOMAIN_PIPE(pipe) ((int)(pipe) + POWER_DOMAIN_PIPE_A)
+#define POWER_DOMAIN_PIPE(pipe) \
+	((enum intel_display_power_domain)((int)(pipe) +  1 + POWER_DOMAIN_PIPE_A))
 #define POWER_DOMAIN_PIPE_PANEL_FITTER(pipe) \
-		((int)(pipe) + POWER_DOMAIN_PIPE_PANEL_FITTER_A)
+	((enum intel_display_power_domain)((int)(pipe) + POWER_DOMAIN_PIPE_PANEL_FITTER_A))
 #define POWER_DOMAIN_TRANSCODER(tran) \
 	((tran) == TRANSCODER_EDP ? POWER_DOMAIN_TRANSCODER_EDP : \
-	 (int)(tran) + POWER_DOMAIN_TRANSCODER_A)
+	 (enum intel_display_power_domain)((int)(tran) + POWER_DOMAIN_TRANSCODER_A))
 
 struct intel_power_domain_mask {
 	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
-- 
2.48.1

