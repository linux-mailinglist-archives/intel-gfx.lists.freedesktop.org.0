Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D2D3F6E7A
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 06:35:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 640EE6E14C;
	Wed, 25 Aug 2021 04:35:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEDFB6E14D
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 04:35:29 +0000 (UTC)
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com
 [209.85.210.199])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E7E263F316
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 04:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1629866127;
 bh=WVfbKewHZLqWbITzgLCPHNKWv+F2XUGievOPg9HDU4M=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=s2818a/o/y1QxIiUYcpwAfsJJ25nIuq9AktYS76uzEQtwMPzLluUQ21JCs6G5vakg
 cP+G0pM1ieP9xBjNHxFpilze7+Q4HbcTRP9SNmsxHTA3xT6A7ySNnqqh1m7KyndMBe
 kEoBBr+Djn6WNlf3v4gAg7zKFW2L9Hoe2hBlnc+kVBDWqJ3cgm7+Upqs0SvI1RjDln
 BQUdKeiLsgJf8OKVgOhNFhmJkAUFwpOveVFKWRcMmhQPGGixThgN4Q5LS2UySXompK
 CF2TmwM5+Nav7QPsMR9267UoXvQzFWwwaP2rmokJSEy1Wy5jTdqLnT1E7OdGBjNBSl
 xTqR9lKG5UMEQ==
Received: by mail-pf1-f199.google.com with SMTP id
 q15-20020a056a0002af00b003e2840527ceso11215024pfs.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Aug 2021 21:35:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WVfbKewHZLqWbITzgLCPHNKWv+F2XUGievOPg9HDU4M=;
 b=FtaNDKvyHLRn5O/pPwZUz9Didhhgw6K32JfP8knVpxNtDI96wErqodxMYWUmabaHzW
 ElYa1j0Qqk2UMbKSbjVY1qDZ9emHqKRs26YdXHTZhXr6rHar/vKJlciga8va0qzsxOwY
 98VpIxIfo+DcPM/G8EV0Yiii188t4lHtBd8f7lRfANrfLUwJj9lzd1RU5erYmc4jzNBL
 iXcK5+oXyR2RqfewIpafRpgIH62NMMNbYt93+jcNPPBrSY/aTy8CYYZIfGn+MPO+MErv
 trPSzF2l5qqzBDZpPAZxZlxRVU/Ooho2fSaGA4jjfl4UIAikPjwlNMX3jwvuTgLEvj5D
 6jlA==
X-Gm-Message-State: AOAM530x9CRlx8CnozvHio3Q2LZlbPcmNgHaH0r9oGGBgFYLg1LIKgnM
 sSKL28P4hLzWAB07+NCikJW6NK4R8YGVwVyoKHJrnHxByoldlTZYcdqDYt0uXdNh+q+k2aj4wk1
 QvmrAmQCWHSrxPDVXf53shcMwd8+33CNXD3QZXxHcCTI64g==
X-Received: by 2002:a17:90a:890a:: with SMTP id
 u10mr8100752pjn.40.1629866126184; 
 Tue, 24 Aug 2021 21:35:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzkdhSeNq+mPnqI0GDpDHzoTs/1ZcX+C+/0SlFjb+A/wxB36jqkK55FJt8JPtRKDkgPs9A71Q==
X-Received: by 2002:a17:90a:890a:: with SMTP id
 u10mr8100726pjn.40.1629866125822; 
 Tue, 24 Aug 2021 21:35:25 -0700 (PDT)
Received: from canonical.com (61-220-137-34.HINET-IP.hinet.net.
 [61.220.137.34])
 by smtp.gmail.com with ESMTPSA id r10sm20417995pff.7.2021.08.24.21.35.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Aug 2021 21:35:25 -0700 (PDT)
From: Koba Ko <koba.ko@canonical.com>
To: intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 jani.nikula@linux.intel.com
Date: Wed, 25 Aug 2021 12:35:22 +0800
Message-Id: <20210825043522.346512-2-koba.ko@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210825043522.346512-1-koba.ko@canonical.com>
References: <20210825043522.346512-1-koba.ko@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/amdgpu: Disable PCIE_DPM on Intel RKL
 Platform
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

AMD polaris GPUs have an issue about audio noise on RKL platform,
they provide a commit to fix but for SMU7-based GPU still
need another module parameter,

For avoiding the module parameter, switch PCI_DPM by determining
intel platform in amd drm driver.

Fixes: 1a31474cdb48 ("drm/amd/pm: workaround for audio noise issue")
Ref: https://lists.freedesktop.org/archives/amd-gfx/2021-August/067413.html
Signed-off-by: Koba Ko <koba.ko@canonical.com>
---
 .../drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c   | 21 ++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c b/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c
index 0541bfc81c1b..346110dd0f51 100644
--- a/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c
+++ b/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c
@@ -1733,6 +1733,25 @@ static int smu7_disable_dpm_tasks(struct pp_hwmgr *hwmgr)
 	return result;
 }
 
+#include <drm/intel_pch.h>
+
+static bool intel_tgp_chk(void)
+{
+	struct pci_dev *pch = NULL;
+	unsigned short id;
+
+	while ((pch = pci_get_class(PCI_CLASS_BRIDGE_ISA << 8, pch))) {
+		if (pch->vendor != PCI_VENDOR_ID_INTEL)
+			continue;
+
+		id = pch->device & INTEL_PCH_DEVICE_ID_MASK;
+		if (id == INTEL_PCH_TGP_DEVICE_ID_TYPE || INTEL_PCH_TGP2_DEVICE_ID_TYPE)
+			return true;
+	}
+
+	return false;
+}
+
 static void smu7_init_dpm_defaults(struct pp_hwmgr *hwmgr)
 {
 	struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
@@ -1758,7 +1777,7 @@ static void smu7_init_dpm_defaults(struct pp_hwmgr *hwmgr)
 
 	data->mclk_dpm_key_disabled = hwmgr->feature_mask & PP_MCLK_DPM_MASK ? false : true;
 	data->sclk_dpm_key_disabled = hwmgr->feature_mask & PP_SCLK_DPM_MASK ? false : true;
-	data->pcie_dpm_key_disabled = hwmgr->feature_mask & PP_PCIE_DPM_MASK ? false : true;
+	data->pcie_dpm_key_disabled = intel_tgp_chk() || !(hwmgr->feature_mask & PP_PCIE_DPM_MASK);
 	/* need to set voltage control types before EVV patching */
 	data->voltage_control = SMU7_VOLTAGE_CONTROL_NONE;
 	data->vddci_control = SMU7_VOLTAGE_CONTROL_NONE;
-- 
2.25.1

