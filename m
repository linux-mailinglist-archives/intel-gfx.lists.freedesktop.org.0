Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CD99B3A73
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 20:30:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E07110E54B;
	Mon, 28 Oct 2024 19:30:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lg9FLIG+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BD8710E537;
 Mon, 28 Oct 2024 19:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730143822; x=1761679822;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=CdkqEWMI4QTOrYFguVyDPnJK1SZEdOE+QmM12M7HK/Y=;
 b=lg9FLIG+DaExeShCf27lU3egvKMErsvkNqBVgX6BMvYshyVgjx9D5J+B
 /OR5rIOfi6lMBNJHrTfDfGqW9Mr6z5Ps4hUFGCa9kUaYhetsHHfKJDWSi
 zLNahIL2aG9gU2+VhD827RJAz3jqn7rUrNZEzDjp0xLcqL9Ck+OkcTyfm
 IQ0t8JvmgP2AjPGKeDOwUV7CtbLHKqIRVgIFd/LBJjHX1H3p9FmvmRmWu
 QTZIS7IV803NHBWo1izpTOQq18zvEb46y5g4wET3f+aMNBL3jDJY/gPRX
 F0wginyPKjBOAvIfP7WeJDMKj9zOVqZfxWy6f0FqgkFMUOdWcSb9a1Rlu Q==;
X-CSE-ConnectionGUID: sjoF9jgqTuiqiqNGOqOisQ==
X-CSE-MsgGUID: HoITEsh0Q3OntOu6t1+vqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40855938"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40855938"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:30:21 -0700
X-CSE-ConnectionGUID: YvwMjGHdQAKLVXDVZc7o7g==
X-CSE-MsgGUID: mdC4q9W0Q+6uu95eJfSd4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="81777555"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:30:20 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v6 9/9] drm/xe/ptl: Enable PTL display
Date: Mon, 28 Oct 2024 12:30:15 -0700
Message-Id: <20241028193015.3241858-10-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241028193015.3241858-1-clinton.a.taylor@intel.com>
References: <20241028193015.3241858-1-clinton.a.taylor@intel.com>
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

From: Haridhar Kalvala <haridhar.kalvala@intel.com>

At this point we should have enough support landed to turn on and start
basic testing of display functionality.

Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
Acked-by: Jani Saarinen <jani.saarinen@intel.com>
Tested-by: Jani Saarinen<jani.saarinen@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/xe/xe_pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index 4085bb3b6550..6f73a243c24c 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -352,7 +352,7 @@ static const struct xe_device_desc bmg_desc = {
 
 static const struct xe_device_desc ptl_desc = {
 	PLATFORM(PANTHERLAKE),
-	.has_display = false,
+	.has_display = true,
 	.require_force_probe = true,
 };
 
-- 
2.25.1

