Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A54702730
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 10:31:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5882310E16E;
	Mon, 15 May 2023 08:31:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EAF010E16E
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 08:31:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="351178230"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="351178230"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 01:31:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="733785991"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="733785991"
Received: from lveltman-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.42.56])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 01:31:51 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Mon, 15 May 2023 11:31:49 +0300
Resent-Message-ID: <87a5y6j8qy.fsf@intel.com>
MIME-Version: 1.0
Received: from outlook.iglb.intel.com [10.4.20.123]
 by jnikula-mobl4.ger.corp.intel.com with IMAP (fetchmail-6.4.29)
 for <jani@localhost> (single-drop); Thu, 11 May 2023 21:08:30 +0300 (EEST)
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Mailbox Transport; Thu, 11 May 2023 10:54:57 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 11 May 2023 10:54:57 -0700
Received: from orsmga002.jf.intel.com (10.7.209.21) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 11 May 2023 10:54:57 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="699838485"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="699838485"
Received: from orsmga101.jf.intel.com ([10.7.208.22])
 by orsmga002-1.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11
 May 2023 10:54:54 -0700
Authentication-Results: mga02.intel.com; spf=None
 smtp.pra=krzysztof.kozlowski@linaro.org; spf=Pass
 smtp.mailfrom=krzysztof.kozlowski@linaro.org; spf=None
 smtp.helo=postmaster@mail-ej1-f46.google.com; dkim=pass (signature
 verified) header.i=@linaro.org; dmarc=pass (p=none dis=none) d=linaro.org
IronPort-SDR: 645d2beb_AxbknTx4+nCYcAp/zuDjF0At+ajO6zd3zlzmA30a4/ESdZk
 H/NGxXTJkMU6dLreJlN8yw6HQT8FvmZKjXjc1pA==
X-IPAS-Result: =?us-ascii?q?A0EdAAAUK11kfy7aVdFaHAEBAQEBAQcBARIBAQQEAQGBe?=
 =?us-ascii?q?wcBAQsBgVtSgUsvBFGMb6EmhVmBfg8BAQEBAQEBAQEIAUICBAEBAwSEf4VVA?=
 =?us-ascii?q?h0HAQQwCQ0BAQIBAgEBAQEBAwIBAgEBAQEBAQMBAQECAgEBAQIBAQIEAgEBA?=
 =?us-ascii?q?QECEAEBIhkHDg4phWgNgjcpAXWBCAEBAQEBAQEBAQEBAQEBAQEBAQEWAg17F?=
 =?us-ascii?q?iABDQEBNwGBFAEFASIBEiKCXIJdAwEEnzWBBEKMZYEBgggBAQYEAwIBnUSBX?=
 =?us-ascii?q?gkJAQiBMAGMD4RNgSEPgVVEgRWDaYQmM4YtmjKBMHKBJT9pgQQCCQIRaYEOC?=
 =?us-ascii?q?GeBc0ACDWQLC2yBQF1EgWoCAhFCDBVdAmoHFRIBEwMHBAKBFRAzBwQ8CwIiB?=
 =?us-ascii?q?gkfNy0GXwcZGCgJExVbB0MDCQMHBUlAAwsYDRY6ESw1Bg4gBicggQsYYwSBf?=
 =?us-ascii?q?woHJSScf4EOgkzEEjUHhAWBVQYMgnmcFBozlw6SPAEuhzOKYoVCIKdkAgoHB?=
 =?us-ascii?q?hAjgUA6gVxNMIMqTwMZD44giQeKKAE+PzQ7AgcLAQEDCYVghWYBAQ?=
IronPort-PHdr: A9a23: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
IronPort-Data: A9a23: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
 IT7qa2ogK12dKIpLftdRg==
IronPort-HdrOrdr: A9a23:92vqia5Ij2QnT6tmZAPXwPnXdLJyesId70hD6qm+c20xTiX+rb
 HUoB1/73XJYVkqKRYdcLy7Scq9qBDnhOZICPcqTNGftWDd0QPCTL2KhbGC/9SKIVybygcy79
 YDT0G8MrHN5JpB4PoSLDPWLz9Z+qj/zElgv4nj80s=
X-Talos-CUID: 9a23:Qu6rgWxoE5SkdB0x2SHRBgVNB+M/S36Cl06IDGnkMSFbbb+rYHKprfY=
X-Talos-MUID: 9a23:4fwsnAg2yX7QPmxBw90sScMpK+t52qO1BWc2rZBeuI6WNjJ0GyyGtWHi
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="339883443"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="339883443"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from mail-ej1-f46.google.com ([209.85.218.46])
 by mga02.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 May 2023
 10:54:50 -0700
Received: by mail-ej1-f46.google.com with SMTP id
 a640c23a62f3a-965d73eb65fso1444052066b.2
 for <jani.nikula@intel.com>; Thu, 11 May 2023 10:54:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1683827689; x=1686419689;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=3dlq4sG4E5pm3IY25Wn3oaOLMVxj4Utoc+XwNq0SQeU=;
 b=zcF1/Ws/4OoXcXk4fyWJoA+pbPzNn3xXFNF4A413OtzkLWT5PZ8gZwpLZ9jODIBrui
 4eTCb2LdiYr0snJDq06pgsGHfZg0pNINWFo6wTn44LrmXXtRccq9jhq5WkSyKn8zz/Gj
 jP7ZnlTVVHF5ecKGBI8yX0AchTpPBgNamj4qfDepR8Yi8PnZ8bQ/uMLon7Op/XxgAIfI
 GhasOTJW0jKy/ByTZ8d7D42hCrkbp9pitXSturWxC7EbvyPGtzZTB4ltLQu/55Zyujhn
 c4bUTF8L6wchp1WLjH09rwm4uvtdlKoBwhEs73KMxxTSE8/BNSG6o6UPk+ttqRinUn1E
 Q+sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683827689; x=1686419689;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=3dlq4sG4E5pm3IY25Wn3oaOLMVxj4Utoc+XwNq0SQeU=;
 b=JuZhvYdpW5Pu7o7xUCD1RMXWrF5vSxevYW63VagpFo+PUsmO9caxg/+mJZWBcmEnoa
 ycUwJskiW+qtd3oY0AZDpyFTukqlzQFByETgFnfrFFtzR7oOoaXI0WkDWeTG4uKt4vIe
 wE0ubfR1Ctg1wrHKOdelZnMJKblo7ilJufj/w8EeCpUWy5D8YVNY51m2mFzmM5J2p0p+
 YLNZV6s89DdTeXBGP5mgh9TwERGL6BQOOYZeRs1eoAHgl7pudbkFHA8JoNS3ofmlocHc
 E8BSqIBRCAtCQfpM/UubWxrLvfOisMW0V97CBOlzvqiPVgLzjBppO7U3q3NcN1GsYFoP
 Sxsw==
X-Gm-Message-State: AC+VfDwu2A58zvdOpGOHSdBie7QoDgeeAxyXJJEb3B4nbNA676s1Tnl0
 N+2SKxpydrqx3IFQTsZeiRAfAw==
X-Google-Smtp-Source: ACHHUZ6VoNaYXYwmtaJVqGTE2wbH3xSQkdxOFLD4+Wgd02+VwN425gTuigk39B2BJgNqhyiz3/j2DQ==
X-Received: by 2002:a17:907:5c5:b0:959:af74:4cf7 with SMTP id
 wg5-20020a17090705c500b00959af744cf7mr19074641ejb.70.1683827688874;
 Thu, 11 May 2023 10:54:48 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d7cd:1be6:f89d:7218])
 by smtp.gmail.com with ESMTPSA id
 i24-20020a1709067a5800b00965aee5be9asm4392763ejo.170.2023.05.11.10.54.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 May 2023 10:54:48 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Date: Thu, 11 May 2023 19:54:46 +0200
Message-Id: <20230511175446.282041-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
X-MS-Exchange-Organization-Network-Message-Id: d9002c5b-79c2-4e67-6273-08db5248d531
Content-Type: text/plain
X-MS-Exchange-Organization-AVStamp-Enterprise: 1.0
X-MS-Exchange-Organization-AuthSource: ORSMSX603.amr.corp.intel.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-MS-Exchange-Transport-EndToEndLatency: 00:00:00.5436817
X-MS-Exchange-Processed-By-BccFoldering: 15.01.2507.023
Subject: [Intel-gfx] [RESEND PATCH] drm/i915: constify pointers to
 hwmon_channel_info
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Statically allocated array of pointers to hwmon_channel_info can be made
const for safety.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/gpu/drm/i915/i915_hwmon.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index 8e7dccc8d3a0..e99e8c97ef01 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -267,7 +267,7 @@ static const struct attribute_group *hwm_groups[] = {
 	NULL
 };
 
-static const struct hwmon_channel_info *hwm_info[] = {
+static const struct hwmon_channel_info * const hwm_info[] = {
 	HWMON_CHANNEL_INFO(in, HWMON_I_INPUT),
 	HWMON_CHANNEL_INFO(power, HWMON_P_MAX | HWMON_P_RATED_MAX | HWMON_P_CRIT),
 	HWMON_CHANNEL_INFO(energy, HWMON_E_INPUT),
@@ -275,7 +275,7 @@ static const struct hwmon_channel_info *hwm_info[] = {
 	NULL
 };
 
-static const struct hwmon_channel_info *hwm_gt_info[] = {
+static const struct hwmon_channel_info * const hwm_gt_info[] = {
 	HWMON_CHANNEL_INFO(energy, HWMON_E_INPUT),
 	NULL
 };
-- 
2.34.1

