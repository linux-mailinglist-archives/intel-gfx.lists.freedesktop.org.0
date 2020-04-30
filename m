Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBEA1C3391
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 09:19:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AE5A6E328;
	Mon,  4 May 2020 07:19:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40E526E328
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 07:19:39 +0000 (UTC)
IronPort-SDR: hojEcaIKcsvJBSM5iROsVG133wV5rQPXC8jqYPk3qLTvwMnIiTnjprOZQJSQOWTRWlS6a0caOP
 aJmPegL6HfXg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 00:19:38 -0700
IronPort-SDR: 2nJ22AZA9C1v4gmpUpPjYrF7Fjc1OJ0FOeaBnuFB31IxzV1eEwljiUKRTqVMlt8PmmrtouKRoc
 1oCidHNhOOMw==
X-IronPort-AV: E=Sophos;i="5.73,351,1583222400"; d="scan'208";a="434012935"
Received: from hshimoni-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.39.40])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 00:19:37 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Mon, 04 May 2020 10:19:34 +0300
Resent-Message-ID: <87imhc88vt.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by jnikula-mobl3 with IMAP (fetchmail-6.4.0.beta4)
 for <jani@localhost> (single-drop); Mon, 04 May 2020 07:49:23 +0300 (EEST)
Received: from fmsmga008.fm.intel.com (fmsmga008.fm.intel.com [10.253.24.58])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 30E29580613;
 Thu, 30 Apr 2020 14:47:30 -0700 (PDT)
IronPort-SDR: w4m1ps1XxAoEdBdfTwMWA4YTp2EVWPQX50AugY5Y8c1C5MhvCt3ikEWgnBvqsFzm/f0W8FKaL3
 TIl2jfbwnslLi5h17JHGHVzoB1oRHRlW0=
Received: from fmsmga104.fm.intel.com ([10.1.193.100])
 by fmsmga008-1.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 14:47:29 -0700
IronPort-SDR: YaoWt539q6RHIwJBjGsdMCfkOlkEzFjq5oG2PAzZJ3KOIXIE67oIkzgMgfgv16tmniHigG49Fo
 MMzvPY3t7mF9VnuQoA6QxeyfOwNQ/DM1Y=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0GnAwAjRqtedMLSVdFmHQEBAQEJARI?=
 =?us-ascii?q?BBQUBggeCfXAyGhCTIJYiJIcxAQEBAQEBAQEBBgEBExoCBAEBAoZ1JDgTAgM?=
 =?us-ascii?q?BAQsBAQEEAQEBAgEFBAICEAEKCwwHJ4VfDINUfgEBAQEBAQEBAQEBAQEBAQE?=
 =?us-ascii?q?BAQEBFQItVCkBNxULAQ0BOAEDDQUaZQEFATUigwSCTAMuBadJgQQ9jCczgwE?=
 =?us-ascii?q?FhRwoDWKBNwIHCQmBJoEShkmDSIEeGoIAhF+EFYNfgkwEkQWIRph5glCBA5Z?=
 =?us-ascii?q?7KYECjnmNGAGtJQIKBwYPI4FGgXkzGggbFYMkaA0ykBAMF4NPinYhMzYCBgg?=
 =?us-ascii?q?BAQMJWIwegkUB?=
X-IPAS-Result: =?us-ascii?q?A0GnAwAjRqtedMLSVdFmHQEBAQEJARIBBQUBggeCfXAyG?=
 =?us-ascii?q?hCTIJYiJIcxAQEBAQEBAQEBBgEBExoCBAEBAoZ1JDgTAgMBAQsBAQEEAQEBA?=
 =?us-ascii?q?gEFBAICEAEKCwwHJ4VfDINUfgEBAQEBAQEBAQEBAQEBAQEBAQEBFQItVCkBN?=
 =?us-ascii?q?xULAQ0BOAEDDQUaZQEFATUigwSCTAMuBadJgQQ9jCczgwEFhRwoDWKBNwIHC?=
 =?us-ascii?q?QmBJoEShkmDSIEeGoIAhF+EFYNfgkwEkQWIRph5glCBA5Z7KYECjnmNGAGtJ?=
 =?us-ascii?q?QIKBwYPI4FGgXkzGggbFYMkaA0ykBAMF4NPinYhMzYCBggBAQMJWIwegkUB?=
X-IronPort-AV: E=Sophos;i="5.73,337,1583222400"; d="scan'208";a="127832315"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 14:47:28 -0700
Received: by mail-pf1-f194.google.com with SMTP id r14so581911pfg.2;
 Thu, 30 Apr 2020 14:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VEoKjaxo4U/H7kyegfaqsoRet1MtFuSswC0UEQ4BGR4=;
 b=nbxQst+Vtu3ZTqPSC6mNSEZiYn4TaBwPFH1Cm9loSUDn0Cx4uD9L6qTjQJW2wDaBpe
 kOdXjfwrvhcDUIu4FmnufwEAmTUW/ojO1BI7gdzDrhOivb3PeoZLBPImO19WiedKgIOc
 PY8VxGUt+gb82ydshSG3lAwaux9OPL47OB3tXOLykmO6eeZ3tAi0FPitnsfVNNVfxjjH
 xvs1o9S3M4wWVV4vs1/kEr234iwPmYJixT5ZIL34ivF9hTIXf7DVbX+alwr2+h4OhtbS
 DCNMA0eTr4zcCzsJB+3bY9JJUxWQ8IaCBmVsYr3jKjJxyo22EzkCG1e7e/7+GmGyYnFw
 AvTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=VEoKjaxo4U/H7kyegfaqsoRet1MtFuSswC0UEQ4BGR4=;
 b=OEf0tCooiOCS/vc9AuG4uSlBVsLIwO2Bn9cFyGgBbIcdk/f/K3Bki7hNkUnPLnKSpz
 eU129UbOdWQEG6isDVK2SbLu+d48Zg3XTjej7NXOw+dCCno2ljLN7yBRTNPu29Wx0bZe
 sIbcjybpxzHgD9DGFbk116mcLbiKFwpaaWRKgEhnYGD/VMnVDcgYM/itPcaMUGuR9zhW
 6gM4TSpJFPf/PvC5AHAYlik/Uln6BT2Izq/horvbI98CCnH15G07mNWETdavAPGKnoFL
 cQx/M+R0xvKMwM0aICNnHyEvfUo07V3Bp1ORqYIH6ksgkjZmS8573NrGyCYrWWfBaoWQ
 g1Uw==
X-Gm-Message-State: AGi0PubBR3WUwIP4EXvk3M7aqZTGPCF1l7wZB7ARGiHvT2DGFqAVbrnZ
 aFMp4GvePoLrFtZ37PtAIzE=
X-Google-Smtp-Source: APiQypJLBHCI0Je+tTdRicNw26y1+Ew484sXuohXU4E0SDVCVIZZQM+F5FstoyxkeZxW8D7rvXbsmg==
X-Received: by 2002:a63:da02:: with SMTP id c2mr1027206pgh.22.1588283247850;
 Thu, 30 Apr 2020 14:47:27 -0700 (PDT)
Received: from sultan-box.localdomain ([104.200.129.62])
 by smtp.gmail.com with ESMTPSA id c2sm625854pfp.118.2020.04.30.14.47.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 14:47:26 -0700 (PDT)
From: Sultan Alsawaf <sultan@kerneltoast.com>
X-Google-Original-From: Sultan Alsawaf
To: 
Date: Thu, 30 Apr 2020 14:46:54 -0700
Message-Id: <20200430214654.51314-1-sultan@kerneltoast.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Don't enable
 WaIncreaseLatencyIPCEnabled when IPC is disabled
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
Cc: dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Sultan Alsawaf <sultan@kerneltoast.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sultan Alsawaf <sultan@kerneltoast.com>

In commit 5a7d202b1574, a logical AND was erroneously changed to an OR,
causing WaIncreaseLatencyIPCEnabled to be enabled unconditionally for
kabylake and coffeelake, even when IPC is disabled. Fix the logic so
that WaIncreaseLatencyIPCEnabled is only used when IPC is enabled.

Fixes: 5a7d202b1574 ("drm/i915: Drop WaIncreaseLatencyIPCEnabled/1140 for cnl")
Cc: stable@vger.kernel.org # 5.3.x+
Signed-off-by: Sultan Alsawaf <sultan@kerneltoast.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 8375054ba27d..a52986a9e7a6 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4992,7 +4992,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 	 * WaIncreaseLatencyIPCEnabled: kbl,cfl
 	 * Display WA #1141: kbl,cfl
 	 */
-	if ((IS_KABYLAKE(dev_priv) || IS_COFFEELAKE(dev_priv)) ||
+	if ((IS_KABYLAKE(dev_priv) || IS_COFFEELAKE(dev_priv)) &&
 	    dev_priv->ipc_enabled)
 		latency += 4;
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
