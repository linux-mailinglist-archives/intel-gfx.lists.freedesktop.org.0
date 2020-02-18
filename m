Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AD81635AB
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 23:03:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5335C6EA96;
	Tue, 18 Feb 2020 22:03:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com
 [IPv6:2607:f8b0:4864:20::b43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A64526EA96
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 22:03:31 +0000 (UTC)
Received: by mail-yb1-xb43.google.com with SMTP id b6so11337045ybr.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 14:03:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IfpImic0Um1/+E93YU2yBYy/dmBtMwQl96DrDYQiErg=;
 b=QdGz5jmSSv0P5AQZi05BnWRF9EhmKDcGfOjeMdqInmj48MGazwSQSiPTk483TmEJA+
 kQt3znS0mw0h9eQLnzCFXeyEolF7H3V4MLdKpAodmkkd0bg02+zuiNXca+8E5iYdxzV9
 JsQZjZSvo7Mlbl6NACMRXk2mRtuDSm0IBG7OOJH4z4dGBg+hiTyuE041gqXgkC1Z81uL
 KSTQVQhw1dEHqn3hon3aObj1Vl3lMumYA6W9PjSGoHKTGwxsosrq+10FstTpGbpIySci
 DgqBthKAwo9n8lgd2/yrwkfeoQ2H7EK23tKsoK8a3+KdK2Fdltefq7D9FHfqmBHiFFq7
 eoWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IfpImic0Um1/+E93YU2yBYy/dmBtMwQl96DrDYQiErg=;
 b=sb2A+XcKAxYhz7LuihFBVZa3NBH9XTswPOmFTuuPZTpGpgWx/npCbfl1dQ5XlFXZ8v
 8TlOKCkXrmfGOEEylBCznlVBXVC9itHFpD2ACV/f+VBc1+HCcTDqgXN+JiZo/Pe6TC2A
 qoSUqk19OcGEtsTu3/USNw5V5W9wZVp9yYaknjv3MHAE6sAS9kRdKB4oVWY0vrHSgr5A
 PBY/yC/DkYlCgMkVxRnFIEHfo8TGA7aYogz6yrtkZL2EwEeEihiiMlya/VkDaDLOfCuz
 kmmd5oxbtonkKvcZa6jaEG7CqmxEAspbaNRo7mC0pglpxfpJMzsERddG0tFJnyArdfGE
 cPpQ==
X-Gm-Message-State: APjAAAWcMubNq6Kftu40KuP8DO1KTYZj6AgqKC07p1ftqD31Up18boOA
 1P7NFNzDD5UVRSc3mbnrByTHAw==
X-Google-Smtp-Source: APXvYqx2fAVGNlQKTOGmly5wlHfYcLk+3IYqdnsojURjw6fCbaf9yaVGbL3sNWz0CgG73hWXTNC//g==
X-Received: by 2002:a05:6902:52e:: with SMTP id
 y14mr21161614ybs.133.1582063410899; 
 Tue, 18 Feb 2020 14:03:30 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id z2sm32831ywb.13.2020.02.18.14.03.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 14:03:30 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 18 Feb 2020 17:02:30 -0500
Message-Id: <20200218220242.107265-3-sean@poorly.run>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
In-Reply-To: <20200218220242.107265-1-sean@poorly.run>
References: <20200218220242.107265-1-sean@poorly.run>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 02/14] drm/i915: Clear the repeater bit on
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

Fixes: ee5e5e7a5e0f (drm/i915: Add HDCP framework + base implementation)
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Ramalingam C <ramalingam.c@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Sean Paul <seanpaul@chromium.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: <stable@vger.kernel.org> # v4.17+
Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20191212190230.188505-3-sean@poorly.run #v2
Link: https://patchwork.freedesktop.org/patch/msgid/20200117193103.156821-3-sean@poorly.run #v3

Changes in v2:
-Added to the set
Changes in v3:
-None
  I had previously agreed that clearing the rep_ctl bits on enable would
  also be a good idea. However when I committed that idea to code, it
  didn't look right. So let's rely on enables and disables being paired
  and everything outside of that will be considered a bug
Changes in v4:
-s/I915_(READ|WRITE)/intel_de_(read|write)/
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index de996f4f56997..f31a2f5d51a17 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -790,6 +790,7 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	enum port port = intel_dig_port->base.port;
 	enum transcoder cpu_transcoder = hdcp->cpu_transcoder;
+	u32 repeater_ctl;
 	int ret;
 
 	drm_dbg_kms(&dev_priv->drm, "[%s:%d] HDCP is being disabled...\n",
@@ -805,6 +806,11 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
 		return -ETIMEDOUT;
 	}
 
+	repeater_ctl = intel_hdcp_get_repeater_ctl(dev_priv, cpu_transcoder,
+						   port);
+	intel_de_write(dev_priv, HDCP_REP_CTL,
+		       intel_de_read(dev_priv, HDCP_REP_CTL) & ~repeater_ctl);
+
 	ret = hdcp->shim->toggle_signalling(intel_dig_port, false);
 	if (ret) {
 		drm_err(&dev_priv->drm, "Failed to disable HDCP signalling\n");
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
