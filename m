Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC89D6B952C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 14:03:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02B6610E7DC;
	Tue, 14 Mar 2023 13:03:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F6CF10E7DC
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 13:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678798997; x=1710334997;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=MacJgNsYYkg9TL0SlFzC7KPYOe4nsUk0vR35awsSc64=;
 b=cyPsgKym9WfY7+0T65EbH4//TuHPYHr0glvW3tCx7oubqKkEFRqpZ3U4
 BfxG9uL5JfR40xNxMoPAqWv0ccSBc7rpjlqppiXYtUEs00618TL/8u+nW
 voLPfQJLn8sOHgi4vaoX5WavTJeQx9DtztfiANGPkHDqdEklq/iaFqCCi
 sGRahnfQ4XPkwC5i/J6lZXxKGBc4keDSN9lnH36iYexkOgX1F7y+AopSr
 Lo9fl/7jCyFgd2Mk6kBVS6YHe+9wmxtcBEEpxFam8SNb4wHIPwsdoz/Q+
 IiSyQV3/tZkQkXQ8+yMdBYFcdY+mBJ8+BbsU/yz2L6c/nH+YMKbYmtNd1 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="365079976"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="365079976"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 06:03:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="672323844"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="672323844"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 14 Mar 2023 06:03:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Mar 2023 15:03:14 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Mar 2023 15:02:52 +0200
Message-Id: <20230314130255.23273-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
References: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/9] drm/i915: Define vlv/chv sprite plane
 SURFLIVE registers
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

Might as well complete the SURFLIVE register definitions
for all platforms/plane types. We are only missing the
VLV/CHV sprite planes.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a2b4af711e6d..e908959dba4a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4394,6 +4394,7 @@
 #define   SP_CONST_ALPHA_ENABLE		REG_BIT(31)
 #define   SP_CONST_ALPHA_MASK		REG_GENMASK(7, 0)
 #define   SP_CONST_ALPHA(alpha)		REG_FIELD_PREP(SP_CONST_ALPHA_MASK, (alpha))
+#define _SPASURFLIVE		(VLV_DISPLAY_BASE + 0x721ac)
 #define _SPACLRC0		(VLV_DISPLAY_BASE + 0x721d0)
 #define   SP_CONTRAST_MASK		REG_GENMASK(26, 18)
 #define   SP_CONTRAST(x)		REG_FIELD_PREP(SP_CONTRAST_MASK, (x)) /* u3.6 */
@@ -4417,6 +4418,7 @@
 #define _SPBKEYMAXVAL		(VLV_DISPLAY_BASE + 0x722a0)
 #define _SPBTILEOFF		(VLV_DISPLAY_BASE + 0x722a4)
 #define _SPBCONSTALPHA		(VLV_DISPLAY_BASE + 0x722a8)
+#define _SPBSURFLIVE		(VLV_DISPLAY_BASE + 0x722ac)
 #define _SPBCLRC0		(VLV_DISPLAY_BASE + 0x722d0)
 #define _SPBCLRC1		(VLV_DISPLAY_BASE + 0x722d4)
 #define _SPBGAMC		(VLV_DISPLAY_BASE + 0x722e0)
@@ -4437,6 +4439,7 @@
 #define SPKEYMAXVAL(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPAKEYMAXVAL, _SPBKEYMAXVAL)
 #define SPTILEOFF(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPATILEOFF, _SPBTILEOFF)
 #define SPCONSTALPHA(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPACONSTALPHA, _SPBCONSTALPHA)
+#define SPSURFLIVE(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPASURFLIVE, _SPBSURFLIVE)
 #define SPCLRC0(pipe, plane_id)		_MMIO_VLV_SPR((pipe), (plane_id), _SPACLRC0, _SPBCLRC0)
 #define SPCLRC1(pipe, plane_id)		_MMIO_VLV_SPR((pipe), (plane_id), _SPACLRC1, _SPBCLRC1)
 #define SPGAMC(pipe, plane_id, i)	_MMIO(_VLV_SPR((pipe), (plane_id), _SPAGAMC, _SPBGAMC) + (5 - (i)) * 4) /* 6 x u0.10 */
-- 
2.39.2

