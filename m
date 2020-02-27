Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF4C17282D
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 19:57:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7532C6E8C9;
	Thu, 27 Feb 2020 18:57:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc43.google.com (mail-yw1-xc43.google.com
 [IPv6:2607:f8b0:4864:20::c43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84C036E8C9
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 18:57:16 +0000 (UTC)
Received: by mail-yw1-xc43.google.com with SMTP id b186so639653ywc.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 10:57:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WcUQisjRDJPBRq16drGu6BORwodAaS0C6d/9vW3NxEA=;
 b=T/lljq6E1vwXRPkmpvybh+nR7ZhPFezpCKzsdlvBA9RhjH00RKXA7+HnXlrk0lLpa1
 zNLjqNSBqJIDl8K/zcA3c9FP4v+vDhpn8DPysIVT5n2RB6jmImnvZjFLx8fOFAWfIFK3
 M8zYk8XvXWfGKiQC3+nIfIlBQvfnM7ei+05T+ZWYJhwygcZvvFkVeQifPLjfyUkbnngE
 WhCetFy3rtS5csGO4YQ/mnYzLT1xkBpQAn7NoEC4X8rEgwEscXIIdugDs+ggN7ci8mkQ
 Ust8/mGqmR8N/2z8yl+YHfOXhLLJtXG1U8XuKbS2u69wBl6q/Z2GtmqTh9DXTWw+CYiD
 t6fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WcUQisjRDJPBRq16drGu6BORwodAaS0C6d/9vW3NxEA=;
 b=ClNwaZp1Eyu2GwORTFJuNqfLvQRWLt0Z02NDWTbM7vpEyu5eWRGeqvE4a1rVoaVAZw
 2deVRxcT3mFtF0JmTrteKWMI6WNr+UBBDJGpDCLllZ1QqpkzI73MkiEJDUrJjZWWvD9F
 PanyHR1+/7h0Wn9Wg2ZTnKJxUxJfINHsprMwUKBdpF4uYSC7LVHC1mLzX3mmEvq+5YLr
 EL9nGqdeOU2DyuTazKvdcP8j3fkmGZ3kfOl/wo1PSwEh+fwzxcDmGfU0KTpA7yUj8Mnq
 C9fuintp3yIAFLEUIOKkb/X8OcBsV9m4EVvEB3uWQKnBiz1/QAZn8Udn71YwRykYF7Kp
 T1bA==
X-Gm-Message-State: APjAAAViqUReuvSLkD+YjWEPUHdfgCiHmk+UFl7xKD/smgzIFV7ZcLkI
 KrbjI5VM/jeIU/2soRybEUicuQ==
X-Google-Smtp-Source: APXvYqzsjkk5DcdZsLPRAiFR7D4f/hID2/nyDq8flkg0KHAr3NWP1HNSRM6u45+mUcUJsHfN8bAqJA==
X-Received: by 2002:a81:4c42:: with SMTP id z63mr914806ywa.24.1582829835629;
 Thu, 27 Feb 2020 10:57:15 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id i66sm2898254ywa.74.2020.02.27.10.57.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 10:57:15 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2020 13:56:58 -0500
Message-Id: <20200227185714.171466-1-sean@poorly.run>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
In-Reply-To: <5bfd0d1e266b00029ee98e505fe4d3318a4787ea.camel@intel.com>
References: <5bfd0d1e266b00029ee98e505fe4d3318a4787ea.camel@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 13.5/14] drm/i915: Print HDCP version info
 for all connectors
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
Cc: Sean Paul <seanpaul@chromium.org>, daniel.vetter@ffwll.ch
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

De-duplicate the HDCP version code and print it for all connectors.

Cc: Juston Li <juston.li@intel.com>
Signed-off-by: Sean Paul <seanpaul@chromium.org>

Changes in v4:
- Added to the set
---
 .../drm/i915/display/intel_display_debugfs.c    | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 46954cc7b6c01..eb948a14cfd61 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -597,6 +597,11 @@ static void intel_hdcp_info(struct seq_file *m,
 {
 	bool hdcp_cap, hdcp2_cap;
 
+	if (!intel_connector->hdcp.shim) {
+		seq_puts(m, "No Connector Support");
+		goto out;
+	}
+
 	hdcp_cap = intel_hdcp_capable(intel_connector);
 	hdcp2_cap = intel_hdcp2_capable(intel_connector);
 
@@ -608,6 +613,7 @@ static void intel_hdcp_info(struct seq_file *m,
 	if (!hdcp_cap && !hdcp2_cap)
 		seq_puts(m, "None");
 
+out:
 	seq_puts(m, "\n");
 }
 
@@ -624,10 +630,6 @@ static void intel_dp_info(struct seq_file *m,
 
 	drm_dp_downstream_debug(m, intel_dp->dpcd, intel_dp->downstream_ports,
 				&intel_dp->aux);
-	if (intel_connector->hdcp.shim) {
-		seq_puts(m, "\tHDCP version: ");
-		intel_hdcp_info(m, intel_connector);
-	}
 }
 
 static void intel_dp_mst_info(struct seq_file *m,
@@ -651,10 +653,6 @@ static void intel_hdmi_info(struct seq_file *m,
 	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(intel_encoder);
 
 	seq_printf(m, "\taudio support: %s\n", yesno(intel_hdmi->has_audio));
-	if (intel_connector->hdcp.shim) {
-		seq_puts(m, "\tHDCP version: ");
-		intel_hdcp_info(m, intel_connector);
-	}
 }
 
 static void intel_lvds_info(struct seq_file *m,
@@ -710,6 +708,9 @@ static void intel_connector_info(struct seq_file *m,
 		break;
 	}
 
+	seq_puts(m, "\tHDCP version: ");
+	intel_hdcp_info(m, intel_connector);
+
 	seq_printf(m, "\tmodes:\n");
 	list_for_each_entry(mode, &connector->modes, head)
 		intel_seq_print_mode(m, 2, mode);
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
