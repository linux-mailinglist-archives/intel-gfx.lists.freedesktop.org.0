Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7831C46F65A
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 23:01:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A701E10E399;
	Thu,  9 Dec 2021 22:01:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AB1010E384
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 22:00:59 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id c4so12032560wrd.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Dec 2021 14:00:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=astier-eu.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EBT+Bo+JugjtZ2kT7aaQIcYQDl1vT3SMacbUPRi1MAo=;
 b=lYO2OMLCnPsA34QyK1y707HcmkT7ulqJpki5hB/a9c6SXnfYLwBPMlY8wnCZ2FMqgs
 HKVMRvJpcm7BrKlbUxe1XjG1NfTSMRTW6H/xkret/o4yQcvZk/Q7pI6XR2enfVo8hhxe
 sylBb7DczAwYKO5C9NNDnANBjO0OJv3CoimLQPjD3u6g2zBGxjKuOxOjygrgY69crtnN
 56hg0lIF81rd79EYkBk7PrBBL6+XY2xl54GP/DvNE4H644brYlCNRnp8s6KcVfdOYh5W
 26w3tnLG0VPN4D8gz7sXHg3mlBHhpUigOP97Ha9MTjbQT9+wceCKBKDACNJHFy4H9LYm
 aibg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EBT+Bo+JugjtZ2kT7aaQIcYQDl1vT3SMacbUPRi1MAo=;
 b=4VKL/8F43iXuMOBFvOph3015OXamCEfdHtIjapjwwMaE8HuNnk7o+Tnw5OF2del8BT
 GhjPLC0DXWjTg3VUkLr9TzSpDLHFk3sGF9oHS3znfEEaQoy+piVR59kL7ZK/fnNBK9x0
 jyKc/BGxK37yePs8YgjKzTUKWWE8CsxtTUGDSfdPvl47XTqIigVcC4CObQO94MoueMiV
 rhUv5YOfVlxtE3LeNIiH6iMS5mRrW5mxtPenppGyiXRgHWcRdFZ6roBtkl/Jxo77iY9G
 E1Vcv/wzPD44M3JMAxqrOfwmrHGcZHJdNj/QofdrswiZaNNZkRQtwD/+sT898+UwV69O
 WD3w==
X-Gm-Message-State: AOAM5331bi5Of/dMaMnvk+AhvjZgWr3W57hiIwz7cJ5VQulqRqUX+QA8
 OLWdF4lvIPCGuk2+gxEpsBXTXtULxspLLQ==
X-Google-Smtp-Source: ABdhPJzgv9ob3mqrAubTfgc38gMWaKYGzAlPKe67AqpZQk/iwcpEVi9zOicF3mEr4b7xaaSkGugUXg==
X-Received: by 2002:a05:6000:23a:: with SMTP id
 l26mr9568813wrz.215.1639087257809; 
 Thu, 09 Dec 2021 14:00:57 -0800 (PST)
Received: from gpdmax.. ([2a01:e0a:28f:75b0:cf6:c90f:f3b1:89c1])
 by smtp.gmail.com with ESMTPSA id f7sm1061524wri.74.2021.12.09.14.00.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Dec 2021 14:00:57 -0800 (PST)
From: Anisse Astier <anisse@astier.eu>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu,  9 Dec 2021 23:00:42 +0100
Message-Id: <20211209220042.310848-3-anisse@astier.eu>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211209220042.310848-1-anisse@astier.eu>
References: <20211209220042.310848-1-anisse@astier.eu>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 RESEND 2/2] drm: Add orientation quirk for
 GPD Win Max
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
Cc: Daniel Dadap <ddadap@nvidia.com>, Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Panel is 800x1280, but mounted on a laptop form factor, sideways.

Signed-off-by: Anisse Astier <anisse@astier.eu>
Reviewed-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/drm_panel_orientation_quirks.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/drm_panel_orientation_quirks.c b/drivers/gpu/drm/drm_panel_orientation_quirks.c
index 042bb80383c9..3dc383b1e2ba 100644
--- a/drivers/gpu/drm/drm_panel_orientation_quirks.c
+++ b/drivers/gpu/drm/drm_panel_orientation_quirks.c
@@ -174,6 +174,12 @@ static const struct dmi_system_id orientation_data[] = {
 		  DMI_EXACT_MATCH(DMI_PRODUCT_NAME, "MicroPC"),
 		},
 		.driver_data = (void *)&lcd720x1280_rightside_up,
+	}, {	/* GPD Win Max */
+		.matches = {
+		  DMI_EXACT_MATCH(DMI_SYS_VENDOR, "GPD"),
+		  DMI_EXACT_MATCH(DMI_PRODUCT_NAME, "G1619-01"),
+		},
+		.driver_data = (void *)&lcd800x1280_rightside_up,
 	}, {	/*
 		 * GPD Pocket, note that the the DMI data is less generic then
 		 * it seems, devices with a board-vendor of "AMI Corporation"
-- 
2.31.1

