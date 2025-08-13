Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7DC7B2402B
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Aug 2025 07:25:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7FBE10E3E5;
	Wed, 13 Aug 2025 05:25:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WTKjYlKY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C92E10E3DD;
 Wed, 13 Aug 2025 05:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755062724; x=1786598724;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fm1/Yqqf+ezcJT+AQD91AkT6KBfrGEFghH2y5pWLXuA=;
 b=WTKjYlKYHARf+G/u2Pbz3nMu++176ucHfWh2qbzF7CVl5YT6LgBIYUPW
 qo3RXAKn4iNHXUDMENmj38VyCugOJs9ExamiE0jNHjcBEfms8g/6XwlBE
 FhQo0iC3YblxR1qlucEwxr3B2YXMgix9+rACCDtnmXyfPJYjblwol5Ov7
 FEvJj1o1FK8dUhMcZfhU6He+xn4p2sVRTrMZzByigBKe1c6x01sf2D2I4
 qsI1z0mS7i4Z6fiWb1RuZ23uPeO+Aqk3wq02VTnMCLA6ZSJFmqspmK922
 khmVhplC6MeKjLKw+xAMLpBwvtayshi63yvkv/7h1wzhvjja99MTP3qr8 w==;
X-CSE-ConnectionGUID: SJr2Tsq1RueiWrl8as4Fzg==
X-CSE-MsgGUID: TUHTxxUFRDuScBrxUeRI8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="67612496"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208,223";a="67612496"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 22:25:21 -0700
X-CSE-ConnectionGUID: UMhpbTdwQZqZHClD+KmkAg==
X-CSE-MsgGUID: pQFtrc5gTlaGQkqJdAgVFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; 
 d="scan'208,223";a="165879775"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa007.fm.intel.com with ESMTP; 12 Aug 2025 22:25:20 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH] drm/i915: Soft defeature of cursor size reduction
Date: Wed, 13 Aug 2025 10:50:17 +0530
Message-Id: <20250813052017.3591331-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
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

From display 14 onward do not enable the cursor
size reduction bit as it has been defeatured.

Bspec: 50372

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index d4d181f9dca5..c47c84935871 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -662,7 +662,7 @@ static void i9xx_cursor_update_arm(struct intel_dsb *dsb,
 		cntl = plane_state->ctl |
 			i9xx_cursor_ctl_crtc(crtc_state);
 
-		if (width != height)
+		if (DISPLAY_VER(display) < 14 && width != height)
 			fbc_ctl = CUR_FBC_EN | CUR_FBC_HEIGHT(height - 1);
 
 		base = plane_state->surf;
-- 
2.25.1

