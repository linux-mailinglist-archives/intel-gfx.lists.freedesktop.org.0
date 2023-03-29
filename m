Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5992E6CDB27
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 15:50:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D55710EADD;
	Wed, 29 Mar 2023 13:50:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12ACB10EADD
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 13:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680097809; x=1711633809;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qpLibc1fDEPKymL6grt+uKu6xxUihgZbglI819BwPVY=;
 b=c74yG8X5Z9L2KWO231TBmfzFRf83uTFF2w0Pq5VlYiIBom8ja8eG5naX
 c42adbN0OJuzLFYrjtgMZ7beRR3tRmNxVo+bIhvL5ZeP9y3GtHs5zZqY9
 ZUP9NUOKdAfJqFQq8SmVY8oKxxFxM8LjGybMSZH1u3g7ic2mJvTp67/3/
 aSH+xEQblE4C2Lr1SlmoBkqg7hyXBJzkVZgn7H8spXza+MvGHWAe7Hjle
 cVxu6Fh92PqOXDDFGyIDaodU43W7EAeNZ6FNZJ8iSNQVBa6kh45Ka44Vt
 /YQnnY/1F5mztIc/BbwZV8BL4qxAk6Z919B9roXfJX9Ukx9fRmuIOpJyZ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="321273939"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="321273939"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 06:50:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="714622644"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="714622644"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 29 Mar 2023 06:50:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Mar 2023 16:50:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 16:49:51 +0300
Message-Id: <20230329135002.3096-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/12] drm/i915: Fix limited range csc matrix
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

Our current limited range matrix is a bit off. I think it
was originally calculated with rounding, as if we wanted
the normal pixel replication type of behaviour.
That is, since the 8bpc max value is 0xeb we assumed the
16bpc max value should be 0xebeb, but what the HDMI spec
actually says it should be is 0xeb00.

So to get what we want we make the formula
 out = in * (235-16) << (12-8) / in_max + 16 << (12-8),
with 12 being precision of the csc, 8 being the precision
of the constants we used.

The hardware takes its coefficients as floating point
values, but the (235−16)/255 = ~.86, so exponent 0
is what we want anyway, so it works out perfectly without
having to hardcode it in hex or start playing with floats.

In terms of raw numbers we are feeding the hardware the
post offset changes from 0x101 to 0x100, and the coefficient
changes from 0xdc0 to 0xdb0 (~.860->~.855). So this should
make everything come out just a tad darker.

I already used better constants in lut_limited_range() earlier
so the output of the two paths should be closer now.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 36aac88143ac..3c3e2f5a5cde 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -116,10 +116,9 @@ struct intel_color_funcs {
 #define ILK_CSC_COEFF_FP(coeff, fbits)	\
 	(clamp_val(((coeff) >> (32 - (fbits) - 3)) + 4, 0, 0xfff) & 0xff8)
 
-#define ILK_CSC_COEFF_LIMITED_RANGE 0x0dc0
 #define ILK_CSC_COEFF_1_0 0x7800
-
-#define ILK_CSC_POSTOFF_LIMITED_RANGE (16 * (1 << 12) / 255)
+#define ILK_CSC_COEFF_LIMITED_RANGE ((235 - 16) << (12 - 8)) /* exponent 0 */
+#define ILK_CSC_POSTOFF_LIMITED_RANGE (16 << (12 - 8))
 
 /* Nop pre/post offsets */
 static const u16 ilk_csc_off_zero[3] = {};
-- 
2.39.2

