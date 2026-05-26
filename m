Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGYsExvKFWqQbgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 18:28:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1555D9AEF
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 18:28:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B1D210E1B7;
	Tue, 26 May 2026 16:28:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 489 seconds by postgrey-1.36 at gabe;
 Tue, 26 May 2026 16:28:08 UTC
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2665A10E1B7;
 Tue, 26 May 2026 16:28:08 +0000 (UTC)
Received: from abreu.molgen.mpg.de (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 801AD4C19741A2;
 Tue, 26 May 2026 18:19:35 +0200 (CEST)
From: Paul Menzel <pmenzel@molgen.mpg.de>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] drm/i915/audio: skip ELD query for force-off connectors
Date: Tue, 26 May 2026 18:19:24 +0200
Message-ID: <20260526161925.17041-1-pmenzel@molgen.mpg.de>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
X-Spamd-Result: default: False [0.39 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[mpg.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.988];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[molgen.mpg.de:mid,mpg.de:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: AE1555D9AEF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When a connector is forced off via the `video=` command-line parameter
(`video=<connector>:d`), `intel_audio_component_get_eld()` returns -EINVAL
for that port because `find_audio_state()` finds no active encoder.  The
audio driver interprets this as an error rather than a clean “no monitor
present” reply, and, on the Dell XPS 13 9360, at `drm.debug=0x04` the
repeated calls generate the log below:

    i915 0000:00:02.0: [drm:intel_audio_component_get_eld [i915]] Not valid for port B
    i915 0000:00:02.0: [drm:intel_audio_component_get_eld [i915]] Not valid for port B
    i915 0000:00:02.0: [drm:intel_audio_component_get_eld [i915]] Not valid for port B
    i915 0000:00:02.0: [drm:intel_audio_component_get_eld [i915]] Not valid for port C
    i915 0000:00:02.0: [drm:intel_audio_component_get_eld [i915]] Not valid for port C
    i915 0000:00:02.0: [drm:intel_audio_component_get_eld [i915]] Not valid for port C
    i915 0000:00:02.0: [drm:intel_audio_component_get_eld [i915]] Not valid for port D
    i915 0000:00:02.0: [drm:intel_audio_component_get_eld [i915]] Not valid for port D
    i915 0000:00:02.0: [drm:intel_audio_component_get_eld [i915]] Not valid for port D

Add `intel_audio_connector_is_forced_off()` which scans the connector list
to check whether any connector on the given port has
`force == DRM_FORCE_OFF`. When the caller finds no audio state and the
port’s connector is forced off, report `*enabled = false` and return 0 so
the audio driver sees a clean “not connected” answer and stops querying
that port.

With `video=DP-2:d drm.debug=0x04` the unneeded calls are gone (port C):

    [   90.458772] i915 0000:00:02.0: [drm:intel_audio_component_get_eld [i915]] Not valid for port B
    [   90.459649] i915 0000:00:02.0: [drm:intel_audio_component_get_eld [i915]] Not valid for port B
    [   90.460547] i915 0000:00:02.0: [drm:intel_audio_component_get_eld [i915]] Not valid for port B
    [   90.461581] i915 0000:00:02.0: [drm:intel_audio_component_get_eld [i915]] Not valid for port D
    [   90.462509] i915 0000:00:02.0: [drm:intel_audio_component_get_eld [i915]] Not valid for port D
    [   90.463385] i915 0000:00:02.0: [drm:intel_audio_component_get_eld [i915]] Not valid for port D

Assisted-by: Claude Sonnet 4.6
Signed-off-by: Paul Menzel <pmenzel@molgen.mpg.de>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 29 +++++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 081627e0d917..7864b9a485d5 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -36,6 +36,7 @@
 #include "intel_cdclk.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
+#include "intel_display.h"
 #include "intel_display_types.h"
 #include "intel_display_wa.h"
 #include "intel_lpe_audio.h"
@@ -1211,6 +1212,28 @@ static int intel_audio_component_sync_audio_rate(struct device *kdev, int port,
 	return err;
 }
 
+static bool intel_audio_connector_is_forced_off(struct intel_display *display,
+						int port)
+{
+	struct drm_connector_list_iter conn_iter;
+	struct intel_connector *connector;
+	bool forced_off = false;
+
+	drm_connector_list_iter_begin(display->drm, &conn_iter);
+	for_each_intel_connector_iter(connector, &conn_iter) {
+		struct intel_encoder *encoder = intel_attached_encoder(connector);
+
+		if (encoder && encoder->port == port &&
+		    connector->base.force == DRM_FORCE_OFF) {
+			forced_off = true;
+			break;
+		}
+	}
+	drm_connector_list_iter_end(&conn_iter);
+
+	return forced_off;
+}
+
 static int intel_audio_component_get_eld(struct device *kdev, int port,
 					 int cpu_transcoder, bool *enabled,
 					 unsigned char *buf, int max_bytes)
@@ -1223,9 +1246,13 @@ static int intel_audio_component_get_eld(struct device *kdev, int port,
 
 	audio_state = find_audio_state(display, port, cpu_transcoder);
 	if (!audio_state) {
+		mutex_unlock(&display->audio.mutex);
+		if (intel_audio_connector_is_forced_off(display, port)) {
+			*enabled = false;
+			return 0;
+		}
 		drm_dbg_kms(display->drm, "Not valid for port %c\n",
 			    port_name(port));
-		mutex_unlock(&display->audio.mutex);
 		return -EINVAL;
 	}
 
-- 
2.53.0

