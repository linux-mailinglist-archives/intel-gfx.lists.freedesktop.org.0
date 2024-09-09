Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC6C970D03
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 07:40:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3B7A10E2BA;
	Mon,  9 Sep 2024 05:40:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="URAJmHPM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3997F10E2BB
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2024 05:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725860427; x=1757396427;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=29TZy5dJboTD22RDU54NYjfEOKIWgLAadXi0c6aJOFk=;
 b=URAJmHPMJ9XaUY8xSuQFs4lZdAi6W/aLbPeESiXXi92kL5GS5109YBiH
 9jEMpHM9i9ti3U6mTTXo9+fRkLGjrLCHqtgBa8R6HyE4pgTLmsKKe46Qw
 Er5kFX/JMzECrzfPtBDyghGHEWyqGKr4WHUdlBj5E/y7ucK1v4iBz3ep1
 7xUcLCen7K26N5aBBsrWtDlAYnl5z25HSbOiG3/IUR6E0xWDON69njseC
 GH39cdE2KJ6mE+PsZrL9TowUMBcea7Zipobc2h51L9FhXPmsaipXPSWKL
 I3oPqgHEt9ATVM7WZRMPLsv8NfgvP1z31jmUbKUmVkTGn/CHlAB4893Ph g==;
X-CSE-ConnectionGUID: P1XGEhiyQ2a+GNAIZV2smQ==
X-CSE-MsgGUID: IfsKPwnhTVq8dHBdnzMaCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11189"; a="28314907"
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; d="scan'208";a="28314907"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2024 22:40:27 -0700
X-CSE-ConnectionGUID: k2TvcgVfSmmfzXVwB+qcow==
X-CSE-MsgGUID: a1YyYeKGTb+5UNLrDkgb1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; d="scan'208";a="71323987"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Sep 2024 22:40:26 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 8 Sep 2024 22:40:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 8 Sep 2024 22:40:25 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 8 Sep 2024 22:40:25 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 8 Sep 2024 22:40:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pkM/d7QRsqch7Jrn1+zXlOtc0akXjbFgjkwzEz7qxPHGpnceGHlQMJcaNr4VtSjVGwNzCLc+vqEU/XY6h+kUAbEjfUFZzmwpkE+1z0ZG3d6r1r75vq4L2gQb/fXIdoKDqR2ZuG/ZykR3x4mZSrlJVzHhpY3Poq+pzKpTukciCMBtLSeHBZLMIzuC2hBfZDhsYcRmanFoBwmZIYWdBxQVHt8wqaKkszQWH1XaZtmjMfnELm/8Hxhd0jjMz1Ktkz1l29sExRv4bP2UDaIatKeW6vStDR7e/ZS4YdM1JBsS0fI46S2br7NuPGBskfxZAhqqF14Me7IR4DVNdVvBp5ncSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L5ok6B0ykQd1r4h7TtX33yGYO4j7wGeb2OHYcOa+NEc=;
 b=UV9JP30k//Pd5wy4gYcBlUzFWZYicqAAH/XVOuJmi8nodQBTp1mAiviINMeuf78at9syd5R5UoC2ygAVw31Wzo9/MxV+pelRaE5p5VzwkG05OeEf0vrCrFA4uonrtGrTIhbvPGXmnbSF9+ef6O23RF5eFcvdc048IfOJyCasUtOW69OmYLtKh1XI2Xzz5mGSgQFGiUxxgKZ1zzW0EGN6ktYdTcrtL5v2y/vavJK0V2QScaS1Gehho5mzeTbUaxYlP6bBS1ef9JwPtRe1dvVwYXJXMJqGoGQxLp7TPhveKV24oBcqylqgoe4a+4ye3eSo17j7OhWetjKRFOtK+6jwlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB7851.namprd11.prod.outlook.com (2603:10b6:8:fb::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.28; Mon, 9 Sep
 2024 05:40:23 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7918.024; Mon, 9 Sep 2024
 05:40:23 +0000
Message-ID: <b62b3ba6-7954-4dc8-8ce9-2aba2b7c712c@intel.com>
Date: Mon, 9 Sep 2024 11:10:16 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/14] drm/i915/display: Modify debugfs for joiner to
 force n pipes
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jani.saarinen@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
 <20240906125807.3960642-2-ankit.k.nautiyal@intel.com>
 <ZtsVs38KicPJZff1@intel.com> <ZtsXjQoYgtEVdjRK@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZtsXjQoYgtEVdjRK@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0026.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB7851:EE_
X-MS-Office365-Filtering-Correlation-Id: 1e224c37-1355-4a14-4db9-08dcd091e65c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TVVRaFpZemZjd2hIbjE5eGNnSU41Z0xFSzhHRExxc2gzTi92VG02OURzWXNJ?=
 =?utf-8?B?TTBLbUdKb3p2cUNnWWY1YXhodUQzcXB6RzZSVWhrNGw5WmpMN29Icjh6MUNl?=
 =?utf-8?B?N0J4Y3lqSE96SENYVDhkbitjUWlhWkxsWGgxVEdGTm94T21SSXI2NU5KbnE4?=
 =?utf-8?B?SEZTV292NjcxTFdQS2NTZXZpVE5pMzhVU2RLcVZzQXJLY3RZeVVzWm9zREZG?=
 =?utf-8?B?NVNUYWJxaG1BeFVQeWsvNHFsMkVMMUlIRUpESGdIcjBIZlNjbEpUdzRmU0pD?=
 =?utf-8?B?N0FoYTZ6SDFnTEttN2xCMEFzL2dESGw0dTdxOEtGMzh5OWtBNG5sbkFRRXRC?=
 =?utf-8?B?U1FYcUJreXEyeVFuUVI0N3dsUnhJQ0pPOHJsUTU4WWpoL3lFT2VSRzJCalhW?=
 =?utf-8?B?VlU5dDFXTzhKVnVDVjBUdEdyQ0ttUnAyZkhvMTJZeDBZSjI0RnNRWTZGR0dS?=
 =?utf-8?B?RVpLQWJkakNzK1hqcER1azZ2Zkp4eHVYTkR4NDMyZEZqbTR5UTkxazRBOEQ3?=
 =?utf-8?B?QkR5SGxjNi9kRlhTL3RnSEptN2ZvZkROQlZRaGpnNDlTQ0M5bHRwL1ZQbFl4?=
 =?utf-8?B?clZyaTNuZmw1SkFWU2MxZ2FCR0E4V1hidkE1YnJlTHpMclJ4TEV1U0VWQ1JP?=
 =?utf-8?B?L3VSQTljV25zUkhPMWJoTW5LYmFITVRPUjJRQUhsSEZLSzF4NkxpVXRKa0tS?=
 =?utf-8?B?SEM4TS81VzZuOWgvUEtVTHY5RFVFQnROM0ZiQUhSTUROZ0UxNm1RWDRtWDlS?=
 =?utf-8?B?dCt5YjdsMXV1QWVZVTVvOVYwcDI0T1JoVjZMbHh2T3dJZlBDcnN2alJxeEEw?=
 =?utf-8?B?QllvNjgybS8zd2dKUENTZDBpU09yUjc1L0lzQmM5a3laZ25tdG4vbzE5eXhl?=
 =?utf-8?B?Mjl6UW5ZZnN6eWdhTjErQVNxOGZZMTNBZjJpb2pRb1F3bUtOYW1rL3VnZDB6?=
 =?utf-8?B?UmdhaC9HcjNHekZtWUl2Nk9DQUV0K0xzc3ZKZHNOS2RkL3FaVEFxQS94ZWUx?=
 =?utf-8?B?VVEyZ1VLSGZBMEs1OTc4ZktTa1k1bkdXb0w4by9nK2EzS1hmNXhVYUtQdmdS?=
 =?utf-8?B?SWhpYzhPdWJWNGJ0YWVoNTlhWXR0OGNpSXVlaXdxRzc0MFZvWHdEd2VCZDgv?=
 =?utf-8?B?Qm9GbWVtOXRsTTlDaFZudGpiaGU0cTBJakZiaVZCVHp5Q2UxbllWd0g2OE5F?=
 =?utf-8?B?c0dLUHlKOTBKQkJ1SStWckdhZVRubzBvWks5Q3pZbDk1TmxBblpvRWpBRmQ2?=
 =?utf-8?B?aUFlaEI4VlFKT1duSkxkN0tpMDdESlVrTW5oL3RNbmlOQ0k5dzZNcmZqR1dP?=
 =?utf-8?B?aVJQaGk1RFAyeXFmRHM3RXlmUkdWRmNIWnZZRWNJSnZQa05YYVdyUHRTWm55?=
 =?utf-8?B?THJQcXROc3NRelh3TmZIN3JqREdHQ21OTTRJanRocGt3cmpuNXpFMmpLZ1BR?=
 =?utf-8?B?WGJqVTRsNDdBMHlZeXM5bEdXNDNDQlNxejJhZTB4dDhuL1d6UjNuTVJRaDNz?=
 =?utf-8?B?NURjQzZKQUc4VUI0a1VqbmJvd2g0NlFrNkZTb04rcklCMnRRVUQ2YjlUdUN2?=
 =?utf-8?B?ZnIxWUFONmdVY0FSOHNNdmVxeGR0emZTV2VmZzFDbERHcGJoMkJTK1Z6UWJ6?=
 =?utf-8?B?QllhdTV6cSs0RTRWRDFtQVJOK3JlcWp5a1ZSdm1Eb1V0OFdSazNlYXlyWGZl?=
 =?utf-8?B?TXRuTDZhZjFlbXVEelBJeEg2ZU9rSFB2RkdEYzdQUjZnWWdITDhzU2FGWmV4?=
 =?utf-8?B?elVMNnU5UFdsL0NuTjEvaEpKWUd1dUpkNmovK0hvS2diR3JDTDBsUmdHRjJk?=
 =?utf-8?B?ellUeWg5Wk94MFJKY2FGZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VUw5cmZJQWx2TXZqamxMOEUxbnp2dnpDYjBna2R1MTFqSzBwa1QzSW5waUFY?=
 =?utf-8?B?Q2xhcFJzdTNWdzU3eTBIY1N4WEl6TWN5QmhJVDJuTGJGbXJvYjNpTVlqejQ0?=
 =?utf-8?B?QzZCYmtIZzNQNWxyamVsQjc1QUhtRTl0NmZCSHpqWGZiZVgvdjAydmlnajRZ?=
 =?utf-8?B?M0V5RE1OYUh1YUV5UnFrUjkvMWxSNHgwMEFXSFUrTFdUSzcxYVdRbVM0Ukxt?=
 =?utf-8?B?UnJYMmZKRUtiQ2Y1VEhSejFMZ3pQTXlMbVJZSXFjbWRVbEg0UjFlNTlzV3NK?=
 =?utf-8?B?SnRGUW5nSS9CYkZwUFgyUHpkOGM4T0d6WGxqY3VkR1EzMnZXcXZvYS9kUFdy?=
 =?utf-8?B?elk0NFhDVkNsaHJOaGJBaUt6RE5zMGc5RUVHQ25rZGx3RmpWc1BFQzFlOFdS?=
 =?utf-8?B?c216KzFNZUtOYWZ4dWczU0dUY1QwMHROaC9KZ05WOTR2eHdWR25uN1BzUEQy?=
 =?utf-8?B?MXA0dDU0cUlFSCtqbDhkQjI3cWR1TmdYV3UxN3lBY2hYdHFpTjR5bmdOeXVL?=
 =?utf-8?B?NUVXdko1b2FXUkl2MlVsMmpHKzMxOUk0d1JVNU1tZWFhbStZaG1EWm5DeTFT?=
 =?utf-8?B?dE1SdTNBWW1IdVIyeVZCVHpsMHM1ditkcHV6V0N6TDMzemJHU0lSRmxSRWE0?=
 =?utf-8?B?R2RpUUJWcG5CMkwwMzdkdlBJRHprbDdCNW5lWUxYY1FXTjJMaGY2RnFSbEph?=
 =?utf-8?B?eG5jK3o2Wkd4dWQ3MFo5UUtSZno4Qm14Z25SM3M2b2ZmYlJjVzRvdUpDeGx3?=
 =?utf-8?B?VHQxUW41TDZtWWNPWDgvbkxGOVZIRGlnbHhURVg4SWRRMEZJUU9pTWJLUlRn?=
 =?utf-8?B?U2d5b3QxdklHb3A4V1YvTWdhYzRVOGwwaXBVS2hrekRRTUlZdDhzOS9yWG5Z?=
 =?utf-8?B?NFRCTlR2YmpwNzdwT29BSVB4SEppeWFrRVZJenpoVkk3b0VhYjRkbUkxeUg5?=
 =?utf-8?B?Y2hzL3Nkd25TMzlCQjhHNXFpRis3QlM5SURaWGh2aXpwQml2VzJwNjFmN3dQ?=
 =?utf-8?B?ZWp2bnJnWUFMc21YdGl1SXIzVHRhdjVJUGVSSHljdG14MWFuQ3BvVGJGVXRR?=
 =?utf-8?B?YThHcVJ0N29wUWRaK0VuSmNYM0N1c0p5Zi8rYStLTUxRVnV0emsyTHpGcVBX?=
 =?utf-8?B?WnJKeHJyVGdMcDIzemZ0NzdEZVN0MVpzcUdGcUJGbkRqeTRJY1Z2K2JOamZM?=
 =?utf-8?B?RkJuVGw0cy8zeVlnMEYxRDFIeDRmckhOU0RuYmJWVU8rWUE1Vk1Nb2ZsK0xm?=
 =?utf-8?B?YWxpK2E1SVh2eVRFSVZqM0Q2MVlCa2JGV0lZc1ZVeEVVSjA0OWJqeC8vUmJl?=
 =?utf-8?B?OE1jWkp3SkUrMXhRWThGZytTdDJYTHlYNFduWE9hR0dhREN6Skp3Yi82clg4?=
 =?utf-8?B?R0dDYVYzdUphdUppWm5pSW5lNmJLcUQ0c3o5SEl0NEJnTDg1QjRkL1I1MVNF?=
 =?utf-8?B?UUIydThBMTl2eEU0L2lzUlo4UFo0eU9XeENudGNmaktBWCtJQTZvNEZPZDhB?=
 =?utf-8?B?c2dJMlB1c1JwYW00Um4zcCtVV2J1YVU4RW80ZUo4dWpmbi9wUzRRdjdPYmQx?=
 =?utf-8?B?eWFrb0ZSMkxrTlJhbGJUQUs2Z1ltZzA4RmF0U3RTd1ZvMUpmUHhtN0lQdkMx?=
 =?utf-8?B?WHZIdk1jcGN3dGYvMDZ1ZUIzNUI0MVhQSjlJUkxTWWE3SjBuTXFWM1NZcVNu?=
 =?utf-8?B?SEQ4UWd3SW9JeGdHUTY1dHU3OGRJWWRXc0JFVlk4L1ZCQnljUHpjdG4xWGg5?=
 =?utf-8?B?Z1pKUnB1SWhEVE9QYlFpZThuUjZxUFJFMkxIeE91aHdjZHowbkR5eElEV1Vm?=
 =?utf-8?B?d2FZNGhNM2ZnUnpuaFZwOG00OU5jQzdqdFhPcmhKQWVEeWdTTGpnNUpFKzdN?=
 =?utf-8?B?bGtWam0wcTVOMnNMc1FqbWtuMFdid0Z5NXBOZ2tESjZvem9Kam5IZlVVa01R?=
 =?utf-8?B?MS9ibzhLa2ZLdjlHbDNKYklnajR1QThQdlpDak1zN3FCVlZjcmFMNkcyMnp5?=
 =?utf-8?B?SkUrSUV3Mno1OXVveGFqM3FSYitZTGpmampDbHBUcmNqYjlpSG41UVNZRVA5?=
 =?utf-8?B?ZEkwV0RWR0J2YnM3U3dXQ0k2K1B1dDI4T3hFMHg2ZEYxb21DWU1xWHhBbXky?=
 =?utf-8?B?ejhCZXBPVkZNMW1SWWZET2hxWDRKYUZaUTl6UHRlM3orcklTaFBnRmRRR2Iz?=
 =?utf-8?B?bXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e224c37-1355-4a14-4db9-08dcd091e65c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2024 05:40:23.4657 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ywkvmkm6Pr/X/5BauVKB7wPOgBTZVfOyVAgi2PQx60eobK0Px1FBScp3g08Sr22zrtbcNnUlwLYZ10PXWA+wiED1j+txW/ymwTECOWCn/LA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7851
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


On 9/6/2024 8:24 PM, Ville Syrjälä wrote:
> On Fri, Sep 06, 2024 at 05:46:11PM +0300, Ville Syrjälä wrote:
>> On Fri, Sep 06, 2024 at 06:27:54PM +0530, Ankit Nautiyal wrote:
>>> At the moment, the debugfs for joiner allows only to force enable/disable
>>> pipe joiner for 2 pipes. Modify it to force join 'n' number of pipes,
>>> where n is a valid pipe joiner configuration.
>>> This will help in case of ultra joiner where 4 pipes are joined.
>>>
>>> v2:
>>> -Fix commit message to state that only valid joiner config can be
>>> forced. (Suraj)
>>> -Rename the identifiers to have INTEL_BIG/NONE_JOINER_PIPES. (Suraj)
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   .../drm/i915/display/intel_display_debugfs.c  | 71 ++++++++++++++++++-
>>>   .../drm/i915/display/intel_display_types.h    |  8 ++-
>>>   drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>>>   3 files changed, 77 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>> index 830b9eb60976..0ef573afd8a1 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>> @@ -1504,6 +1504,73 @@ static int intel_crtc_pipe_show(struct seq_file *m, void *unused)
>>>   }
>>>   DEFINE_SHOW_ATTRIBUTE(intel_crtc_pipe);
>>>   
>>> +static int i915_joiner_show(struct seq_file *m, void *data)
>>> +{
>>> +	struct intel_connector *connector = m->private;
>>> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>>> +	int ret;
>>> +
>>> +	ret = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
>>> +	if (ret)
>>> +		return ret;
>> What does that lock do for us?
>>
>>> +
>>> +	seq_printf(m, "Force_joined_pipes: %d\n", connector->force_joined_pipes);
>> This should just be thae bare number. Adding other junk in there just
>> complicates matters if anyone has to parse this.
>>
>>> +
>>> +	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
>>> +
>>> +	return ret;
>>> +}
>>> +
>>> +static ssize_t i915_joiner_write(struct file *file,
>>> +				 const char __user *ubuf,
>>> +				 size_t len, loff_t *offp)
>>> +{
>>> +	struct seq_file *m = file->private_data;
>>> +	struct intel_connector *connector = m->private;
>>> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>>> +	int force_join_pipes = 0;
>>> +	int ret;
>>> +
>>> +	if (len == 0)
>>> +		return 0;
>>> +
>>> +	drm_dbg(&i915->drm,
>>> +		"Copied %zu bytes from user to force joiner\n", len);
>> Leftover debug junk.
>>
>>> +
>>> +	ret = kstrtoint_from_user(ubuf, len, 0, &force_join_pipes);
>>> +	if (ret < 0)
>>> +		return ret;
>>> +
>>> +	drm_dbg(&i915->drm, "Got %d for force joining pipes\n", force_join_pipes);
>> More.
>>
>>> +
>>> +	if (force_join_pipes < INTEL_NONE_JOINER_PIPES ||
>>> +	    force_join_pipes >= INTEL_INVALID_JOINER_PIPES) {
>>> +		drm_dbg(&i915->drm, "Ignoring Invalid num of pipes %d for force joining\n",
>>> +			force_join_pipes);
>>> +		connector->force_joined_pipes = INTEL_NONE_JOINER_PIPES;
>>> +	} else {
>>> +		connector->force_joined_pipes = force_join_pipes;
>>> +	}
>> I think just something like
>> switch (num_pipes) {
>> case 0: /* or should 1 be the default? */
> I suppose both 0 and 1 should be accepted. 0==not forced, 1==forced to
> exactly one pipe (ie. no joiner despite what the automagic logic
> is saying).

I understand 0 as not forced. I didnt get the meaning of forcing to one 
pipe.

Does this mean, disable joiner? (Perhaps do not use joiner even for the 
cases where driver thinks joiner is required)

How should we handle the case in driver, where it is 1?


Regards,

Ankit

>
>> case 2:
>> case 4:
>> 	break;
>> default:
>> 	bad;
>> }
>>
>> should do for validation.
>>
