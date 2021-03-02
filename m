Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C33329D7E
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Mar 2021 13:00:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26B836E929;
	Tue,  2 Mar 2021 12:00:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A48C6E927
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Mar 2021 12:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614686449;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=B2vPrXe59bmywDP+UZG11m1SQ63ZRKSAqi3OadUPOdU=;
 b=UWw09as7mW6si9nfZYIIt3Do0scv+uaS76VJXD6HpS1igprSfQCcYFEsoM9lu+6KDeekSn
 rF+7733DjijPSmj7FQVclqBAnUi14QVqM9Rjx0U6vgwcnLPsfQeTHues0dYCNdoYfMSIwf
 CEXha14EKO7zoSw9gjD5fnan5UY+b78=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-482-fy8nSJrhPtSQqX499Re8Fg-1; Tue, 02 Mar 2021 07:00:46 -0500
X-MC-Unique: fy8nSJrhPtSQqX499Re8Fg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 64D9B835E30;
 Tue,  2 Mar 2021 12:00:45 +0000 (UTC)
Received: from x1.localdomain.com (ovpn-115-7.ams2.redhat.com [10.36.115.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 083C25D722;
 Tue,  2 Mar 2021 12:00:43 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Date: Tue,  2 Mar 2021 13:00:39 +0100
Message-Id: <20210302120040.94435-2-hdegoede@redhat.com>
In-Reply-To: <20210302120040.94435-1-hdegoede@redhat.com>
References: <20210302120040.94435-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-gfx] [PATCH resend 1/2] drm/i915/display: Add a
 intel_pipe_is_enabled() helper
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Factor the code to check if a pipe is currently enabled out of
assert_pipe() and put it in a new intel_pipe_is_enabled() helper,
so that it can be re-used without copy-pasting it.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 20 ++++++++++++++------
 drivers/gpu/drm/i915/display/intel_display.h |  2 ++
 2 files changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e1060076ac83..9cb304aee285 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -442,17 +442,13 @@ void assert_panel_unlocked(struct drm_i915_private *dev_priv, enum pipe pipe)
 	     pipe_name(pipe));
 }
 
-void assert_pipe(struct drm_i915_private *dev_priv,
-		 enum transcoder cpu_transcoder, bool state)
+bool intel_pipe_is_enabled(struct drm_i915_private *dev_priv,
+			   enum transcoder cpu_transcoder)
 {
 	bool cur_state;
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
 
-	/* we keep both pipes enabled on 830 */
-	if (IS_I830(dev_priv))
-		state = true;
-
 	power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
 	wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
 	if (wakeref) {
@@ -464,6 +460,18 @@ void assert_pipe(struct drm_i915_private *dev_priv,
 		cur_state = false;
 	}
 
+	return cur_state;
+}
+
+void assert_pipe(struct drm_i915_private *dev_priv,
+		 enum transcoder cpu_transcoder, bool state)
+{
+	bool cur_state = intel_pipe_is_enabled(dev_priv, cpu_transcoder);
+
+	/* we keep both pipes enabled on 830 */
+	if (IS_I830(dev_priv))
+		state = true;
+
 	I915_STATE_WARN(cur_state != state,
 			"transcoder %s assertion failure (expected %s, current %s)\n",
 			transcoder_name(cpu_transcoder),
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 0e4c1481fa00..642cc87f3e38 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -533,6 +533,8 @@ void intel_enable_pipe(const struct intel_crtc_state *new_crtc_state);
 void intel_disable_pipe(const struct intel_crtc_state *old_crtc_state);
 void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe);
 void i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe);
+bool intel_pipe_is_enabled(struct drm_i915_private *dev_priv,
+			   enum transcoder cpu_transcoder);
 enum pipe intel_crtc_pch_transcoder(struct intel_crtc *crtc);
 int vlv_get_hpll_vco(struct drm_i915_private *dev_priv);
 int vlv_get_cck_clock(struct drm_i915_private *dev_priv,
-- 
2.30.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
