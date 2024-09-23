Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDA097F1C2
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 22:47:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5134410E493;
	Mon, 23 Sep 2024 20:47:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KH6ag8Ox";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63DE310E493
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 20:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727124444; x=1758660444;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=slKSdD+cdVTnaTfD9ojPIu8WOIDBcj1iXslr2gNN3Zk=;
 b=KH6ag8OxbYYod1fezNLyDNflt+q//j7CM1NXlKdv4diuoUdcrgUDz0yN
 d1yQ5tHkTBbA9KErjXBMnukffcwOr1KkE5hbNK8uB2OAwUwkjaw/1QcuU
 odGqtnRdFgiV+rg/tf7CxPO7Gib7A4xS9t2uBDmESYW9BV0XaK6swX8tm
 oXBdoImX57VAP1tpExCjoWcDcPTfAoHbSaIt88X9ZPeH3ephs1CM49uB+
 7jgQyt+hRfN65SF4miYMShfWZDsw6GWryoUbCF9QRh2HycfqlQNbSbZRK
 IVFFokc9ACvfl1Pcw6pu+tKRahmCvOM7cvGoH+StaPIMHgxOehyZsCNpy Q==;
X-CSE-ConnectionGUID: 7UP6uoCGSDWHmCosqkdnIw==
X-CSE-MsgGUID: mpr+uPoOSCmrhAsqwGB5lQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="26210305"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="26210305"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 13:47:23 -0700
X-CSE-ConnectionGUID: OllC7234ScSxoxHohEC7tw==
X-CSE-MsgGUID: 1mmQn0pBSIynJrHKObf/pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="70773556"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Sep 2024 13:47:22 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 13:47:21 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 13:47:20 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 23 Sep 2024 13:47:20 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 23 Sep 2024 13:47:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rsz+seoJ6UvyLrVdNjazlINXrI02MmjBbcMbeL/xz58CvbPa5EV5ZUaZUv1ssmJhcBuvnmSC2FbO4zzj4fe7Oxe9Xzn92qVogeaqkgAccPNUreQXS57Bgva2OAv6nWlt4X1EhAkQJkPPwusLDDXiLFNpSWElWfAMHfAt44a3kbGlWeX055FmKOBAsPYbiz++ATw9UGetDbvvFuP144Rlh/QTpvwZp3Hu8C4TrpPeJGRIKwQNrSDIWIeVZLu1sgI2ZfnvglLN0S9asI0BMupA+0MtIdcAJR37xZjpgCQG+2PAf1odj1eKY7l+OEaPlyR3EgDO0id68DvtY1PxFulaPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WptmZgI3ZyJIp4oPzuuJ3y4I6WCj7ftjHRqjT5InSRo=;
 b=SurmNbUseGWPZjqGk6izjevVl3/9Iasz+m7+y0hhw04oxjCG+sZhxSSIo6XtW4RDU4DWF89bTv6llprxkcmo+paRZLrjOzEb+zZq+DWtZNoYNZmQtUdW9mMT7pZtw/o3xa7lqc87mQjmWVZ2N5xdvMQPe+0iSpRGHs1mgpzSF/bwKTbTIrQZvdekect2BB4N+B9o3C80XJRR/VDrCa3Erc6qxUMjDmpa2nLoPwnPLXx/eg7vbfheQ4OMtpG6xu8T4CZKM8r2vJPx/JyVMsCNinEK0IMfxH6FuLhmnynYcKKvaRYkGFfFGGExGtoUgiOXQ3uvntYyLn6+Y0JDntm4hA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS0PR11MB7288.namprd11.prod.outlook.com (2603:10b6:8:13b::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Mon, 23 Sep
 2024 20:47:13 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.7982.022; Mon, 23 Sep 2024
 20:47:13 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ZvHNH20i3-zkqR2H@intel.com>
References: <20240923190324.83013-1-gustavo.sousa@intel.com>
 <20240923190324.83013-6-gustavo.sousa@intel.com> <ZvHAL48aC8P-Lvbd@intel.com>
 <172712196055.84255.91494974908186120@gjsousa-mobl2>
 <ZvHNH20i3-zkqR2H@intel.com>
Subject: Re: [PATCH v2 5/5] drm/i915/display: Cover all possible pipes in
 TP_printk()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Matt Roper <matthew.d.roper@intel.com>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 23 Sep 2024 17:47:08 -0300
Message-ID: <172712442823.84255.2807821048800039833@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0219.namprd04.prod.outlook.com
 (2603:10b6:303:87::14) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS0PR11MB7288:EE_
X-MS-Office365-Filtering-Correlation-Id: d2310994-e916-4ace-44e0-08dcdc10e6b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WXlheDh6RGlmWmdUTDhDZlRGeXUvaVI3RnVCWGx0THNmUUFwTExmbVlCckJB?=
 =?utf-8?B?blpKSzlCNHRoU1pNWDFFN0xqTXYvcXpsSnRDT1dwM0oyMWZiNGpuS0ZjdmhZ?=
 =?utf-8?B?L3VHTkZIR1VDQS8yUDYza3JYaG9YZEd2NGd0Vm5KdjFXdmgrL1VjS3VGbURJ?=
 =?utf-8?B?WnF0a0wxM2VGbzROMzNtUWVnZXZvRFdnQlhoT0YyRGZpVTNGdTd1cGxlYysz?=
 =?utf-8?B?VjVyNmVIbVNCanRCbmVZNHdTc3pKRWl5aFpjSzNkS2F0RkZJbHdybWMrL3Jl?=
 =?utf-8?B?LzhUem1oR2F4cVRPdlp6VmprUndPUkp2SGJ2SEtaWnpWcDN4dWlvbjl2NlpP?=
 =?utf-8?B?QTZnVzBFa0tsdGlsOFJNQUtqU0tmMUQxSlZ0MmhQV25Kcms3TW1STE9HODJq?=
 =?utf-8?B?dEVNY2FmZzU3c1pWc21wbHQwZHhYRFhHUm01eGFCdnBRdVRaRVBFV1ordWVB?=
 =?utf-8?B?Z0JQMWkyL2lMVkJ1Z0hoamlwYmJUVTRLQVczYWt2OXFncGNtcnZ0K0h2MitG?=
 =?utf-8?B?dXVlOGVqYlB5clFGTjhLdUc5NnZNNjgrWUtJMlI4dldmNjVmdU5mSXFTNHda?=
 =?utf-8?B?dWRWM3pUOGdFTmVZcXp5M1hZU1d2SEhZUkpybFhDbkZncUZUNnYvMEhPcTBu?=
 =?utf-8?B?ekNTcVFUaU9lU1UrQythcGxEdS9vSGVSMHB5RGwvTWloMDBDalFDZEMxWWor?=
 =?utf-8?B?RG80bHZiV2phNmdkNTJoN09KS2RnUXlQMkpqOWZsWHM1eFRCNmRML28vemVD?=
 =?utf-8?B?Z3dvbWM4VWZyZTEwMmRpdnN1Ni9MbURaVkVsR0hiViswTWNtVEczQUFncFc0?=
 =?utf-8?B?Q0RzWG5CTE84eHVJUzc1SURlZGNPMyt6THhpZm8yeEF1OTd2cVpkejRZL2ky?=
 =?utf-8?B?N2J6YjBONXpzV0FDTzZEc3R6dzlsVGxSZUtBR2dJU0FMNkFETUFWY2hTdTBi?=
 =?utf-8?B?a2grYVdzVC9KczBVZGNMcURFMzJIbnYwb3czbzVGQkdsWEtUT0xOcXV4UnBm?=
 =?utf-8?B?TEhYbzBNOHY5MW5jL21kcTlZQit0azJOeGJ5NHorR3NmV0FiUE9KMldVWXBF?=
 =?utf-8?B?TWNZdXpOenQwZWJVanBaNktXM2dXdmxEdjU3UnJzOWM5TG9MMjd6T0pMWWlC?=
 =?utf-8?B?STkxakJ6OEVTRmF1UHAyNnZ2WmdJaGpBOUsrN2loQUNxVVBrbTdhTGE0R3Er?=
 =?utf-8?B?d3Z4TzE5LzIyWXVoeUpQVzY1VHR1ay91WUJ5d2V0eTZYakR6N0hmQ3NtNGQr?=
 =?utf-8?B?RkxxdzRmbllqWVFINnJNckpxcjdsQVFKZERaRy9ndGJYN3BzZngxN0pCZTk2?=
 =?utf-8?B?NlJrYllwb2dWREdJcXFLUmNEZVBmbG55bzQyaWdrR2ZaWTNteWIybWlQZDQ0?=
 =?utf-8?B?d2hGYmZwMjdZekJhU3I3cW1xUTQ0Mzc2VXVlRkduT1VlMjZNQjZudUY0WVp2?=
 =?utf-8?B?SS9STTN5ZEZ0TVVSRmpaaXdrTlJSc3AwQzJ0THhUb0d2Snp5a3BNaHZuZFRm?=
 =?utf-8?B?cUFnKzB6TlFFK0xSemNyR3VGWTNvaGlBSFQvWUVvZzA2ZEc4T1M1c2JlSkhV?=
 =?utf-8?B?anZjejJvQWI4SHB4azUzTkZVNysyOWF5UGFOc1QxTUNwekRIcEp1VUhlc0J4?=
 =?utf-8?B?WUZLdGpZVS9OakRQR09TbGtGRjRMWFhXNGl4WUx1VHI0bFU3L2tkUmtJUkwv?=
 =?utf-8?B?ZmRyRHMyR25wMldKVmxXeXVrVzdaM3c1a2Zzd1UvYTg0LzZyblFtb2JVdWZO?=
 =?utf-8?B?UXZlVjZHb0hVT0w5alMrMnhJN1FSSnNjeFd3dUlhVysxTUE5b0xEbDgwRlV3?=
 =?utf-8?B?L1Bua2thNlk3NUh0Yk5vMjQzckxTaGFCQ01PazZ6RWlPcGJGbEtneUdFbnRm?=
 =?utf-8?B?NnNFUmNhRDhIYlpXeUZhODRyZ0pHeC9JSWo5TFAwSDB1NlE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eDd3NU9JZWN0T0RhYUcrbHY3aGxLNFA0K21veGpUSjUrRWtjdEFQaWtiVVhq?=
 =?utf-8?B?OVU0cW51WmNHcXZWVy9RaHIydkc3MUxRSUN3RXlHVjFhNHk2aUdDZGxMYmtR?=
 =?utf-8?B?Vlo2eGc5VVg1d2pBMWZoaHVyZENyenA1N1dlLy9LbGU4L25WelFXTG9jRkNu?=
 =?utf-8?B?cHNwN1Q2TDdZd09tVHVZU2gwbWNtbnVCUmJleWlTclVVbUxuaUJhL3RnaDFq?=
 =?utf-8?B?Rm9sWnNCUVErb3NmWHhyQk5GU2J1S1dWR0pDMHhTTWhnbWY3Um1OVmlkM3VB?=
 =?utf-8?B?cHhUc2QrUmF0ekNsWDMzM3VKa2JnWXZXZEh3c3hleUZqTVFDUmY4MkFqdkJX?=
 =?utf-8?B?STh2M0NwOXUyMjQ0dGVCdXE1c0FTemVQQ0grK0wzd2NENEdEWnBsQ0pEbFB2?=
 =?utf-8?B?Rk1zNGxKeUxjUDJzak1SWGtYWERqVGNjRElVb3IwN1lTVnUvbk9DMkUyTTUv?=
 =?utf-8?B?OURqL29rVVJhNUtUTXdJb2tqcHp2WlNZUGlOTlI2RDByRVJ1c3ppVGl5ejRP?=
 =?utf-8?B?amphQUluYVFzd0E4N2o5eHRaZlhMYTZ0RGoyWmdha1dzUlcrQ3JkT3RvZHNh?=
 =?utf-8?B?Vmg4by9xSVliTlRlSjBpWVVnSHE5UzJqRm8rSXdGazVuWFdmUDlPUUVqMmxW?=
 =?utf-8?B?Kzhjbm80VFlGay9hRzRsQjRKTkFoOTdLRjBPZlI4R3ZSNXBzekoxT2FTSlFR?=
 =?utf-8?B?NGhPc3ZLMVo1SWM1c2cvK1R2M2s5QytzTlo5RGozNUNYWEFiZ0tPS3FHRXpw?=
 =?utf-8?B?bVZPZXhiWHZqcDhsbjgvUEZHc29BejNOU2ZhY3loaVdlM2lDZnhnQjR6RUVN?=
 =?utf-8?B?UlRtTlk5c1E2QTF6ejQvM2tTZWZqVmxrcXVPOEFubGpFaXZCa0Qxd0tjdGVP?=
 =?utf-8?B?anVmbUlEUGFiVlZTMkdrdWdqMjRNTnl3OVJYSVFBUms1WHBiWmgvMzhKSFV3?=
 =?utf-8?B?d1VTRmg4am1lZU1zdFJoSkRSSUJwUGRqVGV0YkZ0MjJPaURhd0FJa2J3d3JG?=
 =?utf-8?B?VDVMN2lTSTRYTnNqY1JBNE0wYzladktlcUJ2aG9HWlJtUDM4R2hXejU4THZJ?=
 =?utf-8?B?T3I3Nk9UTTRjQzFJY1hOZVdpMU8rWGxEclhoMkpSd0pmb0FTUjdpS1lpaDFL?=
 =?utf-8?B?bDhqd21zOFF5Yit2WTZ3ZjlpVk11aFFacE9TTW91bS9OSnhRTno1UG5HdnR0?=
 =?utf-8?B?bVNPYUhUL3c4ODNhb1pjTDVxMXA0Q1lVNFBudWFKSDZON3dVVmFkeDU4QVRl?=
 =?utf-8?B?N1laL3daYVpOT3pTNFlLeWd4ZVlTTDkyWlRIRlZqT3ZyYTUrWFdNYzdTRHZI?=
 =?utf-8?B?d0tSSlYvMGlTOExvK3lscEtkQStiV1B5QlhVQ1dSRFRvTmdZcjBQTERNM1E2?=
 =?utf-8?B?Z2JuN3E1K0wwUjNseG90a3dRM2orRDNrMWNXQTVWSHAwTzJOTlRrT3BqZnVH?=
 =?utf-8?B?Z0tZL0ZlMXJEZGQybmJXTHFxTVZzaENZL3BNTktZTldmOWs1S1dFZVVMRjcz?=
 =?utf-8?B?dHhKM25rb2RPSDV1aUxYM0ZTU1ptUTNxam9CU1pKeWpqMCtBTXNzNko5cjA2?=
 =?utf-8?B?TmVLTWk0V1UxckwxN3c0Y0dpeFZyRklRSGJFZWF0M0NTakhrQSt0VHQ0eEh4?=
 =?utf-8?B?WVcrOTdrcWpla05zY3NZcWR2TTUrVjIvaWdQYWUzcjR2NTRSRTFpTG5iYTRs?=
 =?utf-8?B?VW1vQUZsdDdKRzdORm1YOVZSV1FINzVCdk8vbjRjMUFWQlBYaGc0ZTYrWC9G?=
 =?utf-8?B?bktVVDRsZUg1Qmd3Mm1hL2hnbUtlL0N5MzBZNFhpK2VINnJ1TEIzWHlDZXRo?=
 =?utf-8?B?Y0V5bUVIODE2dndraWErcWxpOWVKTFJDa3Mzam1JeEQrTjBNclVNeHYwMzln?=
 =?utf-8?B?K1RYZ1Z3MlphQUNtdFY0SnZCWjhQeEVWTW9Sd0RaUHYvczZKWU5mbmhnWEpI?=
 =?utf-8?B?ZTc4a2FMbWM2a3JUMytoTytZWEhIVkVPWFlQS3RjSmx3QXNCcXVhMEszdFJI?=
 =?utf-8?B?dUp3KzFOZjJJK1BtZzh0MUxjdm5wa2RISVZONHlSYmRsU3JtdlB4TkN3WUdi?=
 =?utf-8?B?ZmI2UnppaW15bkpMU0RydkFyM21KR05tVGdlNG95OVBEQzkxbWUyaEEyUnBC?=
 =?utf-8?B?cW1SbXR2MkQ4ajRoMWRpeVE5UVQ5VVAzcC9GaWg2TzVGRFJZbzQ1NVYyZUVU?=
 =?utf-8?B?QlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d2310994-e916-4ace-44e0-08dcdc10e6b2
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2024 20:47:12.9994 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5CY9TPVj6w+KelhAs5BCa5HQwVnBb79RFK5jiqL/bKuaYCzJmKXpNV79YHUFt6+TfV/KQOSYVd5SuIb4bMfkeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7288
X-OriginatorOrg: intel.com
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2024-09-23 17:18:39-03:00)
>On Mon, Sep 23, 2024 at 05:06:00PM -0300, Gustavo Sousa wrote:
>> Quoting Ville Syrj=C3=A4l=C3=A4 (2024-09-23 16:23:27-03:00)
>> >On Mon, Sep 23, 2024 at 04:02:54PM -0300, Gustavo Sousa wrote:
>> >> Tracepoints that display frame and scanline counters for all pipes we=
re
>> >> added with commit 1489bba82433 ("drm/i915: Add cxsr toggle tracepoint=
")
>> >> and commit 0b2599a43ca9 ("drm/i915: Add pipe enable/disable
>> >> tracepoints"). At that time, we only had pipes A, B and C. Now that w=
e
>> >> can also have pipe D, the TP_printk() calls are missing it.
>> >>=20
>> >> As a quick and dirty fix for that, let's define two common macros to =
be
>> >> used for the format and values respectively, and also ensure we raise=
 a
>> >> build bug if more pipes are added to enum pipe.
>> >>=20
>> >> In the future, we should probably have a way of printing information =
for
>> >> available pipes only.
>> >>=20
>> >> Cc: Matt Roper <matthew.d.roper@intel.com>
>> >> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> >> ---
>> >>  .../drm/i915/display/intel_display_trace.h    | 43 +++++++++++++----=
--
>> >>  1 file changed, 29 insertions(+), 14 deletions(-)
>> >>=20
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/dri=
vers/gpu/drm/i915/display/intel_display_trace.h
>> >> index eec9aeddad96..9bd8f1e505b0 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_display_trace.h
>> >> +++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
>> >> @@ -31,6 +31,29 @@
>> >>  #define _TRACE_PIPE_A        0
>> >>  #define _TRACE_PIPE_B        1
>> >>  #define _TRACE_PIPE_C        2
>> >> +#define _TRACE_PIPE_D        3
>> >> +
>> >> +/*
>> >> + * FIXME: Several TP_printk() calls below display frame and scanline=
 numbers for
>> >> + * all possible pipes (regardless of whether they are available) and=
 that is
>> >> + * done with a constant format string. A better approach would be to=
 generate
>> >> + * that info dynamically based on available pipes, but, while we do =
not have
>> >> + * that implemented yet, let's assert that the constant format strin=
g indeed
>> >> + * covers all possible pipes.
>> >> + */
>> >> +static_assert(I915_MAX_PIPES - 1 =3D=3D _TRACE_PIPE_D);
>> >> +
>> >> +#define _PIPES_FRAME_AND_SCANLINE_FMT                \
>> >> +        "pipe A: frame=3D%u, scanline=3D%u"                \
>> >> +        ", pipe B: frame=3D%u, scanline=3D%u"        \
>> >> +        ", pipe C: frame=3D%u, scanline=3D%u"        \
>> >> +        ", pipe D: frame=3D%u, scanline=3D%u"
>> >
>> >Hmm. We have a lot of tracpoints that just print these for a single
>> >pipe. Is there any decent way to make this macro just for one pipe,
>> >and then resuse it for all the tracepoints whether they trace one
>> >pipe or all of them?
>>=20
>> Maybe what we could do is to have a local struct pipe_counters type
>> and have _PIPE_COUNTERS_FMT and _PIPE_COUNTERS_VALUES for it. Then they
>> could be used here as well as for the single-pipe cases.
>
>Can we use structs here or would that confuse trace-cmd as well?

Ugh... Right. I'm afraid that would not work indeed.

I quickly scammed through libtraceevent's event-parse.c and it looks
like it does not support that.

--
Gustavo Sousa
