Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0098BAC60
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:25:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03ED91128C2;
	Fri,  3 May 2024 12:25:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KQweQNg8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0EAA1128B9
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739115; x=1746275115;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KT7oWc+DuF6oYtVqrBzLwPQqUvmam2vD4YxeWf4XJxg=;
 b=KQweQNg8SkqFQtQASREIEGuMUXVzcgfRJ5Ol/Y2lpyWQf1UuCtA50sdA
 EOW/Qu/5uP0HEnGD5hIFOrESbRPIaScsghePg/utNEyv/ih0HWzY3BmiZ
 AW+J/PRlBKaJhUKbmXJ8jR98NEGdCXDyp2HOnqxpHv5L1rin5A8SGFoXh
 +LmRqDCseoGyN/o0KMOh+3DAXHouKekuP8pmG40CYSj/nYQQAyE1HA2R1
 to11hUP3rA2OnFJN3LEB5AobZ8NQQAk4OADumMlPP4+ResLTiNYftQC4L
 g49P0wbsCZb9or6oSVs8nSHCQXNsTWX+rvqF/I1s9PsYL/c29BwoO07SZ w==;
X-CSE-ConnectionGUID: gRxZ4o7YSP2cXWpXMN8p5g==
X-CSE-MsgGUID: ntnv7fkARSSncg/CLiA5UQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372745"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372745"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:25:14 -0700
X-CSE-ConnectionGUID: lxW0/VtORaWKcqXYVt8UbA==
X-CSE-MsgGUID: jr569vvdScKvNHbWSjmrDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463674"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:25:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:25:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 08/35] drm/i915/bios: Add version notes for some blocks
Date: Fri,  3 May 2024 15:24:22 +0300
Message-ID: <20240503122449.27266-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
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

Document which VBT blocks were defined in which BDB version,
for the cases where the spec actually states this accurately.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 0533025d133b..18f54311a6e8 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -147,7 +147,7 @@ enum bdb_block_id {
 	BDB_EXT_MMIO_REGS		= 6, /* VBIOS only */
 	BDB_SWF_IO			= 7, /* VBIOS only */
 	BDB_SWF_MMIO			= 8, /* VBIOS only */
-	BDB_PSR				= 9,
+	BDB_PSR				= 9, /* 165+ */
 	BDB_MODE_REMOVAL_TABLE		= 10,
 	BDB_CHILD_DEVICE_TABLE		= 11,
 	BDB_DRIVER_FEATURES		= 12,
@@ -170,10 +170,10 @@ enum bdb_block_id {
 	BDB_LFP_DATA			= 42,
 	BDB_LFP_BACKLIGHT		= 43,
 	BDB_LFP_POWER			= 44,
-	BDB_MIPI_CONFIG			= 52,
-	BDB_MIPI_SEQUENCE		= 53,
-	BDB_COMPRESSION_PARAMETERS	= 56,
-	BDB_GENERIC_DTD			= 58,
+	BDB_MIPI_CONFIG			= 52, /* 175+ */
+	BDB_MIPI_SEQUENCE		= 53, /* 177+ */
+	BDB_COMPRESSION_PARAMETERS	= 56, /* 213+ */
+	BDB_GENERIC_DTD			= 58, /* 229+ */
 	BDB_SKIP			= 254, /* VBIOS only */
 };
 
-- 
2.43.2

