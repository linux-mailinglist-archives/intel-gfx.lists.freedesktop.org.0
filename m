Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8827F68BC
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 22:40:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC5CD10E191;
	Thu, 23 Nov 2023 21:40:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88AFF10E191
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 21:40:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="456674367"
X-IronPort-AV: E=Sophos;i="6.04,222,1695711600"; d="scan'208";a="456674367"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2023 13:40:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,222,1695711600"; 
   d="scan'208";a="8951061"
Received: from rapetroa-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.74])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2023 13:40:03 -0800
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Thu, 23 Nov 2023 23:39:59 +0200
Resent-Message-ID: <87sf4wkv2o.fsf@intel.com>
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Mailbox Transport; Thu, 23 Nov 2023 09:57:19 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 23 Nov 2023 09:57:19 -0800
Received: from orsmga002.jf.intel.com (10.7.209.21) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 23 Nov 2023 09:57:19 -0800
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="767256984"
X-IronPort-AV: E=Sophos;i="6.04,222,1695711600"; d="scan'208";a="767256984"
Received: from fmsmga102.fm.intel.com ([10.1.193.69])
 by orsmga002-1.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23
 Nov 2023 09:57:18 -0800
Authentication-Results: mgamail.intel.com; spf=None
 smtp.pra=sergeantsagara@protonmail.com; spf=Pass
 smtp.mailfrom=sergeantsagara@protonmail.com; spf=Pass
 smtp.helo=postmaster@mail-4322.protonmail.ch; dkim=pass (signature
 verified) header.i=@protonmail.com; dmarc=pass (p=quarantine dis=none)
 d=protonmail.com
IronPort-SDR: 655f927e_qUrn8w4bP9XHotdm3uTv3qFO5/ay27RkmoXBApKqI3wPI3F
 0WSBkOkhQnr0phEgL1Opg6y/bSP3EidakTONxmA==
X-IPAS-Result: =?us-ascii?q?A0HkAgCEkV9lmBYrRrlaHgEBCxIMQIQIOQFAVTEHCEiEU?=
 =?us-ascii?q?4Vxih8KBoE8A4tvh02MQw8BAQEBAQEBAQEJOQsEAQEDBIR/hysCHwYBBDQTA?=
 =?us-ascii?q?QIBAgEBAQEBAwIBAgEBAQEBAQMBAQECAgEBAQIBAQIEAgEBAQECEAEBAQICH?=
 =?us-ascii?q?xkFDhAnhWgNglwBgRyBHgEBAQEBAQEBAQEBAR0CDR89AUgEGQEBNwE0AiYCc?=
 =?us-ascii?q?oMAAYIpAQMxBwEMsRF/M4EBggkBAQYEBQKvShY1GYI+AwaBGi6IDQGJFIEhG?=
 =?us-ascii?q?32BEIQOb4JKFwSBJYEGgw4Zgk+JJweBe1mDUY59f0dwGwMHA38PKwcELSIGC?=
 =?us-ascii?q?RQtIwZRBCghCRMSPgSDMQp/Pw8OEYI/IgI9NhlIglsVDDRKdhAqBBQXgRJuG?=
 =?us-ascii?q?xIeNxESFw0DCHQdAhEjPAMFAwQzChINCyEFVgNCBkkLAwIaBQMDBIE2BQ0eA?=
 =?us-ascii?q?hAsJwMDEk0CEBQDOwMDBgMLMQMwVUQMTwNuHzYJPAsEDB8CGx4NJyUCMkIDE?=
 =?us-ascii?q?QUSAhYDJBYEOBEJCysDLwY4AhMOBgYJLwNEHUADC209NRQbBqBEg2Z7EywiL?=
 =?us-ascii?q?gaUaLIchBeMApUITaoEAZhAjWeabYF6I4FccIM3TwMZD44gDA0Jg1aFFIplR?=
 =?us-ascii?q?DI7AgcLAQEDCYhuNIFAAQE?=
IronPort-PHdr: A9a23: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
 91dUxl6WxE1+g==
IronPort-Data: A9a23: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
 tVhD7bSyahFxI1sNGWq9Dg0
IronPort-HdrOrdr: A9a23:A0u43ahU48IyblLgunQRiKHWcnBQXs8ji2hC6mlwRA09TyVXra
 +TdZMgpHrJYVcqKRMdcLW7U5VoLkm3yXcL2+ks1NuZMDUO21HYT72Kj7GC/9SIIUSXygc378
 ldmsZFZeHNMQ==
X-Talos-CUID: 9a23:vc0GLmOGqOCyv+5DfBc+828RQZAeVSeH12fKPXWJVVs5R+jA
X-Talos-MUID: 9a23:K8ULzgldR3HSWCWl9bGrdnpTGNox6IPxInxcupUjkeSPaXxUIHS02WE=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="389456922"
X-IronPort-AV: E=Sophos;i="6.04,222,1695711600"; d="scan'208";a="389456922"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from mail-4322.protonmail.ch ([185.70.43.22])
 by mgamail.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Nov
 2023 09:57:17 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=protonmail3; t=1700762231; x=1701021431;
 bh=RAB1yX4J4AFDu+AUL8SRbdAkIAE3kfmtLuXGzMK+zdg=;
 h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
 b=UP1U6UaOB1DbRpVMueKdycFKMjr7Juj62B976ncAH4000oY5wSidHwE/xQ0u4oyjD
 ZWeKv6lU/c5TwL52Hz/LIMn+Tlefm59QgWZI8YWjmT2dK7/4bKgh/4P1yb45Z5HhwK
 tiqoDHySEd79Gb4xr8S1RURZzxXlgDqFR8/935KLUXqkjXw5/f7aKfqcsoXhqaM7/L
 JaNEKgzVL6tlyFXsRGEKwpq/X/uEv48o4pK7jmYlNzwrzyXO+cOk4Q2y6Mj2LJG6s8
 2h0KLoI6EndtLmJU6eDq+BW+YHaiAgg2LXTvjTRMj6gyzGpb5+vTHPda9DhVdiE87c
 oxgD9DI84fT6Q==
Date: Thu, 23 Nov 2023 17:56:53 +0000
To: intel-gfx@lists.freedesktop.org
From: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Message-ID: <20231123175638.27650-1-sergeantsagara@protonmail.com>
Feedback-ID: 26003777:user:proton
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-MS-Exchange-Organization-Network-Message-Id: ea92c037-950b-469d-4f6d-08dbec4da2df
X-MS-Exchange-Organization-AVStamp-Enterprise: 1.0
X-MS-Exchange-Organization-AuthSource: ORSMSX603.amr.corp.intel.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-MS-Exchange-Transport-EndToEndLatency: 00:00:00.7102019
X-MS-Exchange-Processed-By-BccFoldering: 15.01.2507.034
MIME-Version: 1.0
X-TUID: uf8f5vCd3g81
Subject: [Intel-gfx] [PATCH] drm/i915/irq: Improve error logging for
 unexpected DE Misc interrupts
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
Cc: Jani Nikula <jani.nikula@intel.com>, dri-devel@lists.freedesktop.org,
 Rahul Rameshbabu <sergeantsagara@protonmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Dump the iir value in hex when the interrupt is unexpected.

Link: https://gitlab.freedesktop.org/drm/intel/-/issues/9652#note_2178501
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Rahul Rameshbabu <sergeantsagara@protonmail.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu=
/drm/i915/display/intel_display_irq.c
index bff4a76310c0..1a5a9e0fc01e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -896,7 +896,7 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_p=
riv, u32 iir)
 	}
=20
 	if (!found)
-		drm_err(&dev_priv->drm, "Unexpected DE Misc interrupt\n");
+		drm_err(&dev_priv->drm, "Unexpected DE Misc interrupt: %#x\n", iir);
 }
=20
 static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_pr=
iv,
--=20
2.40.1


