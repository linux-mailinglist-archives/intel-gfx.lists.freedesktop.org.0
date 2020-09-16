Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB7926C5C2
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 19:19:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE97B6EA9A;
	Wed, 16 Sep 2020 17:19:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04AB96EA99
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 17:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1600276780;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rTE9cJznhR6LaB3O2iqpAeyWXzykJ8nKiYtplo0vYS8=;
 b=TYAiiaS6VRUYYvwZI2MloQ5pC4Z6mxubXM7TenAZNvWGKyR5ce38sbgXoSqrsuPLz0sj6m
 6ifH9CszlpEj1phGuBR6wmxO2XS5tKGGrXuHQh/HR5sBdttTjdXhpNs1uXZSTWN8zQB7ny
 7J8G/Z93H7xew+5uf0O+zq7DszZyOR8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-517-9a4H02IqNi-qBXHalpQL9Q-1; Wed, 16 Sep 2020 13:19:34 -0400
X-MC-Unique: 9a4H02IqNi-qBXHalpQL9Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C5EC880EF8C;
 Wed, 16 Sep 2020 17:19:30 +0000 (UTC)
Received: from Whitewolf.redhat.com (ovpn-120-66.rdu2.redhat.com
 [10.10.120.66])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E88BA1C4;
 Wed, 16 Sep 2020 17:19:27 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Sep 2020 13:18:48 -0400
Message-Id: <20200916171855.129511-2-lyude@redhat.com>
In-Reply-To: <20200916171855.129511-1-lyude@redhat.com>
References: <20200916171855.129511-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Subject: [Intel-gfx] [RFC v2 1/8] drm/i915/dp: Program source OUI on eDP
 panels
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
Cc: David Airlie <airlied@linux.ie>, open list <linux-kernel@vger.kernel.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 dri-devel@lists.freedesktop.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since we're about to start adding support for Intel's magic HDR
backlight interface over DPCD, we need to ensure we're properly
programming this field so that Intel specific sink services are exposed.
Otherwise, 0x300-0x3ff will just read zeroes.

We also take care not to reprogram the source OUI if it already matches
what we expect. This is just to be careful so that we don't accidentally
take the panel out of any backlight control modes we found it in.

v2:
* Add careful parameter to intel_edp_init_source_oui() to avoid
  re-writing the source OUI if it's already been set during driver
  initialization

Signed-off-by: Lyude Paul <lyude@redhat.com>
Cc: thaytan@noraisin.net
Cc: Vasily Khoruzhick <anarsoul@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 33 +++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4bd10456ad188..7db2b6a3cd52e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3424,6 +3424,29 @@ void intel_dp_sink_set_decompression_state(struct intel_dp *intel_dp,
 			    enable ? "enable" : "disable");
 }
 
+static void
+intel_edp_init_source_oui(struct intel_dp *intel_dp, bool careful)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	u8 oui[] = { 0x00, 0xaa, 0x01 };
+	u8 buf[3] = { 0 };
+
+	/*
+	 * During driver init, we want to be careful and avoid changing the source OUI if it's
+	 * already set to what we want, so as to avoid clearing any state by accident
+	 */
+	if (careful) {
+		if (drm_dp_dpcd_read(&intel_dp->aux, DP_SOURCE_OUI, buf, sizeof(buf)) < 0)
+			drm_err(&i915->drm, "Failed to read source OUI\n");
+
+		if (memcmp(oui, buf, sizeof(oui)) == 0)
+			return;
+	}
+
+	if (drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, oui, sizeof(oui)) < 0)
+		drm_err(&i915->drm, "Failed to write source OUI\n");
+}
+
 /* If the sink supports it, try to set the power state appropriately */
 void intel_dp_sink_dpms(struct intel_dp *intel_dp, int mode)
 {
@@ -3443,6 +3466,10 @@ void intel_dp_sink_dpms(struct intel_dp *intel_dp, int mode)
 	} else {
 		struct intel_lspcon *lspcon = dp_to_lspcon(intel_dp);
 
+		/* Write the source OUI as early as possible */
+		if (intel_dp_is_edp(intel_dp))
+			intel_edp_init_source_oui(intel_dp, false);
+
 		/*
 		 * When turning on, we need to retry for 1ms to give the sink
 		 * time to wake up.
@@ -4607,6 +4634,12 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
 	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
 		intel_dp_get_dsc_sink_cap(intel_dp);
 
+	/*
+	 * If needed, program our source OUI so we can make various Intel-specific AUX services
+	 * available (such as HDR backlight controls)
+	 */
+	intel_edp_init_source_oui(intel_dp, true);
+
 	return true;
 }
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
