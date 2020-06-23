Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FD42056A1
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 17:59:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 011B86E9F3;
	Tue, 23 Jun 2020 15:59:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com
 [IPv6:2607:f8b0:4864:20::731])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A198D6E9EF
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 15:59:43 +0000 (UTC)
Received: by mail-qk1-x731.google.com with SMTP id l188so6227079qkf.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 08:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xsvYXXz3Zgff96bTgBtfBN4T2zxUneoOoU2T2WZ3G74=;
 b=XzTOsyStS9Dlemjy8IHFlvdD97lVGxVYZgUCjU1iCs0pNY2WTgBA4RJQRpTccuLCIY
 3e+hy0OY55gE/3INahR1h//4wkUnaA05EJkKft6tpdHgBpocpfWH3xnnYZVSR1cR59a4
 0JlpWiEunhCuMTX8Qn3V9fgr1ZJHYh45g/f4+lKaX8XIyG9ul1z28IXj5e0jdukGrnZH
 njddwGIQIORQYDX3vzfhn/54sqdTWUHJuvDwr3UfhRl+lABfjFymJwhxMwdCz699nrhW
 hkYgaJgaUnRWinjQeCAk7v6ZJJ4JxkVdaWVKgparHV3wwc7C2GKjJkLtsNv8xQiBScDX
 cKcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xsvYXXz3Zgff96bTgBtfBN4T2zxUneoOoU2T2WZ3G74=;
 b=X85JWpRoTfYg/80vjkx9I/zWcGK5AoeTf3wbmrK4DmbMzMslrqYLlRNH0YRCEBZMxX
 Ag9MJPr+apI8x6yiPdqC661Er9OOehhrYiSmHbEbRIcnrsS0GPBGwlgYvtE3QuWw/uIa
 jlnbVrYE/NvpMq1BiayS09RGu8ax0jpUu7jFqyIcVUn3RnTkepQVdssI/LLTQOJOYZh6
 zq2N31+YamrczYSQ+R93Ow76gAy3v9OPWmcIq/5y0ecYqlX7SnrAozrcdwljuDBKlgFA
 h9qmmg3UBeTjKHSzWpg1OY63gxNjgb6HarUQFfPTjDieddtrZTuNkSx83V4HQ0g1p7Yv
 8DZg==
X-Gm-Message-State: AOAM530S8kjnsScjTGSi/ykA37cLxdcfCXPqLex4syZGucTARuSRblTV
 o7XqqojgBHXOOxEWR7OLu+G1/g==
X-Google-Smtp-Source: ABdhPJyse7Plx1IV3TE7RdJFLKwSSkkNK/gVD/pE1HnH5y9gp2nwxvfgqVze/6HpfsQvpTC4eBQ/Hg==
X-Received: by 2002:a05:620a:1108:: with SMTP id
 o8mr15254804qkk.33.1592927982733; 
 Tue, 23 Jun 2020 08:59:42 -0700 (PDT)
Received: from localhost ([166.137.96.174])
 by smtp.gmail.com with ESMTPSA id x4sm993987qtj.50.2020.06.23.08.59.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 23 Jun 2020 08:59:42 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jun 2020 11:59:06 -0400
Message-Id: <20200623155907.22961-17-sean@poorly.run>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200623155907.22961-1-sean@poorly.run>
References: <20200623155907.22961-1-sean@poorly.run>
Subject: [Intel-gfx] [PATCH v7 16/17] drm/i915: Print HDCP version info for
 all connectors
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
Cc: daniel.vetter@ffwll.ch, Sean Paul <seanpaul@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

De-duplicate the HDCP version code for each connector and print it for
all connectors.

Cc: Juston Li <juston.li@intel.com>
Cc: Ramalingam C <ramalingam.c@intel.com>
Reviewed-by: Juston Li <juston.li@intel.com>
Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Sean Paul <seanpaul@chromium.org>

Link: https://patchwork.freedesktop.org/patch/msgid/20200227185714.171466-1-sean@poorly.run #v4
Link: https://patchwork.freedesktop.org/patch/msgid/20200305201236.152307-16-sean@poorly.run #v5
Link: https://patchwork.freedesktop.org/patch/msgid/20200429195502.39919-16-sean@poorly.run #v6

Changes in v4:
- Added to the set
Changes in v5:
-Print "No connector support" for hdcp sink capability as well (Ram)
Changes in v6:
-None
Changes in v7:
-None
---
 .../drm/i915/display/intel_display_debugfs.c  | 21 ++++++++-----------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index d1cb48b3f462..1f748a480eb2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -598,6 +598,11 @@ static void intel_hdcp_info(struct seq_file *m,
 {
 	bool hdcp_cap, hdcp2_cap;
 
+	if (!intel_connector->hdcp.shim) {
+		seq_puts(m, "No Connector Support");
+		goto out;
+	}
+
 	hdcp_cap = intel_hdcp_capable(intel_connector);
 	hdcp2_cap = intel_hdcp2_capable(intel_connector);
 
@@ -609,6 +614,7 @@ static void intel_hdcp_info(struct seq_file *m,
 	if (!hdcp_cap && !hdcp2_cap)
 		seq_puts(m, "None");
 
+out:
 	seq_puts(m, "\n");
 }
 
@@ -625,10 +631,6 @@ static void intel_dp_info(struct seq_file *m,
 
 	drm_dp_downstream_debug(m, intel_dp->dpcd, intel_dp->downstream_ports,
 				&intel_dp->aux);
-	if (intel_connector->hdcp.shim) {
-		seq_puts(m, "\tHDCP version: ");
-		intel_hdcp_info(m, intel_connector);
-	}
 }
 
 static void intel_dp_mst_info(struct seq_file *m,
@@ -646,10 +648,6 @@ static void intel_hdmi_info(struct seq_file *m,
 	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(intel_encoder);
 
 	seq_printf(m, "\taudio support: %s\n", yesno(intel_hdmi->has_audio));
-	if (intel_connector->hdcp.shim) {
-		seq_puts(m, "\tHDCP version: ");
-		intel_hdcp_info(m, intel_connector);
-	}
 }
 
 static void intel_lvds_info(struct seq_file *m,
@@ -705,6 +703,9 @@ static void intel_connector_info(struct seq_file *m,
 		break;
 	}
 
+	seq_puts(m, "\tHDCP version: ");
+	intel_hdcp_info(m, intel_connector);
+
 	seq_printf(m, "\tmodes:\n");
 	list_for_each_entry(mode, &connector->modes, head)
 		intel_seq_print_mode(m, 2, mode);
@@ -2026,10 +2027,6 @@ static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
 	if (connector->status != connector_status_connected)
 		return -ENODEV;
 
-	/* HDCP is supported by connector */
-	if (!intel_connector->hdcp.shim)
-		return -EINVAL;
-
 	seq_printf(m, "%s:%d HDCP version: ", connector->name,
 		   connector->base.id);
 	intel_hdcp_info(m, intel_connector);
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
