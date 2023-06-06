Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE38724CC7
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 21:15:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1A1310E3A2;
	Tue,  6 Jun 2023 19:15:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA10710E3A4
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 19:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686078922; x=1717614922;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0BXaQyuWn9LohPhNm2oSwR8mNwO0PjIdy8NLhV/3yME=;
 b=cyxymRgbWxNVDrYC5go+FLobbaE85PxWnnrhNOKOZiGX60Nvgkx1p41q
 icxzlNot4GqvkQ6tgqWER0TiZmkZoOzfXuHut3sDujvmqnAQ+BJGRrRTV
 7Dm7ZxiIcSWimJYIksz+5EmAhvrvARTzwj/vUdDLGIlw1kj8dy10BEpkK
 NwJks/bkn5E8mdNBJ5sTMr1kJAw42V4k0x/F7oyV4RF1r0DxOHTb5NPlb
 XNxX0cRpxERvn7cKaV6R8GnGUMlb4I2VwpIfN83ba9ssHNvINloCos2lA
 eQTD2JgDOB+8RtbGinudSpFq+rY3IScMYtcg4E/sgItxoM84TOkwPqFwE w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="443146264"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="443146264"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 12:15:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="709187039"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="709187039"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 06 Jun 2023 12:15:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Jun 2023 22:15:19 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jun 2023 22:14:50 +0300
Message-Id: <20230606191504.18099-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/19] drm/i915/dsb: Define the contents of
 some intstructions bit better
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

Add some defines to specify what goes inside certain DSB
instructions.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 42911abcd3ab..093b2567883d 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -70,17 +70,21 @@ struct intel_dsb {
 #define DSB_OPCODE_SHIFT		24
 #define DSB_OPCODE_NOOP			0x0
 #define DSB_OPCODE_MMIO_WRITE		0x1
+#define   DSB_BYTE_EN			0xf
+#define   DSB_BYTE_EN_SHIFT		20
+#define   DSB_REG_VALUE_MASK		0xfffff
 #define DSB_OPCODE_WAIT_USEC		0x2
-#define DSB_OPCODE_WAIT_LINES		0x3
+#define DSB_OPCODE_WAIT_SCANLINE	0x3
 #define DSB_OPCODE_WAIT_VBLANKS		0x4
 #define DSB_OPCODE_WAIT_DSL_IN		0x5
 #define DSB_OPCODE_WAIT_DSL_OUT		0x6
+#define   DSB_SCANLINE_UPPER_SHIFT	20
+#define   DSB_SCANLINE_LOWER_SHIFT	0
 #define DSB_OPCODE_INTERRUPT		0x7
 #define DSB_OPCODE_INDEXED_WRITE	0x9
+/* see DSB_REG_VALUE_MASK */
 #define DSB_OPCODE_POLL			0xA
-#define DSB_BYTE_EN			0xF
-#define DSB_BYTE_EN_SHIFT		20
-#define DSB_REG_VALUE_MASK		0xfffff
+/* see DSB_REG_VALUE_MASK */
 
 static bool assert_dsb_has_room(struct intel_dsb *dsb)
 {
-- 
2.39.3

