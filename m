Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF5357F118
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Jul 2022 21:02:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7A76A97CF;
	Sat, 23 Jul 2022 19:02:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 638A7A97D2
 for <intel-gfx@lists.freedesktop.org>; Sat, 23 Jul 2022 19:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658602961; x=1690138961;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kcWDV30sJCi0U1S0OJvOB+/GCJAB7h5GOEZOfn/Ik3s=;
 b=ciSD2OZGMArf2Oh2dJGaT4BetBuqkvPPH0BpLu3BsODwK+q3gc78Eseo
 wMxEVrkrFdh0qGRsN2sbCBlFqKMCXQ8CrAgBRdLEez4t8k4zHeL/7bAHV
 zjH5zHhfrotOWGCl9shFXxMkY3ieszIU4P36I1Pqk6q6zFwIx9P61Cy9c
 q/mv6OZrgLsO77pCVUs/TKdxirJTy90djx/6rqi1aQygkirn8DC8qweFT
 706Hl9wH+i8m2S1C2V3vBE8k8FJ0K/HTn93+MF3eAnprc/wWL8mLJZYTV
 SkmGN4WtJOz8F9el0lHdGgAM1pBvduBGvNfSVSIzWHzTQp8KpzEUFMIIY A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10417"; a="286248828"
X-IronPort-AV: E=Sophos;i="5.93,189,1654585200"; d="scan'208";a="286248828"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2022 12:02:40 -0700
X-IronPort-AV: E=Sophos;i="5.93,189,1654585200"; d="scan'208";a="688611513"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2022 12:02:40 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 23 Jul 2022 12:03:27 -0700
Message-Id: <20220723190327.2700403-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] lib: Force rescan when module is loaded
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Whenever we load a drm module we need to force a rescan of igt devices
so we update the list. Otherwise any place trying to open the device and
then falling back to loading the driver and loading it, will not have a
proper fallback.  Currently this makes igt@i915_pm_rpm@module-reload
to skip on DG2 as the previous test makes igt@i915_pm_rpm to cause a
module reload.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 lib/drmtest.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/drmtest.c b/lib/drmtest.c
index 09a9a229..4f9d8a11 100644
--- a/lib/drmtest.c
+++ b/lib/drmtest.c
@@ -313,6 +313,7 @@ void drm_load_module(unsigned int chipset)
 		}
 	}
 	pthread_mutex_unlock(&mutex);
+	igt_devices_scan(true);
 }
 
 static int __open_driver(const char *base, int offset, unsigned int chipset, int as_idx)
-- 
2.37.1

