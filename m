Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RU/vLzntH2oYsgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 11:00:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADC6635F0D
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 11:00:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=dLJJnzFK;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=bootlin.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17A46113C6B;
	Wed,  3 Jun 2026 09:00:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AF35113C5F;
 Wed,  3 Jun 2026 09:00:36 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-02.galae.net (Postfix) with ESMTPS id 27A701A37D1;
 Wed,  3 Jun 2026 09:00:35 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id EE76D5FD24;
 Wed,  3 Jun 2026 09:00:34 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 80C8510888CC5; 
 Wed,  3 Jun 2026 11:00:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1780477233; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=SWJLbwcw1LfuoUnP65FT41JauKFUhB7nEOh+Gt4WQSE=;
 b=dLJJnzFK0xuKU5smX78GcLw72hCR9Rf7iBilOH4NL8BPKQekXcEy/YH8lpyX1vFD548KSm
 NB4YXxMFI/0tFNp9Mo6kP3KtrnJszt9IolCxhPwtf1p5nLwHz6QM/A9CwNc090o/m8X/Nt
 HhpVHtNIJORCX1y/qs5NwU5Cf2rgdzz6yFGokKruyJ9WWmf5cC9o1jnoQL1kyuzpv2tiPh
 YOa2q3HlFxmIby9mxm4iyRjTi5AlouOat7vyfEtJuo6g9cj8xVG6dwAMzf5pfA2BQbP1Ir
 LkzRTp0XTgrgZAJIXs/tRPXQnmmZCqgMQqNHLuWhn6Fx/hPTkQVp/UpltjPk0w==
From: Kory Maincent <kory.maincent@bootlin.com>
Date: Wed, 03 Jun 2026 10:59:52 +0200
Subject: [PATCH 1/3] drm/i915/display/intel_sdvo: Fix double connector
 destroy in error paths
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260603-fix_i915-v1-1-7479ff64e705@bootlin.com>
References: <20260603-fix_i915-v1-0-7479ff64e705@bootlin.com>
In-Reply-To: <20260603-fix_i915-v1-0-7479ff64e705@bootlin.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Chris Wilson <chris@chris-wilson.co.uk>, 
 Eric Anholt <eric@anholt.net>, Dave Airlie <airlied@redhat.com>, 
 Jesse Barnes <jbarnes@virtuousgeek.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Louis Chauvet <louis.chauvet@bootlin.com>, 
 Mark Yacoub <markyacoub@google.com>, Sean Paul <seanpaul@google.com>, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 Simona Vetter <simona.vetter@ffwll.ch>, 
 Kory Maincent <kory.maincent@bootlin.com>, stable@vger.kernel.org
X-Mailer: b4 0.15.0
X-Last-TLS-Session-Version: TLSv1.3
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,chris-wilson.co.uk,anholt.net,redhat.com,virtuousgeek.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[kory.maincent@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:mid,bootlin.com:dkim,bootlin.com:from_mime,bootlin.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5ADC6635F0D

intel_sdvo_connector_funcs registers intel_connector_destroy() as the
.destroy callback. Once drm_connector_init_with_ddc() succeeds inside
intel_sdvo_connector_init(), the DRM core takes ownership of the
connector object and will call .destroy on teardown.

The error labels in intel_sdvo_tv_init() and intel_sdvo_lvds_init()
call intel_connector_destroy() explicitly before returning false,
causing it to be invoked twice: once in the error path and again by
the DRM core through the registered .destroy callback.

Remove the manual intel_connector_destroy() calls from the error labels
and return false directly instead.

Cc: stable@vger.kernel.org
Fixes: 32aad86fe88e7 ("drm/i915/sdvo: Propagate errors from reading/writing control bus.")
Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>
---

Not tested as I don't have such hardware.
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 16 ++++------------
 1 file changed, 4 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index d83d350959d88..0f3aa879e39e1 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2878,16 +2878,12 @@ intel_sdvo_tv_init(struct intel_sdvo *intel_sdvo, u16 type)
 	}
 
 	if (!intel_sdvo_tv_create_property(intel_sdvo, intel_sdvo_connector, type))
-		goto err;
+		return false;
 
 	if (!intel_sdvo_create_enhance_property(intel_sdvo, intel_sdvo_connector))
-		goto err;
+		return false;
 
 	return true;
-
-err:
-	intel_connector_destroy(connector);
-	return false;
 }
 
 static bool
@@ -2950,7 +2946,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, u16 type)
 	}
 
 	if (!intel_sdvo_create_enhance_property(intel_sdvo, intel_sdvo_connector))
-		goto err;
+		return false;
 
 	intel_bios_init_panel_late(display, &intel_connector->panel, NULL, NULL);
 
@@ -2972,13 +2968,9 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, u16 type)
 	intel_panel_init(intel_connector, NULL);
 
 	if (!intel_panel_preferred_fixed_mode(intel_connector))
-		goto err;
+		return false;
 
 	return true;
-
-err:
-	intel_connector_destroy(connector);
-	return false;
 }
 
 static u16 intel_sdvo_filter_output_flags(u16 flags)

-- 
2.43.0

