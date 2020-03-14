Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE80185633
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Mar 2020 19:34:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83D7B6E081;
	Sat, 14 Mar 2020 18:34:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D1F76E090
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Mar 2020 18:34:03 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id y2so742660wrn.11
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Mar 2020 11:34:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8w9+uaVURRiYxmhohjR129fp09I/SVc4Cru3C+YhrWA=;
 b=P6Fh5qUF4IgbFyyhpnClf9zt8CvL9ZyZ77l23xOAskJGe96XE6bHWGXK6x6c2QOTCQ
 yUJNT6/AqIPEP+mVC97O+PqAPB53sjocvHNv1vEDwbQ7mxZZvek27nwJai22csi2TZ6f
 Dhg6erNGQ94jNmnXWmZIZN7L5Poh1BapEupK1PUr/tOAEdUb7PX0zNZ/IoJiCKXR5DZ1
 qGUU1qLYitgXJxh0/+Td4XT5lDWpq8cBo2atgZZdMFM136LSZPq6eP+6bheG36hvFgwo
 eRbNL1LjUMdcRSmiSbNW47lgQ6C77F1XsmHCId7MzzIl7SukJnDjLRce9WPRv/jn0Tip
 Pmfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8w9+uaVURRiYxmhohjR129fp09I/SVc4Cru3C+YhrWA=;
 b=jXaeQE9hOI5abNQs42lbD4BoL20XvmhHKs82yDKYrpaKTcyB0az5Hh8c/IoVwLD94V
 kuo9shNwXAlLVgwXaWxalBJZqxv4w+jRpfmPNU2E5ROv0RVJood2Ntvis00hbOfNVkdY
 ZqK+0zhM6HhbU6e2viZ9IFpPu8ySG2D4+TOetPkBQnxXkK8SlPed1XrXkkQdO24ZsWwY
 JRT43069d4XzZo8Nql6VhN02ckPJi94HgapyJqbRzrp3C3/3+8DBLVLVK5MeoCZLoFto
 G65zTcpwbFRxVunRgnMx3Z7ZbJPawqI1ovD4WPCnwR/tKnvCmF04DzDQHPH1meoY9x9R
 I7pA==
X-Gm-Message-State: ANhLgQ3Uw93S7bkhyClKT/PUHwv4bBEGrp1V3zDEdTZ23KNSdHr84Yc6
 e9NyUMHastR0kpUDNVmTUuI=
X-Google-Smtp-Source: ADFU+vv5YieRyaglDAKl4N5pVIkG/uV4rkHeU9iiGROi9sl/3c1DqPsbi7t5TSHoSoqBaqL/bVG4NA==
X-Received: by 2002:a5d:484d:: with SMTP id n13mr10772026wrs.179.1584210841755; 
 Sat, 14 Mar 2020 11:34:01 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id
 s127sm22450820wmf.28.2020.03.14.11.33.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Mar 2020 11:34:01 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Sat, 14 Mar 2020 21:33:41 +0300
Message-Id: <20200314183344.17603-5-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200314183344.17603-1-wambui.karugax@gmail.com>
References: <20200314183344.17603-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/renderstate: use struct drm_device
 based logging macros.
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Replace the use of the printk based drm logging macros with the struct
drm_device based logging macros.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/gt/intel_renderstate.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_renderstate.c b/drivers/gpu/drm/i915/gt/intel_renderstate.c
index 5954ecc3207f..26e78db33675 100644
--- a/drivers/gpu/drm/i915/gt/intel_renderstate.c
+++ b/drivers/gpu/drm/i915/gt/intel_renderstate.c
@@ -102,7 +102,7 @@ static int render_state_setup(struct intel_renderstate *so,
 	}
 
 	if (rodata->reloc[reloc_index] != -1) {
-		DRM_ERROR("only %d relocs resolved\n", reloc_index);
+		drm_err(&i915->drm, "only %d relocs resolved\n", reloc_index);
 		goto err;
 	}
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
