Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23309BF9748
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 02:31:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64F5410E665;
	Wed, 22 Oct 2025 00:31:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U1kMKiLM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB28710E071;
 Wed, 22 Oct 2025 00:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761093063; x=1792629063;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=XAaT6+MSfoheYECeG4Z6oZNrB0paifa8L9kGSDGn7Ao=;
 b=U1kMKiLMjDQmhJ3ygtZHjOwv4qktPUai8gAgoMgSWaTbDuNQxG33cSSD
 6Y0hAsrbEnHMWBHM+AjbqwxqAUVT4epW6R2KJeesAX9idisAQI8TgT7bF
 KvC41aBF7ImuNnmLC4ELJxCUgH7tdzOJyrY5b2cJtbf4CaNZajCJAIZwv
 2P3sZg4Nibu9x7d7daCsrx6u2pEc/caa929fK0LvBRSGQg34JfyYlcVVN
 eEE3+hHPO7z8KCUwb9ToZXZoUASvbqHn5cp1AzI7SOMgmL/MS1ThUzEOB
 PbavAqUgEoUpZHM4lAFY6d5S5LOUGifSGVY96NFeeYqDY1TC6TEDRzkAc A==;
X-CSE-ConnectionGUID: rTp11eaUTCeXAqXgQnHS/w==
X-CSE-MsgGUID: 0OebXeF9S+6g7R4T0cMb8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="85855682"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="85855682"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:31:03 -0700
X-CSE-ConnectionGUID: 8JyHAlOORLaCNzBuuBViQw==
X-CSE-MsgGUID: bz+IUvEtRJuPjGMOYXD/TQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="188132250"
Received: from gpacheco-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.26])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:31:00 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 21 Oct 2025 21:28:26 -0300
Subject: [PATCH v2 01/32] drm/i915/xe3p_lpd: Add Xe3p_LPD display IP features
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251021-xe3p_lpd-basic-enabling-v2-1-10eae6d655b8@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>, 
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
X-Mailer: b4 0.15-dev
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

From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

Xe3p_LPD (display version 35) is similar to Xe2_LPD with respect to the
features described by struct intel_display_device_info, so reuse its
device descriptor.

v2:
  - Add reference to Bspec 74201. (Shekhar)

Bspec: 74201, 74304
Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index f3f1f25b0f38..a38de39ed98c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1507,6 +1507,7 @@ static const struct {
 	{ 20,  0, &xe2_lpd_display },
 	{ 30,  0, &xe2_lpd_display },
 	{ 30,  2, &wcl_display },
+	{ 35,  0, &xe2_lpd_display },
 };
 
 static const struct intel_display_device_info *

-- 
2.51.0

