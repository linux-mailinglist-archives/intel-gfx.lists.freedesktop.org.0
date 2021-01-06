Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B492EC647
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 23:39:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D930E6E243;
	Wed,  6 Jan 2021 22:39:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com
 [IPv6:2607:f8b0:4864:20::d2c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A50446E243
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 22:39:16 +0000 (UTC)
Received: by mail-io1-xd2c.google.com with SMTP id u26so4296642iof.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 06 Jan 2021 14:39:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=en5EqfnXWrYrHrETjfMt0dxIpEKJxkPrUalRRmjntzo=;
 b=TuccGCZFfBGJlNqhVjkHp8pspAKW4KPL/GnuA5NsvQD5y8rNWOYu3en5HpAVMksmyw
 FouW9QsZzQGF8W4l+qtrcDnnbFmjYZBnmEY0YVdjY4Sw458H5i+gWRNNAotYvBUQvb4Z
 ov/ssrpmTuZmTbvjoLEJbOLcSXk0LXSIdOkQ83kk+NJ1nVJg1sE6Sj6Lf9N8ex674uHE
 tCJrrI9gZhFb7LFcjW+jT7+bnQbWbyRUndJzo5DnbB7+oTM59v1It5m5L0XJ8o1v+DQF
 O1q+EprYRUBEP2mOYlTGx44dNaOqZBXTjv6DDOBgIdvYos9Ge1BjjApzl11Di56/bQWD
 aLJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=en5EqfnXWrYrHrETjfMt0dxIpEKJxkPrUalRRmjntzo=;
 b=bXgh3DwqqxMB6UN6+YTdmT4yvgy2VefekCF24a/gDN3JgPoAfZ8tZqFFLy6QHbhiIV
 pWQRMpYi+4JYIEWvdds14HDwHuGYmYqq0+sKlv8FabWqOPPeDy7gRtV2MROmWTVQJTg8
 bJDqqG8bJrRtIBgbMYOw8HM77bS89a+ssKa9IVWNYxBARRTjP9siVYfCWir53AqYvXIM
 aDNQb+lPFDRlU+lCinxgmAcDtacEu90ij/6x8sj8fmmwL5fIZC3Nh3NQxqxWwEDXEcsu
 PSW9SZ5ZqLi01lMsLtW9Mf8MDWCC5YHz/50UMhCFA+WY8scttHdo7Fxmf+vUvkHzYx+3
 vlIg==
X-Gm-Message-State: AOAM530rSmSLYvL0JXxgvOb1z4xI5IygG4eEpXAN1rStJ0T4yjBG91fT
 Wo2+1PConBVF8fbburlsUt24vg==
X-Google-Smtp-Source: ABdhPJw3ZVBn8ZlpvaDF9jKJoWWnmtDFHyWaNLOxDw/Mi/7LnJWt5RXesttJsEb3ysdsSobgvje/dQ==
X-Received: by 2002:a6b:93d5:: with SMTP id v204mr4534864iod.155.1609972756035; 
 Wed, 06 Jan 2021 14:39:16 -0800 (PST)
Received: from localhost (8.sub-174-193-22.myvzw.com. [174.193.22.8])
 by smtp.gmail.com with ESMTPSA id f20sm2848025ilj.14.2021.01.06.14.39.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 06 Jan 2021 14:39:15 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed,  6 Jan 2021 17:38:58 -0500
Message-Id: <20210106223909.34476-1-sean@poorly.run>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/hdcp: Disable the QSES check for HDCP
 1.4 over MST
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
Cc: David Airlie <airlied@linux.ie>, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

The HDCP 1.4 spec does not require the QUERY_STREAM_ENCRYPTION_STATUS
check, it was always a nice-to-have. After deploying this across various
devices, we've determined that some MST bridge chips do not properly
support this call for HDCP 1.4 (namely Synaptics and Realtek).

I had considered creating a quirk for this, but I think it's more
prudent to just disable the check entirely since I don't have an idea
how widespread support is.

Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 26 +-------------------
 1 file changed, 1 insertion(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 03424d20e9f7..b6a9606bf09a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -640,30 +640,6 @@ intel_dp_mst_hdcp_toggle_signalling(struct intel_digital_port *dig_port,
 	return ret;
 }
 
-static
-bool intel_dp_mst_hdcp_check_link(struct intel_digital_port *dig_port,
-				  struct intel_connector *connector)
-{
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	struct intel_dp *intel_dp = &dig_port->dp;
-	struct drm_dp_query_stream_enc_status_ack_reply reply;
-	int ret;
-
-	if (!intel_dp_hdcp_check_link(dig_port, connector))
-		return false;
-
-	ret = drm_dp_send_query_stream_enc_status(&intel_dp->mst_mgr,
-						  connector->port, &reply);
-	if (ret) {
-		drm_dbg_kms(&i915->drm,
-			    "[CONNECTOR:%d:%s] failed QSES ret=%d\n",
-			    connector->base.base.id, connector->base.name, ret);
-		return false;
-	}
-
-	return reply.auth_completed && reply.encryption_enabled;
-}
-
 static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
 	.write_an_aksv = intel_dp_hdcp_write_an_aksv,
 	.read_bksv = intel_dp_hdcp_read_bksv,
@@ -674,7 +650,7 @@ static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
 	.read_ksv_fifo = intel_dp_hdcp_read_ksv_fifo,
 	.read_v_prime_part = intel_dp_hdcp_read_v_prime_part,
 	.toggle_signalling = intel_dp_mst_hdcp_toggle_signalling,
-	.check_link = intel_dp_mst_hdcp_check_link,
+	.check_link = intel_dp_hdcp_check_link,
 	.hdcp_capable = intel_dp_hdcp_capable,
 
 	.protocol = HDCP_PROTOCOL_DP,
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
