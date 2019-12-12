Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B98D411D6A5
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 20:02:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 048786E122;
	Thu, 12 Dec 2019 19:02:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com
 [IPv6:2607:f8b0:4864:20::b44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A907D6E0FB
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 19:02:37 +0000 (UTC)
Received: by mail-yb1-xb44.google.com with SMTP id d34so877730yba.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 11:02:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=h0egt0JF3BBaO6WdEMgj9OmFassmcCaVwLOw/Q8+8Ig=;
 b=SHJUYkdQXFIy7lhSOlGEt4N5lRi54RBmiuC1/wvPLbJPQdGP4+0qs0kcR03YfyUDsV
 kvnNq6grLvRnzgt1X0VhyaF2celBuey0NkyLNxLW/7k2uYpp7HMiyvNgfyYnCev/VBwa
 trV6aCHWZhzQVVQXMmG/Ig+nQLmfjtnnlnJ0IU+a90Bfgv2eNcsh1w55Bp5JGFH+Chjr
 L4I2vM8/zrgZ5pqpNZGVy4OGuFvGRPEbN4HoCQc4yT/JbQ8+z9VVnnDQl8LrgpnWwELF
 pZX2tWycjVoOJnafgIyjS3kVHB+esUoA+m7jNBSK1IX5QJSA4l/IgVD+fSdOicdJf87u
 7fXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=h0egt0JF3BBaO6WdEMgj9OmFassmcCaVwLOw/Q8+8Ig=;
 b=s+1fyg1fSNEOnE6hp3qqpumWYSj7eTQqVRATUa2M00KH+p9an8xeKOY8RlXf0t5A5j
 k8fryuceztzosTueybjhRQy2nXE9Q/A7gsBJQ4DPc5t/p52sKKd5dq21OZ0aD+jR6oPW
 8RiGRV9ygPbbhPR7L8JGgE/m2VgPaNfP1AEFXrm6SvcR0hWgGbe/UOFnGOyGZgGZ6Bpu
 A3u22fT9Pz+KuQ0dRkEbS/5OsQGgai/vCtFwPhPXGf45x52XbQQLg77a8WDqYe0h8kvV
 PphM+iFM9kiPp7DnrCuBZmnP/GQzE8drlGH1HuTpWkwU5XMdnfC0perltMS0WdAqi8nM
 As8Q==
X-Gm-Message-State: APjAAAUymSLCWuYJzHUR7pAISwK0fFwxLafVLskzdegC0MJNf+jri/B/
 u3mTWGWlgJExvDDEGI6Le9A5yw==
X-Google-Smtp-Source: APXvYqxTLrnFF6DesdMGBQCsHLYXvOIO4H7H7tXnoUlpTgcZRRHBNuvB3iFuGq/JTG5n86eh2+8xgg==
X-Received: by 2002:a25:6385:: with SMTP id x127mr5367068ybb.468.1576177356773; 
 Thu, 12 Dec 2019 11:02:36 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id k23sm538820ywk.17.2019.12.12.11.02.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 11:02:36 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 14:02:20 -0500
Message-Id: <20191212190230.188505-3-sean@poorly.run>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
In-Reply-To: <20191212190230.188505-1-sean@poorly.run>
References: <20191212190230.188505-1-sean@poorly.run>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 02/12] drm/i915: Clear the repeater bit on
 HDCP disable
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
Cc: daniel.vetter@ffwll.ch, Sean Paul <seanpaul@chromium.org>,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

On HDCP disable, clear the repeater bit. This ensures if we connect a
non-repeater sink after a repeater, the bit is in the state we expect.

Fixes: ee5e5e7a5e0f ("drm/i915: Add HDCP framework + base implementation")
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Ramalingam C <ramalingam.c@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Sean Paul <seanpaul@chromium.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: <stable@vger.kernel.org> # v4.17+
Signed-off-by: Sean Paul <seanpaul@chromium.org>

Changes in v2:
-Added to the set
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index eaab9008feef..c4394c8e10eb 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -773,6 +773,7 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
 	struct intel_digital_port *intel_dig_port = conn_to_dig_port(connector);
 	enum port port = intel_dig_port->base.port;
 	enum transcoder cpu_transcoder = hdcp->cpu_transcoder;
+	u32 repeater_ctl;
 	int ret;
 
 	DRM_DEBUG_KMS("[%s:%d] HDCP is being disabled...\n",
@@ -787,6 +788,10 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
 		return -ETIMEDOUT;
 	}
 
+	repeater_ctl = intel_hdcp_get_repeater_ctl(dev_priv, cpu_transcoder,
+						   port);
+	I915_WRITE(HDCP_REP_CTL, I915_READ(HDCP_REP_CTL) & ~repeater_ctl);
+
 	ret = hdcp->shim->toggle_signalling(intel_dig_port, false);
 	if (ret) {
 		DRM_ERROR("Failed to disable HDCP signalling\n");
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
