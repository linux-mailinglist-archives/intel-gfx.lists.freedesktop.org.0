Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A014582FF
	for <lists+intel-gfx@lfdr.de>; Sun, 21 Nov 2021 12:00:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E45C46F889;
	Sun, 21 Nov 2021 11:00:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB1F06F888
 for <intel-gfx@lists.freedesktop.org>; Sun, 21 Nov 2021 11:00:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1637492445;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IgULnvMSwRIKUdXNLle022hNoLVz3F4BZzdfd7xtIQU=;
 b=EEy4Ux41e319HLdqqyNK+sd/US1M7ZTsuLeJLtMoOX33zSG2DKgCFCb450YG5hOyFSrMsa
 K2VrS7nNuwN+IufqJep8aT/Yjg3wMH60o+T3o+lkAPY+OkeefP8GT/nKjFm/ShwZZ/Xab7
 oya6PmKu78BSb8m0EPDIeq5M1VN64H0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-287-6DdYqmsqPDecIAsD1UizGQ-1; Sun, 21 Nov 2021 06:00:41 -0500
X-MC-Unique: 6DdYqmsqPDecIAsD1UizGQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 891511006AA1;
 Sun, 21 Nov 2021 11:00:40 +0000 (UTC)
Received: from x1.localdomain (unknown [10.39.192.53])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0C0F95BAE0;
 Sun, 21 Nov 2021 11:00:38 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Lyude <lyude@redhat.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Sun, 21 Nov 2021 12:00:32 +0100
Message-Id: <20211121110032.4720-2-hdegoede@redhat.com>
In-Reply-To: <20211121110032.4720-1-hdegoede@redhat.com>
References: <20211121110032.4720-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/backlight: Make
 ext_pwm_disable_backlight() call intel_backlight_set_pwm_level()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

At least the Bay Trail LPSS PWM controller used with DSI panels on many
Bay Trail tablets seems to leave the PWM pin in whatever state it was
(high or low) ATM that the PWM gets disabled. Combined with some panels
not having a separate backlight-enable pin this leads to the backlight
sometimes staying on while it should not (when the pin was high during
PWM-disabling).

First calling intel_backlight_set_pwm_level() will ensure that the pin
is always low (or high for inverted brightness panels) since the passed
in duty-cycle is 0% (or 100%) when the PWM gets disabled fixing the
backlight sometimes staying on.

With the exception of ext_pwm_disable_backlight() all other
foo_disable_backlight() functions call intel_backlight_set_pwm_level()
already before disabling the backlight, so this change also aligns
ext_pwm_disable_backlight() with all the other disable() functions.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_backlight.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 03cd730c926a..2758a2f6c093 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -421,6 +421,8 @@ static void ext_pwm_disable_backlight(const struct drm_connector_state *old_conn
 	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
 	struct intel_panel *panel = &connector->panel;
 
+	intel_backlight_set_pwm_level(old_conn_state, level);
+
 	panel->backlight.pwm_state.enabled = false;
 	pwm_apply_state(panel->backlight.pwm, &panel->backlight.pwm_state);
 }
-- 
2.31.1

