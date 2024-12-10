Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D139EBB8D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 22:10:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA48E10E5CD;
	Tue, 10 Dec 2024 21:10:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CLy/1FlS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FBCC10E5CD
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 21:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733865018; x=1765401018;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TLMGZ6hVaEFwyyeVVY7s09hsuV9aTuIHMBaphoL/SYw=;
 b=CLy/1FlSTL84+hSm0fy6ZXL+TtlaZE2TBaLO2Wwai5JDULZCRnIQs0rE
 ZpMMQGza8wcCKydofAA3d8e7WR6519+WS1FO/byzkW+ngaZUhmKhdqs33
 R6DwjkpzNdpfnRKwj15kT1XBmabDFKIzge8+9YYD6Ik83CX/eodaZXJvY
 cTIPt9Z3KrpcMZ7NsJMSQde6pIID061KtvLt5YsKsys4MG3p5uRXX9BfV
 Rb8b4mgjQqSXBTljzZtk4V9QmL/u4q4M0mVEa64RV5M0QmCYBKgGATxZg
 WMOt0jtUZWUKMKaxz9pdll3NUw+6lAFM5NEYucEgRSgwt8mp2tI6mu6X5 g==;
X-CSE-ConnectionGUID: 242KB7ZlS+2bPRKlleoQbw==
X-CSE-MsgGUID: SfkFaku1TS+M0MObdfA98Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="59620170"
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="59620170"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 13:10:18 -0800
X-CSE-ConnectionGUID: rhpwr1CyRCmfMhq8L0G5RQ==
X-CSE-MsgGUID: qU9r1a3vQqKj/Dxqih8qmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="95735055"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Dec 2024 13:10:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Dec 2024 23:10:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 03/18] drm/i915: Fix include order
Date: Tue, 10 Dec 2024 23:09:52 +0200
Message-ID: <20241210211007.5976-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
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

Include the headers in the correct alphabetical order.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index b386e62d1664..1b0a8e001141 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -8,9 +8,9 @@
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_dp.h"
 #include "intel_vrr.h"
 #include "intel_vrr_regs.h"
-#include "intel_dp.h"
 
 #define FIXED_POINT_PRECISION		100
 #define CMRR_PRECISION_TOLERANCE	10
-- 
2.45.2

