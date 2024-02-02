Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC89E846A98
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 09:23:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 423CE10E3CA;
	Fri,  2 Feb 2024 08:23:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux.microsoft.com header.i=@linux.microsoft.com header.b="JDQge6j0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 466A510E3CA
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 08:23:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="10844633"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="10844633"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 00:23:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'208";a="4598624"
Received: from mistoan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.140])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 00:23:12 -0800
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Fri, 02 Feb 2024 10:23:08 +0200
Resent-Message-ID: <87h6irff6b.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from orviesa009.jf.intel.com (ORVIESA009.jf.intel.com
 [10.64.159.149])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id CA6B2580DA8;
 Thu,  1 Feb 2024 22:44:08 -0800 (PST)
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'";a="5309"
Received: from orvoesa113.jf.intel.com ([10.18.183.153])
 by orviesa009-1.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 22:44:09 -0800
X-IPAS-Result: =?us-ascii?q?A0EoAAD9jrxlmLHS/INaGgEBAQEBAQEBAQEDAQEBARIBA?=
 =?us-ascii?q?QEBAgIBAQEBgg+CORkBYlaBCY1PiGkZmBSHGzIbAQEBAQEBAQEBCS4NBgECB?=
 =?us-ascii?q?AEBAwSDa4hrAiY4EwECBAEBAQEDAgECAQEBAQEBCAEBAQICAQEBAgEBBgMBA?=
 =?us-ascii?q?QEBAhABAQEBAQEBAR4ZBRAOJ4UvPQ2CNyUBEIEMSw0DBzwBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEFAg1cAQEeAQIDAQEBDhYZAQEEC?=
 =?us-ascii?q?ikBAgMBAgYBAUQBAwgDAScrBgESBYJ7AYJfAwMCDAajJgGHXQEBiiiBeTOBA?=
 =?us-ascii?q?YIKAQEGsR2BYQMGgUgBjHJXS4NBeicbgUlEelCCRG+BUok0ghmDP5VCSoEmA?=
 =?us-ascii?q?4EGbRsQHjcREAUODQMIbh0CESI6AwUDBDIKEgwLIQVVA0AGSQsDAhoFAwMEg?=
 =?us-ascii?q?TAFDRoCECwmAwMSSQIQFAM4AwMGAwoxMBo7QQxQA2cfGhgJPA8MGgIbGw0nI?=
 =?us-ascii?q?wIsQAMREAIWAyIWBDYRCQsmAyoGNgISDAYGBl0jFgkEJQMIBANUAyF0EQMEC?=
 =?us-ascii?q?gMUBwsHVCaDRwQTRAMQgTQGhVgDCQMHBUlAAwsYDUgRLBYfBg4bKB9vB5o4A?=
 =?us-ascii?q?YI8BwFcMSynMqBhhBuBYQyKGpUvATKqHy6HVYsChVAgi1aBd5VyhRGBeiMCg?=
 =?us-ascii?q?VozEwcjgzcTPxkPjiA4g0KFFIooAV0gNQIBATcCBwsBAQMJhUYBAYNZAYFGA?=
 =?us-ascii?q?QE?=
IronPort-PHdr: A9a23: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
IronPort-Data: A9a23:Kv/uJKIziVlV9+PsFE+R4pMlxSXFcZb7ZxGr2PjKsXjdYENS0TwFm
 DQYUTuPM/mIMWSkeNB2OY7n905SvJbcmIdhHVRorCE8RH9jl5H5CIXCJC8cHc8zwu4v7q5Dx
 5xGMrEs+ehtFie0SjGFbOa59RGQ8onRHuujUYYoAggoGUk+Dn1JZStLwYYRmpRvjcWyHzSDs
 Nbzp9y3EFK+0laYCEpNg064gE0p5KmaVA8w5ARkOagR5AWGzRH5MbpGTU2PByqgKmVrNrPiL
 wrz5OnR1n/U+R4rFuSknt7TGqHdauWKVeQmoiM+t5mK2nCulARrukoIHKN0hXNsttm8t4sZJ
 ONl7sXsFFhzbsUgr8xGO/VQO3kW0aSrY9YrK1Dn2SCY5xSun3cBWJyCpaz5VGEV0r8fPI1Ay
 RAXAB0sbk2jgNmw+oOcdbNLl+4mDfjMHqpK7xmMzRmBZRonaZ/KSaiM68VV0Ts9ncNSGu6YY
 NAWAdZtRE2bOlsVZw1RUstm2r732RETcBUAwL6RjaYt4i3fwRJ81P3nN8fTcdGRbcFUhVqD4
 Gzc8mn1DwoZKNuHjz2f/RpAg8eexXmhMG4UPJrhx/pSukfP/VNJNhA0Tn68rMmLj1HrDrqzL
 GRNpnV//PFaGFaQZvD7UweqrXzCnRcXQ8BXDPY56SmJy6zJ80CYAHQJSnhKb9lOnMY6TDls0
 16Sjdj7DD9HtLyTVGLb97GIoDf0Mi8QRUcLYyMFCxAF8sXiiIUyiA/fCNdlDKOxyNbyHFnYy
 iqDsik4i/MSgcIC0r624UzWqzatoIXZCA8z+gjTGGmi62tRZoeuao/u7VHE9+dGK5mYRUupu
 HkChtjY7eYSAJXLnyuIKM0PFbeoofCEMyDYiHZrHp8853Ks/WKuecZb5zQWDEVgNNsfa3nqe
 l3CohFN45FSP1OubKlqc8SwDdgnye7rEtGNfvLTadxHed51fQ+b/SdjY2aU3mbwgA4tl70yP
 dGQdsPEJXMTAqVqznyuTvsQ1bQ51yMWwWLVWIC9zhK73L7Yb3mQIZ8AOUaUaaYy7K6EqQ/99
 9dZKtvMyhNDXem4aS7SmaYVLEoPKml9CZntg8hWcPOTZAtgBGwlTfTWxNsJYJBsmaVOku7Xu
 H6nR1RKy1PXgXzBNBXMa3Z/ZbepVpF6xVonOiklJkTu3nk4fY+zxKMecYYnO7gh6OFni/VzS
 pEtZ9uaHvdIDCnd4CkZbJ/VqI1kaQTthASSMi7jaz86F7Z+RgjN95n/bxHt/S0HJi62s9Yu5
 bymyg7fB5EEQmxKHsbbbuOy0Hu1vH4AiKRzWVfFJp9Yf0CEzWRxAyP4hPJxLdsBJBnO3TiG0
 B7QBg0XzQXQn2Mr2PTohf2kqLyvKdpZIRB9DkPezIeRFwCPqwJP3rR8eOqPeDncUkb996Oje
 fhZwpnA3BsvwQoiX21UTuwD8E4u2+YDsYO22eiNIZkmR1uiAL4mLGOL0MVCra5RwacfvhG5M
 q5uxjW4EeXSUC8GOAdPTObAUghl/axP8tU1xalvSHgWHActoNK6vbx6ZnFgchB1IrpvK58Cy
 uw8osMQ4AHXokN1aojW13oIrDnWciZov0AbWncyXdODZu0DlwsqXHAgInWeDGynNYgRaRdCz
 sG82vKqa0tgKrrqKiZsRCmUtQasrYwJogxOxVkOb0+Vk8bIzuIx3QNc6y82UhU98/m0+7wbB
 4SfDGUsff/m124x3KBrBjn8cykfX0fx0hKqlDM0eJjxEhPAuprldjNtYI5gPSkxrgphQ9Ss1
 OrEkjm8AWu6LZGZM+lbcRcNlsEPhOdZr2XqsMSmGdmVWZw7aiDimaigeSwDrB6PPC/7rBSvS
 TVClAq7VUE32eP8bUH250l2GIn8kCy5GVE=
IronPort-HdrOrdr: A9a23:UoRs8KDSWv1P7brlHela55DYdb4zR+YMi2TDt3oadfWaSL38qy
 jN9M576faQslYssR4b6Le90cO7LU80y6QFlLX5UY3SPzUO/VHYVL2LA+PZskzd8wOXzJ8v6U
 5LSdkANDXIZWIK/foTCmGDYqQdKaC8gd6VbJnlvhFQpFpRGt1dBm5CY27xfSNLrUt9dOEE/b
 Wnl756TlGbCBAqh6qAdxs4tymqnaywqHufW29+O/apgDP+8A9AhYSWLySl
X-Talos-CUID: 9a23:LbPn1WG3UFxGMoWaqmJK1U5JOscedEfs60iKBF6SDEdYb5+8HAo=
X-Talos-MUID: 9a23:19GIkwWM/Ke7qR3q/Bi1tTVaDt002Jv0Nk0virABtvm2MDMlbg==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="9022"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'";a="9022"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from gabe.freedesktop.org ([131.252.210.177])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Feb 2024
 22:43:51 -0800
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
 by gabe.freedesktop.org (Postfix) with ESMTP id 41ECB10E6D2;
 Fri,  2 Feb 2024 06:43:49 +0000 (UTC)
X-Original-To: dri-devel@lists.freedesktop.org
Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3284C10E6D2
 for <dri-devel@lists.freedesktop.org>; Fri,  2 Feb 2024 06:43:48 +0000 (UTC)
Received: by linux.microsoft.com (Postfix, from userid 1134)
 id 4597320B2000; Thu,  1 Feb 2024 22:43:47 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 4597320B2000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1706856227;
 bh=yJ2N3/HVGxJA0MGmEiSpJS8Lev4/X5f6v9PbC3nQxsU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JDQge6j0N748zAX3m40uBjCAofdEIZ3yaeynY2aCazTw07uwLOJStak9RvU57N2nB
 xoyU8AZgWNF+KwYqVPJcCO3VOiAA3OGEzS2cgwoBZQ+GTMxR6EHoPlkGqkcOsWfgsQ
 DN0ZpUT6L7+m8E6ocHeGZSEiIkaw6wQKXDKzYCEo=
From: Shradha Gupta <shradhagupta@linux.microsoft.com>
To: linux-kernel@vger.kernel.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.dev>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 Saurabh Singh Sengar <ssengar@linux.microsoft.com>
Cc: Shradha Gupta <shradhagupta@linux.microsoft.com>,
 Shradha Gupta <shradhagupta@microsoft.com>
Subject: [PATCH v4, 2/2] drm: Check polling initialized before enabling in
 drm_helper_probe_single_connector_modes
Date: Thu,  1 Feb 2024 22:43:44 -0800
Message-Id: <1706856224-9725-1-git-send-email-shradhagupta@linux.microsoft.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1706856176-9483-1-git-send-email-shradhagupta@linux.microsoft.com>
References: <1706856176-9483-1-git-send-email-shradhagupta@linux.microsoft.com>
X-BeenThere: dri-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
X-TUID: MQb0PGOUII0D
MIME-Version: 1.0
Content-Type: text/plain
X-BeenThere: intel-gfx@lists.freedesktop.org
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

In function drm_helper_probe_single_connector_modes() when we enable
polling again, if it is already uninitialized, a warning is reported.
This patch fixes the warning message by checking if poll is initialized
before enabling it.

Reported-by: kernel test robot <oliver.sang@intel.com>
Closes: https://lore.kernel.org/oe-lkp/202401191128.db8423f1-oliver.sang@intel.com
Signed-off-by: Shradha Gupta <shradhagupta@linux.microsoft.com>
---
 Changes in v4
 * Clubbed this patch with similar patches and added a cover letter
---
 drivers/gpu/drm/drm_probe_helper.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_probe_helper.c b/drivers/gpu/drm/drm_probe_helper.c
index bd76603dc387..30e6063535cd 100644
--- a/drivers/gpu/drm/drm_probe_helper.c
+++ b/drivers/gpu/drm/drm_probe_helper.c
@@ -622,8 +622,12 @@ int drm_helper_probe_single_connector_modes(struct drm_connector *connector,
 					 0);
 	}
 
-	/* Re-enable polling in case the global poll config changed. */
-	drm_kms_helper_poll_enable(dev);
+	/*
+	 * Re-enable polling in case the global poll config changed but polling
+	 * is still initialized.
+	 */
+	if (dev->mode_config.poll_enabled)
+		drm_kms_helper_poll_enable(dev);
 
 	if (connector->status == connector_status_disconnected) {
 		DRM_DEBUG_KMS("[CONNECTOR:%d:%s] disconnected\n",
-- 
2.34.1

