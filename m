Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 728821308E2
	for <lists+intel-gfx@lfdr.de>; Sun,  5 Jan 2020 16:51:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA84189F4F;
	Sun,  5 Jan 2020 15:51:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1CFE89BC2
 for <intel-gfx@lists.freedesktop.org>; Sun,  5 Jan 2020 15:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578239488;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=x6OIc3pQ7ZIqC43FPRqB/KljWv+B3xg16y0Q8vkdWPs=;
 b=Xe25UdZhl18cn8TmhN0S7Dnmj3KbGR57dBJ25B+my5aUaBNUjdNjUZR8EJ45T77HqZB2Xf
 iIYeg0EIqRS0gQZLM2SjHQ9W5fb7G4H+CVZW9q/NNJsOqnoJsJTfzgG7RSJ6DewUzjctXv
 m3h3p9qwsad4hivsotezjDVCWZpa8H0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-421-QZjMdC_rP7aACaHtandOIQ-1; Sun, 05 Jan 2020 10:51:27 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CC6AD801E70;
 Sun,  5 Jan 2020 15:51:25 +0000 (UTC)
Received: from shalem.localdomain.com (ovpn-116-82.ams2.redhat.com
 [10.36.116.82])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5D5475D9CD;
 Sun,  5 Jan 2020 15:51:24 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Sun,  5 Jan 2020 16:51:20 +0100
Message-Id: <20200105155120.96466-2-hdegoede@redhat.com>
In-Reply-To: <20200105155120.96466-1-hdegoede@redhat.com>
References: <20200105155120.96466-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: QZjMdC_rP7aACaHtandOIQ-1
X-Mimecast-Spam-Score: 0
Subject: [Intel-gfx] [PATCH v2 2/2] drm/connector: Hookup the new
 drm_cmdline_mode panel_orientation member (v2)
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
 Maxime Ripard <mripard@kernel.org>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If the new video=... panel_orientation option is set for a connector, honor
it and setup a matching "panel orientation" property on the connector.

Changes in v2:
-Improve DRM_INFO message to make it clear that the panel_orientation is
 being forced from the commandline

BugLink: https://gitlab.freedesktop.org/plymouth/plymouth/merge_requests/83
Acked-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/drm_connector.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index de5031c4aa49..f632ca05960e 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -140,6 +140,13 @@ static void drm_connector_get_cmdline_mode(struct drm_connector *connector)
 		connector->force = mode->force;
 	}
 
+	if (mode->panel_orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN) {
+		DRM_INFO("cmdline forces connector %s panel_orientation to %d\n",
+			 connector->name, mode->panel_orientation);
+		drm_connector_set_panel_orientation(connector,
+						    mode->panel_orientation);
+	}
+
 	DRM_DEBUG_KMS("cmdline mode for connector %s %s %dx%d@%dHz%s%s%s\n",
 		      connector->name, mode->name,
 		      mode->xres, mode->yres,
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
