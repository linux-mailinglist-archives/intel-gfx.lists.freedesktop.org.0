Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7687B54C3
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 16:11:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E70BA10E05A;
	Mon,  2 Oct 2023 14:11:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22EE610E05A
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Oct 2023 14:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696255863; x=1727791863;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=Z3n5ADMwWDeUsbtf0UZq1mjG9mlTYztOrbmMry4d90k=;
 b=DSXxkK/2l0BVWgg2zNxqdI+i6yiY3MhTGF7pg51VtRdyZPDUhsfeLMO1
 bwGEAeSc0OeEvdG/qfYJs/E8rvpEfI/ZeGcJWGYmMmRrRII06AC9fFnQX
 E0+O2r5tM+/B/OUg4N3O4fELK/a9cEqd2OxYJMQU/kgaH8XaH+4/q2YEg
 l+nO3d0Iv9TskIF+bFDdVnhM+ZahCEgKCYauBmxomBr5hji/4RW90Xb6K
 h4Pc9E/5oCNHR19hdk1NafrWTU7RzZfH/Pw5nN3BGfnPR/UMavv+gQr4z
 h8Mvq77LzjbKgPDCd1IE3QDWaVl+ULgWdQp5M1tJxWp2nox6FFF2s4SiY g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="413560620"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="413560620"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 07:11:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; 
   d="scan'208";a="1556321"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Oct 2023 07:11:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 2 Oct 2023 07:11:01 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 2 Oct 2023 07:11:01 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 2 Oct 2023 07:11:01 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 2 Oct 2023 07:11:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PFNnOTt/LQrIiaD+55J4iemJsxAqGUr2SQ14TqU6Jtfuh5R4+pA+ab08hayPH0kbGNpWwUboFXQpgS58+X8M1l0ucXnrK62JXucgozz3siMXeg3+yVCGYRKsVLG859vxlvk8XAOykQCzY2t51jxsrz/KVJ6yZKvfOOjLdHF1UCxMdR1KyPB0ZEL7xg7++9oxh6PwYcTeEg8hox4GVixaaTKVC7qpk1lKBbzFxrfOPmfqFsbQ+pKd2C/FZtiycxTdB53mSq31+MQk2Q1o8S2lGQuXYO8hHWsWk3ggj+fKBRRiKsHJ/uig5ofadeiUrN0C2nAWatWzzyzf3ecZ8QpGaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lks5d6kQrNj0u3XGsNXmJuPWjEZbj5hNifgYBu/ate0=;
 b=edSJS/Pu1LcRQJer8WhMRgqCyJ5JhQtZHCNYGaypi2b+C/Jv67vfyZ0ovCNUWmvdSvTa+c08a65nVvFHHVdahfsr2nTUxnzvE//G22KnQJR8nA4etBLmKRNlMAcreHnrVyPCnwppkhgDwPrSP99wdjN6XU+NdruwLhDm/jlsvipYq3mPgKMdTIcXDx/DchAh41g0+u1BvSCovfG8ZoSLJ8RN6uGEHXmIN2rSvYogLYOkXNb/f5PWHIUlTYQx1QG8ephqAHAJtx46WsH5qYdEROmyhqCy+9+0JM3+mnJaiqiO3jCY+sJ0N54IVqisuNYt/jk5NEYDvggkrYKDeoihFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SA1PR11MB6709.namprd11.prod.outlook.com (2603:10b6:806:259::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.29; Mon, 2 Oct
 2023 14:10:59 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6813.038; Mon, 2 Oct 2023
 14:10:59 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <63e644f056c7745eb0e8e165c990c392a38ec85c.1696236329.git.jani.nikula@intel.com>
References: <cover.1696236329.git.jani.nikula@intel.com>
 <63e644f056c7745eb0e8e165c990c392a38ec85c.1696236329.git.jani.nikula@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 2 Oct 2023 11:10:52 -0300
Message-ID: <169625585285.2047.16174764380881692090@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY5PR16CA0008.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::21) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SA1PR11MB6709:EE_
X-MS-Office365-Filtering-Correlation-Id: edfe5722-1e5a-42d0-7753-08dbc35166ee
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wQD7/DWtbEQvgI8gplROZrI+6Ovf2T9+jkujwzbmrLbGkrnv8oZIGCqbJ+pzwihZxSy/gwILCvrYjAhG06pIwRdUwrAyu0n52yd9dentI3GtshLfu+5s2ERXMMKCkh+Khh23Si0BUcV58V0oKdI5Zg1GtoX0ufAoLmZr3vj7vsDwbcUhMrUNOw34ZF2YWqHMf4jf98BVNiBxtgihRSDl6Y3KJoVtALb0A8Nu2e2Zr2EiPFij0SiSVItCBDNIqGzbQXodhSb3kYgWszs61FJN+F73TtrJ3izHSy6IsLyHAEHvxSZhCMTA+BVmtAWrO6qK5sTEMm6y+0izlmfdjS/Z+sBeOXNOWZieQ8IS0sEaDed8gYUKNZ5OFF96iF4ejUOFPCleGCoEWwUJ96amDsjJiBYkAT4yUgHKwQoXnAUlY10+NXSyTt1gihxgHCIkCIfrLRQxHk7DXRHZ46A+tnvaciUebszjrG9gCY3LZDsdD3iGc45tBhc7kVniFAewDwp7h8kU30zZf+dlOzhMGjlh4bdxQE2Em5YMjNYu6UHJ8Sg8xjz6Z/DJcunGRu35q/WW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(366004)(346002)(376002)(136003)(396003)(39860400002)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(2906002)(66946007)(8936002)(44832011)(5660300002)(4326008)(41300700001)(66556008)(66476007)(8676002)(6486002)(9686003)(6512007)(478600001)(6506007)(6666004)(26005)(33716001)(66899024)(107886003)(83380400001)(316002)(38100700002)(82960400001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Wk1CckIxOE5wYUpIdVBpbGVnU01WeWYwd2JRaGpQVFpxdjIyQlBXMjNJNXdn?=
 =?utf-8?B?Q3YzN05MOUE5ajhwb0tYeUxjbEdUdVZ6cytNVlM3R0svazNIRm9FNFZsSlJL?=
 =?utf-8?B?YStablNoWTlDMytxR3orWFNIdDBoMDFucndOampNWlBIZ0FselU0RlBhMFox?=
 =?utf-8?B?WWduUExJeXhuOGx6RWU3OFJRUXFGWjMrTlFyU2tWUlU2aXZ4ZkZ1eFdHeDJt?=
 =?utf-8?B?UUZFTEVOWW5aZzYzRkJua3UybjZVb25JdUZRMW0xMXNMaHhCOWxFUjNSS09x?=
 =?utf-8?B?NndWNTNsd1VGcm5CTTNzem9qeHg0Vk4vdDNLSVhJQm5hS3hoMHNOMm1teXd4?=
 =?utf-8?B?Q2hOTTcyTUZJQ0dLbDV6Vyt4VDZTQkIzSzJDdGFiTmp0czVhNXlFMnk2L3Bo?=
 =?utf-8?B?R2lQUzFOWWtFallZd0NFWTVtVzN3TFMrY0tLb0R0SldXQlhOUDZYNzliSmFF?=
 =?utf-8?B?a1NGY05EN0ZtY1FLRzVadmhyODVTSFR5MGNNNmFPYlA2UytvL090ZEhJTm1H?=
 =?utf-8?B?Z3lLZmc1VUh2ZXZqV0pnTEVBUzV6SHpuVk9sYUYyZGQ3b1ppazVwRy9sMVZ3?=
 =?utf-8?B?YVRzTjhmTHM1aUtTYmJSMlloUVJtMjVjQXZOZFRwL2FJdHNsS2V0SXUyRXM0?=
 =?utf-8?B?S29tNTRYeVZyRnZpUmdjdmJxaDlycWdySGMvc1dPMTJXNEhZWkRPY2lzcHRD?=
 =?utf-8?B?QkV2QTJUS1ZPWWVSS2FINjlTQ2FkRDc5V1prNWJObzJhaERlcC95QnZEcXhp?=
 =?utf-8?B?QUs4cElLbXJ3TkNJTmdKNzNHdDhOK0FwOHJGMnRoTXRpN2FHbHR1TjVGcWQ0?=
 =?utf-8?B?WHlab2R0Q0hoRnRWMDQ4NzlPMmRhNkFpNEJidmcxeFV0dVZOcnBWMjJneDR2?=
 =?utf-8?B?SU85bmVrdTUzR2p3YW1GTzlaY3lnNDBrZThrNmpkNXJISDYrbEoxU2RaNCti?=
 =?utf-8?B?b1B3VnVMbmpuTTRBUjRoYjhDRnNZTTBCZDN0NmVsYjNyRWFJWDRiS2hZbC9Q?=
 =?utf-8?B?bGsyM0NVRHhYbThyUmNrWDRJTjhXZjNjeUxhV3pVaTY3bnlQQk4wdjBzWTBH?=
 =?utf-8?B?YTlrOUlaam9rbXF1a0dTNVB6S0kvME9LMEZqT012c3Uyc2dzNmRaWEIxc2dy?=
 =?utf-8?B?VmtHclhtd0VWdXZaZEgyWnVBZ1ArLy8rOEdQa3JFdW5wczFyRkpNV1NWNHY3?=
 =?utf-8?B?NTVTNVZqTDhWS01CU2lmQ21xZEtuaUJrV21yVzBHTnVCWVVSTFVNN3I4eGZB?=
 =?utf-8?B?WmVnSG5zOCtPVmtCQnBLemNVRFNDOEpkVmNkSTN0akRWOURzUzcxbHdDaEV6?=
 =?utf-8?B?QlNMaXpzdjFlMTlXQUtnclF1aFJLLysyRUdPQnc5UVgxVVlnMGRVT3RpSkpj?=
 =?utf-8?B?WlQ4aXI0K2plQ2FLOHVEWm5lRXpaK1dGN2dxeFRBRVQ4dmhzWFU4L1B6emd4?=
 =?utf-8?B?YjA0Z3pkT3RXdlFubDVQWkNlTVlaQThvMXRRMk85ZHYxaExGYUhPQWZBeUQ3?=
 =?utf-8?B?VWJoRHp3S2dmVHdGSFBibmF1a0FEeml6ZFBmY3VEZVVvZFROdVZPL0hwbGht?=
 =?utf-8?B?cFZYTG1NME5Ga1MzMndreTRFK2ZDNmpBeS9JdHpFOElVS2ZwTVE5am4rMFRv?=
 =?utf-8?B?SjZMWmtmMCs1WXh5eGlQaWQ2cm5Icm4rY2QvbHB6N3pPOUVkZFpEUVBzeVBT?=
 =?utf-8?B?Q1VidVdtVU1TRzhtSVIvREpwQU9DMVNic29BQ2ozemk4TVpScHVMR2R2ZUFM?=
 =?utf-8?B?bGV1b0NybWxKZEU5d1FjcjcrT0x3dVFicDFHZXh4SGJNa1RPQjRtWWdlSFZT?=
 =?utf-8?B?RE9Vd2haTFNuNkM2RUVCOWV1Rmk4TEc0WkU4ODJKanVYbWl6aTdZeWJqM0RW?=
 =?utf-8?B?ZlA0MFVRdjMybWtMTU81QUh5NmRrQ0piQkJJcVJzc3JsZi96R0diTDgvd3BS?=
 =?utf-8?B?WUE0Q1VTQThWQlIvaXhhT2dSd2o3bjNETW0xZVpPTDIrY0YwdkFnSkdJQm9V?=
 =?utf-8?B?aU84UktIUldQenlGbTJuZVZ2dTJ1Zmk3bUZBUHJtcWYrbHRxQzBDR2J2bjRG?=
 =?utf-8?B?dWpOZjBlT3psUzBHRjhwYmxWWXJlQm8rLzcwMWF1WTlCVXgyWnBIa0Exb0lL?=
 =?utf-8?B?WS8rYXhaNjRnTzVtWkdYbW4rMENEc3pHV3VHMC9PcUNjU1pWeHJtWjRoV2Jp?=
 =?utf-8?B?MEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: edfe5722-1e5a-42d0-7753-08dbc35166ee
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2023 14:10:59.3827 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t2OXKbbSvRc3IHYfny0Mx7/fU9hHwvOw8c/XaeW8kso7vOO8IeS1B7/EPBVlp9/bkgtew1uWDLqPNuRqpzI9pw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6709
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/mocs: use to_gt() instead of
 direct &i915->gt
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2023-10-02 05:47:02-03:00)
>Have to give up the const on i915 pointer, but it's not big of a deal

What if patch #2 ("drm/i915: allocate i915->gt0 dynamically") was the first=
 in
the series? I see it changes to_gt() to receive a const struct drm_i915_pri=
vate
*i915.

Either way,

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>considering non-const i915 gets passed all over the place.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_mocs.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/g=
t/intel_mocs.c
>index 07269ff3be13..353f93baaca0 100644
>--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
>+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
>@@ -487,7 +487,7 @@ static bool has_mocs(const struct drm_i915_private *i9=
15)
>         return !IS_DGFX(i915);
> }
>=20
>-static unsigned int get_mocs_settings(const struct drm_i915_private *i915=
,
>+static unsigned int get_mocs_settings(struct drm_i915_private *i915,
>                                       struct drm_i915_mocs_table *table)
> {
>         unsigned int flags;
>@@ -495,7 +495,7 @@ static unsigned int get_mocs_settings(const struct drm=
_i915_private *i915,
>         memset(table, 0, sizeof(struct drm_i915_mocs_table));
>=20
>         table->unused_entries_index =3D I915_MOCS_PTE;
>-        if (IS_GFX_GT_IP_RANGE(&i915->gt0, IP_VER(12, 70), IP_VER(12, 71)=
)) {
>+        if (IS_GFX_GT_IP_RANGE(to_gt(i915), IP_VER(12, 70), IP_VER(12, 71=
))) {
>                 table->size =3D ARRAY_SIZE(mtl_mocs_table);
>                 table->table =3D mtl_mocs_table;
>                 table->n_entries =3D MTL_NUM_MOCS_ENTRIES;
>--=20
>2.39.2
>
