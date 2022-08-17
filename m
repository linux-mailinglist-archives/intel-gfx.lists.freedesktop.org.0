Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EE9596A4E
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 09:22:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 894A310FF41;
	Wed, 17 Aug 2022 07:21:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 353E410FEFA
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 07:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660720904; x=1692256904;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=MlHFGUA4jHxwhF1tFxjGl6VmZpZnoV/00TiTN98Ix4U=;
 b=QSEbcx+h/S6AFdo+E4Kr9F+1wzbmTWb9yj4Om8gwE9hYOy5plFTuw5ED
 jAajgfC2E/urYQILvKSVDALpvUw7CJF0TYCpVDXesl9jegPzaDBOOwFBn
 cCwS/VZaDIHxIzXLMZXKYx78UqcoOlEr9yApXP/XmpR67w35pUWyVOLZT
 uOuE3nO3PKbaNTm77KyG2JeGUvNaTabg4mwEs+FEcvo4b6to8fZXZkBx6
 KLuJbqjvcwc3uBaN53XwYvjSwE+sLBTS+HxYZTQnwPsg3qAe03D4WPmcr
 iAI7aiuJjlG4tDdqJmmZCGvKo88XtnjxX7bN9bz4rDyJhm8ODP2SJjvKl g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="356421902"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="356421902"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 00:21:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="749606755"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 17 Aug 2022 00:21:42 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 17 Aug 2022 00:21:42 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 17 Aug 2022 00:21:41 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 17 Aug 2022 00:21:41 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 17 Aug 2022 00:21:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ssd9J11jyPy9p0RZWjwAVWfxyU204eTdQjTJ1K+RsXjRC7fIZlGJRAH36oYVT9QR8Gp/DV5gSB5byadVC099JVIVgx58dlWJe5t57OAMOgw2IFLVNVsT8IwMEpMRUiK1+dBXVeffwL9U45qz0VAdkyPVVrMaYtv3MpVWYBEpEQeyULqA+NxDleGvw490FreZrxj9vA73AGygkPAObW1BjmH51HJVma2hy6oRHtSnJAkAzKXjzbTFTXErB4xuYy2uuzlm0yKIYZMwjKvB6o3lLstSIK+J0/GRPhhVgEAe3Jy5+IxKwihXKMlMRDSK8nnwEMdQftZaC2KUlPwg7T0OQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=63AMirFehSJPTObpyW9IAx8+UADiBYspaWAbS+KbNP8=;
 b=O807MepJv/XnUeyI0L0kk4qjagM5tarsggivkE+D9lk0pA4czskcgyqKtMOenuUHkuI1NOAR/0xYHoBDwF7Z7QuLHSDyLZd2/KHbElpRR+I0woAkUuLs5Iuuaau6f7AJkNIbNBP9QPbadYRzSwr6TIMc99HtlAavD2spc07EVOxuULWr2g92LFzImF0Z9zram7XB2+5CYTndVPgnRC22OwYmnMtLGmcR3oQw3oxCfe0CyG+Bnmg17yM8fYlZEb1p/HuQRjiVZwDYx9NDigwWIREK0S7Hp0IcIaKfGu4EOyLSMZYMcDz34/Syhfc6CL5dLtHNnmPhBHEidgzzsqfJ3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MWHPR11MB1247.namprd11.prod.outlook.com (2603:10b6:300:2a::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.15; Wed, 17 Aug
 2022 07:21:39 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513%7]) with mapi id 15.20.5525.011; Wed, 17 Aug 2022
 07:21:38 +0000
Date: Wed, 17 Aug 2022 00:21:37 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220817072137.kbad5gapqgxvq6ld@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <cover.1660230121.git.jani.nikula@intel.com>
 <c6e7bdc0a0d86a99f19d07beed273707793c3739.1660230121.git.jani.nikula@intel.com>
 <20220817043221.p3awhzpxjtwnfmxw@ldmartin-desk2.lan>
 <87y1vnpd72.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <87y1vnpd72.fsf@intel.com>
X-ClientProxiedBy: SJ0PR13CA0199.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::24) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 608e7081-e760-4bb3-1f67-08da8021201d
X-MS-TrafficTypeDiagnostic: MWHPR11MB1247:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HUVzPRuL+ebZfwsayoNI3Jbi+4cUdiZjzbYbsC8yKt3d8dRW+ehrOsaoDxiB5lwj235Q2ascfU/tLepT01mR8qykPAiflVZKJ9MylwJOODY7mn0KkbJlK233oGKFX2niTWNX6XZSlDI2zj168ZRllKjVQTtlzSfTJ5IXoA1rqy7q79+DeRzgeRd+iSWGAvo2n6gx3Yp0hiz05lbXpkNT/n4FUYrwUMbmUgoTTIqTW6a/tunxVSRA75HlNn56GlR8XK7/t7qDDDia9KI0YdQss3HTSgAN+VGNjbmzm5GcPQrpPEe0k6gnOo8HbuSiRcSX0MkaANsbeW3Jxk6/JF3upRydJT8Xl6iCS9+F2VTAgzUyMI3QN8CE3XV56Tr9LkzazPm4O2bbHJeSzwQtDl1QbowY/9igsqHS43m9gg6VyF9tIvq5C/Kp/c6955Y149xNmZweB/Q/lBtrKDgCfh/KJSdaBv21FLEPJzZU9D1e/G037aaWvU+ErATPurtuuZ8aUvzKi5riNShvKh/kDimbMaMMbstLRL9WPRj63y0OtR1+vdAmTk+9afDtJmL8vy6LbdT7eLZM9TuKg2VisjM4HDL5XRUUTEkwkpTImjnwXq0BVgPEMyEW795MSxByUvQczGaMv9guKEviG0nE14/bmRAYo/+BY0jfUZR1LAR6BaV5lg8IFFZ43691oHNFL6XSActlmA4aRCDxaIUx3gdOlaEop9L6wCrfwKEgfg+BEbNRXGtTVUwXAEKfXehaOsF4
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(39860400002)(366004)(376002)(346002)(396003)(26005)(82960400001)(6512007)(9686003)(38100700002)(6862004)(6486002)(478600001)(8936002)(86362001)(6506007)(5660300002)(66946007)(2906002)(66476007)(83380400001)(66556008)(6636002)(4326008)(41300700001)(1076003)(186003)(316002)(36756003)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?S44lNOIUnWKrqePxiQbovxBNanlqW8FTE+TST2XLKjQCcC0AKchzzRCbmY0x?=
 =?us-ascii?Q?+OEqcy1uZ457sVOZcbuwgLl+scVFu/CN68+yI++iSn2Fj+XdQ2L+Qg98b9Ym?=
 =?us-ascii?Q?DIEstFO3wHLV8TFINUIwo5PJDQ71XozUw3xCSJJ1jvPLHE9NW+ztuFFgo05c?=
 =?us-ascii?Q?Ar5WWkJ5clqaNT9sV6ogoYGw7HGhfXDKrzqcU+5caF9UE+akDmH4nt97fzs7?=
 =?us-ascii?Q?dovauCFLrnB0SDnMlGK1ALvZ60zVaxqz2nLx0ANpY2wpJItzH9JjpX5IOGEl?=
 =?us-ascii?Q?MDC17CGxrHwu/XV8f5JhuOJ3lShEQ30WyyTwhiYl6hcMXdVF6H5e732lDe1E?=
 =?us-ascii?Q?7dhDJq5dc3BhhF+Jq5DOwcib9i44KKmIxEd8F0BoIRMc5VVnZTerv3Jbp7Dj?=
 =?us-ascii?Q?ck2Xbc6KHqiEr71C0Qn1DBJqnKbUPbDGdVs6SYu9KCD18OsPzvtupiZthHry?=
 =?us-ascii?Q?A+AeI4UBylZoI5kahEk/kBOfSmw4uGYtN23L6RXX4LGDQx9kajUb0f1ZPr5q?=
 =?us-ascii?Q?SrYiPBPrh9hDFJZ6x48mRZ5cY6m78954g3wjoRRvWaqR4BKNEAwmNVp5t6J9?=
 =?us-ascii?Q?eNlD0gK5ZrWsO4gLRs+0rhcjxQL3OYBCiIb1WnykUJShQYASf4OVJU6hPW9K?=
 =?us-ascii?Q?uYe0+3TPyyKouI8fg/pfLb/SUaF7w4EKsQM9UIeQsGpyT3pfOnJcEsO9U2xY?=
 =?us-ascii?Q?c0L+BL4+JrYGKQ/vnhTZAArTHrwMnHXJlybQidlqIGQxWm43e7h1F84up0/S?=
 =?us-ascii?Q?p/yS2t3cBlefVCg6oK1PsMojBVtFRCXOyQVz0kZqsCc4KXBEex5m5zrzxiQo?=
 =?us-ascii?Q?iUePFCJIdxHdPgmOn5eef6HK974d22XQqZM72lkkDXanTIuGa1KyHV/qsI8n?=
 =?us-ascii?Q?lqlriCh2rW8u8V8V/r3zUnwOXFhbIC+Tt3ur6GQm2FxtME8eyjPsxgWI1+Vl?=
 =?us-ascii?Q?FAAzqhLeCMfgKonbSreLDlGg0Goy/NfWepEN+mb9qnSIDVXvZb3MlmbPTNWI?=
 =?us-ascii?Q?lrrDjkBBjxPPZwDLK1boOAlvzQ8f3vuWbuAFIPBZqjX4K7n4YmHDGFa7faQY?=
 =?us-ascii?Q?BMcuMJPFazJvyHBYpCDWF5gHAz3qiyz0OcU+V4RZ8oRukQtWzrR7CL+lvKmL?=
 =?us-ascii?Q?ZuQjM7dAo24mNblP9M+iyUCLDmbzg2jEXC6U3b0m/a8Wrk4l9xAnjxx0aVWg?=
 =?us-ascii?Q?2SWBupHrjrtMXE5s+UvDJCxks6AY8DvbDi6K2SReLIPMUSRefX49KTH+39a/?=
 =?us-ascii?Q?lYlnVVK5iv5GRgDUG87JfwwuFVKtaHFpmD6o+4g65CJckFL+IpjbozlfgzDP?=
 =?us-ascii?Q?BCFA7GgFOFy/U3jR0B/74agtX9aVEdh0dDby40X5mNSAzfGl11qJvHDAOnFZ?=
 =?us-ascii?Q?1pmn1I+IPn2dyTvHyc9K8yebM8XxMGq5ekj8VvGr784KJH65haEuOorHdjWD?=
 =?us-ascii?Q?QW/8/4JACxeavxV/JF6PhxeTdhZ+i/kMx/353H2fcEYlgtDC48B82QZK5vo+?=
 =?us-ascii?Q?dWrpYkOjU68v1DBTCwO2lPdpuv3MPbMJm65YV7f1UZG5lM9zN3KBKnPUSLQM?=
 =?us-ascii?Q?4wZolwmkPFAcx4jnwgw2aMtfY1gZotDRGDtqZVj1YFvE8RrSDMxq9wbRILIV?=
 =?us-ascii?Q?cA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 608e7081-e760-4bb3-1f67-08da8021201d
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 07:21:38.8652 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6DyYlHV7mkcwH59lEqUMIhGcqK94nitLJoYj6EiKgFbxdYe5FRRsuVxnr0ciEqTdjvs4+Aq6M2iqYPtwoQrserbVRb/enYfcK2ARnY6tJ14=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1247
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 24/39] drm/i915: move mipi_mmio_base to
 display.dsi
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 17, 2022 at 10:00:01AM +0300, Jani Nikula wrote:
>On Tue, 16 Aug 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> On Thu, Aug 11, 2022 at 06:07:35PM +0300, Jani Nikula wrote:
>>>Move display related members under drm_i915_private display sub-struct.
>>>
>>>Prefer adding anonymous sub-structs even for single members that aren't
>>>our own structs.
>>>
>>>Abstract mmio base member access in register definitions in a macro.
>>>
>>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>---
>>> .../gpu/drm/i915/display/intel_display_core.h |   5 +
>>> drivers/gpu/drm/i915/display/vlv_dsi.c        |   4 +-
>>> drivers/gpu/drm/i915/display/vlv_dsi_regs.h   | 188 +++++++++---------
>>> drivers/gpu/drm/i915/i915_drv.h               |   3 -
>>> 4 files changed, 102 insertions(+), 98 deletions(-)
>>>
>>>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>>>index 533c2e3a6685..db1ba379797e 100644
>>>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>>>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>>>@@ -251,6 +251,11 @@ struct intel_display {
>>> 		unsigned int max_cdclk_freq;
>>> 	} cdclk;
>>>
>>>+	struct {
>>>+		/* VLV/CHV/BXT/GLK DSI MMIO register base address */
>>
>> this is already outdated, so maybe remove the platforms from the
>> comment?
>
>What did I miss? It's only used for vlv_dsi, not icl_dsi which is the
>newer thing.

you missed that I misread this part. It's the icl_dsi that is used
later.

>
>>
>>
>>>+		u32 mmio_base;
>>>+	} dsi;
>>>+
>>> 	struct {
>>> 		/* list of fbdev register on this device */
>>> 		struct intel_fbdev *fbdev;
>>>diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
>>>index b9b1fed99874..9651a1f00587 100644
>>>--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>>>+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>>>@@ -1872,9 +1872,9 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>>> 		return;
>>>
>>> 	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>>>-		dev_priv->mipi_mmio_base = BXT_MIPI_BASE;
>>>+		dev_priv->display.dsi.mmio_base = BXT_MIPI_BASE;
>>> 	else
>>>-		dev_priv->mipi_mmio_base = VLV_MIPI_BASE;
>>>+		dev_priv->display.dsi.mmio_base = VLV_MIPI_BASE;
>>>
>>> 	intel_dsi = kzalloc(sizeof(*intel_dsi), GFP_KERNEL);
>>> 	if (!intel_dsi)
>>>diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
>>>index 356e51515346..e065b8f2ee08 100644
>>>--- a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
>>>+++ b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
>>>@@ -11,6 +11,8 @@
>>> #define VLV_MIPI_BASE			VLV_DISPLAY_BASE
>>> #define BXT_MIPI_BASE			0x60000
>>>
>>>+#define _MIPI_MMIO_BASE(__i915) ((__i915)->display.dsi.mmio_base)
>>>+
>>> #define _MIPI_PORT(port, a, c)	(((port) == PORT_A) ? a : c)	/* ports A and C only */
>>> #define _MMIO_MIPI(port, a, c)	_MMIO(_MIPI_PORT(port, a, c))
>>>
>>>@@ -96,8 +98,8 @@
>>>
>>> /* MIPI DSI Controller and D-PHY registers */
>>>
>>>-#define _MIPIA_DEVICE_READY		(dev_priv->mipi_mmio_base + 0xb000)
>>>-#define _MIPIC_DEVICE_READY		(dev_priv->mipi_mmio_base + 0xb800)
>>>+#define _MIPIA_DEVICE_READY		(_MIPI_MMIO_BASE(dev_priv) + 0xb000)
>>
>> ugh, and I thought we wouldn't have so many implicit params anymore.
>> Mind adding a "TODO: remove implicit dev_priv parameter" ?
>
>It's been on my private todo list like 10 years. :(

and we are finally removing that from the todo list soon. right? :)

Lucas De Marchi

>
>BR,
>Jani.
>
>
>>
>>
>> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
>>
>>
>> Lucas De Marchi
>
>-- 
>Jani Nikula, Intel Open Source Graphics Center
