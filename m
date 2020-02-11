Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 247D31598C2
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 19:34:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 484A66F417;
	Tue, 11 Feb 2020 18:34:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E298E6F417
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 18:34:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581446067;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DSTAco2nQH8bLhCMiH/CLRNHDKaImhPirhNd4/I1epk=;
 b=TsCWKRldoJ39o13un+hI5v4XGuXFXjvkcf9uHY7Owcc06Z5tGoYyUCvOEyMD51JMdKhDHJ
 Z6Z7cvv+LiOOk1yw3mF3AYGPrU3yyHOhhyI8duch6Rg60yqWbXp93OZz064/h8AkgsDl4M
 KbAMrPjPhWGxW30QDeYmmdfaSr/6qAY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-392-pcvFksYKPkyhM3E5kpkvpQ-1; Tue, 11 Feb 2020 13:34:24 -0500
X-MC-Unique: pcvFksYKPkyhM3E5kpkvpQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3BA3D1137845;
 Tue, 11 Feb 2020 18:34:21 +0000 (UTC)
Received: from Ruby.bss.redhat.com (dhcp-10-20-1-196.bss.redhat.com
 [10.20.1.196])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2FC275C109;
 Tue, 11 Feb 2020 18:34:20 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 11 Feb 2020 13:33:48 -0500
Message-Id: <20200211183358.157448-4-lyude@redhat.com>
In-Reply-To: <20200211183358.157448-1-lyude@redhat.com>
References: <20200211183358.157448-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915: Force DPCD backlight mode for
 some Dell CML 2020 panels
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Jani Nikula <jani.nikula@intel.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@linux.ie>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

According to Dell, trying to match their panels via OUI is not reliable
enough and we've been told that we should check against the EDID
instead. As well, Dell seems to have some panels that are actually
intended to switch between using PWM for backlight controls and DPCD for
backlight controls depending on whether or not the panel is in HDR or
SDR mode. Yikes.

Regardless, we need to add quirks for these so that DPCD backlight
controls get enabled by default, since without additional driver support
that's the only form of brightness control that will work. Hopefully in
the future we can remove these quirks once we have a better way of
probing for this.

Changes since v1:
* Add one more EDID per Dell's request
* Remove model number (which is possibly wrong) and replace with Dell
  CML 2020 systems

Signed-off-by: Lyude Paul <lyude@redhat.com>
Cc: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_dp_helper.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/drm_dp_helper.c b/drivers/gpu/drm/drm_dp_helper.c
index a39c3cdacb20..620d78ff2706 100644
--- a/drivers/gpu/drm/drm_dp_helper.c
+++ b/drivers/gpu/drm/drm_dp_helper.c
@@ -1240,6 +1240,20 @@ static const struct edid_quirk edid_quirk_list[] = {
 	 * only supports DPCD backlight controls
 	 */
 	{ MFG(0x4c, 0x83), PROD_ID(0x41, 0x41), BIT(DP_QUIRK_FORCE_DPCD_BACKLIGHT) },
+	/*
+	 * Some Dell CML 2020 systems have panels support both AUX and PWM
+	 * backlight control, and some only support AUX backlight control. All
+	 * said panels start up in AUX mode by default, and we don't have any
+	 * support for disabling HDR mode on these panels which would be
+	 * required to switch to PWM backlight control mode (plus, I'm not
+	 * even sure we want PWM backlight controls over DPCD backlight
+	 * controls anyway...). Until we have a better way of detecting these,
+	 * force DPCD backlight mode on all of them.
+	 */
+	{ MFG(0x06, 0xaf), PROD_ID(0x9b, 0x32), BIT(DP_QUIRK_FORCE_DPCD_BACKLIGHT) },
+	{ MFG(0x06, 0xaf), PROD_ID(0xeb, 0x41), BIT(DP_QUIRK_FORCE_DPCD_BACKLIGHT) },
+	{ MFG(0x4d, 0x10), PROD_ID(0xc7, 0x14), BIT(DP_QUIRK_FORCE_DPCD_BACKLIGHT) },
+	{ MFG(0x4d, 0x10), PROD_ID(0xe6, 0x14), BIT(DP_QUIRK_FORCE_DPCD_BACKLIGHT) },
 };
 
 #undef MFG
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
