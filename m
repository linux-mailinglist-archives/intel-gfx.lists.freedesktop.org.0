Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C152770721F
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 21:27:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2ADCA10E2BA;
	Wed, 17 May 2023 19:26:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BE7C10E2BA
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 19:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684351617; x=1715887617;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=rdxoy61zoL/mubXbKk/AEb3tKTElJjgL9iHTgXssDdE=;
 b=g54ffUkM1bT4sw6tIYsiKc3Kwi5NI1GuMCRVFYp4lxPhxUdJQTadoFlP
 c+eZ3JelRyMKVPpobZfzruhQWmunMD1Ylie2BK9neIAZp+KquJovo4kaQ
 TJ2/JfFYGlx7Ws7vodr7XyVv/HJ+n7baYykGqCslSeTtpKOneMonaGPSZ
 Nj7xUS1X77XRZDzKhUjkp8YwUCEnrkWlI4dI2QjM2l9LvcG08tHptkB7Z
 J5nAAxwI4Sititd/HttAmHIGmrfD6rQtnLwHod6q9+lMyX1HM50A6DApq
 GyNW7Akt87usxTyOH35Tu78b8xZvBQO90jMP01b5a7Kzgame0RvArW53K g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="331470673"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="331470673"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 12:26:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="766889125"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="766889125"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 17 May 2023 12:26:55 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 17 May 2023 12:26:55 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 17 May 2023 12:26:55 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 17 May 2023 12:26:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VTOPiasTrEMcZCJ2OLnis+1Op15dfWk57aDXhOng0qjl49t44QZN3YLF8GSl8pkvcF8v4k9x+alBWucQKDCWNHn4235Q6gDQFeAp/qLnhVp5CXXXQFOe+SIh7lMoq+V4FU0YKXXAQGsuFKLowoD9L2lX3YJNSoz6KhRzy0KrkL/4D2QWekCTsm86apfT3Or/6GP8+UWZ+t1ZAjr/ZHDj5HGBGIfM2G/uqGTu76MxQkbsjknMQDx0oBVmZzWKOumPyWANbqrv4m74wCFaVx2P8BFUS79XiF43m/4SAX+eN1BlGmsHWG2F7+ouaxGgim8FCs+xJKPbZcX2Q3oxX/2Fyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mOsbRWrxOEucIyCQv/rjuUfTgNdbQd8T2czaCJn39Xk=;
 b=WSRlenKjXBZ7PCRZKOj9wBZLUy0PElot/gTsHVEtcGxFjDxeL1HSuoPxniiWxB1Sn+BPJXHOwwkkRQW/+/QnyRtwsspQ+hzMa2EfDwd4H62+Yez2b3IWiN8KHvv0iS9kWbZeeOtWS4SUM2Quh40LDURTEifUbrzeZ5b1KsIRflxMEA+YuyzEdWJOJo1yu9X6AAt1DYZXbQ7zkpq2ELsEnpc6Xt7W/rQm670gpMP+it3FlVie++NXe5/WKN2B/8wbB4LmfyuoIMiJ6LFtqqVZHdcahQFSSNL/JDXX+bU4tGvUHjVArSbHAh9aiy0noPFfTuJapBU3j+JR+aEZlqtWHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DS7PR11MB6199.namprd11.prod.outlook.com (2603:10b6:8:99::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6387.30; Wed, 17 May 2023 19:26:53 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::7c95:635b:8059:9e68]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::7c95:635b:8059:9e68%3]) with mapi id 15.20.6387.033; Wed, 17 May 2023
 19:26:53 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230517004046.264131-1-radhakrishna.sripada@intel.com>
References: <20230517004046.264131-1-radhakrishna.sripada@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Wed, 17 May 2023 16:26:46 -0300
Message-ID: <168435160680.464126.17128685016332348817@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR01CA0018.prod.exchangelabs.com (2603:10b6:a02:80::31)
 To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DS7PR11MB6199:EE_
X-MS-Office365-Filtering-Correlation-Id: e73a5256-1b9e-4463-992d-08db570cab05
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Y57c1T7PKU5SXsQsYAutzznT3vQlptolN92dQLru+wrt+favDD8nOweK1TmnFczipXuvyR0z3MGg0z01vGQ0I0rZ+RMPIIf0mzfxcESLQvDKl1qD8laPPDvlVcUMJ8E8kh0kY1kZK4T4SdwpxPSVJgDT/xrfRcRF26JB6L+qspAcgwq6l8e00XeWDRUNZRSVdKtlx5WIYowGMs1bIWIqXqReKKc1zH+ui9B1ZoKQuURvFYJjY6HhNr7AplSNrgdVU3cin5yOh3VeDM0/aZIzntLy5uo50Z6N7I1+tC1yd8xAyxFoenCtpTP+cQA0ny8H2iWdktkD1kzl5lm76qCUTh+ILRD17BuiEv25HDilqKV5SbdwU/XOnwhy/7ZvFcYBaxEL1xc90NQoKFWyQLnU71X0JyfbYFBK8EVTUM5tkE+5rhfhQiLN1XuJNernnJN0uXKWawcouGrHoGPagHym1tdHlhpsMclXgfvAmxluy0SaujIoBmRFO7F51sod53y5B0kG339mFWpuiLBzW1gyEHTS03XGmuaVaUt8f1ZfXwOY7/aQhAJF01jaOkddTOsb
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(39860400002)(396003)(346002)(366004)(136003)(376002)(451199021)(5660300002)(44832011)(41300700001)(83380400001)(2906002)(82960400001)(86362001)(33716001)(38100700002)(6512007)(6506007)(8936002)(186003)(26005)(8676002)(107886003)(6666004)(9686003)(6486002)(66946007)(66556008)(66476007)(54906003)(478600001)(4326008)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aTdwRW1mQ1lWNVNVVnhaZnRHZjdwYzFoSDFmMG1hNXVpNWMyNjRqaVVOUkxv?=
 =?utf-8?B?S3ZJR2Q3N1BCeGl1KzNUUkJHblNiTHFnQ1JHU21pWmVoSnBoUkNNYVJkTmk5?=
 =?utf-8?B?ZFpvQm9GVCtzMUtqM1ljd2R2dUVXS3BrT2xXSmY1cXJZZHB1bHJQcWtBNkps?=
 =?utf-8?B?YjdWbGVVNHUvVG81UVRSbzdjR0djdkFiVEgxc2tkZTRZVEg3d1g1ZTJGemE0?=
 =?utf-8?B?NUZKcTdON0VQamVMd0xWcGREa21teFVJZU5qaWZtMXRJOHUvMW1lNDUvekVB?=
 =?utf-8?B?VU95d21hUk5EdlQ5UmY4cjVYQUJPYXlGZnVtV3Z6cE8ySG9LdkNaUVkyMTFp?=
 =?utf-8?B?YlV1WWF4bmhTMkQ1YkhQMUIyY0FvWGkrRnp4ZUVjUXpHZCsvandKREpZbExp?=
 =?utf-8?B?MHhONEdjQ3BROUpqamdWazJTUXhjWXI3cFNldnBQdHQ2TlNmbUxDRjNHNnI3?=
 =?utf-8?B?MW5aaW5lTGtYT1l5Zm9uNWZsSk8wS0xMb0hQVnlCUFE0WG82UjBCSG81RnhL?=
 =?utf-8?B?NWVLVzV0VEY0ZzRzVm5IUzgxaE5SZzBMTlpKekZMZGVvbnkzVURpNm9lQ0Fw?=
 =?utf-8?B?eURmSStrTFE2c0lZSC9xbkpHMFFTbnJ5OWg1VmtyZFRlSEVwSy9aeTZ4RVEz?=
 =?utf-8?B?clpUOWdOQkJ3WkF1OFoyKzQrSkVWSWxTd3FyQlBod1UwcXVKbnVUU0VCajlt?=
 =?utf-8?B?YjJWeUwyak5ha3M4VjVLZTRqT2h4RDN0aXc0KytLWi9XVlE5UFJaMys5OC9E?=
 =?utf-8?B?R3JwbDFJdGJvdVRuMnloNWQ2Zy91WThpamlhUDltQVZwdUhROFVXVVFDMVNj?=
 =?utf-8?B?OFpvWGZtSkw5R0RySHRCMHVBUCtWcUdDOFV5REp5bVpXQlNOZEp5dTl4ZmxE?=
 =?utf-8?B?REJtTEdpaDVUMDNDWHNteXVxS2Rrc2tFSGtZY1NYbytRWnN6eklzeitRYlgz?=
 =?utf-8?B?cWxKOGM0ZFdjY1JDUlVMYmF3aFlqMU9IYkR6UmtmalRMWXBtcXJqWHpBeTJM?=
 =?utf-8?B?aFkwZjJWcWhaWm9ST1BNMGpQZHhGT2ZJQStVNWZGa09ldWh1VkkyTTlVOFIy?=
 =?utf-8?B?ZWMvWUozalk3K0dSQVBxRXdiZUQwcExrUXhsQjZSelQxM0JUSkd5cXBJREZY?=
 =?utf-8?B?Z2w5dnRLeUZzbTBSRW9zZWszQW5ZOHlFNXN5ZEh1UzZZVlhQMENMU1A0OUQw?=
 =?utf-8?B?YUZlWndHWHYwY2JlaGx0a1M2WXA2Yzc2S2lZUFNYbWtXbWw5ZjJscUo4WGZh?=
 =?utf-8?B?U3g5cmZWbkRVZUQzMmtPT1JaQmhuaHNLZ2xvanQ5OGpBMFZSelFmY293aFFN?=
 =?utf-8?B?ZXk2ZG9ncVB1UkpjRzJOVU85YVZndE8wUzVFOUR6STJ2Qkt5SnhsRy9UQ05v?=
 =?utf-8?B?SkhLWHJFWVV6enM1RWQ1UlMrcFRWOGRiZUg2b1VvQ3JWTzNYbDl0QzRPTHhF?=
 =?utf-8?B?K0RRUmh1RnBqMlB5MlBkdUVpamFLZDEvaE1abTNCckN6ZEFtcDdsVVRUbWF0?=
 =?utf-8?B?MGI4Z3hXT0J1eHNzeEdhYW9mL2VrZHc0RENzMlhGcHIvYU1xUnZJV1NuWExZ?=
 =?utf-8?B?NHFlU05tVFRHUlVEbE9wdjdPUUVIc2oyeW1FdEwyUzJneEwyaUNucVI3VVJu?=
 =?utf-8?B?N3JLcmt6aU03US9ad1IyZHZIY083a1g4QnNBZFlaZzN5WVh1ZjhTWFF1dmhF?=
 =?utf-8?B?elowL3JVODF4S2x2djZoMXFKTEFEN3QyUnZnNHg5Y3JxYUNKS0J6YTZ6QlB4?=
 =?utf-8?B?OU5TVU9iVWk2OTIrWjkvZGdhLzBvVkRJL2hiQ3B2ZHBqaGE4V0s0NUorblI0?=
 =?utf-8?B?TWhCT1prd1ZjRGNrVkxVd3dUWGlXUC9CdE5iWnNSUmhPQ1hGa05BZEs3WEFt?=
 =?utf-8?B?RmRqckttd0tjUW5la3NsRnVLa29WeUNkMVlreXZmMHlsR3JtRXdCQitVQ1VF?=
 =?utf-8?B?WUN0Y1lOTEdhVndnUjlvNjJWRHJCdm8yVE1LNTFpR1BRdEtVbmExRDk5NXFi?=
 =?utf-8?B?OHlWVUozWGtPMUU2MFZtMkNPK1lPaWl4cU9ncVljMnIyRmFacnBxanc2TVZQ?=
 =?utf-8?B?ZVM5UnNjSnhWR21KYUUrSGY0cXdzVnYxamEwWWhsa1pqc1NkSmpaVWRYa1FO?=
 =?utf-8?B?c2hJNEpDSU8wdWZyVkRxc2pNWHdBYmM4UmdmUVZEY3NkT1hleWJGdkY4N3Vl?=
 =?utf-8?B?R2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e73a5256-1b9e-4463-992d-08db570cab05
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 May 2023 19:26:52.6641 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nj+2eiQM0NgqEF7XFwh8aMRj10lKDSA71RvnjTRen0ptMLMLWM2ZW1LDUSexf+znsKDBOW+JZtcgV3n6GvoG1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6199
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/2] drm/i915/mtl: Add MTL performance
 tuning changes
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Radhakrishna Sripada (2023-05-16 21:40:45-03:00)
>MTL reuses the tuning parameters for DG2. Extend the dg2
>performance tuning parameters to MTL.
>
>v2: Add DRAW_WATERMARK tuning parameter.
>v3: Limit DRAW_WATERMARK tuning to non A0 step.
>v4: Reorder platform checks.
>    Restrict Blend fill caching optimization to Render GT.
>
>Bspec: 68331
>Cc: Haridhar Kalvala <haridhar.kalvala@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_workarounds.c | 15 ++++++++++++++-
> 1 file changed, 14 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm=
/i915/gt/intel_workarounds.c
>index 786349e95487..b6d3185cf868 100644
>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>@@ -817,6 +817,12 @@ static void mtl_ctx_workarounds_init(struct intel_eng=
ine_cs *engine,
> {
>         struct drm_i915_private *i915 =3D engine->i915;
>=20
>+        dg2_ctx_gt_tuning_init(engine, wal);
>+
>+        if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
>+            IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
>+                wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0, false)=
;
>+

I would put those (dg2_ctx_gt_tuning_init() call and DRAW_WATERMARK
programming) in a separate mtl_ctx_gt_tuning_init() function. That would
be more consistent with having tuning for context save/restore registers
in separate functions and makes it easy to see this particular programming =
of
DRAW_WATERMARK is a recommended tuning instead of a workaround.

With that,

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

--
Gustavo Sousa

>         if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>             IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
>                 /* Wa_14014947963 */
>@@ -1748,6 +1754,13 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, str=
uct i915_wa_list *wal)
>  */
> static void gt_tuning_settings(struct intel_gt *gt, struct i915_wa_list *=
wal)
> {
>+        if (IS_METEORLAKE(gt->i915)) {
>+                if (gt->type !=3D GT_MEDIA)
>+                        wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_C=
ACHING_OPT_DIS);
>+
>+                wa_mcr_write_or(wal, XEHP_SQCM, EN_32B_ACCESS);
>+        }
>+
>         if (IS_PONTEVECCHIO(gt->i915)) {
>                 wa_mcr_write(wal, XEHPC_L3SCRUB,
>                              SCRUB_CL_DWNGRADE_SHARED | SCRUB_RATE_4B_PER=
_CLK);
>@@ -2944,7 +2957,7 @@ static void
> add_render_compute_tuning_settings(struct drm_i915_private *i915,
>                                    struct i915_wa_list *wal)
> {
>-        if (IS_DG2(i915))
>+        if (IS_METEORLAKE(i915) || IS_DG2(i915))
>                 wa_mcr_write_clr_set(wal, RT_CTRL, STACKID_CTRL, STACKID_=
CTRL_512);
>=20
>         /*
>--=20
>2.34.1
>
