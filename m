Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA0B6CAA0E
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 18:12:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E2D610E3B7;
	Mon, 27 Mar 2023 16:12:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3348B10E3AE
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 16:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679933557; x=1711469557;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=w+mB6hIdPmjSNfFS1+jZCwuPCzMChmcplQjsI4LNT7o=;
 b=C9LI9yLcN4APVJSVymida7pe10bC1HHzLCqS9lHNXDmrTMoj41RdiYUd
 8V5U/dAhOJJ/1oAzbsAFC59T7wMdJutOqmIPMR6NMbP/b21qQfi0c2DFV
 L4MUCUCnQqL/7IPUHJT/ifkrL+NdW8o+u7lS+YSzsM7ObrfHvVU0XMsyk
 BohcEWLKwtBEs3Up5TkmgBBAHYfF40qw3v6zWQo88CzT1AAK7tco63UWd
 zZr1kqNRo5kvfZc9XVPAfJLwF1QmjjYUxQowHMmh5lWRRLEAFk1Cr848B
 oAAE/ckMkaT3GtSrEyYFQfQDl0RdcxfBw0HmLzZAFXrEp28HmGbmcXeri g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="320711502"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="320711502"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 09:12:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="713893324"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="713893324"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 27 Mar 2023 09:12:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 09:12:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 09:12:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 27 Mar 2023 09:12:36 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 27 Mar 2023 09:12:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ibgPC9KdcL2NIGR8tXjfyeHF0PNbulhzDGuP6uGaX5Cu0W08hnmofRFCcQhjtITK3O+gFOKpvcIzhDo6k992VCUHUJ9cG9MR/zK5c68bus2se4ESKmWIwTTYWcj8RSuMZsqym/rBDvx/VFc33ePp9m2khnBcSM4wkbWboYhGKa3fqCgg52RWs9jNZiCBgjHh5DWSeG32eUOyrwBXVay4n8MbyDBk+K8enc6Voxc7rkKbvmsVw/ma0wcbTmPuRF6ipG46mBZvsPx4nYFbmhXckN3DaTTUo9h2rxk4BkVKlz5RSlEZnxCC/tu3bF4lodfXTWG2lWlpvUcQ5chUb020cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VyYVYz8c53FvMYGyzLlFxSBoks1ywmH5DQiK3iVRA9g=;
 b=YXuZze0qiOjkFqNeUZwHGk35IcsUALPI4QEwEfys0yzFByUUkD0jr91elpSivN2FtVejCmKmtWGjfg2H3HFTfUTONWD5dNdNTNHmXI2gSQmAOywIdoDdsFHnCBCnhuFvzSmEc8FYG+7+nPks0iGIrDUnwQ1XAtQhCTA8bSrlMzUTTQdi7TYIuj4qWA9aPDQt/Y9gNXj39iM+jliRCE0RrW1H2aH3qUvTcwIzauWROtWM0tt2uyWH1qJdcK+T67l9Wo3Hcbkv27eY+CL71aujMdQVtEV9/PCWf7IbZjQc3X6ynjqHiVB1i74Vgxby34kNQJNPPPWVnr1EiKKloTKkqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8)
 by PH0PR11MB5112.namprd11.prod.outlook.com (2603:10b6:510:3b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.30; Mon, 27 Mar
 2023 16:12:32 +0000
Received: from PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::3b2c:bb0a:17a4:55f]) by PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::3b2c:bb0a:17a4:55f%6]) with mapi id 15.20.6178.041; Mon, 27 Mar 2023
 16:12:32 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Mon, 27 Mar 2023 12:12:23 -0400
Message-ID: <20230327161223.406573-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230327161223.406573-1-rodrigo.vivi@intel.com>
References: <20230327161223.406573-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR13CA0149.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::34) To PH7PR11MB6053.namprd11.prod.outlook.com
 (2603:10b6:510:1d1::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6053:EE_|PH0PR11MB5112:EE_
X-MS-Office365-Filtering-Correlation-Id: c6b8e2ce-73a4-4dc8-557b-08db2ede11dd
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fjOR3mYQIV60nPEwHaQ1iJLbqZqP2/pRCE5iacQyxa9cNuISIEguVBT5nCjOYP6ViCggpBW1qEYZoZ8G7Vo+/wMkC0PHBU68FIZjq1dX9NCbQmNyWKAltdp4ZnMfp3Sgsg0dMs6AAtkKa9retlIRqnGSonYdnz+Z72OZ2sxlwzyZxQiQCuDM1YsLy7Hk/SHpdxKSHuOiKfg5qTFbM0z/3+dJ+wLURAOE6tlCQKCsGQU6Le1dnKV4FW5rEH8TSTKq34TromhDa0hBOHii/rFqZEeR/pEkb1xBRx4l2X9kaY13YGdeHOYwbpwH49YcFv3YmzGArR82xwUuiYcKA+bb8fgMy2R7AdW+XLmN78i5XLUm47EAU18woK87SXz4OAg431tgH0EPBP8JkgXP/DW1uTi9rtkwXm3CdaELfori+FCXXW+E++Fzyd4IzbHH9hjhPzXV/KuKuanA5nJgUFE8/GTkVAhmQuF0CIkm4xKBlfq6G1efteZA7cYm2yAM5xJ+
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6053.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(346002)(376002)(136003)(39860400002)(451199021)(66946007)(41300700001)(38100700002)(478600001)(6916009)(8676002)(66476007)(66556008)(4326008)(54906003)(316002)(8936002)(5660300002)(30864003)(44832011)(966005)(83380400001)(6486002)(82960400001)(26005)(2906002)(36756003)(186003)(1076003)(6506007)(6512007)(2616005)(66574015)(6666004)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZTkvOWVVWXFNbWsydmY1WDNVaXlUSmM3bFVQcjJhU1d2eUFGU3ByK2ZLKzJM?=
 =?utf-8?B?M1hwL2JNL0tYKzhuUDNJNkNrRUxtRGJoZzI2V3VHUHJGZGxTRDNtSUNYQ1d0?=
 =?utf-8?B?SElhWEZ6YVJpckg5NVZ0V0oxeWkxVXdodFpwN3JtaWdZTDNkVzIzWkNoTnJE?=
 =?utf-8?B?UWsxRzYyK2hJTVY5WmV0T2hMNGRjRWFGUWZhdEFLcUF5V3QrU0FydU9xQTR2?=
 =?utf-8?B?b1l5S2hHbHRrS251NHhIUnY4RFVXYzlnMm9QYkhScHJRLzdRMUhOeS85cUdu?=
 =?utf-8?B?OWVueGI2S2Q4TkxNMW9EcjZrbGdCbXp5Q3hyYmVPQktkSFFJd0Y5MzhNeUpr?=
 =?utf-8?B?NFVNLzFVZHZTMUoydTdIOFhQRk5Ed2psb0dPb1lpWVFZU1FteE1FMTUrWDVT?=
 =?utf-8?B?NDVuY0RvRjdOOWMzTVhOS1NQZlVrWEdCNnlwRTJTK3cyNFRyMlYvdFlrNnJv?=
 =?utf-8?B?YytNb1JqbFR6ZWdUN3h4WFdWQ3hhZEx1WXc4eXZGRnlSS0V5TldGSDM4YkFF?=
 =?utf-8?B?REszYUlLRjgxS0M5Z2xxRUNYcCtwdEVZczlaeXJ6TVE1eUJ2N2l4Q0xEVSty?=
 =?utf-8?B?ZzZRMXlRa0d3SjdaOFUzNVZJdC9VYVFsWXk0MktoNXI2SHdTbVo2V2VPdnpB?=
 =?utf-8?B?WCtUN3hCMktDdW4xbHQ3RmJuQ1owS2NLSHNQWlhnZ3ZFVXNrc2VIRUIrQk5u?=
 =?utf-8?B?YkZwUUNHQ2M2K0NsYnZIOE1qa3JCU2Q5YmxEWkRVSnlZN3ZOODdVSlZnZzR2?=
 =?utf-8?B?SkNESnBVemZEY2tXeXdveUNacm02c1pmVnJZUVZTQjBLNE5lLytMSTc1am01?=
 =?utf-8?B?U3lWdmZvcnBxTHNJd0dabUtiMHp1VlpERkg5dHg3TTh4YTcwbG1heVZrMmto?=
 =?utf-8?B?ZHc3WU93RzNEeG1xRnNHZ29Wa3ZoOUoyWTEyNGYxVEhPL1NGNTcrem13Vmhx?=
 =?utf-8?B?M0QzdVRHYW9aakh4Z0pmTTZLQnlEUFBSM21DaTQyMDVFb2dkV2hFS2xsRVhn?=
 =?utf-8?B?T3o0U2RZLys3UzdVM0VMb2ZKRXNudjdjVmhHZ0RRYnFxQ2VjOU5NRUtQZ1p1?=
 =?utf-8?B?Mkt4NTVDTURRb0x2ZUswU3UrRW5GK05YeUJaOEVCVEtVVE5PU1lxakg5Z0dR?=
 =?utf-8?B?MnBuSDdzd0txOG10Sm5XMTltRzNjVzdidHdYWldNZGVRQUdqVm50cEMxUWFn?=
 =?utf-8?B?enREa1VjWnNROEJvRU5aK050VTV4V1FYWVV1TTcvM2FFWlM2dTJOZEl1UU5D?=
 =?utf-8?B?ZThFRjh3NGxwUkc1RFR3TmU1Y1haZFpwNkE2NWxSQU1PMEZSb0pCWGxOMzAr?=
 =?utf-8?B?Mlhpa3dmVTdzL1hNaU8yWHBXbGpLdXF1NTJ2b1RuNS9IRWFKR3FWV3JJenpo?=
 =?utf-8?B?dEZ5QXE4MGRQSEJaeFdDRFdldlYwZ0JMRFdMeWJVcXpOck9Za2xjNVJHZEgz?=
 =?utf-8?B?bjJXRHRsWVVnSnkwbGp5TWdTNGJvSEZheWlmZkhWbmQvd0JTVGZpR0Q4ZUZn?=
 =?utf-8?B?czlLRzQ1UUJRM1RqOXhQb1EzTDl6OUNJMFluTVNEKzZlc2xXbWlUN0liL2ZY?=
 =?utf-8?B?dFRNK2EyS0UrZzdSMXcrS0lhNFR4c2RtaGlNcGJYdkI4OUNiWldJSVRDV2xX?=
 =?utf-8?B?dXJiWTFTbk5OaUkrUDBOTVpxdEw5RWlSNCtwZitvbEVHaFAzOVRlb3ZiM0pE?=
 =?utf-8?B?OTA0TVFic2NnTzFLKzlRQXhuUXRwVFFaUTZXcVE3V0poNmlsOHhGSUs5b25z?=
 =?utf-8?B?RUdxN3IvTTBLM3lTM1lqcVUyaVg3OHFhRGhkZjViMFRsOHA5L21qMmx4K3Yz?=
 =?utf-8?B?TEo1bStDMnpIaUZkM1pnaGwzM21RWUxpMlZ6d21BWU1FL1dhVm1iSjBMMjR6?=
 =?utf-8?B?eXFUQmIxSjZIRno3eXpjYUN3LzlseVNpNWxuVFM2M05nZzFFbzZuTTk3OWM5?=
 =?utf-8?B?Skx4ckNUQktIUlh1bmp1VitQbkN4R0N4amhhQWVib2JnbkhLV3RlRUFUTmdU?=
 =?utf-8?B?MldQTU9zelpHQU80aThjUFpqTmZOcUd5TVhsVkl6ekJycHZHM25mNS9WRk0v?=
 =?utf-8?B?VmdGNWp1U2txcFV5TE1TMzd3WHUzeUxVOHpmQklRV2N4K2x1SWNwOWV1eTZ6?=
 =?utf-8?Q?R8wk+rsMifD2ELoBfwincEcFv?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c6b8e2ce-73a4-4dc8-557b-08db2ede11dd
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6053.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2023 16:12:32.4926 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fjh89azyq48ExyvM+nGe+983DYD0oAUqK+1wTJ/zgzCYgi8ZcChBcsTtGupuJj28r369hZIo1NQ5NTPuwkLTug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5112
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/i9xx_wm: Prefer intel_de functions
 over intel_uncore.
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
Cc: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Let's get rid of the intel_uncore calls on display side.

v2: Fix multiple CHECK:PARENTHESIS_ALIGNMENT:
    Alignment should match open parenthesis

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20230308165859.235520-2-rodrigo.vivi@intel.com
---
 drivers/gpu/drm/i915/display/i9xx_wm.c  | 366 ++++++++++++------------
 drivers/gpu/drm/i915/display/intel_de.h |  12 +
 2 files changed, 195 insertions(+), 183 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 8fe0b5c63d3a..22669b73d4c6 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -6,6 +6,7 @@
 #include "i915_drv.h"
 #include "i9xx_wm.h"
 #include "intel_atomic.h"
+#include "intel_de.h"
 #include "intel_display.h"
 #include "intel_display_trace.h"
 #include "intel_mchbar_regs.h"
@@ -141,39 +142,39 @@ static bool _intel_set_memory_cxsr(struct drm_i915_private *dev_priv, bool enabl
 	u32 val;
 
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
-		was_enabled = intel_uncore_read(&dev_priv->uncore, FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
-		intel_uncore_write(&dev_priv->uncore, FW_BLC_SELF_VLV, enable ? FW_CSPWRDWNEN : 0);
-		intel_uncore_posting_read(&dev_priv->uncore, FW_BLC_SELF_VLV);
+		was_enabled = intel_de_read(dev_priv, FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
+		intel_de_write(dev_priv, FW_BLC_SELF_VLV, enable ? FW_CSPWRDWNEN : 0);
+		intel_de_posting_read(dev_priv, FW_BLC_SELF_VLV);
 	} else if (IS_G4X(dev_priv) || IS_I965GM(dev_priv)) {
-		was_enabled = intel_uncore_read(&dev_priv->uncore, FW_BLC_SELF) & FW_BLC_SELF_EN;
-		intel_uncore_write(&dev_priv->uncore, FW_BLC_SELF, enable ? FW_BLC_SELF_EN : 0);
-		intel_uncore_posting_read(&dev_priv->uncore, FW_BLC_SELF);
+		was_enabled = intel_de_read(dev_priv, FW_BLC_SELF) & FW_BLC_SELF_EN;
+		intel_de_write(dev_priv, FW_BLC_SELF, enable ? FW_BLC_SELF_EN : 0);
+		intel_de_posting_read(dev_priv, FW_BLC_SELF);
 	} else if (IS_PINEVIEW(dev_priv)) {
-		val = intel_uncore_read(&dev_priv->uncore, DSPFW3);
+		val = intel_de_read(dev_priv, DSPFW3);
 		was_enabled = val & PINEVIEW_SELF_REFRESH_EN;
 		if (enable)
 			val |= PINEVIEW_SELF_REFRESH_EN;
 		else
 			val &= ~PINEVIEW_SELF_REFRESH_EN;
-		intel_uncore_write(&dev_priv->uncore, DSPFW3, val);
-		intel_uncore_posting_read(&dev_priv->uncore, DSPFW3);
+		intel_de_write(dev_priv, DSPFW3, val);
+		intel_de_posting_read(dev_priv, DSPFW3);
 	} else if (IS_I945G(dev_priv) || IS_I945GM(dev_priv)) {
-		was_enabled = intel_uncore_read(&dev_priv->uncore, FW_BLC_SELF) & FW_BLC_SELF_EN;
+		was_enabled = intel_de_read(dev_priv, FW_BLC_SELF) & FW_BLC_SELF_EN;
 		val = enable ? _MASKED_BIT_ENABLE(FW_BLC_SELF_EN) :
 			       _MASKED_BIT_DISABLE(FW_BLC_SELF_EN);
-		intel_uncore_write(&dev_priv->uncore, FW_BLC_SELF, val);
-		intel_uncore_posting_read(&dev_priv->uncore, FW_BLC_SELF);
+		intel_de_write(dev_priv, FW_BLC_SELF, val);
+		intel_de_posting_read(dev_priv, FW_BLC_SELF);
 	} else if (IS_I915GM(dev_priv)) {
 		/*
 		 * FIXME can't find a bit like this for 915G, and
 		 * yet it does have the related watermark in
 		 * FW_BLC_SELF. What's going on?
 		 */
-		was_enabled = intel_uncore_read(&dev_priv->uncore, INSTPM) & INSTPM_SELF_EN;
+		was_enabled = intel_de_read(dev_priv, INSTPM) & INSTPM_SELF_EN;
 		val = enable ? _MASKED_BIT_ENABLE(INSTPM_SELF_EN) :
 			       _MASKED_BIT_DISABLE(INSTPM_SELF_EN);
-		intel_uncore_write(&dev_priv->uncore, INSTPM, val);
-		intel_uncore_posting_read(&dev_priv->uncore, INSTPM);
+		intel_de_write(dev_priv, INSTPM, val);
+		intel_de_posting_read(dev_priv, INSTPM);
 	} else {
 		return false;
 	}
@@ -269,20 +270,20 @@ static void vlv_get_fifo_size(struct intel_crtc_state *crtc_state)
 
 	switch (pipe) {
 	case PIPE_A:
-		dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB);
-		dsparb2 = intel_uncore_read(&dev_priv->uncore, DSPARB2);
+		dsparb = intel_de_read(dev_priv, DSPARB);
+		dsparb2 = intel_de_read(dev_priv, DSPARB2);
 		sprite0_start = VLV_FIFO_START(dsparb, dsparb2, 0, 0);
 		sprite1_start = VLV_FIFO_START(dsparb, dsparb2, 8, 4);
 		break;
 	case PIPE_B:
-		dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB);
-		dsparb2 = intel_uncore_read(&dev_priv->uncore, DSPARB2);
+		dsparb = intel_de_read(dev_priv, DSPARB);
+		dsparb2 = intel_de_read(dev_priv, DSPARB2);
 		sprite0_start = VLV_FIFO_START(dsparb, dsparb2, 16, 8);
 		sprite1_start = VLV_FIFO_START(dsparb, dsparb2, 24, 12);
 		break;
 	case PIPE_C:
-		dsparb2 = intel_uncore_read(&dev_priv->uncore, DSPARB2);
-		dsparb3 = intel_uncore_read(&dev_priv->uncore, DSPARB3);
+		dsparb2 = intel_de_read(dev_priv, DSPARB2);
+		dsparb3 = intel_de_read(dev_priv, DSPARB3);
 		sprite0_start = VLV_FIFO_START(dsparb3, dsparb2, 0, 16);
 		sprite1_start = VLV_FIFO_START(dsparb3, dsparb2, 8, 20);
 		break;
@@ -300,7 +301,7 @@ static void vlv_get_fifo_size(struct intel_crtc_state *crtc_state)
 static int i9xx_get_fifo_size(struct drm_i915_private *dev_priv,
 			      enum i9xx_plane_id i9xx_plane)
 {
-	u32 dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB);
+	u32 dsparb = intel_de_read(dev_priv, DSPARB);
 	int size;
 
 	size = dsparb & 0x7f;
@@ -316,7 +317,7 @@ static int i9xx_get_fifo_size(struct drm_i915_private *dev_priv,
 static int i830_get_fifo_size(struct drm_i915_private *dev_priv,
 			      enum i9xx_plane_id i9xx_plane)
 {
-	u32 dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB);
+	u32 dsparb = intel_de_read(dev_priv, DSPARB);
 	int size;
 
 	size = dsparb & 0x1ff;
@@ -333,7 +334,7 @@ static int i830_get_fifo_size(struct drm_i915_private *dev_priv,
 static int i845_get_fifo_size(struct drm_i915_private *dev_priv,
 			      enum i9xx_plane_id i9xx_plane)
 {
-	u32 dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB);
+	u32 dsparb = intel_de_read(dev_priv, DSPARB);
 	int size;
 
 	size = dsparb & 0x7f;
@@ -655,33 +656,33 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
 		wm = intel_calculate_wm(pixel_rate, &pnv_display_wm,
 					pnv_display_wm.fifo_size,
 					cpp, latency->display_sr);
-		reg = intel_uncore_read(&dev_priv->uncore, DSPFW1);
+		reg = intel_de_read(dev_priv, DSPFW1);
 		reg &= ~DSPFW_SR_MASK;
 		reg |= FW_WM(wm, SR);
-		intel_uncore_write(&dev_priv->uncore, DSPFW1, reg);
+		intel_de_write(dev_priv, DSPFW1, reg);
 		drm_dbg_kms(&dev_priv->drm, "DSPFW1 register is %x\n", reg);
 
 		/* cursor SR */
 		wm = intel_calculate_wm(pixel_rate, &pnv_cursor_wm,
 					pnv_display_wm.fifo_size,
 					4, latency->cursor_sr);
-		intel_uncore_rmw(&dev_priv->uncore, DSPFW3, DSPFW_CURSOR_SR_MASK,
-				 FW_WM(wm, CURSOR_SR));
+		intel_de_rmw(dev_priv, DSPFW3, DSPFW_CURSOR_SR_MASK,
+			     FW_WM(wm, CURSOR_SR));
 
 		/* Display HPLL off SR */
 		wm = intel_calculate_wm(pixel_rate, &pnv_display_hplloff_wm,
 					pnv_display_hplloff_wm.fifo_size,
 					cpp, latency->display_hpll_disable);
-		intel_uncore_rmw(&dev_priv->uncore, DSPFW3, DSPFW_HPLL_SR_MASK, FW_WM(wm, HPLL_SR));
+		intel_de_rmw(dev_priv, DSPFW3, DSPFW_HPLL_SR_MASK, FW_WM(wm, HPLL_SR));
 
 		/* cursor HPLL off SR */
 		wm = intel_calculate_wm(pixel_rate, &pnv_cursor_hplloff_wm,
 					pnv_display_hplloff_wm.fifo_size,
 					4, latency->cursor_hpll_disable);
-		reg = intel_uncore_read(&dev_priv->uncore, DSPFW3);
+		reg = intel_de_read(dev_priv, DSPFW3);
 		reg &= ~DSPFW_HPLL_CURSOR_MASK;
 		reg |= FW_WM(wm, HPLL_CURSOR);
-		intel_uncore_write(&dev_priv->uncore, DSPFW3, reg);
+		intel_de_write(dev_priv, DSPFW3, reg);
 		drm_dbg_kms(&dev_priv->drm, "DSPFW3 register is %x\n", reg);
 
 		intel_set_memory_cxsr(dev_priv, true);
@@ -715,25 +716,25 @@ static void g4x_write_wm_values(struct drm_i915_private *dev_priv,
 	for_each_pipe(dev_priv, pipe)
 		trace_g4x_wm(intel_crtc_for_pipe(dev_priv, pipe), wm);
 
-	intel_uncore_write(&dev_priv->uncore, DSPFW1,
-			   FW_WM(wm->sr.plane, SR) |
-			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_CURSOR], CURSORB) |
-			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_PRIMARY], PLANEB) |
-			   FW_WM(wm->pipe[PIPE_A].plane[PLANE_PRIMARY], PLANEA));
-	intel_uncore_write(&dev_priv->uncore, DSPFW2,
-			   (wm->fbc_en ? DSPFW_FBC_SR_EN : 0) |
-			   FW_WM(wm->sr.fbc, FBC_SR) |
-			   FW_WM(wm->hpll.fbc, FBC_HPLL_SR) |
-			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE0], SPRITEB) |
-			   FW_WM(wm->pipe[PIPE_A].plane[PLANE_CURSOR], CURSORA) |
-			   FW_WM(wm->pipe[PIPE_A].plane[PLANE_SPRITE0], SPRITEA));
-	intel_uncore_write(&dev_priv->uncore, DSPFW3,
-			   (wm->hpll_en ? DSPFW_HPLL_SR_EN : 0) |
-			   FW_WM(wm->sr.cursor, CURSOR_SR) |
-			   FW_WM(wm->hpll.cursor, HPLL_CURSOR) |
-			   FW_WM(wm->hpll.plane, HPLL_SR));
-
-	intel_uncore_posting_read(&dev_priv->uncore, DSPFW1);
+	intel_de_write(dev_priv, DSPFW1,
+		       FW_WM(wm->sr.plane, SR) |
+		       FW_WM(wm->pipe[PIPE_B].plane[PLANE_CURSOR], CURSORB) |
+		       FW_WM(wm->pipe[PIPE_B].plane[PLANE_PRIMARY], PLANEB) |
+		       FW_WM(wm->pipe[PIPE_A].plane[PLANE_PRIMARY], PLANEA));
+	intel_de_write(dev_priv, DSPFW2,
+		       (wm->fbc_en ? DSPFW_FBC_SR_EN : 0) |
+		       FW_WM(wm->sr.fbc, FBC_SR) |
+		       FW_WM(wm->hpll.fbc, FBC_HPLL_SR) |
+		       FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE0], SPRITEB) |
+		       FW_WM(wm->pipe[PIPE_A].plane[PLANE_CURSOR], CURSORA) |
+		       FW_WM(wm->pipe[PIPE_A].plane[PLANE_SPRITE0], SPRITEA));
+	intel_de_write(dev_priv, DSPFW3,
+		       (wm->hpll_en ? DSPFW_HPLL_SR_EN : 0) |
+		       FW_WM(wm->sr.cursor, CURSOR_SR) |
+		       FW_WM(wm->hpll.cursor, HPLL_CURSOR) |
+		       FW_WM(wm->hpll.plane, HPLL_SR));
+
+	intel_de_posting_read(dev_priv, DSPFW1);
 }
 
 #define FW_WM_VLV(value, plane) \
@@ -747,11 +748,11 @@ static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
 	for_each_pipe(dev_priv, pipe) {
 		trace_vlv_wm(intel_crtc_for_pipe(dev_priv, pipe), wm);
 
-		intel_uncore_write(&dev_priv->uncore, VLV_DDL(pipe),
-				   (wm->ddl[pipe].plane[PLANE_CURSOR] << DDL_CURSOR_SHIFT) |
-				   (wm->ddl[pipe].plane[PLANE_SPRITE1] << DDL_SPRITE_SHIFT(1)) |
-				   (wm->ddl[pipe].plane[PLANE_SPRITE0] << DDL_SPRITE_SHIFT(0)) |
-				   (wm->ddl[pipe].plane[PLANE_PRIMARY] << DDL_PLANE_SHIFT));
+		intel_de_write(dev_priv, VLV_DDL(pipe),
+			       (wm->ddl[pipe].plane[PLANE_CURSOR] << DDL_CURSOR_SHIFT) |
+			       (wm->ddl[pipe].plane[PLANE_SPRITE1] << DDL_SPRITE_SHIFT(1)) |
+			       (wm->ddl[pipe].plane[PLANE_SPRITE0] << DDL_SPRITE_SHIFT(0)) |
+			       (wm->ddl[pipe].plane[PLANE_PRIMARY] << DDL_PLANE_SHIFT));
 	}
 
 	/*
@@ -759,60 +760,60 @@ static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
 	 * high order bits so that there are no out of bounds values
 	 * present in the registers during the reprogramming.
 	 */
-	intel_uncore_write(&dev_priv->uncore, DSPHOWM, 0);
-	intel_uncore_write(&dev_priv->uncore, DSPHOWM1, 0);
-	intel_uncore_write(&dev_priv->uncore, DSPFW4, 0);
-	intel_uncore_write(&dev_priv->uncore, DSPFW5, 0);
-	intel_uncore_write(&dev_priv->uncore, DSPFW6, 0);
-
-	intel_uncore_write(&dev_priv->uncore, DSPFW1,
-			   FW_WM(wm->sr.plane, SR) |
-			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_CURSOR], CURSORB) |
-			   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_PRIMARY], PLANEB) |
-			   FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_PRIMARY], PLANEA));
-	intel_uncore_write(&dev_priv->uncore, DSPFW2,
-			   FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_SPRITE1], SPRITEB) |
-			   FW_WM(wm->pipe[PIPE_A].plane[PLANE_CURSOR], CURSORA) |
-			   FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_SPRITE0], SPRITEA));
-	intel_uncore_write(&dev_priv->uncore, DSPFW3,
-			   FW_WM(wm->sr.cursor, CURSOR_SR));
+	intel_de_write(dev_priv, DSPHOWM, 0);
+	intel_de_write(dev_priv, DSPHOWM1, 0);
+	intel_de_write(dev_priv, DSPFW4, 0);
+	intel_de_write(dev_priv, DSPFW5, 0);
+	intel_de_write(dev_priv, DSPFW6, 0);
+
+	intel_de_write(dev_priv, DSPFW1,
+		       FW_WM(wm->sr.plane, SR) |
+		       FW_WM(wm->pipe[PIPE_B].plane[PLANE_CURSOR], CURSORB) |
+		       FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_PRIMARY], PLANEB) |
+		       FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_PRIMARY], PLANEA));
+	intel_de_write(dev_priv, DSPFW2,
+		       FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_SPRITE1], SPRITEB) |
+		       FW_WM(wm->pipe[PIPE_A].plane[PLANE_CURSOR], CURSORA) |
+		       FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_SPRITE0], SPRITEA));
+	intel_de_write(dev_priv, DSPFW3,
+		       FW_WM(wm->sr.cursor, CURSOR_SR));
 
 	if (IS_CHERRYVIEW(dev_priv)) {
-		intel_uncore_write(&dev_priv->uncore, DSPFW7_CHV,
-				   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE1], SPRITED) |
-				   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE0], SPRITEC));
-		intel_uncore_write(&dev_priv->uncore, DSPFW8_CHV,
-				   FW_WM_VLV(wm->pipe[PIPE_C].plane[PLANE_SPRITE1], SPRITEF) |
-				   FW_WM_VLV(wm->pipe[PIPE_C].plane[PLANE_SPRITE0], SPRITEE));
-		intel_uncore_write(&dev_priv->uncore, DSPFW9_CHV,
-				   FW_WM_VLV(wm->pipe[PIPE_C].plane[PLANE_PRIMARY], PLANEC) |
-				   FW_WM(wm->pipe[PIPE_C].plane[PLANE_CURSOR], CURSORC));
-		intel_uncore_write(&dev_priv->uncore, DSPHOWM,
-				   FW_WM(wm->sr.plane >> 9, SR_HI) |
-				   FW_WM(wm->pipe[PIPE_C].plane[PLANE_SPRITE1] >> 8, SPRITEF_HI) |
-				   FW_WM(wm->pipe[PIPE_C].plane[PLANE_SPRITE0] >> 8, SPRITEE_HI) |
-				   FW_WM(wm->pipe[PIPE_C].plane[PLANE_PRIMARY] >> 8, PLANEC_HI) |
-				   FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE1] >> 8, SPRITED_HI) |
-				   FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE0] >> 8, SPRITEC_HI) |
-				   FW_WM(wm->pipe[PIPE_B].plane[PLANE_PRIMARY] >> 8, PLANEB_HI) |
-				   FW_WM(wm->pipe[PIPE_A].plane[PLANE_SPRITE1] >> 8, SPRITEB_HI) |
-				   FW_WM(wm->pipe[PIPE_A].plane[PLANE_SPRITE0] >> 8, SPRITEA_HI) |
-				   FW_WM(wm->pipe[PIPE_A].plane[PLANE_PRIMARY] >> 8, PLANEA_HI));
+		intel_de_write(dev_priv, DSPFW7_CHV,
+			       FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE1], SPRITED) |
+			       FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE0], SPRITEC));
+		intel_de_write(dev_priv, DSPFW8_CHV,
+			       FW_WM_VLV(wm->pipe[PIPE_C].plane[PLANE_SPRITE1], SPRITEF) |
+			       FW_WM_VLV(wm->pipe[PIPE_C].plane[PLANE_SPRITE0], SPRITEE));
+		intel_de_write(dev_priv, DSPFW9_CHV,
+			       FW_WM_VLV(wm->pipe[PIPE_C].plane[PLANE_PRIMARY], PLANEC) |
+			       FW_WM(wm->pipe[PIPE_C].plane[PLANE_CURSOR], CURSORC));
+		intel_de_write(dev_priv, DSPHOWM,
+			       FW_WM(wm->sr.plane >> 9, SR_HI) |
+			       FW_WM(wm->pipe[PIPE_C].plane[PLANE_SPRITE1] >> 8, SPRITEF_HI) |
+			       FW_WM(wm->pipe[PIPE_C].plane[PLANE_SPRITE0] >> 8, SPRITEE_HI) |
+			       FW_WM(wm->pipe[PIPE_C].plane[PLANE_PRIMARY] >> 8, PLANEC_HI) |
+			       FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE1] >> 8, SPRITED_HI) |
+			       FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE0] >> 8, SPRITEC_HI) |
+			       FW_WM(wm->pipe[PIPE_B].plane[PLANE_PRIMARY] >> 8, PLANEB_HI) |
+			       FW_WM(wm->pipe[PIPE_A].plane[PLANE_SPRITE1] >> 8, SPRITEB_HI) |
+			       FW_WM(wm->pipe[PIPE_A].plane[PLANE_SPRITE0] >> 8, SPRITEA_HI) |
+			       FW_WM(wm->pipe[PIPE_A].plane[PLANE_PRIMARY] >> 8, PLANEA_HI));
 	} else {
-		intel_uncore_write(&dev_priv->uncore, DSPFW7,
-				   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE1], SPRITED) |
-				   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE0], SPRITEC));
-		intel_uncore_write(&dev_priv->uncore, DSPHOWM,
-				   FW_WM(wm->sr.plane >> 9, SR_HI) |
-				   FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE1] >> 8, SPRITED_HI) |
-				   FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE0] >> 8, SPRITEC_HI) |
-				   FW_WM(wm->pipe[PIPE_B].plane[PLANE_PRIMARY] >> 8, PLANEB_HI) |
-				   FW_WM(wm->pipe[PIPE_A].plane[PLANE_SPRITE1] >> 8, SPRITEB_HI) |
-				   FW_WM(wm->pipe[PIPE_A].plane[PLANE_SPRITE0] >> 8, SPRITEA_HI) |
-				   FW_WM(wm->pipe[PIPE_A].plane[PLANE_PRIMARY] >> 8, PLANEA_HI));
+		intel_de_write(dev_priv, DSPFW7,
+			       FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE1], SPRITED) |
+			       FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE0], SPRITEC));
+		intel_de_write(dev_priv, DSPHOWM,
+			       FW_WM(wm->sr.plane >> 9, SR_HI) |
+			       FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE1] >> 8, SPRITED_HI) |
+			       FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE0] >> 8, SPRITEC_HI) |
+			       FW_WM(wm->pipe[PIPE_B].plane[PLANE_PRIMARY] >> 8, PLANEB_HI) |
+			       FW_WM(wm->pipe[PIPE_A].plane[PLANE_SPRITE1] >> 8, SPRITEB_HI) |
+			       FW_WM(wm->pipe[PIPE_A].plane[PLANE_SPRITE0] >> 8, SPRITEA_HI) |
+			       FW_WM(wm->pipe[PIPE_A].plane[PLANE_PRIMARY] >> 8, PLANEA_HI));
 	}
 
-	intel_uncore_posting_read(&dev_priv->uncore, DSPFW1);
+	intel_de_posting_read(dev_priv, DSPFW1);
 }
 
 #undef FW_WM_VLV
@@ -1751,7 +1752,6 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_uncore *uncore = &dev_priv->uncore;
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct vlv_fifo_state *fifo_state =
@@ -1775,8 +1775,8 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 
 	switch (crtc->pipe) {
 	case PIPE_A:
-		dsparb = intel_uncore_read_fw(uncore, DSPARB);
-		dsparb2 = intel_uncore_read_fw(uncore, DSPARB2);
+		dsparb = intel_de_read_fw(dev_priv, DSPARB);
+		dsparb2 = intel_de_read_fw(dev_priv, DSPARB2);
 
 		dsparb &= ~(VLV_FIFO(SPRITEA, 0xff) |
 			    VLV_FIFO(SPRITEB, 0xff));
@@ -1788,12 +1788,12 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 		dsparb2 |= (VLV_FIFO(SPRITEA_HI, sprite0_start >> 8) |
 			   VLV_FIFO(SPRITEB_HI, sprite1_start >> 8));
 
-		intel_uncore_write_fw(uncore, DSPARB, dsparb);
-		intel_uncore_write_fw(uncore, DSPARB2, dsparb2);
+		intel_de_write_fw(dev_priv, DSPARB, dsparb);
+		intel_de_write_fw(dev_priv, DSPARB2, dsparb2);
 		break;
 	case PIPE_B:
-		dsparb = intel_uncore_read_fw(uncore, DSPARB);
-		dsparb2 = intel_uncore_read_fw(uncore, DSPARB2);
+		dsparb = intel_de_read_fw(dev_priv, DSPARB);
+		dsparb2 = intel_de_read_fw(dev_priv, DSPARB2);
 
 		dsparb &= ~(VLV_FIFO(SPRITEC, 0xff) |
 			    VLV_FIFO(SPRITED, 0xff));
@@ -1805,12 +1805,12 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 		dsparb2 |= (VLV_FIFO(SPRITEC_HI, sprite0_start >> 8) |
 			   VLV_FIFO(SPRITED_HI, sprite1_start >> 8));
 
-		intel_uncore_write_fw(uncore, DSPARB, dsparb);
-		intel_uncore_write_fw(uncore, DSPARB2, dsparb2);
+		intel_de_write_fw(dev_priv, DSPARB, dsparb);
+		intel_de_write_fw(dev_priv, DSPARB2, dsparb2);
 		break;
 	case PIPE_C:
-		dsparb3 = intel_uncore_read_fw(uncore, DSPARB3);
-		dsparb2 = intel_uncore_read_fw(uncore, DSPARB2);
+		dsparb3 = intel_de_read_fw(dev_priv, DSPARB3);
+		dsparb2 = intel_de_read_fw(dev_priv, DSPARB2);
 
 		dsparb3 &= ~(VLV_FIFO(SPRITEE, 0xff) |
 			     VLV_FIFO(SPRITEF, 0xff));
@@ -1822,14 +1822,14 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 		dsparb2 |= (VLV_FIFO(SPRITEE_HI, sprite0_start >> 8) |
 			   VLV_FIFO(SPRITEF_HI, sprite1_start >> 8));
 
-		intel_uncore_write_fw(uncore, DSPARB3, dsparb3);
-		intel_uncore_write_fw(uncore, DSPARB2, dsparb2);
+		intel_de_write_fw(dev_priv, DSPARB3, dsparb3);
+		intel_de_write_fw(dev_priv, DSPARB2, dsparb2);
 		break;
 	default:
 		break;
 	}
 
-	intel_uncore_posting_read_fw(uncore, DSPARB);
+	intel_de_posting_read_fw(dev_priv, DSPARB);
 
 	spin_unlock(&dev_priv->display.wm.dsparb_lock);
 }
@@ -2053,14 +2053,14 @@ static void i965_update_wm(struct drm_i915_private *dev_priv)
 		    srwm);
 
 	/* 965 has limitations... */
-	intel_uncore_write(&dev_priv->uncore, DSPFW1, FW_WM(srwm, SR) |
-		   FW_WM(8, CURSORB) |
-		   FW_WM(8, PLANEB) |
-		   FW_WM(8, PLANEA));
-	intel_uncore_write(&dev_priv->uncore, DSPFW2, FW_WM(8, CURSORA) |
-		   FW_WM(8, PLANEC_OLD));
+	intel_de_write(dev_priv, DSPFW1, FW_WM(srwm, SR) |
+		       FW_WM(8, CURSORB) |
+		       FW_WM(8, PLANEB) |
+		       FW_WM(8, PLANEA));
+	intel_de_write(dev_priv, DSPFW2, FW_WM(8, CURSORA) |
+		       FW_WM(8, PLANEC_OLD));
 	/* update cursor SR watermark */
-	intel_uncore_write(&dev_priv->uncore, DSPFW3, FW_WM(cursor_sr, CURSOR_SR));
+	intel_de_write(dev_priv, DSPFW3, FW_WM(cursor_sr, CURSOR_SR));
 
 	if (cxsr_enabled)
 		intel_set_memory_cxsr(dev_priv, true);
@@ -2201,10 +2201,10 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 			srwm = 1;
 
 		if (IS_I945G(dev_priv) || IS_I945GM(dev_priv))
-			intel_uncore_write(&dev_priv->uncore, FW_BLC_SELF,
-				   FW_BLC_SELF_FIFO_MASK | (srwm & 0xff));
+			intel_de_write(dev_priv, FW_BLC_SELF,
+				       FW_BLC_SELF_FIFO_MASK | (srwm & 0xff));
 		else
-			intel_uncore_write(&dev_priv->uncore, FW_BLC_SELF, srwm & 0x3f);
+			intel_de_write(dev_priv, FW_BLC_SELF, srwm & 0x3f);
 	}
 
 	drm_dbg_kms(&dev_priv->drm,
@@ -2218,8 +2218,8 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 	fwater_lo = fwater_lo | (1 << 24) | (1 << 8);
 	fwater_hi = fwater_hi | (1 << 8);
 
-	intel_uncore_write(&dev_priv->uncore, FW_BLC, fwater_lo);
-	intel_uncore_write(&dev_priv->uncore, FW_BLC2, fwater_hi);
+	intel_de_write(dev_priv, FW_BLC, fwater_lo);
+	intel_de_write(dev_priv, FW_BLC2, fwater_hi);
 
 	if (crtc)
 		intel_set_memory_cxsr(dev_priv, true);
@@ -2239,13 +2239,13 @@ static void i845_update_wm(struct drm_i915_private *dev_priv)
 				       &i845_wm_info,
 				       i845_get_fifo_size(dev_priv, PLANE_A),
 				       4, pessimal_latency_ns);
-	fwater_lo = intel_uncore_read(&dev_priv->uncore, FW_BLC) & ~0xfff;
+	fwater_lo = intel_de_read(dev_priv, FW_BLC) & ~0xfff;
 	fwater_lo |= (3<<8) | planea_wm;
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "Setting FIFO watermarks - A: %d\n", planea_wm);
 
-	intel_uncore_write(&dev_priv->uncore, FW_BLC, fwater_lo);
+	intel_de_write(dev_priv, FW_BLC, fwater_lo);
 }
 
 /* latency must be in 0.1us units. */
@@ -2603,7 +2603,7 @@ static void hsw_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 
 	i915->display.wm.num_levels = 5;
 
-	sskpd = intel_uncore_read64(&i915->uncore, MCH_SSKPD);
+	sskpd = intel_de_read64(i915, MCH_SSKPD);
 
 	wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
 	if (wm[0] == 0)
@@ -2620,7 +2620,7 @@ static void snb_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 
 	i915->display.wm.num_levels = 4;
 
-	sskpd = intel_uncore_read(&i915->uncore, MCH_SSKPD);
+	sskpd = intel_de_read(i915, MCH_SSKPD);
 
 	wm[0] = REG_FIELD_GET(SSKPD_WM0_MASK_SNB, sskpd);
 	wm[1] = REG_FIELD_GET(SSKPD_WM1_MASK_SNB, sskpd);
@@ -2634,7 +2634,7 @@ static void ilk_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 
 	i915->display.wm.num_levels = 3;
 
-	mltr = intel_uncore_read(&i915->uncore, MLTR_ILK);
+	mltr = intel_de_read(i915, MLTR_ILK);
 
 	/* ILK primary LP0 latency is 700 ns */
 	wm[0] = 7;
@@ -3163,17 +3163,17 @@ static bool _ilk_disable_lp_wm(struct drm_i915_private *dev_priv,
 
 	if (dirty & WM_DIRTY_LP(3) && previous->wm_lp[2] & WM_LP_ENABLE) {
 		previous->wm_lp[2] &= ~WM_LP_ENABLE;
-		intel_uncore_write(&dev_priv->uncore, WM3_LP_ILK, previous->wm_lp[2]);
+		intel_de_write(dev_priv, WM3_LP_ILK, previous->wm_lp[2]);
 		changed = true;
 	}
 	if (dirty & WM_DIRTY_LP(2) && previous->wm_lp[1] & WM_LP_ENABLE) {
 		previous->wm_lp[1] &= ~WM_LP_ENABLE;
-		intel_uncore_write(&dev_priv->uncore, WM2_LP_ILK, previous->wm_lp[1]);
+		intel_de_write(dev_priv, WM2_LP_ILK, previous->wm_lp[1]);
 		changed = true;
 	}
 	if (dirty & WM_DIRTY_LP(1) && previous->wm_lp[0] & WM_LP_ENABLE) {
 		previous->wm_lp[0] &= ~WM_LP_ENABLE;
-		intel_uncore_write(&dev_priv->uncore, WM1_LP_ILK, previous->wm_lp[0]);
+		intel_de_write(dev_priv, WM1_LP_ILK, previous->wm_lp[0]);
 		changed = true;
 	}
 
@@ -3202,44 +3202,44 @@ static void ilk_write_wm_values(struct drm_i915_private *dev_priv,
 	_ilk_disable_lp_wm(dev_priv, dirty);
 
 	if (dirty & WM_DIRTY_PIPE(PIPE_A))
-		intel_uncore_write(&dev_priv->uncore, WM0_PIPE_ILK(PIPE_A), results->wm_pipe[0]);
+		intel_de_write(dev_priv, WM0_PIPE_ILK(PIPE_A), results->wm_pipe[0]);
 	if (dirty & WM_DIRTY_PIPE(PIPE_B))
-		intel_uncore_write(&dev_priv->uncore, WM0_PIPE_ILK(PIPE_B), results->wm_pipe[1]);
+		intel_de_write(dev_priv, WM0_PIPE_ILK(PIPE_B), results->wm_pipe[1]);
 	if (dirty & WM_DIRTY_PIPE(PIPE_C))
-		intel_uncore_write(&dev_priv->uncore, WM0_PIPE_ILK(PIPE_C), results->wm_pipe[2]);
+		intel_de_write(dev_priv, WM0_PIPE_ILK(PIPE_C), results->wm_pipe[2]);
 
 	if (dirty & WM_DIRTY_DDB) {
 		if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
-			intel_uncore_rmw(&dev_priv->uncore, WM_MISC, WM_MISC_DATA_PARTITION_5_6,
-					 results->partitioning == INTEL_DDB_PART_1_2 ? 0 :
-					 WM_MISC_DATA_PARTITION_5_6);
+			intel_de_rmw(dev_priv, WM_MISC, WM_MISC_DATA_PARTITION_5_6,
+				     results->partitioning == INTEL_DDB_PART_1_2 ? 0 :
+				     WM_MISC_DATA_PARTITION_5_6);
 		else
-			intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL2, DISP_DATA_PARTITION_5_6,
-					 results->partitioning == INTEL_DDB_PART_1_2 ? 0 :
-					 DISP_DATA_PARTITION_5_6);
+			intel_de_rmw(dev_priv, DISP_ARB_CTL2, DISP_DATA_PARTITION_5_6,
+				     results->partitioning == INTEL_DDB_PART_1_2 ? 0 :
+				     DISP_DATA_PARTITION_5_6);
 	}
 
 	if (dirty & WM_DIRTY_FBC)
-		intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL, DISP_FBC_WM_DIS,
-				 results->enable_fbc_wm ? 0 : DISP_FBC_WM_DIS);
+		intel_de_rmw(dev_priv, DISP_ARB_CTL, DISP_FBC_WM_DIS,
+			     results->enable_fbc_wm ? 0 : DISP_FBC_WM_DIS);
 
 	if (dirty & WM_DIRTY_LP(1) &&
 	    previous->wm_lp_spr[0] != results->wm_lp_spr[0])
-		intel_uncore_write(&dev_priv->uncore, WM1S_LP_ILK, results->wm_lp_spr[0]);
+		intel_de_write(dev_priv, WM1S_LP_ILK, results->wm_lp_spr[0]);
 
 	if (DISPLAY_VER(dev_priv) >= 7) {
 		if (dirty & WM_DIRTY_LP(2) && previous->wm_lp_spr[1] != results->wm_lp_spr[1])
-			intel_uncore_write(&dev_priv->uncore, WM2S_LP_IVB, results->wm_lp_spr[1]);
+			intel_de_write(dev_priv, WM2S_LP_IVB, results->wm_lp_spr[1]);
 		if (dirty & WM_DIRTY_LP(3) && previous->wm_lp_spr[2] != results->wm_lp_spr[2])
-			intel_uncore_write(&dev_priv->uncore, WM3S_LP_IVB, results->wm_lp_spr[2]);
+			intel_de_write(dev_priv, WM3S_LP_IVB, results->wm_lp_spr[2]);
 	}
 
 	if (dirty & WM_DIRTY_LP(1) && previous->wm_lp[0] != results->wm_lp[0])
-		intel_uncore_write(&dev_priv->uncore, WM1_LP_ILK, results->wm_lp[0]);
+		intel_de_write(dev_priv, WM1_LP_ILK, results->wm_lp[0]);
 	if (dirty & WM_DIRTY_LP(2) && previous->wm_lp[1] != results->wm_lp[1])
-		intel_uncore_write(&dev_priv->uncore, WM2_LP_ILK, results->wm_lp[1]);
+		intel_de_write(dev_priv, WM2_LP_ILK, results->wm_lp[1]);
 	if (dirty & WM_DIRTY_LP(3) && previous->wm_lp[2] != results->wm_lp[2])
-		intel_uncore_write(&dev_priv->uncore, WM3_LP_ILK, results->wm_lp[2]);
+		intel_de_write(dev_priv, WM3_LP_ILK, results->wm_lp[2]);
 
 	dev_priv->display.wm.hw = *results;
 }
@@ -3337,7 +3337,7 @@ static void ilk_pipe_wm_get_hw_state(struct intel_crtc *crtc)
 	struct intel_pipe_wm *active = &crtc_state->wm.ilk.optimal;
 	enum pipe pipe = crtc->pipe;
 
-	hw->wm_pipe[pipe] = intel_uncore_read(&dev_priv->uncore, WM0_PIPE_ILK(pipe));
+	hw->wm_pipe[pipe] = intel_de_read(dev_priv, WM0_PIPE_ILK(pipe));
 
 	memset(active, 0, sizeof(*active));
 
@@ -3502,13 +3502,13 @@ static void g4x_read_wm_values(struct drm_i915_private *dev_priv,
 {
 	u32 tmp;
 
-	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW1);
+	tmp = intel_de_read(dev_priv, DSPFW1);
 	wm->sr.plane = _FW_WM(tmp, SR);
 	wm->pipe[PIPE_B].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORB);
 	wm->pipe[PIPE_B].plane[PLANE_PRIMARY] = _FW_WM(tmp, PLANEB);
 	wm->pipe[PIPE_A].plane[PLANE_PRIMARY] = _FW_WM(tmp, PLANEA);
 
-	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW2);
+	tmp = intel_de_read(dev_priv, DSPFW2);
 	wm->fbc_en = tmp & DSPFW_FBC_SR_EN;
 	wm->sr.fbc = _FW_WM(tmp, FBC_SR);
 	wm->hpll.fbc = _FW_WM(tmp, FBC_HPLL_SR);
@@ -3516,7 +3516,7 @@ static void g4x_read_wm_values(struct drm_i915_private *dev_priv,
 	wm->pipe[PIPE_A].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORA);
 	wm->pipe[PIPE_A].plane[PLANE_SPRITE0] = _FW_WM(tmp, SPRITEA);
 
-	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW3);
+	tmp = intel_de_read(dev_priv, DSPFW3);
 	wm->hpll_en = tmp & DSPFW_HPLL_SR_EN;
 	wm->sr.cursor = _FW_WM(tmp, CURSOR_SR);
 	wm->hpll.cursor = _FW_WM(tmp, HPLL_CURSOR);
@@ -3530,7 +3530,7 @@ static void vlv_read_wm_values(struct drm_i915_private *dev_priv,
 	u32 tmp;
 
 	for_each_pipe(dev_priv, pipe) {
-		tmp = intel_uncore_read(&dev_priv->uncore, VLV_DDL(pipe));
+		tmp = intel_de_read(dev_priv, VLV_DDL(pipe));
 
 		wm->ddl[pipe].plane[PLANE_PRIMARY] =
 			(tmp >> DDL_PLANE_SHIFT) & (DDL_PRECISION_HIGH | DRAIN_LATENCY_MASK);
@@ -3542,34 +3542,34 @@ static void vlv_read_wm_values(struct drm_i915_private *dev_priv,
 			(tmp >> DDL_SPRITE_SHIFT(1)) & (DDL_PRECISION_HIGH | DRAIN_LATENCY_MASK);
 	}
 
-	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW1);
+	tmp = intel_de_read(dev_priv, DSPFW1);
 	wm->sr.plane = _FW_WM(tmp, SR);
 	wm->pipe[PIPE_B].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORB);
 	wm->pipe[PIPE_B].plane[PLANE_PRIMARY] = _FW_WM_VLV(tmp, PLANEB);
 	wm->pipe[PIPE_A].plane[PLANE_PRIMARY] = _FW_WM_VLV(tmp, PLANEA);
 
-	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW2);
+	tmp = intel_de_read(dev_priv, DSPFW2);
 	wm->pipe[PIPE_A].plane[PLANE_SPRITE1] = _FW_WM_VLV(tmp, SPRITEB);
 	wm->pipe[PIPE_A].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORA);
 	wm->pipe[PIPE_A].plane[PLANE_SPRITE0] = _FW_WM_VLV(tmp, SPRITEA);
 
-	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW3);
+	tmp = intel_de_read(dev_priv, DSPFW3);
 	wm->sr.cursor = _FW_WM(tmp, CURSOR_SR);
 
 	if (IS_CHERRYVIEW(dev_priv)) {
-		tmp = intel_uncore_read(&dev_priv->uncore, DSPFW7_CHV);
+		tmp = intel_de_read(dev_priv, DSPFW7_CHV);
 		wm->pipe[PIPE_B].plane[PLANE_SPRITE1] = _FW_WM_VLV(tmp, SPRITED);
 		wm->pipe[PIPE_B].plane[PLANE_SPRITE0] = _FW_WM_VLV(tmp, SPRITEC);
 
-		tmp = intel_uncore_read(&dev_priv->uncore, DSPFW8_CHV);
+		tmp = intel_de_read(dev_priv, DSPFW8_CHV);
 		wm->pipe[PIPE_C].plane[PLANE_SPRITE1] = _FW_WM_VLV(tmp, SPRITEF);
 		wm->pipe[PIPE_C].plane[PLANE_SPRITE0] = _FW_WM_VLV(tmp, SPRITEE);
 
-		tmp = intel_uncore_read(&dev_priv->uncore, DSPFW9_CHV);
+		tmp = intel_de_read(dev_priv, DSPFW9_CHV);
 		wm->pipe[PIPE_C].plane[PLANE_PRIMARY] = _FW_WM_VLV(tmp, PLANEC);
 		wm->pipe[PIPE_C].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORC);
 
-		tmp = intel_uncore_read(&dev_priv->uncore, DSPHOWM);
+		tmp = intel_de_read(dev_priv, DSPHOWM);
 		wm->sr.plane |= _FW_WM(tmp, SR_HI) << 9;
 		wm->pipe[PIPE_C].plane[PLANE_SPRITE1] |= _FW_WM(tmp, SPRITEF_HI) << 8;
 		wm->pipe[PIPE_C].plane[PLANE_SPRITE0] |= _FW_WM(tmp, SPRITEE_HI) << 8;
@@ -3581,11 +3581,11 @@ static void vlv_read_wm_values(struct drm_i915_private *dev_priv,
 		wm->pipe[PIPE_A].plane[PLANE_SPRITE0] |= _FW_WM(tmp, SPRITEA_HI) << 8;
 		wm->pipe[PIPE_A].plane[PLANE_PRIMARY] |= _FW_WM(tmp, PLANEA_HI) << 8;
 	} else {
-		tmp = intel_uncore_read(&dev_priv->uncore, DSPFW7);
+		tmp = intel_de_read(dev_priv, DSPFW7);
 		wm->pipe[PIPE_B].plane[PLANE_SPRITE1] = _FW_WM_VLV(tmp, SPRITED);
 		wm->pipe[PIPE_B].plane[PLANE_SPRITE0] = _FW_WM_VLV(tmp, SPRITEC);
 
-		tmp = intel_uncore_read(&dev_priv->uncore, DSPHOWM);
+		tmp = intel_de_read(dev_priv, DSPHOWM);
 		wm->sr.plane |= _FW_WM(tmp, SR_HI) << 9;
 		wm->pipe[PIPE_B].plane[PLANE_SPRITE1] |= _FW_WM(tmp, SPRITED_HI) << 8;
 		wm->pipe[PIPE_B].plane[PLANE_SPRITE0] |= _FW_WM(tmp, SPRITEC_HI) << 8;
@@ -3606,7 +3606,7 @@ static void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv)
 
 	g4x_read_wm_values(dev_priv, wm);
 
-	wm->cxsr = intel_uncore_read(&dev_priv->uncore, FW_BLC_SELF) & FW_BLC_SELF_EN;
+	wm->cxsr = intel_de_read(dev_priv, FW_BLC_SELF) & FW_BLC_SELF_EN;
 
 	for_each_intel_crtc(&dev_priv->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
@@ -3755,7 +3755,7 @@ static void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv)
 
 	vlv_read_wm_values(dev_priv, wm);
 
-	wm->cxsr = intel_uncore_read(&dev_priv->uncore, FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
+	wm->cxsr = intel_de_read(dev_priv, FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
 	wm->level = VLV_WM_LEVEL_PM2;
 
 	if (IS_CHERRYVIEW(dev_priv)) {
@@ -3905,9 +3905,9 @@ static void vlv_wm_get_hw_state_and_sanitize(struct drm_i915_private *i915)
  */
 static void ilk_init_lp_watermarks(struct drm_i915_private *dev_priv)
 {
-	intel_uncore_rmw(&dev_priv->uncore, WM3_LP_ILK, WM_LP_ENABLE, 0);
-	intel_uncore_rmw(&dev_priv->uncore, WM2_LP_ILK, WM_LP_ENABLE, 0);
-	intel_uncore_rmw(&dev_priv->uncore, WM1_LP_ILK, WM_LP_ENABLE, 0);
+	intel_de_rmw(dev_priv, WM3_LP_ILK, WM_LP_ENABLE, 0);
+	intel_de_rmw(dev_priv, WM2_LP_ILK, WM_LP_ENABLE, 0);
+	intel_de_rmw(dev_priv, WM1_LP_ILK, WM_LP_ENABLE, 0);
 
 	/*
 	 * Don't touch WM_LP_SPRITE_ENABLE here.
@@ -3925,27 +3925,27 @@ static void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv)
 	for_each_intel_crtc(&dev_priv->drm, crtc)
 		ilk_pipe_wm_get_hw_state(crtc);
 
-	hw->wm_lp[0] = intel_uncore_read(&dev_priv->uncore, WM1_LP_ILK);
-	hw->wm_lp[1] = intel_uncore_read(&dev_priv->uncore, WM2_LP_ILK);
-	hw->wm_lp[2] = intel_uncore_read(&dev_priv->uncore, WM3_LP_ILK);
+	hw->wm_lp[0] = intel_de_read(dev_priv, WM1_LP_ILK);
+	hw->wm_lp[1] = intel_de_read(dev_priv, WM2_LP_ILK);
+	hw->wm_lp[2] = intel_de_read(dev_priv, WM3_LP_ILK);
 
-	hw->wm_lp_spr[0] = intel_uncore_read(&dev_priv->uncore, WM1S_LP_ILK);
+	hw->wm_lp_spr[0] = intel_de_read(dev_priv, WM1S_LP_ILK);
 	if (DISPLAY_VER(dev_priv) >= 7) {
-		hw->wm_lp_spr[1] = intel_uncore_read(&dev_priv->uncore, WM2S_LP_IVB);
-		hw->wm_lp_spr[2] = intel_uncore_read(&dev_priv->uncore, WM3S_LP_IVB);
+		hw->wm_lp_spr[1] = intel_de_read(dev_priv, WM2S_LP_IVB);
+		hw->wm_lp_spr[2] = intel_de_read(dev_priv, WM3S_LP_IVB);
 	}
 
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
-		hw->partitioning = (intel_uncore_read(&dev_priv->uncore, WM_MISC) &
+		hw->partitioning = (intel_de_read(dev_priv, WM_MISC) &
 				    WM_MISC_DATA_PARTITION_5_6) ?
 			INTEL_DDB_PART_5_6 : INTEL_DDB_PART_1_2;
 	else if (IS_IVYBRIDGE(dev_priv))
-		hw->partitioning = (intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL2) &
+		hw->partitioning = (intel_de_read(dev_priv, DISP_ARB_CTL2) &
 				    DISP_DATA_PARTITION_5_6) ?
 			INTEL_DDB_PART_5_6 : INTEL_DDB_PART_1_2;
 
 	hw->enable_fbc_wm =
-		!(intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) & DISP_FBC_WM_DIS);
+		!(intel_de_read(dev_priv, DISP_ARB_CTL) & DISP_FBC_WM_DIS);
 }
 
 static const struct intel_wm_funcs ilk_wm_funcs = {
diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 42552d8c151e..0c64245a181d 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -22,6 +22,12 @@ intel_de_read8(struct drm_i915_private *i915, i915_reg_t reg)
 	return intel_uncore_read8(&i915->uncore, reg);
 }
 
+static inline u8
+intel_de_read64(struct drm_i915_private *i915, i915_reg_t reg)
+{
+	return intel_uncore_read64(&i915->uncore, reg);
+}
+
 static inline u64
 intel_de_read64_2x32(struct drm_i915_private *i915,
 		     i915_reg_t lower_reg, i915_reg_t upper_reg)
@@ -104,6 +110,12 @@ intel_de_read_fw(struct drm_i915_private *i915, i915_reg_t reg)
 	return val;
 }
 
+static inline void
+intel_de_posting_read_fw(struct drm_i915_private *i915, i915_reg_t reg)
+{
+	intel_uncore_posting_read_fw(&i915->uncore, reg);
+}
+
 static inline void
 intel_de_write_fw(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
 {
-- 
2.39.2

