Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE139987F7
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 15:40:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8512810E8FA;
	Thu, 10 Oct 2024 13:40:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="K4AZLY+M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4D9B10E8FA
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2024 13:40:54 +0000 (UTC)
X-CSE-ConnectionGUID: L0i6e8WrSJuBor515JMGAQ==
X-CSE-MsgGUID: btPP34WJSxOnflEIwcl84w==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="39314165"
X-IronPort-AV: E=Sophos;i="6.11,193,1725346800"; d="scan'208";a="39314165"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 06:40:55 -0700
X-CSE-ConnectionGUID: CkXYX559TpqHqVODJVvhuA==
X-CSE-MsgGUID: UgXLGz2iRkqhOKZeuijpEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,193,1725346800"; d="scan'208";a="114064285"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 06:40:54 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Thu, 10 Oct 2024 16:40:50 +0300
Resent-Message-ID: <87a5fc6pp9.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from mta01.ostc.intel.com (unknown [10.54.63.101])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 62A5320B8DEF;
 Tue,  8 Oct 2024 09:06:43 -0700 (PDT)
Received: from fmviesa007.fm.intel.com (fmviesa007.fm.intel.com
 [10.60.135.147])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta01.ostc.intel.com (Postfix) with ESMTPS id E49B0914706;
 Mon,  7 Oct 2024 10:50:17 -0700 (PDT)
X-CSE-ConnectionGUID: 8A5D0jThT3C65iouwb61Tw==
X-CSE-MsgGUID: GPMBuDjyTcijJdltOUUUaQ==
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="75225776"
Received: from fmvoesa107.fm.intel.com ([10.64.2.17])
 by fmviesa007-1.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 10:49:17 -0700
X-CSE-ConnectionGUID: /zPa8eOxS+yRi3mfsIZYCg==
X-CSE-MsgGUID: EMJ4TL6qTNWjjLtJYU+rgw==
Authentication-Results: mtab.intel.com; spf=None
 smtp.pra=prosunofficial@gmail.com; spf=Pass
 smtp.mailfrom=prosunofficial@gmail.com; spf=None
 smtp.helo=postmaster@mail-pf1-f182.google.com; dkim=pass (signature
 verified) header.i=@gmail.com; dmarc=pass (p=none dis=none) d=gmail.com
IronPort-SDR: 67041f1b_5sRTbCU42xHuuGWAnu0Lz/iqTKWjuCeHPwR2wKSTCOFS20A
 a8E6rSzDsBdYw3L3mf6HxeH019h8YzuFdzX5XxQ==
X-ThreatScanner-Verdict: Negative
X-IPAS-Result: =?us-ascii?q?A0GfAwBFHgRnf7bSVdFagliBclJ9WjMEUwSqDYpNgUA+D?=
 =?us-ascii?q?wEBAQEBAQEBAQcBATkJAgQBAQMENwGESIoaAh4HAQQwCQ4BAgECAQEBAQEDA?=
 =?us-ascii?q?gECAQEBAQEBAQEBBQEBAQICAQEBAgEBAgQDAQEBAQIQAQEiGQcOEimFew2CY?=
 =?us-ascii?q?wGBJGECBQM7AQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBB?=
 =?us-ascii?q?QINH2EWFQsBDQEbHQEDEhBbAhEBBQEiAQoIIoJfAYIvAQMxAwEEDAahK4EFQ?=
 =?us-ascii?q?ow8FgUCFoEBgg0GBQMCAdpRChkoDW+BYAIBBgkBCoE0hHMpWwGCNYUWcIN9g?=
 =?us-ascii?q?SEbgg2EB3aCHyuBQE6GLwSFTIk+gn6LaiWJR5EYCAcfEggBHAYKAksVEgMEA?=
 =?us-ascii?q?wQEAQILEwkDAwIOAggDAggGDhMBPxIEEwoDCgsDBgUfCAIEBwwRChcCAwMCA?=
 =?us-ascii?q?gMCBQMDBQUFAgMFAwQDBQMDAhEBBgIFDQgGCwUFBwIGAgQIBQICAwMDAgQPA?=
 =?us-ascii?q?wMDAgUCAgMDAQIGDwYCAgMFBgMDAwMDBgMDAgYDAwICAwIDAQMCAwECAwICA?=
 =?us-ascii?q?ggCAgMFBAUCAgQIEAICAgIDAwgDAwoEAgIEAQQCBAIEBgIEAgIBBgIDAwIDA?=
 =?us-ascii?q?gcCAgQCAgICAwIEBQIDAwMCAgIBCQIFAQEGAgMDAgMFAwkDBAUCAwgBAQICB?=
 =?us-ascii?q?wcDAwQDAQIBBQQCAgYFAgMCAgQCBAUDAgMGBgIBAwIKBgMFAwMDAgMCAwMCB?=
 =?us-ascii?q?QIIAgIEBAUEAgUEAgQDAwMBCgIGAwICBQEBAgIEAwIEBAcCAgcPAwIHBQIFB?=
 =?us-ascii?q?QUCBwEGBQICAwIGAQICBgEGAgQBAg0BAQICAwQDAwcCBAMCCAIDAw8BAwMJB?=
 =?us-ascii?q?gUEBQQDCQQPAgQBCAMBAQQIAgQDAgwCAiACBQsEBBcIAwEBAwEBAgICAg0DA?=
 =?us-ascii?q?gMCAgMKAgMCCgYEAgQBAQEEAQMBAQMCAQIHBA4JBQgIAQMCAQQGAQIQBRAJA?=
 =?us-ascii?q?wcEAhAGCgUDAgMFAQUVAwgDCQIEDAMNAgMCBgMGAgYBBgMHCwEBBwgFAwMDA?=
 =?us-ascii?q?hUBAgIPCAQGDggCAwMDBAMHAxICBg4DAwIDAgECAgIDBQQFAgcDAwoFAggDA?=
 =?us-ascii?q?ggFAwcJBAoCCgIGAwICAgIFDAEBAQECAwIFAwcHCAgEBQQDAQEGBgweAgIDB?=
 =?us-ascii?q?A8DCQMGCwEFBQEDAgIOAwYCAwYGAQkEAQUECQIFBwYFAgEUFAcGAgoCBwICA?=
 =?us-ascii?q?gMBAggJCAIDAgoEAQ4EGQICAgEBAgIDBwIDAhMDAwUECAICAgIDAgEKCwMCA?=
 =?us-ascii?q?gMDAwMFBQMCGQMDAgEKBQwFBAMEAgIBHQMBBQIDCgEFCQEGAgIDAgUCAwYEA?=
 =?us-ascii?q?gQBDgEBAQMGCwkUAgICCQgDCAMFDQINAgMFAgILPQsFAQEEAwkYLAIEAgYMA?=
 =?us-ascii?q?QEBAgMGAgICFQUFAwUDCAEDAQITCAYCAQMKCgICBAIGAwMCCgMBCAICAg8DC?=
 =?us-ascii?q?QIHAgwCAgMDDA8EAwMDAwgCAgIRCQoCAgIMBAoCCQICAwYBAgMDBQMCAQEBB?=
 =?us-ascii?q?C8CBAcBAwYKAwICAgkICgkDAwUDCgIBBgQBAgMMAQECEwQJAwIBAgEBBggBA?=
 =?us-ascii?q?QIEAQQCBwYCAgICCgMFAwIDBRIFBAICGQMEBQMFAwMEBwECBQQKCQIFAwIEA?=
 =?us-ascii?q?wMCBAQBAQgFCQQDCwYBAQEDBAMBAQgHBwMCAQEDAQEKBgUIDQYDCAMGCQMBB?=
 =?us-ascii?q?gEBBRcDAgMOAgICAwIBCgYIBQIDBgwCBAIZAQwDAQMDBQ4EDwUDBAUCAg8MA?=
 =?us-ascii?q?QIDAwQFAwUCAgIDAgICBQQBAgQCBAEIBAkBAgICAwIBAQIEBgUCAgIDAgcMB?=
 =?us-ascii?q?wMEAgYCBgIDAgcLCwIDBgUFAwUCDRECAwICBAMDFQEEAQIBAgMCAgMCAwQBA?=
 =?us-ascii?q?wMCAQEBAwcCAgIEAQEBBAMDBQICAwwCAwMBAQYBAwECDwYFBgQBCgMCFAMDI?=
 =?us-ascii?q?gIPBQMFASYBBAICAQI2AgIDBA0IBQICBwIEDAIEDwUDAw4GARUGAQQIBAUEB?=
 =?us-ascii?q?AYGBQUDBg4HFxEBAQQEAgcBBAICDQcCDAICBgQCAgcjBgMFCQMCBQUQAgILA?=
 =?us-ascii?q?gQDDgcEBBsDAQIKAgIYAgEHAQISAQcEARQCBAYDAgcEAgQDAhAECAICAwMHB?=
 =?us-ascii?q?AYBCQMECREDCwEFBgUBAQQRAQIBAgEBAgMDDgECAgcCAgEJAgIBAQINCAEEA?=
 =?us-ascii?q?wgCAQQDBQMKAQEBAgEECQQPBgMFAwMHAwQCAwIGAgQEAgIDAwIDAQMDAgECA?=
 =?us-ascii?q?wkCAQ8PCg8CAgMEAgYCAgEEKwIBFQUCAwQCAgcCAgMBAgECAgIEAgQCAgYDC?=
 =?us-ascii?q?QgBAgIHAQICAgMWAgUBBAkDAwUSDSMDAwECAgIDBwoDBQIBAQIEAwUDAwkNB?=
 =?us-ascii?q?wIDAQIBAwUDAQIBAgkDBwICAwMFEhkFAwIPAwIBBQQCCBILBwEBDxYFBAkFF?=
 =?us-ascii?q?QMGAgMDFwsEBQMDAwEMBQwOAgILAwQTBQEBBwEDEAgDBAQCAwMSAgESAQMEA?=
 =?us-ascii?q?gkCBAECCgICAgICBAEBBQQCBAMCBQIEAQgEAwMDDgQDCAgDBQMMEgICAgkCA?=
 =?us-ascii?q?wECAwMDBA0IFg0DAg4bChUTBwcDAwQLAgkDBA0CBAICAQYDBgoGFgECGAICB?=
 =?us-ascii?q?g4EAwMIAwIDAgIBAgICARMCAgkIDQUJBQcCFgQCAwgBCQMRAgMCFAEGAggDB?=
 =?us-ascii?q?wEBBAICGhEKAQEDAQIBBycCCwciBgEMAQdKAgkDIw8DCwkIBwwBPAwHCigEN?=
 =?us-ascii?q?AEGDhQHBiUZZwcHqmuBWgFGglKBDiyYfIxMgh2LcpQdcQ5ZgzuMFo8xhXUaM?=
 =?us-ascii?q?5c/kwuIVJAiIothgXiEBZICNYQ8AgoHBhEjEoEyOoFcTSOBAYI2EzwDGQ+SG?=
 =?us-ascii?q?4UUiioBslc7NQIBOAIHCwEBAwmFYIYuNIFLAQE?=
IronPort-PHdr: A9a23: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
 uV9gBCbWAJ6+Lxt6I1x6Ldsm57cGA==
IronPort-Data: A9a23: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
 iEeh5IzxO4WXcRssuRZhvDs
IronPort-HdrOrdr: A9a23:AaMiSauT+5s0cT4roid+goB47skDqtV00zEX/kB9WHVpmwKj5q
 STdZMgpGXJYVMqMk3I9urwXpVoLUmsl6KdgrNhRotKIjOWwVdARbsKheCSoAEIcxefygc379
 YGT0ERMqyUMXFKyen9+xexCNstzZ2q96qylf7Cw3oFd21XgmJbgDuRyDz3LqS7fmd77OICZe
 KhDwN8xgadRQ==
X-Talos-CUID: 9a23:JQH9JGMnRk4bue5DHztf/R4ZPdAeMWznzSzVLVSZO1dCR+jA
X-Talos-MUID: 9a23:opsBKAh4yx4M+uyhm1WG/cMpGeJKv5iKVlkxt6oEue2YFx1NeC2Sk2Hi
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="30368074"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="30368074"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from mail-pf1-f182.google.com ([209.85.210.182])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Oct 2024
 10:49:16 -0700
Received: by mail-pf1-f182.google.com with SMTP id
 d2e1a72fcca58-71927b62fa1so672469b3a.2;
 Mon, 07 Oct 2024 10:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1728323355; x=1728928155;
 darn=linux.intel.com;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=xFIN27AG3WgjOnmH18Fk8WaAPf1pZ2KMgetkW6A+4t0=;
 b=K4AZLY+Mmkwg23fqWsw3JB9LE0zIN2kJ+XtQWH49hpTDi7andf6UiEEwFyGGTXc+0k
 EeUA03IYsPrZtAU/0Vy4R2qtMEkul9/LxqtkJiNPPecyFfAjMoScCAvpyvikcR2mhLlx
 A6ve3GLUpaDSpKv7awMt7+w+m5CBCSO0bEOg3VLT1Fh0ZnV1P0xM/VIBsxSXAOpbQjtM
 AdNZR2YPK2TXnVKnjFrxcxrsO8Lp1DBE6QH7ZhfWGeE/ueSesynL+B7f6SM/m/LEqZ4c
 C0MUQW3YJAZgywl1KTZ6+yZw7oAeHy47i9D309HkzsFez+/mMQwpuiRgMogLyPUdfVea
 XRmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728323355; x=1728928155;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=xFIN27AG3WgjOnmH18Fk8WaAPf1pZ2KMgetkW6A+4t0=;
 b=NRmtWN697MPySN4q+7AB1jDJHNla62jzzpfVqkUihHS6pcBGOrZEUnJtiVVUQemjfq
 j1uZobli0QbZ1T6sgHvQj0upM+fkzoeTqIKrUxdG2fW6lXSpIUYLUP7vtMj2IDaQDULt
 TrXVE1ELaJ/KPjro8FIgZeFvqWaKB6z4fZaU5Cbqr7GIwivsJa+CJX/Mqsq2cYJlZW48
 kL68TbmxLKBK0gMbtU1agG7pH8CHjoFS0MmiSMQcm6aJArRi4dC/aqMia45Vcj3P8+m4
 cIg1c9mAifjTKY/DCkXK0oeifuwz0s3g/wdhoS2mArNsLMmg7bWBj83iTT13UViDLhOY
 NhZw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXVGOwLJj3msSB06R7zpjFHiHU3I86/WifOc+cz13AiQGnVFGFDfnhUCF79hygjMXjJ6joxjXQYyHFvOTYUakE=@linux.intel.com,
 AJvYcCXy0V6LKMM8oLA/jsNLXeJLBcp7aEqGCn0QKCtPGgK44WPTVtjSxi4dEkm68p5e0tSkD3Pv38TIDk4ZsqM/yA==@linux.intel.com
X-Gm-Message-State: AOJu0Yxhb0Cqa+FJK3KVLFbe/K7S4qtwPpnQzyGs9YbY0mZrvAIdby+g
 MAs/ZLGk5nDTqFrz5H1x0c5FTlxoXm7CI0DZlZ016pNSzELDxobuumlP8w==
X-Google-Smtp-Source: AGHT+IH236XZqVh5kSYznYvuShbIvj5woyfy5XKiXBwQQoAWzcu2Nl7W5TjR15p5S8ffsQdMMGim+g==
X-Received: by 2002:a05:6a00:2e24:b0:71d:f744:67 with SMTP id
 d2e1a72fcca58-71df744011amr4789204b3a.7.1728323354725;
 Mon, 07 Oct 2024 10:49:14 -0700 (PDT)
Received: from dev.. ([2402:e280:214c:86:a843:852f:eac4:ff92])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-71df0cd0ae9sm4649923b3a.82.2024.10.07.10.49.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2024 10:49:14 -0700 (PDT)
From: R Sundar <prosunofficial@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 imre.deak@intel.com, ville.syrjala@linux.intel.com,
 R Sundar <prosunofficial@gmail.com>, kernel test robot <lkp@intel.com>,
 Julia Lawall <julia.lawall@inria.fr>
Subject: [PATCH linux-next] drm/i915/dp: use string choice helpers
Date: Mon,  7 Oct 2024 23:18:57 +0530
Message-Id: <20241007174857.85061-1-prosunofficial@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TUID: 5eGVls0waYuW
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

Use str_on_off string helpers for better readability and to fix cocci
warning.

Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Julia Lawall <julia.lawall@inria.fr>
Closes: https://lore.kernel.org/r/202410071252.cWILJzrH-lkp@intel.com/
Signed-off-by: R Sundar <prosunofficial@gmail.com>
---

Reported in linux repo:
tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master

cocci warnings: (new ones prefixed by >>)
>> drivers/gpu/drm/i915/display/intel_dp.c:2243:6-9: opportunity for str_on_off(dsc)

vim +2243 drivers/gpu/drm/i915/display/intel_dp.c

compile tested only.

 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fbb096be02ad..733619b14193 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2475,7 +2475,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 		    encoder->base.base.id, encoder->base.name,
 		    crtc->base.base.id, crtc->base.name,
 		    adjusted_mode->crtc_clock,
-		    dsc ? "on" : "off",
+		    str_on_off(dsc),
 		    limits->max_lane_count,
 		    limits->max_rate,
 		    limits->pipe.max_bpp,
-- 
2.34.1

