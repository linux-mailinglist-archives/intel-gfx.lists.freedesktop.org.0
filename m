Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE422916622
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2024 13:26:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA20D10E092;
	Tue, 25 Jun 2024 11:26:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DTvRGgYt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5345910E060
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2024 11:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719314767; x=1750850767;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=APIIM7TQUQ0HzAz4bGmzApiPZP4tkNMDvOuoHEZFZEQ=;
 b=DTvRGgYtHk98RjKk/5ujiJeLHLdo+OYWyA0ZPdbzAoRjKPfife89zjgo
 BW2Qbb53bURN5PdRbsyvzCEd56lOIJLLS6WySXSfSCZtF0QrDXU9JQa3a
 faLruO05KQcuHGaNPZFlvpARUg5WeGfs5IO82rHkKQwWgSLmnUFZ3BY+5
 6nY8oqKW+zEZt9126dqXLJeyeFQrVLIfFJrjrwnFppiUXbT6IwAiKs7bY
 pbpoVH1yXzGLh16DY+i14Cn7FTKvOR8OXbo4KdNKt4/7+I/U4dwwksasK
 c7nXUuD60qUGcomimA4MMj/wXlFpEWEXlm97QPIYxsnK97dnRTlNkAl74 Q==;
X-CSE-ConnectionGUID: w+XfxVHyQwaITlTRzAwYKA==
X-CSE-MsgGUID: S4nPe1m1S4KFjLkRe70ArQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="27016311"
X-IronPort-AV: E=Sophos;i="6.08,263,1712646000"; d="scan'208";a="27016311"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2024 04:26:07 -0700
X-CSE-ConnectionGUID: cw0noTbTTpyx/w/9i7x3WQ==
X-CSE-MsgGUID: Lr9gF6AUTZC8juuFq16A8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,263,1712646000"; d="scan'208";a="43687274"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmviesa009.fm.intel.com with ESMTP; 25 Jun 2024 04:26:05 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH] drm/i915/display: For MTL+ platforms skip mg dp programming
Date: Tue, 25 Jun 2024 14:18:40 +0300
Message-Id: <20240625111840.597574-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
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

From: Imre Deak <imre.deak@intel.com>

For MTL+ platforms we use PICA chips for Type-C support and
hence mg programming is not needed.

Fixes issue with drm warn of TC port not being in legacy mode.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index bb13a3ca8c7c..6672fc162c4f 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2096,6 +2096,9 @@ icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
 	u32 ln0, ln1, pin_assignment;
 	u8 width;
 
+	if (DISPLAY_VER(dev_priv) >= 14)
+		return;
+
 	if (!intel_encoder_is_tc(&dig_port->base) ||
 	    intel_tc_port_in_tbt_alt_mode(dig_port))
 		return;
-- 
2.34.1

