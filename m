Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B614423600
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 04:41:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D9C06ECC9;
	Wed,  6 Oct 2021 02:41:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 833156ECC9
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 02:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1633488096;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=64onRLze/3RuttPrQP2IWN9iTtioZYpVLW0/Ok0yu/4=;
 b=BWTRnIQETPXmMhaeVnl6UfinP1IIXnZer/T1s3ayAHXXW1k4PA9T8qL63bw4cM+Z90b+oM
 YSIv/PJUbDhqdCakZhCLsgjDMNCa0lrKfVJRfvQQVdfc0fIJkvdieb8VR6Nsai6R0mHREG
 NofHf40hoXFAo5wfTAu/7iicVR/+mRs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-326-57NNSTfgP5mBoNet57pPCg-1; Tue, 05 Oct 2021 22:41:33 -0400
X-MC-Unique: 57NNSTfgP5mBoNet57pPCg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 09312835DEB;
 Wed,  6 Oct 2021 02:41:32 +0000 (UTC)
Received: from Ruby.lyude.net (unknown [10.22.16.47])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C66CC5FC13;
 Wed,  6 Oct 2021 02:41:30 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 nouveau@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 linux-kernel@vger.kernel.org (open list)
Date: Tue,  5 Oct 2021 22:40:16 -0400
Message-Id: <20211006024018.320394-4-lyude@redhat.com>
In-Reply-To: <20211006024018.320394-1-lyude@redhat.com>
References: <20211006024018.320394-1-lyude@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Subject: [Intel-gfx] [PATCH v3 3/5] drm/dp: Disable unsupported features in
 DP_EDP_BACKLIGHT_MODE_SET_REGISTER
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

As it turns out, apparently some machines will actually leave additional
backlight functionality like dynamic backlight control on before the OS
loads. Currently we don't take care to disable unsupported features when
writing back the backlight mode, which can lead to some rather strange
looking behavior when adjusting the backlight.

So, let's fix this by ensuring we only keep supported features enabled for
panel backlights - which should fix some of the issues we were seeing from
this on fi-bdw-samus.

Signed-off-by: Lyude Paul <lyude@redhat.com>
Fixes: 867cf9cd73c3 ("drm/dp: Extract i915's eDP backlight code into DRM helpers")
---
 drivers/gpu/drm/drm_dp_helper.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_dp_helper.c b/drivers/gpu/drm/drm_dp_helper.c
index 4d0d1e8e51fa..d9a7f07f42fd 100644
--- a/drivers/gpu/drm/drm_dp_helper.c
+++ b/drivers/gpu/drm/drm_dp_helper.c
@@ -3255,7 +3255,9 @@ int drm_edp_backlight_enable(struct drm_dp_aux *aux, const struct drm_edp_backli
 		return ret < 0 ? ret : -EIO;
 	}
 
-	new_dpcd_buf = dpcd_buf;
+	/* Disable any backlight functionality we don't support that might be on */
+	new_dpcd_buf = dpcd_buf & (DP_EDP_BACKLIGHT_CONTROL_MODE_MASK |
+				   DP_EDP_BACKLIGHT_FREQ_AUX_SET_ENABLE);
 
 	if ((dpcd_buf & DP_EDP_BACKLIGHT_CONTROL_MODE_MASK) != DP_EDP_BACKLIGHT_CONTROL_MODE_DPCD) {
 		new_dpcd_buf &= ~DP_EDP_BACKLIGHT_CONTROL_MODE_MASK;
@@ -3277,6 +3279,8 @@ int drm_edp_backlight_enable(struct drm_dp_aux *aux, const struct drm_edp_backli
 				    aux->name, ret);
 		else
 			new_dpcd_buf |= DP_EDP_BACKLIGHT_FREQ_AUX_SET_ENABLE;
+	} else {
+		new_dpcd_buf &= ~DP_EDP_BACKLIGHT_FREQ_AUX_SET_ENABLE;
 	}
 
 	if (new_dpcd_buf != dpcd_buf) {
-- 
2.31.1

