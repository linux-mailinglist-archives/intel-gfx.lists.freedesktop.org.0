Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGe+Awlr5mmBwAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 20:06:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B76432735
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 20:06:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D856110E726;
	Mon, 20 Apr 2026 18:05:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nyDTjNdv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
 [209.85.208.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4416310E2BE
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2026 14:14:51 +0000 (UTC)
Received: by mail-ed1-f52.google.com with SMTP id
 4fb4d7f45d1cf-671a827adccso1239138a12.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2026 07:14:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1776435289; x=1777040089; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9bE/23HHr5NxJFT3TiQRbeJBBfxsF0ZdYwl1CCK2/W0=;
 b=nyDTjNdvY9DPQhvvhbHh0ISYdpyWveO40DnoCDPn2llV7ItcRE4fifg4RmBVtB4Yq7
 8qsF2WoU9BjAWYxIPJDgce2H8KtxL79KpAViz67oZV+vAkAkN0jmY29oU5SVmK9mnMpR
 cl55bVb+By1+joCrCD6lBX9q6QuyFRo10JsAVNaMG/FhX6zLam4J9s9GXLJz2LPvOOB6
 aZgBtMZ6gwl14a0HAHBJ8O0eWfFb51GzIrAb8FSc/h3eWF76BdLjcByoR/9OqKbP6tyb
 YItEsjQOqA3j4teQsvUzSiGTlAETd0o3HfSM2/nvJac0cCmSfpJacKBDvklJ0PK7TgAk
 bCJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776435289; x=1777040089;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=9bE/23HHr5NxJFT3TiQRbeJBBfxsF0ZdYwl1CCK2/W0=;
 b=IBasuCG2e994QLesA+h5zS/9tXnnfWc1vNjQg0yaozMikzx+ViaL4379SjqJCnNsQo
 SXyDrGQkGwj60QIJy9TCVIsz2+YNqiHgY3JeXY4EuW1mXb7VWBoEsgAUbEUJ0bd9kYKY
 t+hCuqMlGq6rxZkMKXc9ywzyhAtsOOTC4V/LPOIeyzQh29BE3wEqw+DsuBwc0l/5GEYt
 ecq8xmkno4qL5JCC3jpYbi/EAMe//nM7kl4a7gChKSyOtzvFowiJsAvuAgckGCeEibfH
 0wEkpGiCIL3yv5dlivV9/L4vMlr6C7b3UjUojhTFHQPYwKh3Dexaclhf9cdrkWS5d8nB
 8SXQ==
X-Gm-Message-State: AOJu0YyXlY6fT0d/ERzHfXIfGMBpapRLdOzlBFt68qbpf1+bpOOoUaYM
 gx//o50Dsgcz4dvpSWtJwT29JvnZyQhQuV9UmYL3ZDsOigvDv4vVSP0HyMQ1K8xAvlJJlA==
X-Gm-Gg: AeBDiesBWhsKUVVcvs6VYrNacD31rxiF0E2H7R4B5s2PdOO9dPKSTuihuoGzQorllDY
 FC0uuGX71zqbw95sECdOWMrGj7luBseuGXGlkYjANmeit5LcEio5hh6TwgbCGO8/pV1Zgl2+vhL
 04dOyvoJ4dcj+ZskH6Ymlr21Jzyc78PruQb0KPIdijhFDyHn7x1de649Tk4s7r1y7skmlifiY+x
 A0M9je14AD0ZM7rrRD3/RoqspUr+syyDdobSUmUgdxfzh36I7NI8c0RSskwhx2pjIqIYMd2JFNq
 yr0TIqCXHv9M5jQcsEKdWVKZuedCZaX69p9ahapbf9hQholRWJbNuLgUTQA2cbShKrpkA/EB6bm
 2MjQzVghrgX1aTAAauqLxfbrgTEs0YcaQjRFS0+MUfKmsmeSu+42Na/8dSK/bxMTqXMKiyNTrU3
 5pq2L9I7iI4Vly2PIPCX+jSmbXO83Tbf6rVLmDncZqPRMJCmn5CfKzccWJUut/QHMR+41wSJk/N
 N8zLIP6jPjD
X-Received: by 2002:a05:6402:34cd:b0:672:c1b0:1f3d with SMTP id
 4fb4d7f45d1cf-672c1b020bcmr1345145a12.8.1776435289044; 
 Fri, 17 Apr 2026 07:14:49 -0700 (PDT)
Received: from JTOLLET-M-FKW7.cisco.com
 ([2603:5004:20a0:100c:b964:8d24:d15b:f122])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-672c4d455e9sm458744a12.14.2026.04.17.07.14.47
 (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
 Fri, 17 Apr 2026 07:14:48 -0700 (PDT)
From: Jerome Tollet <jerome.tollet@gmail.com>
X-Google-Original-From: Jerome Tollet <jtollet@cisco.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@linux.intel.com, ankit.k.nautiyal@intel.com,
 arun.r.murthy@intel.com, jani.nikula@linux.intel.com,
 Jerome Tollet <jtollet@cisco.com>
Subject: [PATCH v3] drm/i915/hdmi: Poll for 200 msec for TMDS_Scrambler_Status
Date: Fri, 17 Apr 2026 16:14:32 +0200
Message-ID: <20260417141432.7556-1-jtollet@cisco.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260113143107.1446909-1-ankit.k.nautiyal@intel.com>
References: <20260113143107.1446909-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 20 Apr 2026 18:05:58 +0000
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [0.19 / 15.00];
	DATE_IN_PAST(1.00)[75];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jerometollet@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 64B76432735
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

HDMI 2.0 section 6.1.3.1 specifies that after enabling
Scrambling_Enable and starting scrambled video transmission, the source
should poll Scrambling_Status until it reads 1 or until a timeout of
200 ms expires.

Add a polling step after enabling the HDMI port to check the scrambling
status when HDMI scrambling is enabled.

On some HDMI 2.0 sinks, omitting this check can result in 4K@60Hz
(594 MHz) failing to come up correctly because the sink has not yet
finished its scrambling setup. In practice, waiting for the scrambling
status here fixes such sinks.

While this synchronous polling is not itself explicitly required for
correct modeset sequencing, HDMI 2.0 section 6.1.3.1 does recommend it
as the way for the source to verify that the TMDS link is functioning
correctly with scrambling enabled.

v3:
 - Add explicit HDMI 2.0 section reference in code comment
 - Clarify commit message around the observed sink fix

v2:
 - Poll TMDS_Scrambler_Status for up to 200 ms instead of using a fixed
   delay

Reported-by: Jerome Tollet <jtollet@cisco.com>
Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/6868
Link: https://lore.kernel.org/dri-devel/20251230091037.5603-1-jerome.tollet@gmail.com/
Signed-off-by: Jerome Tollet <jtollet@cisco.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c  |  2 ++
 drivers/gpu/drm/i915/display/intel_hdmi.c | 25 +++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdmi.h |  2 ++
 3 files changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index cb91d07cdaa6..c708b713f0e8 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3506,6 +3506,8 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 	}

 	intel_ddi_buf_enable(encoder, buf_ctl);
+
+	intel_hdmi_poll_for_scrambling_enable(crtc_state, connector);
 }

 static void intel_ddi_enable(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 055e68810d0d..958d939ae6ee 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2694,6 +2694,31 @@ intel_hdmi_add_properties(struct intel_hdmi *intel_hdmi, struct drm_connector *_
 	drm_connector_attach_max_bpc_property(&connector->base, 8, 12);
 }

+/*
+ * HDMI 2.0 spec, section 6.1.3.1 (Scrambling Control): after
+ * enabling Scrambling_Enable and starting scrambled video
+ * transmission, poll Scrambling_Status for up to 200 ms.
+ */
+void
+intel_hdmi_poll_for_scrambling_enable(const struct intel_crtc_state *crtc_state,
+				      struct drm_connector *_connector)
+{
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_display *display = to_intel_display(crtc_state);
+	bool scrambling_enabled = false;
+	int ret;
+
+	if (!crtc_state->hdmi_scrambling)
+		return;
+
+	/* Poll for a max of 200 msec as per HDMI spec */
+	ret = poll_timeout_us(scrambling_enabled = drm_scdc_get_scrambling_status(&connector->base),
+			      scrambling_enabled, 1000, 200 * 1000, false);
+	if (ret)
+		drm_dbg_kms(display->drm,
+			    "[CONNECTOR:%d:%s] Timed out waiting for scrambling enable\n",
+			    connector->base.base.id, connector->base.name);
+}
+
 /*
  * intel_hdmi_handle_sink_scrambling: handle sink scrambling/clock ratio setup
  * @encoder: intel_encoder
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
index be2fad57e4ad..0fa3661568e8 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.h
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
@@ -70,5 +70,7 @@ void hsw_read_infoframe(struct intel_encoder *encoder,
 			const struct intel_crtc_state *crtc_state,
 			unsigned int type,
 			void *frame, ssize_t len);
+void intel_hdmi_poll_for_scrambling_enable(const struct intel_crtc_state *crtc_state,
+					   struct drm_connector *_connector);

 #endif /* __INTEL_HDMI_H__ */
--
2.45.2
