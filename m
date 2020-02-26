Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C0816FBBC
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 11:12:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EDA06E456;
	Wed, 26 Feb 2020 10:12:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D752B6E456
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 10:12:06 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id t14so2349008wmi.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 02:12:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=522pX8ivSzrePrBbF61VWkh2CrpulMv4kY157ovU+II=;
 b=MfMHQUFDM8wxMaToVDd76NCbnwX/CoLSlO5S15PpsD1rkdlACdKQ+XHGnmx71vV4+g
 zsIutENeiX4DAImGDUEITxdroQKHmZSY/BGl9HqvTPOYHib6AMo/wAQ+tNPZfeAST9xQ
 b90PpExVxn3xuwiPreKiBfK31nualScdOLeRtHvw5TAZ/U2h08uzNB121Uv3Y+fUVZcw
 9ipSQzRDj0hYNH5vgMQnJDmUj1Idiz9BJ4CqWfrwYftIJQ8oQ8ODMaBTJcXoKBsZC3pU
 n1A2dIVDG6aKjfpN7TsybknIOL3MxyV+IXU64HfF/8swYfSvTUR4nivEpjT+zysEbPzR
 tyHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=522pX8ivSzrePrBbF61VWkh2CrpulMv4kY157ovU+II=;
 b=fBG+yy+dUyfsexid65yYsS9vZ5KILRj1GS6cyRNUHZU5fpklNHTJFtiHXALQM1dMMi
 edJ+YV70i7YFzikMSPwUe9VGWMdNiH1OrL9ctwtaFpSFZmaWsnwBjLOoYkuL6OV1tHAl
 ILsE4d2oN/0XWs2IfDd5vIx42FsGWEB3ZW45J+oDTdN6S3BezN/WmPaA1vTxe4/uW1zF
 YvNFrbhB8nFkD8z57u0KHUqhQHkwEW3gyT9AQo0Jqe7t2bSX9IsUVZ+NkbysSoV48h6w
 G57hePdgfWQlVlZf3qCtvgxOCyQdeZmoh9vA8Xkzl9CzQB0reErYhl2yy/djkodTIY7e
 TROw==
X-Gm-Message-State: APjAAAWe6lhSKYTQzkyieK3s2TyG9rFnYoAwBsaQ9+Yfmt/Kwt6Y+KWH
 BzRB/K9JrAaY1S9vPe5iXco=
X-Google-Smtp-Source: APXvYqwAad/htgCQzAR8D1TWH74G973lkEivR44dW1OxTe4w1Le20R7kfXLqQ2y1/nX4SB27nKIPTg==
X-Received: by 2002:a7b:cc69:: with SMTP id n9mr4102875wmj.163.1582711925145; 
 Wed, 26 Feb 2020 02:12:05 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id r3sm2558190wrn.34.2020.02.26.02.12.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 02:12:04 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Wed, 26 Feb 2020 13:11:33 +0300
Message-Id: <20200226101138.15435-6-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226101138.15435-1-wambui.karugax@gmail.com>
References: <20200226101138.15435-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

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
---
 drivers/gpu/drm/i915/display/intel_gmbus.c | 33 +++++++++++++---------
 1 file changed, 19 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 4ef8a81ae0ad..0a1874a5d957 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -632,8 +632,9 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
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
@@ -656,8 +657,9 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
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
 
@@ -669,9 +671,9 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
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
@@ -680,16 +682,18 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
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
@@ -926,9 +930,10 @@ void intel_gmbus_force_bit(struct i2c_adapter *adapter, bool force_bit)
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
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
