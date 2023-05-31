Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50197717BD9
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 11:27:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C92C10E4A0;
	Wed, 31 May 2023 09:27:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B2F910E1C7
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 09:27:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="357575960"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="357575960"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 02:26:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="657250876"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="657250876"
Received: from eladcoh1-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.46.230])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 02:26:45 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Wed, 31 May 2023 12:26:42 +0300
Resent-Message-ID: <87cz2ghmwd.fsf@intel.com>
MIME-Version: 1.0
Received: from outlook.iglb.intel.com [10.4.20.123]
 by jnikula-mobl4.ger.corp.intel.com with IMAP (fetchmail-6.4.29)
 for <jani@localhost> (single-drop); Wed, 31 May 2023 10:46:43 +0300 (EEST)
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Mailbox Transport; Tue, 30 May 2023 19:07:19 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 19:07:19 -0700
Received: from fmsmga004.fm.intel.com (10.253.24.48) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 30 May 2023 19:07:19 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="776576062"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="776576062"
Received: from orsmga102-1.jf.intel.com (HELO mga09.intel.com) ([10.7.208.27])
 by fmsmga004-1.fm.intel.com with ESMTP; 30 May 2023 19:06:31 -0700
Authentication-Results: mga09.intel.com; spf=None
 smtp.pra=zhi.wang.linux@gmail.com; spf=Pass
 smtp.mailfrom=zhi.wang.linux@gmail.com; spf=None
 smtp.helo=postmaster@mail-lj1-f181.google.com; dkim=pass (signature
 verified) header.i=@gmail.com; dmarc=pass (p=none dis=none) d=gmail.com
IronPort-SDR: 6476ab26_oLsE0IsdiaRq9A0uMbzhQ8ok9dRASqR5iehT4Jv5iQ7lGOp
 DyFY8LUeoEeL4NF224vjqE39eitfL8npo13zkDA==
X-IPAS-Result: =?us-ascii?q?A0F+AADJqnZkf7XQVdFaHQEBAQEJARIBBQUBgX0GAQsBg?=
 =?us-ascii?q?i6BSzAEUo1OhlCNV4Iaj2qBQDMLDwEBAQEBAQEBAQcBAS4UAgQBAQMENwGER?=
 =?us-ascii?q?4VgAh0HAQQyBw4BAgECAQEBAQEDAgECAQEBAQEBAwEBAQICAQEBAgEBAgQCA?=
 =?us-ascii?q?QEBAQIQAQEiGQcODimFaA2CNykBdU0DOAEBAQEBAQEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEEAiw6AQEgAQQRFQsBDQEbHQEDEm4FDAEFATUig?=
 =?us-ascii?q?lyCKAEDMQMEAaMxgQRCjDYWBQIWgQGCCQYFAwIBgQuaeQoZKA1qA4FcAgcJA?=
 =?us-ascii?q?QiBMAGEQiOCb4Q/hFCBIYEDgSWBSIM2hFk4hXUEjkeMZgEDAgIDAgIDBgQCA?=
 =?us-ascii?q?gIFBAIBBQIOBBABAQICAQECBAgCAgMDCA4TAwcCBgUBAwECBgQCBAsCBQIKA?=
 =?us-ascii?q?QIEAQICAgEFCQEDAQMBDAICBwIDAwYEAg4CAQEDAgINAwIDAgQBBQUBARACB?=
 =?us-ascii?q?gQHAQYDCwIEAQQDCgMGAwICAgIIBBECAwICBAUCBAUCBwQBAgQEBQICBAIEA?=
 =?us-ascii?q?xEGAgMFAw4CAgICAQkLAgMHBAUBBQICCwEDGAMCAgICAgIBAwcIBAsCBQECA?=
 =?us-ascii?q?QQLAQUBDQQCAgICAgMCAQEDBggGAwoCBQQDBwkPDwgDAwEEAwIDAgEIBwIDA?=
 =?us-ascii?q?gIECAIDAQICAQYCAwECAgECAgELAQECAwUCAhEBAgICAgIBAQIDAgMBBwECA?=
 =?us-ascii?q?hcGBAUDAwQCAgEEAQIGBQsCBAMBAQECAgICAwILAwUDAQYDAwoHBAEIAgUDB?=
 =?us-ascii?q?AIFBgQGAgICAgIBBAEECQMEBAMDBgMJAgIMAhQCEgYBBAsLBAECAgINAwQGA?=
 =?us-ascii?q?gMDAgUIBAICAgICAwYCBwQCAwMCAgMDBgIBCAYDAgQCAQIEAgIEAwkCAgMDA?=
 =?us-ascii?q?gIDAwECAQYCAgIBAgIBCAIDAgICAgMDDAEBAQkCAwEHAgcBAgICAgwDAgICA?=
 =?us-ascii?q?wIEAwICAxEEDAECBAICBQICAgICAgECAgICAwUEAQMDAwUDAwICAwQDBAYEA?=
 =?us-ascii?q?gIGAgIFBgICBQMEAhADBAIBAgECAwcIBAIJARcDBAIEAwICAwIBAgcDAgQCC?=
 =?us-ascii?q?RECAgIDBBEEBwQGAgIDAgIDAgYDAw0BAQECAQsFAQQBAgEBBAMDCwICAgEBA?=
 =?us-ascii?q?gEDAgIBAgECBgEKCgYCBQENAgEBAQIEAgMGAgIBCAoFAgINAwEBBwcCBAIEB?=
 =?us-ascii?q?QIDBAICAgIEAhYEAwECAgIFAwQEAQICCQEBBAICAwICAQECAQMCAQICAgMCB?=
 =?us-ascii?q?QQDAwMCBgIFAQIBAgQBAwIDAgMCAwMDBAECAgETAwMCAgIEAgIDAwMDAQ0DA?=
 =?us-ascii?q?QMBAgIDAgIBAxEEAgQBAgECAQQBAwMDAhACAwMDAQQBAgMCAgICAgIFBQUGB?=
 =?us-ascii?q?wQCAQMDAgUCAgICAQICBgcJAgIBAQEBAgEBAQEBAgMFAwICAQECAgIDBwYCC?=
 =?us-ascii?q?QICAQEDAgECAQcIAQIDAgICAgIDAgUCAgIBAg4IAgEGAQEEAgECFAECEwEBB?=
 =?us-ascii?q?gUDBgcCBQEDBQECAgIDBQQBBAMDAgMFAgIDAgICAwIGDwQBAwwDAwEBAgEEA?=
 =?us-ascii?q?wMCAQIDAwQBAhAFAwMTDQEFAgICAhYCBwYEEQMDBwQEAwIGFg4CCAEBAgEBA?=
 =?us-ascii?q?gICAQsBAgQBAgICAgICAgICAQIGAwYDAgUCAgMDAgICBgIICQICAgIEAgEFA?=
 =?us-ascii?q?gIDAgUCBAYBAQICAgIDAwMDAwMCCwgFAwMBCQIECAMDAgUDBQEGBAcCBgICA?=
 =?us-ascii?q?gEBAQoFAwEGAwMDAgMDBwEEDQQJBwICAgICAg0DBwIDBjMDAQoKARoDAwIgA?=
 =?us-ascii?q?wkDBwVJAgkDIw8DCwkIBwwBOQYMBwooBDQBFBEHBwYlAQYXAxIJBQoEJCEDA?=
 =?us-ascii?q?xAMAQQBBggCAgMDAQIDBQECAwQCAQsCAgICCQIKAwIDAQMFAQMCCQMBBQECB?=
 =?us-ascii?q?wIGAQEBAgIIAggCAwsBAwUEAgICAQUCAQICBQMFAgICBA0CBQICAgQBAgcEA?=
 =?us-ascii?q?gIDAgYFAQIHBwIFAgIDAwoEBAIKBAIBAQUBAgEDAwEDAgECBQMGAgICAgECA?=
 =?us-ascii?q?gEBAQgCAgICAgIDAwifSYEOgimTDbFvB4QLgV2CNIZJjjuHahozlxEMkjIBL?=
 =?us-ascii?q?pdgo1qELwIKBwYQIxKBNQEygVxNI4M3TwMZD44gg3SPeUE0AjkCBwsBAQMJh?=
 =?us-ascii?q?UU+hUMBAQ?=
IronPort-PHdr: A9a23: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
IronPort-Data: A9a23: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
IronPort-HdrOrdr: A9a23:jMBH5K22xhbteC9F7d/hkQqjBJokLtp133Aq2lEZdPWaSL39qy
 nIpoVg6faQslwssR4b6La90cW7MBDhHP1OkPIs1MmZLXDbUQKTRekIjbcKqweAJ8SUzJ876U
 4PSdkaNDQyNzRHZATBjTVRV7sbsbu6GWyT6ts2t00dNT2CopsP0ztE
X-Talos-CUID: =?us-ascii?q?9a23=3Aw4QE+WrNxbYs0fVGnaa0jjvmUcY+aGbt51nxGku?=
 =?us-ascii?q?xCEpPc+ysQ2eJx5oxxg=3D=3D?=
X-Talos-MUID: 9a23:2334Ggpuf2fz6I1q5sgezxBcOcYy27WhMVkiz7Ak5Zm5PyFhZCjI2Q==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="357492763"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="357492763"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from mail-lj1-f181.google.com ([209.85.208.181])
 by mga09.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 May 2023
 19:04:21 -0700
Received: by mail-lj1-f181.google.com with SMTP id
 38308e7fff4ca-2b088947d49so5750441fa.1;
 Tue, 30 May 2023 19:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1685498659; x=1688090659;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=37k0ej9+1DJsU/F422hEk4kk1ec5Zr1jgX4Na+twFKc=;
 b=O+LSQx3OP/UXQH47bh/OAXESZUQJCOworU+gPZxqyWCsjmiJdT64KtGGWAJVob6X1N
 w2PPkGWXZ5jvEJ5IqOuLQDXAb9DU2eDQGeoTNI3Gtzy8uJsyuzPJHqNmyqcl3ICFmb8M
 Hr/xn6fKkZGt3tim1OFaBwVCGN38xi4F8sSCJgD7kPB6d84WGqNESnsGmMHL0OT6rN/x
 udCN849hj8nrd9px3FN9hWQYpz1FEcusY8xx5vtA4dzxv+8FwexgpwBW4vJ0qenTKtsv
 SPsButdl9NU7MT9/MudCxjkE734Qw1P6KrMZJSHsFmAk/6kZ3vS0Af60/16vCu0BYUPM
 QkVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685498659; x=1688090659;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=37k0ej9+1DJsU/F422hEk4kk1ec5Zr1jgX4Na+twFKc=;
 b=Q4O3ivcupCOyy+/BuddHOz2XKcXOS7X/U/FwCFtUMCO8VQCFo8sRH2nEDVs+jCs9a9
 P/ZNJc2M4GPWBUiBpsV9OHY+mggO9gD0MJmFQ+tf22pUqFCKNqI3E3A1I8r89fZZVGTk
 bATl5SJzhelz1mpbFzI+JDa5x07hQzGbOmEKA9sgfcD50RMP3u0Yf6ImT0Fr6jUOj/ja
 tY+DRYOi/ngTyUqvVTw2cMYZRFCXpFqEYRJzbtp0KB1Y+oLgtEO+iAzKsTEWaiQ3jBgh
 1aquGGn9doSmyKtet6WFu9Q0IaWAYgWP1oG5c7uPljIfnH/EU9cL49RQLW6Ja8Vs31YU
 L6NA==
X-Gm-Message-State: AC+VfDyCdrzbgH0tkL23z8M7D7+ZGx72B1juWZj/j6aIrErZwwHkY42A
 zCjNkoYTXjo3yNbqEyEevgdzCUM3nUFuPHh9
X-Google-Smtp-Source: ACHHUZ4V3lBLxlywVQQuto4e0VVw/dFZiEoiF9eaiI3gT+8ACEiGVnyAOXz8i6nVDL7WGvdemiS2+g==
X-Received: by 2002:a05:651c:b9b:b0:2ad:cad5:4b57 with SMTP id
 bg27-20020a05651c0b9b00b002adcad54b57mr1342743ljb.1.1685498658882;
 Tue, 30 May 2023 19:04:18 -0700 (PDT)
Received: from localhost.localdomain (88-115-161-74.elisa-laajakaista.fi.
 [88.115.161.74]) by smtp.gmail.com with ESMTPSA id
 c10-20020a2e9d8a000000b002af03f75edasm3057470ljj.80.2023.05.30.19.04.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 May 2023 19:04:18 -0700 (PDT)
From: Zhi Wang <zhi.wang.linux@gmail.com>
X-Google-Original-From: Zhi Wang <zhi.a.wang@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 May 2023 02:04:11 +0000
Message-Id: <20230531020411.18987-1-zhi.a.wang@intel.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
X-MS-Exchange-Organization-Network-Message-Id: c404a14f-d874-4ae3-f995-08db617bc38f
Content-Type: text/plain
X-MS-Exchange-Organization-AVStamp-Enterprise: 1.0
X-MS-Exchange-Organization-AuthSource: fmsmsx602.amr.corp.intel.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-MS-Exchange-Transport-EndToEndLatency: 00:00:00.4933312
X-MS-Exchange-Processed-By-BccFoldering: 15.01.2507.023
Subject: [Intel-gfx] [PATCH RESEND] drm/i915/gvt: remove unused variable
 gma_bottom in command parser
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove unused variable gma_bottom in scan_workload() and scan_wa_ctx().
commit be1da7070aea ("drm/i915/gvt: vGPU command scanner") introduces
gma_bottom in several functions to calculate the size of the command
buffer. However, some of them are set but actually unused.

When compiling the code with ccflags -Wunused-but-set-variable, gcc
throws warnings.

Remove unused variables to avoid the gcc warnings. Tested via compiling
the code with ccflags -Wunused-but-set-variable.

Fixes: be1da7070aea ("drm/i915/gvt: vGPU command scanner")
Suggested-by: Jani Nikula <jani.nikula@intel.com>
Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
Cc: intel-gvt-dev@lists.freedesktop.org
Signed-off-by: Zhi Wang <zhi.a.wang@intel.com>
---
 drivers/gpu/drm/i915/gvt/cmd_parser.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index 3c4ae1da0d41..05f9348b7a9d 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -2833,7 +2833,7 @@ static int command_scan(struct parser_exec_state *s,
 
 static int scan_workload(struct intel_vgpu_workload *workload)
 {
-	unsigned long gma_head, gma_tail, gma_bottom;
+	unsigned long gma_head, gma_tail;
 	struct parser_exec_state s;
 	int ret = 0;
 
@@ -2843,7 +2843,6 @@ static int scan_workload(struct intel_vgpu_workload *workload)
 
 	gma_head = workload->rb_start + workload->rb_head;
 	gma_tail = workload->rb_start + workload->rb_tail;
-	gma_bottom = workload->rb_start +  _RING_CTL_BUF_SIZE(workload->rb_ctl);
 
 	s.buf_type = RING_BUFFER_INSTRUCTION;
 	s.buf_addr_type = GTT_BUFFER;
@@ -2874,7 +2873,7 @@ static int scan_workload(struct intel_vgpu_workload *workload)
 static int scan_wa_ctx(struct intel_shadow_wa_ctx *wa_ctx)
 {
 
-	unsigned long gma_head, gma_tail, gma_bottom, ring_size, ring_tail;
+	unsigned long gma_head, gma_tail, ring_size, ring_tail;
 	struct parser_exec_state s;
 	int ret = 0;
 	struct intel_vgpu_workload *workload = container_of(wa_ctx,
@@ -2891,7 +2890,6 @@ static int scan_wa_ctx(struct intel_shadow_wa_ctx *wa_ctx)
 			PAGE_SIZE);
 	gma_head = wa_ctx->indirect_ctx.guest_gma;
 	gma_tail = wa_ctx->indirect_ctx.guest_gma + ring_tail;
-	gma_bottom = wa_ctx->indirect_ctx.guest_gma + ring_size;
 
 	s.buf_type = RING_BUFFER_INSTRUCTION;
 	s.buf_addr_type = GTT_BUFFER;
-- 
2.25.1

