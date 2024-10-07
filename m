Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F20509987F8
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 15:41:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 939D210E8FB;
	Thu, 10 Oct 2024 13:41:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lh3VnJaW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82B1110E8FB
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2024 13:41:03 +0000 (UTC)
X-CSE-ConnectionGUID: EAH+ESyCRpK+m22Bqfhj5w==
X-CSE-MsgGUID: YBcPMZ08T+eCw4Xvqh3cGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="39314177"
X-IronPort-AV: E=Sophos;i="6.11,193,1725346800"; d="scan'208";a="39314177"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 06:41:04 -0700
X-CSE-ConnectionGUID: hbQ13Z9SS5ayiTtAFHMeAQ==
X-CSE-MsgGUID: zSReTGylQfahVdofbwVWWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,193,1725346800"; d="scan'208";a="114064321"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 06:41:03 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Thu, 10 Oct 2024 16:40:59 +0300
Resent-Message-ID: <875xq06pp0.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from mta01.ostc.intel.com (unknown [10.54.63.101])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id CF8DF20B8CFF;
 Tue,  8 Oct 2024 09:07:18 -0700 (PDT)
Received: from fmviesa004.fm.intel.com (fmviesa004.fm.intel.com
 [10.60.135.144])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta01.ostc.intel.com (Postfix) with ESMTPS id AE8C48F87D3;
 Mon,  7 Oct 2024 10:34:10 -0700 (PDT)
X-CSE-ConnectionGUID: EkUFGapUTqyDti3PvG1nZw==
X-CSE-MsgGUID: iUDPqkZbQFGu1zOqhY9mrA==
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="80158917"
Received: from fmvoesa105.fm.intel.com ([10.64.2.15])
 by fmviesa004-1.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 10:33:10 -0700
X-CSE-ConnectionGUID: Sil/FNIhRua2UZPx+sVE4w==
X-CSE-MsgGUID: e6K0ZuV2Sg2VBx3Q8mpP/A==
Authentication-Results: mtab.intel.com; spf=None
 smtp.pra=prosunofficial@gmail.com; spf=Pass
 smtp.mailfrom=prosunofficial@gmail.com; spf=None
 smtp.helo=postmaster@mail-pj1-f45.google.com; dkim=pass (signature
 verified) header.i=@gmail.com; dmarc=pass (p=none dis=none) d=gmail.com
IronPort-SDR: 67041b55_LsltXNQKYsByYhV6KAch1DXWQt/0quvOyMEqtqYLWixxVEg
 rX0JorHkF8w1khZEKDi7KtOozMhTMKjF4MIdmKw==
X-ThreatScanner-Verdict: Negative
X-IPAS-Result: =?us-ascii?q?A0GeAwBwGgRnfy3YVdFaHgEBCxIMggQLgXJSfVozBFMEq?=
 =?us-ascii?q?g2KTYFAPg8BAQEBAQEBAQEHAQE5CQIEAQEDBDcBhEiKGgIeBwEEMAkOAQIBA?=
 =?us-ascii?q?gEBAQEBAwIBAgEBAQEBAQEBAQUBAQECAgEBAQIBAQIEAwEBAQECEAEBIhkHD?=
 =?us-ascii?q?hIphXsNgmMBgSRhAgUDOwEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQUCDR9hFhULAQ0BGx0BAxIQWwIRAQUBIgEKCCKCXwGCLwEDMQMBB?=
 =?us-ascii?q?AwGoS+BBUKMPBYFAhaBAYINBgUDAgHaUQoZKA1vgWACAQYJAQqBNIRzKVsBg?=
 =?us-ascii?q?jWFFnCDfYEhG4INhAd2gh8rgUBOhi8EhUyHT4Fvgn6LaiWJR5EXCAcfEggBH?=
 =?us-ascii?q?AYKAksVEgMEAwQEAQILEwkDAwIOAggDAggGDhMBPxIEEwoDCgsDBgUfCAIEB?=
 =?us-ascii?q?wwRChcCAwMCAgMCBQMDBQUFAgMFAwQDBQMDAhEBBgIFDQgGCwUFBwIGAgQIB?=
 =?us-ascii?q?QICAwMDAgQPAwMDAgUCAgMDAQIGDwYCAgMFBgMDAwMDBgMDAgYDAwICAwIDA?=
 =?us-ascii?q?QMCAwECAwICAggCAgMFBAUCAgQIEAICAgIDAwgDAwoEAgIEAQQCBAIEBgIEA?=
 =?us-ascii?q?gIBBgIDAwIDAgcCAgQCAgICAwIEBQIDAwMCAgIBCQIFAQEGAgMDAgMFAwkDB?=
 =?us-ascii?q?AUCAwgBAQICBwcDAwQDAQIBBQQCAgYFAgMCAgQCBAUDAgMGBgIBAwIKBgMFA?=
 =?us-ascii?q?wMDAgMCAwMCBQIIAgIEBAUEAgUEAgQDAwMBCgIGAwICBQEBAgIEAwIEBAcCA?=
 =?us-ascii?q?gcPAwIHBQIFBQUCBwEGBQICAwIGAQICBgEGAgQBAg0BAQICAwQDAwcCBAMCC?=
 =?us-ascii?q?AIDAw8BAwMJBgUEBQQDCQQPAgQBCAMBAQQIAgQDAgwCAiACBQsEBBcIAwEBA?=
 =?us-ascii?q?wEBAgICAg0DAgMCAgMKAgMCCgYEAgQBAQEEAQMBAQMCAQIHBA4EBQUICAEDA?=
 =?us-ascii?q?gEEBgECEAUQCQMHBAIQBgoFAwIDBQEFFQMIAwkCBAwDDQIDAgYDBgIGAQYDB?=
 =?us-ascii?q?wsBAQcIBQMDAwIVAQICDwgEBg4IAgMDAwQDBwMSAgYOAwMCAwIBAgICAwUEB?=
 =?us-ascii?q?QIHAwMKBQIIAwIIBQMHCQQKAgoCBgMCAgICBQwBAQEBAgMCBQMHBwgIBAUEA?=
 =?us-ascii?q?wEBBgYMHgICAwQPAwkDBgsBBQUBAwICDgMGAgMGBgEJBAEFBAkCBQcGBQIBF?=
 =?us-ascii?q?BQHBgIKAgcCAgIDAQIICQgCAwIKBAEOBBkCAgIBAQICAwcCAwITAwMFBAgCA?=
 =?us-ascii?q?gICAwIBCgsDAgIDAwMDBQUDAhkDAwIBCgUMBQQDBAICAR0DAQUCAwoBBQkBB?=
 =?us-ascii?q?gICAwIFAgMGBAIEAQ4BAQEDBgsJFAICAgkIAwgDBQ0CDQIDBQICCz0LBQEBB?=
 =?us-ascii?q?AMJGCwCBAIGDAEBAQIDBgICAhUFBQMFAwgBAwECEwgGAgEDCgoCAgQCBgMDA?=
 =?us-ascii?q?goDAQgCAgIPAwkCBwIMAgIDAwwPBAMDAwMIAgICEQkKAgICDAQKAgkCAgMGA?=
 =?us-ascii?q?QIDAwUDAgEBAQQvAgQHAQMGCgMCAgIJCAoJAwMFAwoCAQYEAQIDDAEBAhMEC?=
 =?us-ascii?q?QMCAQIBAQYIAQECBAEEAgcGAgICAgoDBQMCAwUSBQQCAhkDBAUDBQMDBAcBA?=
 =?us-ascii?q?gUECgkCBQMCBAMDAgQEAQEIBQkEAwsGAQEBAwQDAQEIBwcDAgEBAwEBCgYFC?=
 =?us-ascii?q?A0GAwgDBgkDAQYBAQUXAwIDDgICAgMCAQoGCAUCAwYMAgQCGQEMAwEDAwUOB?=
 =?us-ascii?q?A8FAwQFAgIPDAECAwMEBQMFAgICAwICAgUEAQIEAgQBCAQJAQICAgMCAQECB?=
 =?us-ascii?q?AYFAgICAwIHDAcDBAIGAgYCAwIHCwsCAwYFBQMFAg0RAgMCAgQDAxUBBAECA?=
 =?us-ascii?q?QIDAgIDAgMEAQMDAgEBAQMHAgICBAEBAQQDAwUCAgMMAgMDAQEGAQMBAg8GB?=
 =?us-ascii?q?QYEAQoDAhQDAyICDwUDBQEmAQQCAgECNgICAwQNCAUCAgcCBAwCBA8FAwMOB?=
 =?us-ascii?q?gEVBgEECAQFBAQGBgUFAwYOBxcRAQEEBAIHAQQCAg0HAgwCAgYEAgIHIwYDB?=
 =?us-ascii?q?QkDAgUFEAICCwIEAw4HBAQbAwECCgICGAIBBwECEgEHBAEUAgQGAwIHBAIEA?=
 =?us-ascii?q?wIQBAgCAgMDBwQGAQkDBAkRAwsBBQYFAQEEEQECAQIBAQIDAw4BAgIHAgIBC?=
 =?us-ascii?q?QICAQECDQgBBAMIAgEEAwUDCgEBAQIBBAkEDwYDBQMDBwMEAgMCBgIEBAICA?=
 =?us-ascii?q?wMCAwEDAwIBAgMJAgEPDwoPAgIDBAIGAgIBBCsCARUFAgMEAgIHAgIDAQIBA?=
 =?us-ascii?q?gICBAIEAgIGAwkIAQICBwECAgIDFgIFAQQJAwMFEg0jAwMBAgICAwcKAwUCA?=
 =?us-ascii?q?QECBAMFAwMJDQcCAwECAQMFAwECAQIJAwcCAgMDBRIZBQMCDwMCAQUEAggSC?=
 =?us-ascii?q?wcBAQ8WBQQJBRUDBgIDAxcLBAUDAwMBDAUMDgICCwMEEwUBAQcBAxAIAwQEA?=
 =?us-ascii?q?gMDEgIBEgEDBAIJAgQBAgoCAgICAgQBAQUEAgQDAgUCBAEIBAMDAw4EAwgIA?=
 =?us-ascii?q?wUDDBICAgIJAgMBAgMDAwQNCBYNAwIOGwoVEwcHAwMECwIJAwQNAgQCAgEGA?=
 =?us-ascii?q?wYKBhYBAhgCAgYOBAMDCAMCAwICAQICAgETAgIJCA0FCQUHAhYEAgMIAQkDE?=
 =?us-ascii?q?QIDAhQBBgIIAwcBAQQCAhoRCgEBAwECAQcnAgsHIgYBDAEHSgIJAyMPAwsJC?=
 =?us-ascii?q?AcMATwMBwooBDQBBg4UBwYlGWcHB6prgVoBRoJSWjQslU2DL45pgTaKPJQdc?=
 =?us-ascii?q?Q5ZgzuMFo8xhXUaM5c/kwuIVJAiIothgXiEBZIChHECCgcGESMSgTI6gVxNI?=
 =?us-ascii?q?4EBgjYTPAMZD44hDBaDWIUUiioBslI7NQIBOAIHCwEBAwmFYIYuNIFLAQE?=
IronPort-PHdr: A9a23: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
IronPort-Data: A9a23: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
IronPort-HdrOrdr: A9a23:9TYdKKg7AvbxzTFLfHViAfbzrnBQXgYji2hC6mlwRA09TyVXrb
 HLoB19726PtN91YhsdcL+7Sc+9qB/nhPxICOoqTMyftXfdyRKVxehZhOOIsl7d8kXFltK1vp
 0QFJSWZueAaGRSvILU5hKnG80szNTC3KejnvfG0nthJDsHV0ii1WhE48Sgf3GeiDMpOXNALu
 vl2iOPnVudRUg=
X-Talos-CUID: =?us-ascii?q?9a23=3AQwJD02o9D8w8xKSjNa+dYajmUfskdjrz6lbQGVK?=
 =?us-ascii?q?xU1tbcK3WUmG9pLwxxg=3D=3D?=
X-Talos-MUID: =?us-ascii?q?9a23=3Au4Jwzw/Z4cfH4yTFVvIPHq6Qf8o2wPycFX5Xqpp?=
 =?us-ascii?q?cheOUbhUgPi+lyx3iFw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="38087985"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="38087985"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from mail-pj1-f45.google.com ([209.85.216.45])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Oct 2024
 10:33:09 -0700
Received: by mail-pj1-f45.google.com with SMTP id
 98e67ed59e1d1-2e07d87adc2so578766a91.3;
 Mon, 07 Oct 2024 10:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1728322388; x=1728927188;
 darn=linux.intel.com;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=QBVwovZqhJiutGf/q57pmoMot4Vg5YimdUN+GQvqspM=;
 b=lh3VnJaWtS8ozujZrniXzJG8Qsa7/h43QIrsHFlugSf+WffqIpBBZcNmF0jFLiMKEY
 C2tIKDc55SV99lc5xU8R9d4WahG/ZanXgweku9wfHsjEQ9ikAKXhtAiGb2XOChMyB1wx
 kccPQ0rBAilZrlrxCE6ghyaQxfbuhCmiq+rOOtfUJ8Zr+ThcHVbn4uszQei9xiPQ5Fsi
 7UlNn2j2o8cU7kCjj/UJx2dhTIATUCxzSGvl9mRcpH8zx5VFYZIcndM33lQjIFvPWSXC
 OpB2TCWLTpfrelPXtrL1fn4XkZ07EYjUb6mOQc5/FKzLvrwqWk3fDCyB0LX/L3lyG6tO
 c2lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728322388; x=1728927188;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=QBVwovZqhJiutGf/q57pmoMot4Vg5YimdUN+GQvqspM=;
 b=Ra+xsLvLWr4x+2G3nN5OdHWAjzThg6kf5q5sStfCLVJebflrWqHkBsWqQQLCqZUheG
 X9+atAUfi+/EAQHR8V2x4q4SrE0i8T/ADy+bmkVZJYzflhrjZOIxo+/mtUPuxIUkugHZ
 MlYpTKu8ef6Lc+5ywmXyysBWgw8hFygjOnjPMn33A1KY0mKH9d33/qLOELFxDZjlrXJx
 DD0ei27vBXzHho7+NSh7m6MzcAUmbsTa7w+UvHOzjvV4c/q6AbfiKVaB1Qvl+tXoBPi6
 iBdwRID7qX/ZZfQgYjGvYjt+iCvCq57v7vxQiZ8z6Bvz2htMnr9Oqv/HOlRt8vkts44h
 WJeg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVC9G6nVcKg+CfiEjPmjlIBSZDOBEa/68SYlQOzdEp5l6R+KDRVo6R5Symtzud0CZd35qD1Y6OQi9fVM8fkGW0=@linux.intel.com
X-Gm-Message-State: AOJu0Yy5ICdgnQTqr23F9qW8FbH/gP793jdJB/qG8RdG3B2muDx6Usm6
 9dbawNdMR4BcBcyTJ9kkQ8mUDTjSUePDNKDE34ZKNjSya0qkThjEX1vN5w==
X-Google-Smtp-Source: AGHT+IGbvJGQl/UAHTUNNHtW5c/lWs0TlfWR9gt/d7p98Gcfl9rgsSZB50FW193XaadNkp+X0cxCxg==
X-Received: by 2002:a17:90b:1115:b0:2db:60b:eee with SMTP id
 98e67ed59e1d1-2e1e63eabeemr6155040a91.9.1728322388268;
 Mon, 07 Oct 2024 10:33:08 -0700 (PDT)
Received: from dev.. ([2402:e280:214c:86:a843:852f:eac4:ff92])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2e1e86657d5sm7442881a91.46.2024.10.07.10.33.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2024 10:33:08 -0700 (PDT)
From: R Sundar <prosunofficial@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, imre.deak@intel.com
Cc: R Sundar <prosunofficial@gmail.com>, kernel test robot <lkp@intel.com>,
 Julia Lawall <julia.lawall@inria.fr>
Subject: [PATCH linux-next] drm/i915/ddi: use string choice helpers
Date: Mon,  7 Oct 2024 23:03:00 +0530
Message-Id: <20241007173300.83902-1-prosunofficial@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TUID: ked3G9LmWzFw
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

Use str_enabled_disabled string helpers for better readability and to
fix cocci warning.

Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Julia Lawall <julia.lawall@inria.fr>
Closes: https://lore.kernel.org/r/202410071601.TFpXoqgW-lkp@intel.com/
Signed-off-by: R Sundar <prosunofficial@gmail.com>
---

Reported in linux repo:

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master

cocci warnings: (new ones prefixed by >>)
>> drivers/gpu/drm/i915/display/intel_ddi.c:2225:7-13: opportunity for str_enabled_disabled(enable)

vim +2225 drivers/gpu/drm/i915/display/intel_ddi.c

compile tested only.

 drivers/gpu/drm/i915/display/intel_ddi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index fe1ded6707f9..ff4c633c8546 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2236,7 +2236,7 @@ static void intel_dp_sink_set_fec_ready(struct intel_dp *intel_dp,
 	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_FEC_CONFIGURATION,
 			       enable ? DP_FEC_READY : 0) <= 0)
 		drm_dbg_kms(display->drm, "Failed to set FEC_READY to %s in the sink\n",
-			    enable ? "enabled" : "disabled");
+			    str_enabled_disabled(enable));
 
 	if (enable &&
 	    drm_dp_dpcd_writeb(&intel_dp->aux, DP_FEC_STATUS,
-- 
2.34.1

