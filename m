Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D34596FF36D
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 15:52:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E950B10E259;
	Thu, 11 May 2023 13:52:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81BC210E271
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 13:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683813132; x=1715349132;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=NEZEP6BNULJ7KscnrbdmrG1A90iPB5Lkn+TZgSKiYlg=;
 b=G5qsxnCfa1czMmhTYCMoXeHY11utIm69XJA410WUhOGSzgyfxZWyM+7/
 3zSYVc2VLCjV9Op50/BS0tC+DhG1CE36fTw0BrdyWAMYpHzH6KaH4Sdec
 TWbyKbGa/uXPn67rpjkNAprl4g0b/+iLgtNRvC6LGOmLREMSZD2ivAgc3
 +mzBGaOjeJPDzDOhoULhcSNTr0kZFEF7Vo4nxCGu4K9qFSmppFEnhyJu3
 7gBiEE+IKR2NG0YP0y5mmXG3PW4MdkjItg/7KkUf2lVObZn9f1alDfUMb
 E7AVTQ8PGV/rF8aDWCLw5xuWFEdca2ecVcnyZBB+1TXpQU3ekebAzUr+q g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="353615722"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="353615722"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 06:52:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="811614812"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="811614812"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 11 May 2023 06:52:11 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 11 May 2023 06:52:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 11 May 2023 06:52:10 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 11 May 2023 06:52:10 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 11 May 2023 06:52:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GsrCS/zwbJPTwAZvL330ncfCXeEkN2CCNG3f5OTBmHMN3l3pcfVaXGIjoOlcOypujWhHEF2RKJkUVKvPdNVr6hziSd8CrNhHlaN9QKzi4gJ6rp1BPhgcOR0H1/yVpfjXWTiirclbarfLxgKYqkXGJO0562g4onEtxooTWdAPykCYmXLHUwn7o6LC0rtZe4hu0pqCfGuoeoWKaYUwAacgudnqESjLauth0Jn7HeQ0TE5f//jql/s4hjnY/SX1gqxi0nQx/ZM6xyxaBGDkYMpX+AUW4jrzOHY96wE6W4v6MBGblDv0oPNg3MA6B3HMrRclYAAnuAezOcTcMtMonWpLYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=875aItbH38bjapQ65RvLUH93Y9L7Oke1mfRlNba+7cw=;
 b=RXZOw4+0fA/oRm54tMJcGgZDgQsafBo7TQbB7P2DwkMy+qZyt/6XQ2fP2H2b0bCPkcWe9CepPnWbxHadS84qGg3SnzFpIo106KmV79Pi4vhbwfuiO2tr31oDahNCJRYL5l2rcyigPUylp4XQxRwngwfKKfhO0dCHnn8gHbqPIWsfR9vyclpezl8qZIrr+qi3ArZXTLYw6pnI4ieAdC+d/gKref9OjK+19PkCQGqnJ2SAS9NkDPNh+bgOU3Zxrq0kRxWhuS+lKCuifANczxY54KLTaxEaiYL8WO0TpoHPwDzUJ879MEl7t728nqbG9Ey38dA/WdxQsc34W/vS/siO7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SJ0PR11MB4781.namprd11.prod.outlook.com (2603:10b6:a03:2d8::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.19; Thu, 11 May
 2023 13:52:09 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a%7]) with mapi id 15.20.6363.033; Thu, 11 May 2023
 13:52:08 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230510223552.89656-1-radhakrishna.sripada@intel.com>
References: <20230510223552.89656-1-radhakrishna.sripada@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Thu, 11 May 2023 10:52:02 -0300
Message-ID: <168381312269.3768.8736254051742569630@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ2PR07CA0022.namprd07.prod.outlook.com
 (2603:10b6:a03:505::24) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SJ0PR11MB4781:EE_
X-MS-Office365-Filtering-Correlation-Id: c5064b63-0e30-4b14-9265-08db5226e9a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GxrP7jPdT6DgwH1DYq3ZvavFKwKc2dnVtfRqwdyjcO+fcHiiButUMTLDzYT0mkgDHjufnxk4HeZPokpPHDZWM4tDN3+GkZ1rcQTK507ejZ2Lq+HJWAo3DxZxDTbNUk3v2+EUQCuZ32Si9X0d/S5Mz7dz+xCIBV6/VQ2I5T4BaY3qYJv0WmmtwMt0p83RXS7Xwm2BrQHdL6OhS70AdVQhCS1lquNlLK/SuKJNlrvXbcMq7SxdacsS8wH9noCbwOTC17o5VCB8yovWCi5ud9gZCfIq9ZFnoYY3abLGaat3lzF9HEYPDEcAnklW4hpQ0p+gyPRz0Ren8USXBqPMu57Jfpw3OouAAnOL+0w8oDMupenEXtQ5LWfbYVtfLYOOJXWB7mzPqObSL1rWo50gQmr75EotLSQPxDjTlPY+jrWKWpuEgYMDcKMfIF10yMQBkqncGkAEbwsZLEByQusj4Tqn5fRDdK3pdvpnqfA/hqPq6tqqmxQebVjShk0/a8MuUXkMMkH58q4xG1OiaWGHpqSnsyiW05CI1weaqMOftF0i0ERF9Go6nuOHdCMQlBY7PXes
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(39860400002)(396003)(346002)(376002)(136003)(366004)(451199021)(41300700001)(2906002)(478600001)(83380400001)(6512007)(9686003)(66556008)(6486002)(66476007)(4326008)(6666004)(186003)(66946007)(316002)(54906003)(5660300002)(107886003)(26005)(6506007)(8676002)(44832011)(8936002)(38100700002)(33716001)(82960400001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SnZXSlB0cG1veWFKNGNIQUVNMVBFd3dQWUFNdzI0a0Y4QlRYeFpKbkRiSmZD?=
 =?utf-8?B?SmRIQURjREJ1MVc4MTl4VHd0R2Q4andQUk1tQkJBSW83U24vQkhFZXlqcDlH?=
 =?utf-8?B?ZHBTTFcxMzhRSi8zTVF5M1o3Y0tsZlpKdUpBM1o0ZHpGbStTQnd6QjBydUc2?=
 =?utf-8?B?bWdmajF1U0wxVVdkbHZCQ3d3L2NHNkYzMFdOT2NIQ0Qzd0VuRTJKQkh6L2lo?=
 =?utf-8?B?UWdtaURyTjByci9jb1cwcW8wNXNVTHR3blR5Y3Fxbnh2dVFFc0hYTWhDOWZK?=
 =?utf-8?B?bU9xdVpacWs3VGtheTl3WVl6djhVY1VuSGJIWjIzWXdsYy96RlcySVpoTXIv?=
 =?utf-8?B?QkgyUTQrOCtxUlFwVXR2aXRhT0xEbm8yYUM3Nk9xMjVCR3RMa041SjgzSlNL?=
 =?utf-8?B?Umt3WVR1VHYzVUxESG1rMEhuUGRHdXg2dGFzNHdZUUhCOFNpSmZtSDlwRy9Z?=
 =?utf-8?B?c2VxSFhuWXhLeEF3bFpUYXRGTXVBRllrdFN0VWRUN0FPOXdiWERuOGNWT25X?=
 =?utf-8?B?dkVDeHR1am9LZytXSTBUYkhyL0Z3YTh6QWEwVFBSZGliZVBaa1ppVnVIeDFC?=
 =?utf-8?B?cnpXOWQrSk1YY2JZdzMrS1JsaE9kZS9ZSzBOcHRkRXgrVGxJNCs0Y2kvczJ4?=
 =?utf-8?B?c2M1OXgvUHpwRWpPMTU5SVBQREUvbWJVWHkrVWc1Tk1yaVhycXlIQUVBSWFH?=
 =?utf-8?B?WHVkNU5hbWJQajNqRkRkaUdOMlJjd3B4R3hzdDMvUWNoU3pLdmRBTlZqTURx?=
 =?utf-8?B?N2hJeUlaVHc0ampjN3J6cGwrb1QrY21MMlY1cGMyUE5KOWMrdTB2UEFhL3lG?=
 =?utf-8?B?QURVS2IvMEtXbHRYRy9FS1RnVk5xcE9IMTJoLzBHWmozTWc4MVNIdWdYaDh6?=
 =?utf-8?B?WndJS0ZkK2RscU05cVEydi9Ncnd2NVc4QlVrbVQ0TGhrMmFLMFZyTm1iRFRS?=
 =?utf-8?B?ZE9KNTg5R25MUVR3T2YyTTlyMitSMjgvRWJQczJCRWhmT0Nkd3lKTUd0dWl5?=
 =?utf-8?B?Uk9sOVhLWXRSUnNEZHR5djVEbndkR3ZsWkNKZ2dYQXFxb1FXdWNCcmw2aVJM?=
 =?utf-8?B?QmNjYTMybnV3Skx1dUxtd1hKakVIOVRRUWZTb1JuSmtrblk5UFpNcTl0aElm?=
 =?utf-8?B?bW54dUlidkdmMDFYWDVJWWprdXBQR1N1cDY3YW56djdKb1dvYVdISXZEV1Z4?=
 =?utf-8?B?MFczME1Wa0N2MTUyRTVaWVBnb2xUcVZsVHZ0ZUxtcWxJcTNORWJHWXpDd2hx?=
 =?utf-8?B?cFBxdEZIOHkxMm1vbEhEblYwUm0xbzJ2TEZweFc2RGgwcG9YQXVjaXNLRity?=
 =?utf-8?B?NloxR3hYWm1rYSt0c0dOK3JLMXRCejM3U1JzZjVSTUZiOXZnTDFIRUpiZFBM?=
 =?utf-8?B?aEhUY0Y2TkJHdmp3REsxSVhKbzFoZG9mdUhDamJ6ZFZvWlJBQlVxNjBxbXc3?=
 =?utf-8?B?cTloelVaNFNFNWRoM3ZjR09FZitnNkdES04vYmwvOTFHVWlPZkErMlRYTzcy?=
 =?utf-8?B?Ty8vVk5qbGxRTmg0czhhZk5TNEZwcFd5dzhXWXhlNkFEaUtERmVkNjZraFll?=
 =?utf-8?B?andUVEFqMXRtSmU5QUo1SjlRNis3NGxSUmdFd05teGt0dGI2NmVnalBDTVJ3?=
 =?utf-8?B?NFg2cmFTcWdpM2VScGlLZ1FZMkRQK1d4TVJVcW0wTXZyOVB2d21KRWc1Yk9s?=
 =?utf-8?B?VjVWRXZjOHhkajlsSFVGTHpoUEppWENVLytUQXhoWmp3U05Vb0w3ZnhaOXFp?=
 =?utf-8?B?ZDQvc2FyYXhsdWcwSTRkNVhDSW1rT2xsNmtUd3pDSDB2L1lMYmZLVmhnV1lU?=
 =?utf-8?B?dmRETUUvOGJBN1p4bDJqM1FZRnVPRVZ3Y3FWcGdickZZNitDREZNTHArZ3Qx?=
 =?utf-8?B?NFljekR1Q0ZZdjluM0Fialh0MlE0eGlXVUhkZFdtdmtxcFBiVzRPTDRzUWVo?=
 =?utf-8?B?NnZCUUJZdFVyc3FrZ2o5bHVVWGUyc1RhR05mWlVncWFqV0NydXg4b1oyRXlG?=
 =?utf-8?B?MTJxTm5mdFRpWmVOblMzS2hHSENybFduUXJVakxBK1E3TUlHVU9qaUdrQzQ5?=
 =?utf-8?B?ZjBFenZHbE83V0UwSnhUSGExczIwcys5WWVxcDJVUyt4aXIyQzNxYy9DSThs?=
 =?utf-8?B?WjZvdjhseEZ0NFFiV3Q2RG9YenV6SDZXZXJhNUVkMndGWjJSK2xpQTlSSkkv?=
 =?utf-8?B?M1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c5064b63-0e30-4b14-9265-08db5226e9a0
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2023 13:52:08.8165 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H9DALTU4ZKNn8MazsMd1SeQEQmxs77CyZQMhnGuXynIPKwuAwOJjpNAfiYo+xm4+3ZQYloXIb+0SNf8Zde3xLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4781
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/mtl: Extend Wa_16014892111 to
 MTL
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

Quoting Radhakrishna Sripada (2023-05-10 19:35:51)
>The dg2 workaround which is used for performance tuning
>is needed for Meteorlake.
>
>Bspec: 68331
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

The workaround for MTL seems to be necessary only prior to B0 steppings. I
wonder if we would have any significant benefit from having the performance
tuning done with the workaround infrastructure for B0+ steppings. My gut te=
lls
me that having two separate implementations for the performance tuning woul=
d not
be worth it - someone more experienced with the driver might have the right
answer here.

Anyways,

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/gt/intel_lrc.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt=
/intel_lrc.c
>index 81a96c52a92b..78ec350188b6 100644
>--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
>+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
>@@ -1370,7 +1370,7 @@ gen12_emit_indirect_ctx_rcs(const struct intel_conte=
xt *ce, u32 *cs)
>                                               cs, GEN12_GFX_CCS_AUX_NV);
>=20
>         /* Wa_16014892111 */
>-        if (IS_DG2(ce->engine->i915))
>+        if (IS_DG2(ce->engine->i915) || IS_METEORLAKE(ce->engine->i915))
>                 cs =3D dg2_emit_draw_watermark_setting(cs);
>=20
>         return cs;
>--=20
>2.34.1
