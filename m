Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3024D17F255
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 09:53:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 641166E54C;
	Tue, 10 Mar 2020 08:53:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD3F36E54C
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 08:53:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 01:53:22 -0700
X-IronPort-AV: E=Sophos;i="5.70,535,1574150400"; d="scan'208";a="235873339"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 01:53:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Mar 2020 10:52:44 +0200
Message-Id: <5964ce0a603e2ec0e6110c927a11234e66891258.1583766715.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1583766715.git.jani.nikula@intel.com>
References: <cover.1583766715.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 05/10] drm/i915/gmbus: convert to drm_device
 based logging, 
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
Cc: jani.nikula@intel.com, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Wambui Karuga <wambui.karugax@gmail.com>

Conversion instances of printk based drm logging macros to use the
struct drm_device based logging macros in i915/display/intel_gmbus.c.
This was done using the following coccinelle semantic patch that
transforms based on the existence of an existing drm_i915_private
device:
@@
identifier fn, T;
@@

fn(...,struct drm_i915_private *T,...) {
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

@@
identifier fn, T;
@@

fn(...) {
...
struct drm_i915_private *T = ...;
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

New checkpatch warnings were addressed manually.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_gmbus.c | 33 +++++++++++++---------
 1 file changed, 19 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 0aaaaac44973..1fd3a5a6296b 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -631,8 +631,9 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 	 * till then let it sleep.
 	 */
 	if (gmbus_wait_idle(dev_priv)) {
-		DRM_DEBUG_KMS("GMBUS [%s] timed out waiting for idle\n",
-			 adapter->name);
+		drm_dbg_kms(&dev_priv->drm,
+			    "GMBUS [%s] timed out waiting for idle\n",
+			    adapter->name);
 		ret = -ETIMEDOUT;
 	}
 	intel_de_write_fw(dev_priv, GMBUS0, 0);
@@ -655,8 +656,9 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 	 */
 	ret = -ENXIO;
 	if (gmbus_wait_idle(dev_priv)) {
-		DRM_DEBUG_KMS("GMBUS [%s] timed out after NAK\n",
-			      adapter->name);
+		drm_dbg_kms(&dev_priv->drm,
+			    "GMBUS [%s] timed out after NAK\n",
+			    adapter->name);
 		ret = -ETIMEDOUT;
 	}
 
@@ -668,9 +670,9 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 	intel_de_write_fw(dev_priv, GMBUS1, 0);
 	intel_de_write_fw(dev_priv, GMBUS0, 0);
 
-	DRM_DEBUG_KMS("GMBUS [%s] NAK for addr: %04x %c(%d)\n",
-			 adapter->name, msgs[i].addr,
-			 (msgs[i].flags & I2C_M_RD) ? 'r' : 'w', msgs[i].len);
+	drm_dbg_kms(&dev_priv->drm, "GMBUS [%s] NAK for addr: %04x %c(%d)\n",
+		    adapter->name, msgs[i].addr,
+		    (msgs[i].flags & I2C_M_RD) ? 'r' : 'w', msgs[i].len);
 
 	/*
 	 * Passive adapters sometimes NAK the first probe. Retry the first
@@ -679,16 +681,18 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 	 * drm_do_probe_ddc_edid, which bails out on the first -ENXIO.
 	 */
 	if (ret == -ENXIO && i == 0 && try++ == 0) {
-		DRM_DEBUG_KMS("GMBUS [%s] NAK on first message, retry\n",
-			      adapter->name);
+		drm_dbg_kms(&dev_priv->drm,
+			    "GMBUS [%s] NAK on first message, retry\n",
+			    adapter->name);
 		goto retry;
 	}
 
 	goto out;
 
 timeout:
-	DRM_DEBUG_KMS("GMBUS [%s] timed out, falling back to bit banging on pin %d\n",
-		      bus->adapter.name, bus->reg0 & 0xff);
+	drm_dbg_kms(&dev_priv->drm,
+		    "GMBUS [%s] timed out, falling back to bit banging on pin %d\n",
+		    bus->adapter.name, bus->reg0 & 0xff);
 	intel_de_write_fw(dev_priv, GMBUS0, 0);
 
 	/*
@@ -925,9 +929,10 @@ void intel_gmbus_force_bit(struct i2c_adapter *adapter, bool force_bit)
 	mutex_lock(&dev_priv->gmbus_mutex);
 
 	bus->force_bit += force_bit ? 1 : -1;
-	DRM_DEBUG_KMS("%sabling bit-banging on %s. force bit now %d\n",
-		      force_bit ? "en" : "dis", adapter->name,
-		      bus->force_bit);
+	drm_dbg_kms(&dev_priv->drm,
+		    "%sabling bit-banging on %s. force bit now %d\n",
+		    force_bit ? "en" : "dis", adapter->name,
+		    bus->force_bit);
 
 	mutex_unlock(&dev_priv->gmbus_mutex);
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
