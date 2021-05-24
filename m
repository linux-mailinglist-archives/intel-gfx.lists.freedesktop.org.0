Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED70E38F1C1
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 18:48:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB9D56E8DA;
	Mon, 24 May 2021 16:47:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E5E86E8D5
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 16:47:52 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 u5-20020a7bc0450000b02901480e40338bso264467wmc.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 09:47:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=astier-eu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cFulLOXj3mZBbP4W72DWkmRMm2f9CvykYPFY+mOZJP0=;
 b=BSEi2aEPJ8q5P0sbLOi6kRfHHynyuq2U3PYBui3kN98vEeNgckbggTJWxScGqdgvPh
 38WjhJrMRbkLfaQzZ91Jo+ACf2OzJsjKW/DxPyq90ipXideSYyNq9VW3raAvVMizMeqL
 BfTTmUNV5wCeG+QbbldLc5WL0SO8fCIlMymmtseXfjJgEifkR8T8neF99SUmYbldVq7f
 xWdAzOv5/Q9gna9JTBG4gpnFJxOOHQ91atFmsAY8/zF9F1oLLC+UqhrbM7hkEgJNVy1M
 M5c/zP9rN9BDkZF3mLkKUOnBvc7i+/Nj+PCkrFYuZl36w8LCDdSj6lW/Ww3vS7f0CLvL
 oWLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cFulLOXj3mZBbP4W72DWkmRMm2f9CvykYPFY+mOZJP0=;
 b=Y0SVsiwbDUajq/az6BVy8iSTdk5eFKyxIg7f7M1GZi9mC4moZ2frz6x1hXZD+6nUid
 AH8bfWBaPSTpwvrDPrLeNIuR9KCzIiU34pKXkM0eiNSi006z8EcgyVIa7Xblf6W8Wi9P
 9hUCkAH7Z+lTp3A3Bvx9nowNxND4FGXkxhPnLcqhbFUDsWALeTD9oKFJ/ZJAAP28mbgg
 VIARgqtB1AIuX2mNyMAJ4JliVni/YHLemX4yrmXJQH2iCX39+w86rmxHrx6x3rYhnppx
 zllhn/iaqJBiNQYRyVeDbChbsZkO25xysfCqerVoXUAuZzy69CPg/Y1EjbLfsU98awTT
 Dcjg==
X-Gm-Message-State: AOAM530aKP2rImpK7fRRKfSHztqKcmZkA1LGty8zndral3vw9+F23wsk
 BkKuaAUGJK4uml8nkIOofNbDVOMB4Fqfzw==
X-Google-Smtp-Source: ABdhPJygaQUYN5BRBk8qSPniQ7xfsS02EtynEHMHhRl5kmit2Hp1qi2oHyFlju7HGEr/myXLZSPLtw==
X-Received: by 2002:a1c:a98d:: with SMTP id s135mr14202wme.147.1621874870900; 
 Mon, 24 May 2021 09:47:50 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:806:8950:61f0:1b3d:bc7a:1d60])
 by smtp.gmail.com with ESMTPSA id
 b10sm15226358wrr.27.2021.05.24.09.47.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 May 2021 09:47:50 -0700 (PDT)
From: Anisse Astier <anisse@astier.eu>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 24 May 2021 18:47:18 +0200
Message-Id: <20210524164719.6588-3-anisse@astier.eu>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210524164719.6588-1-anisse@astier.eu>
References: <20210524164719.6588-1-anisse@astier.eu>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/dp: use opregion mailbox #5 EDID
 for eDP, if available
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Jani Nikula <jani.nikula@intel.com>

If a panel's EDID is broken, there may be an override EDID set in the
ACPI OpRegion mailbox #5. Use it if available.

Fixes the GPD Win Max display.

Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Anisse Astier <anisse@astier.eu>

[Anisse changes: function name]
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5c9222283044..43fb485c0e02 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5191,6 +5191,9 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 		goto out_vdd_off;
 	}
 
+	/* Set up override EDID, if any, from ACPI OpRegion */
+	intel_opregion_edid_probe(intel_connector);
+
 	mutex_lock(&dev->mode_config.mutex);
 	edid = drm_get_edid(connector, &intel_dp->aux.ddc);
 	if (edid) {
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
