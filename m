Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2535A1BE7E3
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 21:55:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6CFB6F3CF;
	Wed, 29 Apr 2020 19:55:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com
 [IPv6:2607:f8b0:4864:20::733])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F13766F3AA
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 19:55:32 +0000 (UTC)
Received: by mail-qk1-x733.google.com with SMTP id k81so644130qke.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 12:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NEkqYX9ZW+igTZYhSVtHVBU4hpoPNfkaLlo8mkBQahA=;
 b=D4wiJz3RkOZKUBCdBfPmI2qALQ6j2S3999fk/FzfrLZyKshbVFyFQVTV7ZChZkGnta
 B3IMETdIaCrJYleqv4ptFuvZwBcSnluEgRLHACyYZszEEyvsrExrDc7fu3BEXNE1orFK
 ZJBa7fxtScnMi2aMHZ/+n3uLuFOyWZ7VsvRXyrM4TI5v95PhSxTE8OCSIBVaxKo0xUtK
 Fi30qpMvlVh8I6BLc1W+4dLB3u5pM2zRLW4Q7dwXxC7KIlUaxHW3aEAH3QNHjFxsiWzB
 d2dIM2JKVjRptDZrypgBSCGdJYXvotS7Iqyw5sQTwYawiOupc5HbpEURtpkMrRnOlkiP
 ok7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NEkqYX9ZW+igTZYhSVtHVBU4hpoPNfkaLlo8mkBQahA=;
 b=AaJrC7kZc+etLa5GOrOCt0wFQQ1DGbtrfvTzBb/FuJq/8X6ig6QFFG+T2nqdTXgVlo
 CU8Jfh3VUtlTqrbpD5VYvz1ekESrDugzLTdx0szSE+hc5/drWDnl0uEf/6TIZc7EudeA
 GsoBSMvdh49PykTuFgSIJsOXw8EL1qtQyYr/OHemPxNmt7cRUcBE47D3BcWyI3HmE5hm
 ymOzHPjbyc7213Zk4V383VZT3s0fUs43+PqIYWErg5LopjQeYARlFGLLI8k74vO78QaB
 jC4HaHliULldk528sQ+e7tJYW7AAnJ2RTqs+6a6nqPjIqeWrecTZdQtVuHmQrVvctd5d
 Yi+A==
X-Gm-Message-State: AGi0PubH8CVXeI1k+7I6+STEwQMX1HywRIi/WzWHc8zu4cy1N5d5sRs7
 r9ZFjxEwMZtcatMmKqtRENZslw==
X-Google-Smtp-Source: APiQypJ48B0lODXprnFfieWs5V7gqKjpNcjup+uGA0iz52hy2tHJLlIftsD1MvABYW2L4hbB0USRdg==
X-Received: by 2002:a37:508:: with SMTP id 8mr85148qkf.265.1588190132108;
 Wed, 29 Apr 2020 12:55:32 -0700 (PDT)
Received: from localhost (mobile-166-170-55-34.mycingular.net. [166.170.55.34])
 by smtp.gmail.com with ESMTPSA id k2sm191337qte.16.2020.04.29.12.55.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 Apr 2020 12:55:31 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 15:55:01 -0400
Message-Id: <20200429195502.39919-16-sean@poorly.run>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200429195502.39919-1-sean@poorly.run>
References: <20200429195502.39919-1-sean@poorly.run>
Subject: [Intel-gfx] [PATCH v6 15/16] drm/i915: Print HDCP version info for
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
Cc: daniel.vetter@ffwll.ch, seanpaul@chromium.org
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

Changes in v4:
- Added to the set
Changes in v5:
-Print "No connector support" for hdcp sink capability as well (Ram)
Changes in v6:
-None
---
 .../drm/i915/display/intel_display_debugfs.c  | 21 ++++++++-----------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 70525623bcdf..03c3208e4eb9 100644
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
