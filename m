Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE549C321B2
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 17:41:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B09310E645;
	Tue,  4 Nov 2025 16:41:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kweOtCv1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0511510E645
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Nov 2025 16:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762274512; x=1793810512;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/P6/utf/AAsC846aNoIjR9LyCZuDRp8ThidMJNF+pZk=;
 b=kweOtCv18auRDMS49PjIEICEOs6UO5mgGvAY18QbiDZ9rmRIHTY+ZXZe
 7WUfufkB0WCJ3OmyMrtDEsWTaSwr7Itp63kBHoCIha+GEhGvXsJuZCx7Y
 nvxaTxwDomUZuENbrtdta0AABuTQ0FZtYD3v1ecWSIS/NW03jv0aLi/Bo
 E5b82DI362I2UlVQ2xlWieAjXSzddQ3jXxnDCVWHkqiSjPxi/ePANN617
 n4ZyLRdyZVoplubQ9akPyhoOc9K4pbF516Dr6GBTBcYw6kkVd4s/Ha5LI
 JIadGeYE6puYOZYBzDYH10Hyp1r+Z2RCaODxX91KHrLPDq3aIQUVuwMza w==;
X-CSE-ConnectionGUID: v0PV7cbgSEaXHKP73rflPg==
X-CSE-MsgGUID: DG6YnUVjRv6qP5a/TFxddw==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="89838701"
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="89838701"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 08:41:51 -0800
X-CSE-ConnectionGUID: NHlu2TwQTRCaYFjSkOOJrg==
X-CSE-MsgGUID: bSaW0r+NSQy23JrsQS+0xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="186887631"
Received: from dut4086lnl.fm.intel.com ([10.105.10.39])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 08:41:51 -0800
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com,
	alex.zuo@intel.com,
	jonathan.cavitt@intel.com
Subject: [PATCH] drm/i915/display: Add default case to mipi_exec_send_packet
Date: Tue,  4 Nov 2025 16:41:51 +0000
Message-ID: <20251104164150.16795-2-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.43.0
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

Add a default case to the switch case statement in mipi_exec_send_packet
to prevent attempts to read an uninitialized ret value.  It's unlikely
the default case will ever occur during regular exeuction, but if more
MIPI DSI Processor-to-Peripheral transaction types are ever added, then
having this in place will be a useful safety guard.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 31edf57a296f..4b815ce6b1fe 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -171,6 +171,9 @@ static const u8 *mipi_exec_send_packet(struct intel_dsi *intel_dsi,
 	case MIPI_DSI_DCS_LONG_WRITE:
 		ret = mipi_dsi_dcs_write_buffer(dsi_device, data, len);
 		break;
+	default:
+		ret = -EINVAL;
+		break;
 	}
 
 	if (ret < 0)
-- 
2.43.0

