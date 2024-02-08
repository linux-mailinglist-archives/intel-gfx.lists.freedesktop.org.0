Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B123284E3D8
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 16:18:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2472010E8BD;
	Thu,  8 Feb 2024 15:18:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j4j/DNpt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4BF810E8B8
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Feb 2024 15:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707405483; x=1738941483;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=t114UlIcOriGSDoW2pg/bAFmDjD+8JD2fgixMfKfOXs=;
 b=j4j/DNptqLx+on7PSHTuTjVGV45NfZG7n48o7zGf1YOS/2JB3wgRKmbR
 ufgEY8IwzNbCttgw0U1o0iDmLhi3gWQg3E1/pnTIzwYLJO918k87jBjba
 +C3nNOs9RC8rlaAF0klBgOQhf/QhEd0IKJ3sMzejaM0nJUmt5yHjz3Lzj
 6C5dLjgAGR5FAvL0/xY14lEg2KaAQoTDg0k/OAZjTkO+oyG6E6jo/KcMV
 kcad+E5yt8MwPmYheUDZofIlyKp7jr3u6hlpn76HRZOzZt7rYKOnmTiwB
 Qch4BKQZSqbbMPCFv4Z1atiGz6P8djABF7WOKeDt8tTMVss29ymlJwUsi w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="4219289"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; 
   d="scan'208";a="4219289"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 07:18:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="824863679"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; d="scan'208";a="824863679"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 08 Feb 2024 07:18:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Feb 2024 17:18:00 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 13/13] drm/i915/dvo: Use sizeof(*variable) instead of
 sizeof(type)
Date: Thu,  8 Feb 2024 17:17:20 +0200
Message-ID: <20240208151720.7866-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
References: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Prefer sizeof(*variable) to sizeof(type) to make it a bit
harder to screw things up.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/dvo_ch7017.c | 2 +-
 drivers/gpu/drm/i915/display/dvo_ch7xxx.c | 2 +-
 drivers/gpu/drm/i915/display/dvo_ivch.c   | 2 +-
 drivers/gpu/drm/i915/display/dvo_ns2501.c | 2 +-
 drivers/gpu/drm/i915/display/dvo_sil164.c | 2 +-
 drivers/gpu/drm/i915/display/dvo_tfp410.c | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/dvo_ch7017.c b/drivers/gpu/drm/i915/display/dvo_ch7017.c
index 0589994dde11..d0c3880d7f80 100644
--- a/drivers/gpu/drm/i915/display/dvo_ch7017.c
+++ b/drivers/gpu/drm/i915/display/dvo_ch7017.c
@@ -205,7 +205,7 @@ static bool ch7017_init(struct intel_dvo_device *dvo,
 	const char *str;
 	u8 val;
 
-	priv = kzalloc(sizeof(struct ch7017_priv), GFP_KERNEL);
+	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 	if (priv == NULL)
 		return false;
 
diff --git a/drivers/gpu/drm/i915/display/dvo_ch7xxx.c b/drivers/gpu/drm/i915/display/dvo_ch7xxx.c
index 6d948520e9a6..2e8e85da5a40 100644
--- a/drivers/gpu/drm/i915/display/dvo_ch7xxx.c
+++ b/drivers/gpu/drm/i915/display/dvo_ch7xxx.c
@@ -216,7 +216,7 @@ static bool ch7xxx_init(struct intel_dvo_device *dvo,
 	u8 vendor, device;
 	char *name, *devid;
 
-	ch7xxx = kzalloc(sizeof(struct ch7xxx_priv), GFP_KERNEL);
+	ch7xxx = kzalloc(sizeof(*ch7xxx), GFP_KERNEL);
 	if (ch7xxx == NULL)
 		return false;
 
diff --git a/drivers/gpu/drm/i915/display/dvo_ivch.c b/drivers/gpu/drm/i915/display/dvo_ivch.c
index f43d8c610d3f..eef72bb3b767 100644
--- a/drivers/gpu/drm/i915/display/dvo_ivch.c
+++ b/drivers/gpu/drm/i915/display/dvo_ivch.c
@@ -267,7 +267,7 @@ static bool ivch_init(struct intel_dvo_device *dvo,
 	u16 temp;
 	int i;
 
-	priv = kzalloc(sizeof(struct ivch_priv), GFP_KERNEL);
+	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 	if (priv == NULL)
 		return false;
 
diff --git a/drivers/gpu/drm/i915/display/dvo_ns2501.c b/drivers/gpu/drm/i915/display/dvo_ns2501.c
index 32fd4aa27598..1df212fb000e 100644
--- a/drivers/gpu/drm/i915/display/dvo_ns2501.c
+++ b/drivers/gpu/drm/i915/display/dvo_ns2501.c
@@ -476,7 +476,7 @@ static bool ns2501_init(struct intel_dvo_device *dvo,
 	struct ns2501_priv *ns;
 	unsigned char ch;
 
-	ns = kzalloc(sizeof(struct ns2501_priv), GFP_KERNEL);
+	ns = kzalloc(sizeof(*ns), GFP_KERNEL);
 	if (ns == NULL)
 		return false;
 
diff --git a/drivers/gpu/drm/i915/display/dvo_sil164.c b/drivers/gpu/drm/i915/display/dvo_sil164.c
index 4acc8ce29c0b..6c461024c8e3 100644
--- a/drivers/gpu/drm/i915/display/dvo_sil164.c
+++ b/drivers/gpu/drm/i915/display/dvo_sil164.c
@@ -141,7 +141,7 @@ static bool sil164_init(struct intel_dvo_device *dvo,
 	struct sil164_priv *sil;
 	unsigned char ch;
 
-	sil = kzalloc(sizeof(struct sil164_priv), GFP_KERNEL);
+	sil = kzalloc(sizeof(*sil), GFP_KERNEL);
 	if (sil == NULL)
 		return false;
 
diff --git a/drivers/gpu/drm/i915/display/dvo_tfp410.c b/drivers/gpu/drm/i915/display/dvo_tfp410.c
index 009d65b0f3e9..0939e097f4f9 100644
--- a/drivers/gpu/drm/i915/display/dvo_tfp410.c
+++ b/drivers/gpu/drm/i915/display/dvo_tfp410.c
@@ -173,7 +173,7 @@ static bool tfp410_init(struct intel_dvo_device *dvo,
 	struct tfp410_priv *tfp;
 	int id;
 
-	tfp = kzalloc(sizeof(struct tfp410_priv), GFP_KERNEL);
+	tfp = kzalloc(sizeof(*tfp), GFP_KERNEL);
 	if (tfp == NULL)
 		return false;
 
-- 
2.43.0

