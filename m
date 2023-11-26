Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 051C47F9CE7
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 10:48:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 198C610E214;
	Mon, 27 Nov 2023 09:48:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61A9010E216
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Nov 2023 09:48:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="392420362"
X-IronPort-AV: E=Sophos;i="6.04,230,1695711600"; d="scan'208";a="392420362"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 01:48:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="717980635"
X-IronPort-AV: E=Sophos;i="6.04,230,1695711600"; d="scan'208";a="717980635"
Received: from igorban-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.43.74])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 01:48:02 -0800
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Mon, 27 Nov 2023 11:47:59 +0200
Resent-Message-ID: <8734wra5o0.fsf@intel.com>
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Mailbox Transport; Sun, 26 Nov 2023 13:42:18 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sun, 26 Nov 2023 13:42:17 -0800
Received: from fmsmga006.fm.intel.com (10.253.24.20) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Sun, 26 Nov 2023 13:42:17 -0800
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="1015356862"
X-IronPort-AV: E=Sophos;i="6.04,229,1695711600"; d="scan'208";a="1015356862"
Received: from orvoesa102.jf.intel.com ([10.18.183.142])
 by fmsmga006-1.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26
 Nov 2023 13:42:17 -0800
Authentication-Results: mgamail.intel.com; spf=None
 smtp.pra=sergeantsagara@protonmail.com; spf=Pass
 smtp.mailfrom=sergeantsagara@protonmail.com; spf=Pass
 smtp.helo=postmaster@mail-4316.protonmail.ch; dkim=pass (signature
 verified) header.i=@protonmail.com; dmarc=pass (p=quarantine dis=none)
 d=protonmail.com
IronPort-SDR: 6563bbb8_YzGK9p+LrGQqB5L44hXmBE523y/MJsVER99U2OVuR/RHCVM
 WIPcUvlHYSQX6+louOHJOzYaJBdyZPwQdefUrTw==
X-IPAS-Result: =?us-ascii?q?A0F9AABuumNlhxArRrlaHQEBAQEJARIBBQUBQIE8BwELA?=
 =?us-ascii?q?YI4OQFAVTEHCEgEhE+FcYofCAEBBoE8AQKLb4dNikWBfg8BAQEBAQEBAQEJO?=
 =?us-ascii?q?wkEAQEDBDcBhEeHKwIfBgEEMQgNAQECAQIBAQEBAQMCAQIBAQEBAQEDAQEBA?=
 =?us-ascii?q?gIBAQECAQECBAIBAQEBAhABAQEjFwcOECeFaA2CXAGBHIEeAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBHQINHz0BSAQZAQE3ATQCJgJygwABgikBAzEHAQysB38zgQGCCQEBBgQFA?=
 =?us-ascii?q?q9KFjUZgj4DBoEaLgGIDAGJFIEhG32BEIQOb4JKFwSBJYEGgw4Zgk+DboU6B?=
 =?us-ascii?q?4F7WYMoKY57f0dwGwMHA38PKwcELSIGCRQtIwZRBCghCRMSPgSDMwp/Pw8OE?=
 =?us-ascii?q?YI/IgI9NhlIglsVDDRKdhAqBBQXgRJuGxIeNxESFw0DCHQdAhEjPAMFAwQzC?=
 =?us-ascii?q?hINCyEFVgNFBkkLAwIaBQMDBIEzBQ0eAhAsKQMDEk0CEBQDOwMDBgMLMQMwV?=
 =?us-ascii?q?UQMTwNrHzYJPAsEDB8CGx4NJyUCMkIDCQoFEgIWAyQWBDgRCQsrAy8GOwITD?=
 =?us-ascii?q?AYGCTADRB1AAwttPTUUGwagS4NlAXsTLCIuBoE+kyqyHIQXjAKVCE2qBZhAi?=
 =?us-ascii?q?3KBdZptgWUCNoFccIM3EzwDGQ+OIAwNCYNWhRSKZUQyAgE4AgcLAQEDCYhuN?=
 =?us-ascii?q?IFAAQE?=
IronPort-PHdr: A9a23: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
IronPort-Data: A9a23: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
IronPort-HdrOrdr: A9a23:YP3wxKFU5dcGnwgupLqE/ceALOsnbusQ8zAXPo5KJiC9Ffbo8v
 xG/c5rtyMc7Qx7ZJhOo7q90da7IU80maQY3WBzB8bAYOCFggqVxehZhOPfKlbbdREWmNQx6Z
 td
X-Talos-CUID: 9a23:/8spQmEh/U1B//91qmIg9Xw1NMZ4WEeDllnvPVWfBD5zWqW8HAo=
X-Talos-MUID: =?us-ascii?q?9a23=3AhKkFIg5rHGcprlSvNKRBFdEwxowwwLmBLh4Csa8?=
 =?us-ascii?q?UopmNMyZqZzzajjeOF9o=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="5854362"
X-IronPort-AV: E=Sophos;i="6.04,229,1695711600"; 
   d="scan'208";a="5854362"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from mail-4316.protonmail.ch ([185.70.43.16])
 by mgamail.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Nov
 2023 13:42:16 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=protonmail3; t=1701034933; x=1701294133;
 bh=dL78TmTJretyAnQzWvm7zDVHx7kCj0XwyD/7fGgw/O4=;
 h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
 b=Qh6BtUByRqYH/QLMxTSPSyv3KeQcnaZu3ZIh4ZpOvMo92ve3As4JehNE9LoBFiBS8
 3GoMOqoKt5FwnzVG8RxOPivVBiJrPlKlF0YQf5GKJi1qyZ3RRVDwbpExmuoosId/zV
 d4hP5i4YVF8MzuWVmrJfoHEAWgP61lxLq09a1p5xhBztahZeW9SMo7HWUor91WzV0I
 dm0SIpUArNhrXyadnshOmh7vgZ865RmjvC1kn9QMjFibHlL3+fPUcnH/cc99oWYvpa
 BAjhsKzPypP24guPet3dHXgiRH1sM2RG+IIu0igFAEJ0DpF5/zsL56oRQWOGncyuFg
 nRgus22TVwBmw==
Date: Sun, 26 Nov 2023 21:42:01 +0000
To: intel-gfx@lists.freedesktop.org
From: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Message-ID: <20231126214142.102106-1-sergeantsagara@protonmail.com>
Feedback-ID: 26003777:user:proton
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-MS-Exchange-Organization-Network-Message-Id: c9146fee-8537-459c-3178-08dbeec88fc1
X-MS-Exchange-Organization-AVStamp-Enterprise: 1.0
X-MS-Exchange-Organization-AuthSource: fmsmsx601.amr.corp.intel.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-MS-Exchange-Transport-EndToEndLatency: 00:00:00.5243523
X-MS-Exchange-Processed-By-BccFoldering: 15.01.2507.034
MIME-Version: 1.0
X-TUID: R/sq+O4H9Ues
Subject: [Intel-gfx] [PATCH v2] drm/i915/irq: Improve error logging for
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
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---

Notes:
    Changes:
   =20
      v1->v2:
        - Change format specifier to pad minimum width
        - https://lore.kernel.org/intel-gfx/20231123175638.27650-1-sergeant=
sagara@protonmail.com/

 drivers/gpu/drm/i915/display/intel_display_irq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu=
/drm/i915/display/intel_display_irq.c
index bff4a76310c0..7c6f20cd951e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -896,7 +896,7 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_p=
riv, u32 iir)
 	}
=20
 	if (!found)
-		drm_err(&dev_priv->drm, "Unexpected DE Misc interrupt\n");
+		drm_err(&dev_priv->drm, "Unexpected DE Misc interrupt: 0x%08x\n", iir);
 }
=20
 static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_pr=
iv,
--=20
2.40.1


