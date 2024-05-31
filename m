Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C43888D6102
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 13:54:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14DE110E546;
	Fri, 31 May 2024 11:54:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IdTEmUx3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C31E110E00D
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 11:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717156439; x=1748692439;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=K60+2kWqjaW5kWugx/vd77s9IV9QfSpMBgF5CKXoa6A=;
 b=IdTEmUx3xSK+BGYYHt5b41I88mZH+HOy5hzFN7ULbhWEzshkt7TZPc4W
 a/SRbd7KNLajC7VODX4/QH3jKuxzZv5ElGr/K4b7+UcPCDCuyOn3FZAhT
 1kQSHBtdzjh78A1OU5oORqGFFHnPG5ildKyFA4zEa0NG3ziF7eVyZC4kf
 uG1k9izMDEji4Bclmbr5ZfL/HL++71yJYCV0KngYZRVfIRUd2v7hzHo78
 RnuK9Zo7XrZxsCU0UJWuYq4NRbqIcUPBUiBZ9nx2S51RYPY1dKHeCNFac
 4h2yFlho4l5Z3KDIH2/cjd6E5JcJz9dkbOzlkxPv0H1v341Er8/mFPnz7 g==;
X-CSE-ConnectionGUID: p1GdWQV5T52UVsH+xox5YQ==
X-CSE-MsgGUID: zFBCitDxTOq7ZUv1rvs55w==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13864667"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="13864667"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 04:53:59 -0700
X-CSE-ConnectionGUID: h0eqjWsRSs6qRLJKen9OLA==
X-CSE-MsgGUID: Vwr/iJZoTYC7MJjzuH1NeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36135005"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 31 May 2024 04:53:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 May 2024 14:53:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/7] drm/i915: Document which platforms have which CRC
 registers
Date: Fri, 31 May 2024 14:53:40 +0300
Message-ID: <20240531115342.2763-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240531115342.2763-1-ville.syrjala@linux.intel.com>
References: <20240531115342.2763-1-ville.syrjala@linux.intel.com>
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

Sprinkle some comments around to indicate which CRC registers
are valid for which platforms.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h b/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h
index d06ff3516dbc..4f4bf51e1940 100644
--- a/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h
@@ -66,28 +66,33 @@
 #define _PIPE_CRC_RES_BLUE_A		0x60068
 #define PIPE_CRC_RES_BLUE(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_BLUE_A)
 
-#define _PIPE_CRC_RES_RES1_A_I915	0x6006c
+#define _PIPE_CRC_RES_RES1_A_I915	0x6006c /* i915+ */
 #define PIPE_CRC_RES_RES1_I915(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES1_A_I915)
 
-#define _PIPE_CRC_RES_RES2_A_G4X	0x60080
+#define _PIPE_CRC_RES_RES2_A_G4X	0x60080 /* g4x+ */
 #define PIPE_CRC_RES_RES2_G4X(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES2_A_G4X)
 
+/* ivb */
 #define _PIPE_CRC_RES_1_A_IVB		0x60064
 #define _PIPE_CRC_RES_1_B_IVB		0x61064
 #define PIPE_CRC_RES_1_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_1_A_IVB, _PIPE_CRC_RES_1_B_IVB)
 
+/* ivb */
 #define _PIPE_CRC_RES_2_A_IVB		0x60068
 #define _PIPE_CRC_RES_2_B_IVB		0x61068
 #define PIPE_CRC_RES_2_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_2_A_IVB, _PIPE_CRC_RES_2_B_IVB)
 
+/* ivb */
 #define _PIPE_CRC_RES_3_A_IVB		0x6006c
 #define _PIPE_CRC_RES_3_B_IVB		0x6106c
 #define PIPE_CRC_RES_3_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_3_A_IVB, _PIPE_CRC_RES_3_B_IVB)
 
+/* ivb */
 #define _PIPE_CRC_RES_4_A_IVB		0x60070
 #define _PIPE_CRC_RES_4_B_IVB		0x61070
 #define PIPE_CRC_RES_4_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_4_A_IVB, _PIPE_CRC_RES_4_B_IVB)
 
+/* ivb */
 #define _PIPE_CRC_RES_5_A_IVB		0x60074
 #define _PIPE_CRC_RES_5_B_IVB		0x61074
 #define PIPE_CRC_RES_5_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_5_A_IVB, _PIPE_CRC_RES_5_B_IVB)
-- 
2.44.1

