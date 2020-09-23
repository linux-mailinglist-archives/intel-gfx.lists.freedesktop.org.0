Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D42872763A3
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 00:14:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9063E6EA09;
	Wed, 23 Sep 2020 22:14:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com
 [IPv6:2607:f8b0:4864:20::842])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DF5F8813A
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Sep 2020 22:14:05 +0000 (UTC)
Received: by mail-qt1-x842.google.com with SMTP id b2so1284036qtp.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Sep 2020 15:14:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X3ApEozWFxFPEkT4pOgr9mTr5Sg1ztsp/av9Mjkj1Sw=;
 b=YNAF3AOc+kJumURneV/wmshGQV/f6Uls/6tHXrMqqngxNBa7hx35p/aNYqDeRi7YH+
 OcMlDb5TJNNYXYN5sonARwTnUgSViSRqq+3iClM8BfY9TRvk9PPY91Cx4QCfbbssbQfC
 DusKVp5qlTj0SZDl+hJsJ66NMAwGCh92VpU//OiD8ntlsqQEpzGgEyiivE5VsXNz9Crn
 uqkBfDaFyEX8csZkC8ClRzbAeh1feuqtvK2qoJsmghF9FZ4vUKg+F+2vxYm2kpmPS9Qr
 whqM1IZ1f8FchTI0nOyRW7lwV6jfS9Q5RDq1a+N8U1dzfMSVsUuvf2YsrrO+/lAyOfE4
 bcNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X3ApEozWFxFPEkT4pOgr9mTr5Sg1ztsp/av9Mjkj1Sw=;
 b=EQn+VrqrH9sIp8AUGRIQaB9CtuuQAj+3rfQ4Uqehudu856mOWdJODsBHFBvvIy2Y5O
 LXDZ0ghymq1dWj1Q0SZ+11GN9W3vH8VWYggpQ6ONbrsDPc97U0GtvJ470WoTRvLcfOSA
 7QF5oVWZeSWnNtwfYOVPIVM/iJDieVKQseWKPWsKTIa6qwqXGaeXv5NRlJJ9uEX3VMSP
 bhT56A/PoUfDohtCFty9O3r2egsQSfsd+fB5MPAMsSpdYKptPWc5nrBkWUG8/fJWEHS1
 6QXvDjN4ApJ//tzpcv2Racc1IMnwz6O90JQulsOHcagylzVK9XbyCKtEPvld3d1mXznl
 p1Gg==
X-Gm-Message-State: AOAM531NzcXfo17MipskZRxKbP2ioMT2eCn/RWoKv8qFcAo76Bc3Mh6x
 tyMdMO9W9Rgvw7UNpLGzt5gigYqUenn0mQ==
X-Google-Smtp-Source: ABdhPJyc2yE9/ggeyzw0Ye3OgPn4pEC56vCRSQGB3v/4378O7XmlWTD7zNJaSFAAs49tC1xbqfZPBA==
X-Received: by 2002:ac8:1c75:: with SMTP id j50mr2460023qtk.70.1600899243748; 
 Wed, 23 Sep 2020 15:14:03 -0700 (PDT)
Received: from cheekon.pramanik.com ([2604:2000:2f80:1100:5a2:1440:32f3:3d13])
 by smtp.gmail.com with ESMTPSA id
 n203sm843281qke.66.2020.09.23.15.14.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Sep 2020 15:14:03 -0700 (PDT)
From: Satadru Pramanik <satadru@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Sep 2020 18:13:12 -0400
Message-Id: <20200923221312.2418628-2-satadru@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200923221312.2418628-1-satadru@gmail.com>
References: <20200923221312.2418628-1-satadru@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 1/1] Remove DPCD Aux Backlight Control
 PWM_PIN check
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Google Pixel Slate/Nocturne needs intel_dp_aux_display_control_capable
set for the DPCD backlight to work. (The display exposes PWM_PIN
capability, but the pin is not connected.) Disabling the check allows
backlight adjustment to work.

Signed-off-by: Satadru Pramanik <satadru@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index acbd7eb66..308b14159 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -334,8 +334,7 @@ intel_dp_aux_display_control_capable(struct intel_connector *connector)
 	 * the panel can support backlight control over the aux channel
 	 */
 	if (intel_dp->edp_dpcd[1] & DP_EDP_TCON_BACKLIGHT_ADJUSTMENT_CAP &&
-	    (intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP) &&
-	    !(intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_PWM_PIN_CAP)) {
+	    (intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP)) {
 		drm_dbg_kms(&i915->drm, "AUX Backlight Control Supported!\n");
 		return true;
 	}
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
