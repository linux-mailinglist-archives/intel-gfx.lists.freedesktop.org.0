Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 418907E9D9A
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 14:45:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D1C310E383;
	Mon, 13 Nov 2023 13:45:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4319B10E353;
 Mon, 13 Nov 2023 11:24:16 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 5b1f17b1804b1-4083dbc43cfso30655975e9.3; 
 Mon, 13 Nov 2023 03:24:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1699874655; x=1700479455; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JvPd1H+dWTCx2RVITrv+behT2FwWqNCuM6LTqdrhGms=;
 b=Lt6mjN/S5sFFwgaajjSalz9SsHzFKxdLcUNOYeJNLwr28vkjXN6U1wfXei5STnfOJn
 ZWdeQ6h/qDJfOiBw0xeFDPVt841befOtehYzly7buxGRgXz8BLg92pGMawPLewitIkC9
 xRCGhb/VCNuIaet/RC2ZrlpFfwV+XzvUj0yi7XtglyddW91OZoAiQgXOlcQua4KdMi2P
 h0kbPahfon9s7ZGRhjOOGUBE2g/yTaIg9zjImlmvIGE+Uzf1AveHeRTDE2nPSxopbpsp
 fwSwAT9xAoBVZVJPttBsNhui3dvI+WbnygRjraCWL3tp3FV5CubYzJU+vtLLlZtQhy0S
 QuuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699874655; x=1700479455;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=JvPd1H+dWTCx2RVITrv+behT2FwWqNCuM6LTqdrhGms=;
 b=SoWRfbn0Qr0Nm15vhr1RESqDsBVFZQfub6YZof4ucQI+4uSDR2DHHlYmacVQxozmGJ
 sYi0kVWtCbMI6zs9/dK+w4pnLUp9nBMwnjDvE1w/PEOYOFoFX3Mv6XfqnC6qTGQ4KSYX
 LzPbaImP5IGGhzAiEhEo4WJV20ZN1O0+K637Xzj9fQebRm5NQxRhboy9jj+kBlfgpi37
 o/OIek8PCXEPh3ZTtWB+TrIfRDgYfeGBPqbeXZLA6bJvUmWel7Zkvfj3m6BKaGd7Cdsv
 slMDFLwqU/fh23802UXZsTWQqjNGE8VOQpuSxpU4X90PAW84bZGi1eCDy9/+9RBb+bgE
 KFFA==
X-Gm-Message-State: AOJu0YyzGaxActCoRoILfXAf//+ibcvzav8Jf6SnUuCg5a7jb/frEsfo
 IXJ8OHttE0dqt31pbdfTPio=
X-Google-Smtp-Source: AGHT+IEP+gQ/J990DBm09WsofRknlQRFM+I5k3Yr34oHvEhPlK+QyTp3PDB57QWr/1O4qd8w6uHuiw==
X-Received: by 2002:a05:600c:4ecc:b0:408:40e2:773b with SMTP id
 g12-20020a05600c4ecc00b0040840e2773bmr5743943wmq.34.1699874654607; 
 Mon, 13 Nov 2023 03:24:14 -0800 (PST)
Received: from zotac.lan.
 (dynamic-2a01-0c22-6e16-fe00-2223-08ff-fe18-0310.c22.pool.telefonica.de.
 [2a01:c22:6e16:fe00:2223:8ff:fe18:310])
 by smtp.gmail.com with ESMTPSA id
 l19-20020a05600c4f1300b0040772138bb7sm13565787wmq.2.2023.11.13.03.24.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Nov 2023 03:24:14 -0800 (PST)
From: Heiner Kallweit <hkallweit1@gmail.com>
To: Wolfram Sang <wsa@kernel.org>,
	Jani Nikula <jani.nikula@linux.intel.com>
Date: Mon, 13 Nov 2023 12:23:39 +0100
Message-ID: <20231113112344.719-16-hkallweit1@gmail.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <20231113112344.719-1-hkallweit1@gmail.com>
References: <20231113112344.719-1-hkallweit1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 13 Nov 2023 13:45:43 +0000
Subject: [Intel-gfx] [PATCH 15/20] drivers/gpu/drm/i915/display: remove
 I2C_CLASS_DDC support
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-i2c@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>, Heiner Kallweit <hkallweit1@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

After removal of the legacy EEPROM driver and I2C_CLASS_DDC support in
olpc_dcon there's no i2c client driver left supporting I2C_CLASS_DDC.
Class-based device auto-detection is a legacy mechanism and shouldn't
be used in new code. So we can remove this class completely now.

Preferably this series should be applied via the i2c tree.

Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>

---
 drivers/gpu/drm/i915/display/intel_gmbus.c |    1 -
 drivers/gpu/drm/i915/display/intel_sdvo.c  |    1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 40d7b6f3f..e9e4dcf34 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -899,7 +899,6 @@ int intel_gmbus_setup(struct drm_i915_private *i915)
 		}
 
 		bus->adapter.owner = THIS_MODULE;
-		bus->adapter.class = I2C_CLASS_DDC;
 		snprintf(bus->adapter.name,
 			 sizeof(bus->adapter.name),
 			 "i915 gmbus %s", gmbus_pin->name);
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index a636f42ce..5e64d1baf 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -3311,7 +3311,6 @@ intel_sdvo_init_ddc_proxy(struct intel_sdvo_ddc *ddc,
 	ddc->ddc_bus = ddc_bus;
 
 	ddc->ddc.owner = THIS_MODULE;
-	ddc->ddc.class = I2C_CLASS_DDC;
 	snprintf(ddc->ddc.name, I2C_NAME_SIZE, "SDVO %c DDC%d",
 		 port_name(sdvo->base.port), ddc_bus);
 	ddc->ddc.dev.parent = &pdev->dev;

