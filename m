Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C82AD577B
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 15:44:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6856710E67E;
	Wed, 11 Jun 2025 13:44:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mZUo2UbQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DA3F10E67D;
 Wed, 11 Jun 2025 13:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749649490; x=1781185490;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5m3Kfbcdbq/qlkFX6Se6hwde/ld59UJQlRmKnu+iBvU=;
 b=mZUo2UbQmfVkUxDFT7b5gXC5z9qqW3+gTcQvpg8aDgjWrrUtQiKhO+lr
 Cd5TJeqMA7jTfIXVPpMQIEvNR7iBBUh09Ajq9SWAXYvo4ERcEbKWkGjQv
 2ega/Kq+Q0LO1fwsQE/IXSDJg2uhz6NuRAB9QiyodgXPM1sZg+JQUlDLB
 IeXJ/EV5l9kBzab92hhBsioX3zGTRhPkZ6IUHEOHAy+nJVV4A9soyxESK
 UILtpIIWbOhLxy4nQ84fMkWpyi21Z2JWqEHbcUFfIhMH4ZJHGbfxo+IVJ
 uZI5rAqf85Sbzc7/god5sDzUBRrUJRNEvpZ9l6UMA3H+xWc5sRpxJeQOa A==;
X-CSE-ConnectionGUID: 4vRPoUynQNmsnDtfmyXBJw==
X-CSE-MsgGUID: BMyme1+cSGmkDYCp0+C+tw==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51505823"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="51505823"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 06:44:50 -0700
X-CSE-ConnectionGUID: kOLrCMNCT66gTIVDkiwPKg==
X-CSE-MsgGUID: fw1JvbAEQQKZdZEbNNK3mQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="152360365"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by fmviesa004.fm.intel.com with ESMTP; 11 Jun 2025 06:44:48 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Subject: [PATCH v4 9/9] drm/i915/xe3lpd: Extend WA 16023981245 for display
 30.02
Date: Wed, 11 Jun 2025 19:14:31 +0530
Message-Id: <20250611134431.2761487-10-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250611134431.2761487-1-dnyaneshwar.bhadane@intel.com>
References: <20250611134431.2761487-1-dnyaneshwar.bhadane@intel.com>
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

wa_16023981245 need to be extended for display version 30.02

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 15ede7678636..e0336c79c294 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -1085,7 +1085,8 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
 
 		/* Wa_16023981245 */
 		if ((DISPLAY_VERx100(display) == 2000 ||
-		     DISPLAY_VERx100(display) == 3000) &&
+		     DISPLAY_VERx100(display) == 3000 ||
+		     DISPLAY_VERx100(display) == 3002) &&
 		     src_x % 2 != 0)
 			hsub = 2;
 	} else {
-- 
2.34.1

