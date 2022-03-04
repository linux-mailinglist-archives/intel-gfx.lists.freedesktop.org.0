Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 153644CD22A
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 11:15:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C44B10E4C2;
	Fri,  4 Mar 2022 10:15:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D8A510E4C2
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 10:15:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646388901; x=1677924901;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D0wWf3Ze3/K43LwA9PYJlk4fd3TgqfhZSUL2U7GNL0U=;
 b=ZYi2iUu1/dMxOz8ZuUWciIna7SIw5j0gGT2wQG/tI0m4xusRskNaWyJd
 8YtOaTlWM4apJnry8iY5QnA4YBr7mGT7GcTcqv5TxuLTf2kPvUoXWLaYe
 ZXhTOm+YAd4NsWfqyBqDb6Nc36620DcNdeH1i0DNdCI1K1wdbGhIat9VL
 0uJThoGZSbKnjWhYZKH7+UloLzqET7W6KEhCcoSFORiajfD4jHeHpw449
 TozvYjlPJdNehPZ2ELIEmbAIizn7wBNlvBWcXg2BZ9xMQpzSsTEWM+e5F
 9IETAnW/n5TCfnd75G/cT/ZPXoXklpd+lHfsYVPACgCfMPMAAz1lSdKYj g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="314660502"
X-IronPort-AV: E=Sophos;i="5.90,154,1643702400"; d="scan'208";a="314660502"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 02:14:36 -0800
X-IronPort-AV: E=Sophos;i="5.90,154,1643702400"; d="scan'208";a="710289025"
Received: from pruilobx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.28.174])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 02:14:34 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Mar 2022 12:14:26 +0200
Message-Id: <20220304101426.1891347-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220304101426.1891347-1-jani.nikula@intel.com>
References: <20220304101426.1891347-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gmbus: use to_intel_gmbus()
 instead of open coding
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We have a helper for getting at the enclosing gmbus struct from the
embedded i2c_adapter, use it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_gmbus.c | 18 +++++-------------
 1 file changed, 5 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 8f26528c3dc7..21281a7bdc17 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -300,9 +300,7 @@ static void set_data(void *data, int state_high)
 static int
 intel_gpio_pre_xfer(struct i2c_adapter *adapter)
 {
-	struct intel_gmbus *bus = container_of(adapter,
-					       struct intel_gmbus,
-					       adapter);
+	struct intel_gmbus *bus = to_intel_gmbus(adapter);
 	struct drm_i915_private *dev_priv = bus->dev_priv;
 
 	intel_gmbus_reset(dev_priv);
@@ -319,9 +317,7 @@ intel_gpio_pre_xfer(struct i2c_adapter *adapter)
 static void
 intel_gpio_post_xfer(struct i2c_adapter *adapter)
 {
-	struct intel_gmbus *bus = container_of(adapter,
-					       struct intel_gmbus,
-					       adapter);
+	struct intel_gmbus *bus = to_intel_gmbus(adapter);
 	struct drm_i915_private *dev_priv = bus->dev_priv;
 
 	set_data(bus, 1);
@@ -619,9 +615,7 @@ static int
 do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 	      u32 gmbus0_source)
 {
-	struct intel_gmbus *bus = container_of(adapter,
-					       struct intel_gmbus,
-					       adapter);
+	struct intel_gmbus *bus = to_intel_gmbus(adapter);
 	struct drm_i915_private *dev_priv = bus->dev_priv;
 	int i = 0, inc, try = 0;
 	int ret = 0;
@@ -751,8 +745,7 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 static int
 gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num)
 {
-	struct intel_gmbus *bus =
-		container_of(adapter, struct intel_gmbus, adapter);
+	struct intel_gmbus *bus = to_intel_gmbus(adapter);
 	struct drm_i915_private *dev_priv = bus->dev_priv;
 	intel_wakeref_t wakeref;
 	int ret;
@@ -776,8 +769,7 @@ gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num)
 
 int intel_gmbus_output_aksv(struct i2c_adapter *adapter)
 {
-	struct intel_gmbus *bus =
-		container_of(adapter, struct intel_gmbus, adapter);
+	struct intel_gmbus *bus = to_intel_gmbus(adapter);
 	struct drm_i915_private *dev_priv = bus->dev_priv;
 	u8 cmd = DRM_HDCP_DDC_AKSV;
 	u8 buf[DRM_HDCP_KSV_LEN] = { 0 };
-- 
2.30.2

