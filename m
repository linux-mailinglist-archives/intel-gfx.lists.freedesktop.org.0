Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9DC242116
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Aug 2020 22:07:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BF1D6E836;
	Tue, 11 Aug 2020 20:07:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA5776E836
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Aug 2020 20:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1597176462;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QMicxGW/RWYOCGNYew16lhzXat6qw3oglr/TR8xX5uI=;
 b=K5jC30fNnbxie1YJeC+rxoolwbtDgc84j80/1M51VbzCkOqRYVcEB8nL4ZM/BzfgdtkCXi
 xcTS9QWpyovAkcTSUJeHy/HnzkgpijMTee3SkYPNWdUwZpL/W63lFeyL0K/51okcCSPOYy
 eeo2lMB87WT0VY2roS7HzM8LbyC5jRs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-22-NYYeg9NwMve1FcfIz0j-UQ-1; Tue, 11 Aug 2020 16:06:33 -0400
X-MC-Unique: NYYeg9NwMve1FcfIz0j-UQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3BE53800479;
 Tue, 11 Aug 2020 20:06:31 +0000 (UTC)
Received: from Ruby.redhat.com (ovpn-119-184.rdu2.redhat.com [10.10.119.184])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1664F5D9D7;
 Tue, 11 Aug 2020 20:06:29 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Date: Tue, 11 Aug 2020 16:04:50 -0400
Message-Id: <20200811200457.134743-14-lyude@redhat.com>
In-Reply-To: <20200811200457.134743-1-lyude@redhat.com>
References: <20200811200457.134743-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Subject: [Intel-gfx] [RFC 13/20] drm/i915/dp: Extract
 drm_dp_downstream_read_info()
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We're going to be doing the same probing process in nouveau for
determining downstream DP port capabilities, so let's deduplicate the
work by moving i915's code for handling this into a shared helper:
drm_dp_downstream_read_info().

Note that when we do this, we also do make some functional changes while
we're at it:
* We always clear the downstream port info before trying to read it,
  just to make things easier for the caller
* We skip reading downstream port info if the DPCD indicates that we
  don't support downstream port info
* We only read as many bytes as needed for the reported number of
  downstream ports, no sense in reading the whole thing every time

Signed-off-by: Lyude Paul <lyude@redhat.com>
---
 drivers/gpu/drm/drm_dp_helper.c         | 32 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.c | 14 ++---------
 include/drm/drm_dp_helper.h             |  3 +++
 3 files changed, 37 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/drm_dp_helper.c b/drivers/gpu/drm/drm_dp_helper.c
index 4c21cf69dad5a..9703b33599c3b 100644
--- a/drivers/gpu/drm/drm_dp_helper.c
+++ b/drivers/gpu/drm/drm_dp_helper.c
@@ -423,6 +423,38 @@ bool drm_dp_send_real_edid_checksum(struct drm_dp_aux *aux,
 }
 EXPORT_SYMBOL(drm_dp_send_real_edid_checksum);
 
+/**
+ * drm_dp_downstream_read_info() - read DPCD downstream port info if available
+ * @aux: DisplayPort AUX channel
+ * @dpcd: A cached copy of the port's DPCD
+ * @downstream_ports: buffer to store the downstream port info in
+ *
+ * Returns: 0 if either the downstream port info was read successfully or
+ * there was no downstream info to read, or a negative error code otherwise.
+ */
+int drm_dp_downstream_read_info(struct drm_dp_aux *aux,
+				const u8 dpcd[DP_RECEIVER_CAP_SIZE],
+				u8 downstream_ports[DP_MAX_DOWNSTREAM_PORTS])
+{
+	int ret;
+	u8 len;
+
+	memset(downstream_ports, 0, DP_MAX_DOWNSTREAM_PORTS);
+
+	/* No downstream info to read */
+	if (!drm_dp_is_branch(dpcd) ||
+	    dpcd[DP_DPCD_REV] < DP_DPCD_REV_10 ||
+	    !(dpcd[DP_DOWNSTREAMPORT_PRESENT] & DP_DWN_STRM_PORT_PRESENT))
+		return 0;
+
+	len = (dpcd[DP_DOWN_STREAM_PORT_COUNT] & DP_PORT_COUNT_MASK) * 4;
+	ret = drm_dp_dpcd_read(aux, DP_DOWNSTREAM_PORT_0, downstream_ports,
+			       len);
+
+	return ret == len ? 0 : -EIO;
+}
+EXPORT_SYMBOL(drm_dp_downstream_read_info);
+
 /**
  * drm_dp_downstream_max_clock() - extract branch device max
  *                                 pixel rate for legacy VGA
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1e29d3a012856..984e49194ca31 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4685,18 +4685,8 @@ intel_dp_get_dpcd(struct intel_dp *intel_dp)
 			return false;
 	}
 
-	if (!drm_dp_is_branch(intel_dp->dpcd))
-		return true; /* native DP sink */
-
-	if (intel_dp->dpcd[DP_DPCD_REV] == 0x10)
-		return true; /* no per-port downstream info */
-
-	if (drm_dp_dpcd_read(&intel_dp->aux, DP_DOWNSTREAM_PORT_0,
-			     intel_dp->downstream_ports,
-			     DP_MAX_DOWNSTREAM_PORTS) < 0)
-		return false; /* downstream port status fetch failed */
-
-	return true;
+	return drm_dp_downstream_read_info(&intel_dp->aux, intel_dp->dpcd,
+					   intel_dp->downstream_ports) == 0;
 }
 
 static bool
diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
index 5c28199248626..1349f16564ace 100644
--- a/include/drm/drm_dp_helper.h
+++ b/include/drm/drm_dp_helper.h
@@ -1613,6 +1613,9 @@ int drm_dp_dpcd_read_link_status(struct drm_dp_aux *aux,
 bool drm_dp_send_real_edid_checksum(struct drm_dp_aux *aux,
 				    u8 real_edid_checksum);
 
+int drm_dp_downstream_read_info(struct drm_dp_aux *aux,
+				const u8 dpcd[DP_RECEIVER_CAP_SIZE],
+				u8 downstream_ports[DP_MAX_DOWNSTREAM_PORTS]);
 int drm_dp_downstream_max_clock(const u8 dpcd[DP_RECEIVER_CAP_SIZE],
 				const u8 port_cap[4]);
 int drm_dp_downstream_max_bpc(const u8 dpcd[DP_RECEIVER_CAP_SIZE],
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
