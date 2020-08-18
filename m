Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 701BE248A30
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Aug 2020 17:40:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9B9989C07;
	Tue, 18 Aug 2020 15:40:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf41.google.com (mail-qv1-xf41.google.com
 [IPv6:2607:f8b0:4864:20::f41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3936E89BE8
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 15:40:52 +0000 (UTC)
Received: by mail-qv1-xf41.google.com with SMTP id j10so9709570qvo.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 08:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=uZWhf3y4ycLu6ItZ1f84x5IWUzy4olVPJqdFDMly8eA=;
 b=J/Ut/00HgGE8XTZMzZtlYzVJghaFq0L+f0T5EzJp7ZqHZbasu4T/SBUyufcBmKAvm6
 79svWdHG4P1ztB2decLHoCGPr/sKycwlvPpPfnYLwW+0PIvSS6j80ge8v1imeEv+nkk/
 /6IpIJ0KaYSAh/QLmwUQv0fFak5322/Q2hAUjrLtRlHY/7EFPQ4+fQX918atuAxPOfgJ
 s6S3xGoOYclzVles7piY/zxT87Cf1xZrvZk1E9+wLFWqWvN/elbPjHTWi6ajC93c+XW4
 Vx756OYz3iSPconIpnkKt9L/x0+WyD3AUqjgHccwo62J3X/0vBqgPfzPMCVMSpEcXIV4
 qCUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=uZWhf3y4ycLu6ItZ1f84x5IWUzy4olVPJqdFDMly8eA=;
 b=fx6fAsjM8L8KBj2RPmzNx5p9+T1OGPqt9l691ToSwssjQmnq6DeGVOlDXvFcRQ9aHG
 SY+Zix9dapQXmsHER8JJlIIZjTxBLbyo59znPPm/18Oxj3qjWyQ6E1Ah+vlZ0ZI2ImFs
 egdXQD3X0ZwieQMhP5xFL0oVCu1SU4JTvHBpiXxY07o/pg0xqe30BBnoi+GS7oD+97Iw
 UBUdh6bVlxOaK6rvCrwP++7QMX8QdHq5BBcrS9cUFQhxIaJZWuzpdH4wRIyVBJJZalkP
 aD2hNOEh6TXPozUd62s56WNbCzl7VQHrKiexA8Qi53joqWhAJlfUO4p8lCzpWVpnq/bU
 FNig==
X-Gm-Message-State: AOAM533WZOSPbsAQOEuJsZvbcSfdWXHEXlQUHn10h6l/fZSUObnEU1zN
 pRhgmeUvrUBkRQ5S8s1vcWSpUw==
X-Google-Smtp-Source: ABdhPJxAwjQMur7FTFSCLKYMuvXkD8NCCdNcesGLSll1/cf2sZxcQlEbcIOoI0nLwHt5emLqYH7+HQ==
X-Received: by 2002:ad4:5425:: with SMTP id g5mr19414917qvt.198.1597765251335; 
 Tue, 18 Aug 2020 08:40:51 -0700 (PDT)
Received: from localhost (mobile-166-170-57-144.mycingular.net.
 [166.170.57.144])
 by smtp.gmail.com with ESMTPSA id f4sm23303937qtp.38.2020.08.18.08.40.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 18 Aug 2020 08:40:50 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 juston.li@intel.com, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 anshuman.gupta@intel.com
Date: Tue, 18 Aug 2020 11:39:04 -0400
Message-Id: <20200818153910.27894-17-sean@poorly.run>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200818153910.27894-1-sean@poorly.run>
References: <20200818153910.27894-1-sean@poorly.run>
Subject: [Intel-gfx] [PATCH v8 16/17] drm/i915: Print HDCP version info for
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
Cc: David Airlie <airlied@linux.ie>, daniel.vetter@ffwll.ch,
 Sean Paul <seanpaul@chromium.org>
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
Link: https://patchwork.freedesktop.org/patch/msgid/20200623155907.22961-17-sean@poorly.run #v7

Changes in v4:
- Added to the set
Changes in v5:
-Print "No connector support" for hdcp sink capability as well (Ram)
Changes in v6:
-None
Changes in v7:
-None
Changes in v8:
-None
---
 .../drm/i915/display/intel_display_debugfs.c  | 21 ++++++++-----------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index f549381048b3..58c26a5afc49 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -601,6 +601,11 @@ static void intel_hdcp_info(struct seq_file *m,
 {
 	bool hdcp_cap, hdcp2_cap;
 
+	if (!intel_connector->hdcp.shim) {
+		seq_puts(m, "No Connector Support");
+		goto out;
+	}
+
 	hdcp_cap = intel_hdcp_capable(intel_connector);
 	hdcp2_cap = intel_hdcp2_capable(intel_connector);
 
@@ -612,6 +617,7 @@ static void intel_hdcp_info(struct seq_file *m,
 	if (!hdcp_cap && !hdcp2_cap)
 		seq_puts(m, "None");
 
+out:
 	seq_puts(m, "\n");
 }
 
@@ -628,10 +634,6 @@ static void intel_dp_info(struct seq_file *m,
 
 	drm_dp_downstream_debug(m, intel_dp->dpcd, intel_dp->downstream_ports,
 				&intel_dp->aux);
-	if (intel_connector->hdcp.shim) {
-		seq_puts(m, "\tHDCP version: ");
-		intel_hdcp_info(m, intel_connector);
-	}
 }
 
 static void intel_dp_mst_info(struct seq_file *m,
@@ -649,10 +651,6 @@ static void intel_hdmi_info(struct seq_file *m,
 	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(intel_encoder);
 
 	seq_printf(m, "\taudio support: %s\n", yesno(intel_hdmi->has_audio));
-	if (intel_connector->hdcp.shim) {
-		seq_puts(m, "\tHDCP version: ");
-		intel_hdcp_info(m, intel_connector);
-	}
 }
 
 static void intel_lvds_info(struct seq_file *m,
@@ -708,6 +706,9 @@ static void intel_connector_info(struct seq_file *m,
 		break;
 	}
 
+	seq_puts(m, "\tHDCP version: ");
+	intel_hdcp_info(m, intel_connector);
+
 	seq_printf(m, "\tmodes:\n");
 	list_for_each_entry(mode, &connector->modes, head)
 		intel_seq_print_mode(m, 2, mode);
@@ -2029,10 +2030,6 @@ static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
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
