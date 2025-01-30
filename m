Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FACDA228DB
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 07:15:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7A4F10E8F2;
	Thu, 30 Jan 2025 06:15:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h/4YqyHl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5408010E8F1;
 Thu, 30 Jan 2025 06:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738217729; x=1769753729;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Nrmi7eMCIcu8zJseU31rK7GfGwgdJyf7JWqj0CzFPDw=;
 b=h/4YqyHljAo/CfC0WVDl1QJyUvzThLfoBGwmVUqRXKpmRD/+MCLW+uIN
 tHyHfmwb2wAaaEss1RZT5CbXwbl1nQiT0sZMMRe0dFOAlR5mGI9/VF05z
 I8svrjzcNuAuGwCPZnBULi2B98nCIglyt4nSiSo1vITV2puf++85DWZMW
 211Fh42Vw3v9877I0QAczUVCWwywjskcio0lzXeCGyGYgJByun4+7Enxf
 ylMuS4Pi9ivenuZh+KgtGzxzVEeEJ4GC7Axy6UBkPde+Fk4ynO/mi4Clk
 dKjWZp3uy2OG3Tb7CM+v2fgXNpwxuLqHgB+06vd9KNuOSyoQzuPCjrlly A==;
X-CSE-ConnectionGUID: SjdyPEBIQSyqGSNqcG3GPA==
X-CSE-MsgGUID: nZ5ZTOwnSrqzxSQp1sXoLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="37955217"
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="37955217"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 22:15:29 -0800
X-CSE-ConnectionGUID: tOsI23yjT3i+76TFPKnZ7Q==
X-CSE-MsgGUID: Wgyp9mVMSBic8PxnqnrrHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="109833588"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jan 2025 22:15:24 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 29 Jan 2025 22:15:23 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 29 Jan 2025 22:15:23 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 29 Jan 2025 22:15:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HB6wKuOVhaEW4J3GwhT3p6vxteSzYiEdq7Dfqp3k1ZBjnOlloCJklxqvB4auPJNmzgMT8YOu5+2fYiH7q3S3WAEb8SoNnmxkI8sMoG29Hiyp3HCAyD8bPf2JVSAsm4ZnAPx11yRXxZfjHVKDeU2ayAZma2Xsd6aF9tCpqCJMkOAIbnMd1q4K+KP1nr6AVH/CJAkeIqB5DRkklgGU6dWBm+H73djLm6IJsu1RboR6lpJgRAt/+4BeZLJWAhMQH1+LgVcgOAjEnjrMBmdrRiRbEq6/+SGZHAYlYimonS979T0C2UHj5lueLVPwsyAprorpOrpg/GDPmrVrvUP0f/m6IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sraf67MV8feE6t/ve2RAdQL54VeX5cgSa2pAuCby2fg=;
 b=NEAcIayXKlx6IGuVR3V8JgxE3wUoZBYCbtyY83Ttgtgqs0WBhxOz4ElcDs3wIzrzb4WdqVLsZ2lHzxCi4oh+lo13moe6OYh1F06ES67dJU9DfFQgMjMpiosmeaW1vqI+0pp33ORAIGtoa6Xwzo6zzcGQv6ExUgIsotC8aPnJbet8dGQhrah1yt3oWH3TJr3VuKnFsM8qNJbCFP80X4eJqrMw7cXUnfuEfp22qcYvskE4K6RFxAWM4WznK5lvfDzAzqPEaOrbcHWdcemtIuGfJaU20NVfs5dmZNda43U+tUNJBhg0+M1F74B6zZ7wUS0QfaXjQ5M8PYK58STiay5C1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB5295.namprd11.prod.outlook.com (2603:10b6:5:392::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.18; Thu, 30 Jan
 2025 06:15:21 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8398.017; Thu, 30 Jan 2025
 06:15:21 +0000
Message-ID: <d2911efc-10fc-4e51-a72b-e3e2c946f421@intel.com>
Date: Thu, 30 Jan 2025 11:45:15 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 6/6] drm/i915/display: Move as sdp params change to
 fastset
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <uma.shankar@intel.com>, <ville.syrjala@linux.intel.com>
References: <20250130051609.1796524-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250130051609.1796524-7-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250130051609.1796524-7-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0082.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:23::27) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB5295:EE_
X-MS-Office365-Filtering-Correlation-Id: ac876b8a-b676-4bec-b086-08dd40f57996
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NUo1aGwvaHFsMzVWY3cxZzhYMWlwL3NxLzdkUkZVcEQxS1FZTFhGVTlsekJm?=
 =?utf-8?B?d2p0bGdMYjE5TllVb25CK2pMNlpPUFk1NVN0akp2MTZCdHRWN21PWWZ2c3hq?=
 =?utf-8?B?YnhJUUdYUkhWNlEzVTZhdG1palJuaEwxQk5saUl5enhUenp4Mnp5N3lCVGlO?=
 =?utf-8?B?NlZyVlRTckkvbUxSajlFczh0QmRMK1B0UWdrYnRDUmdYTTBnZ2tnK2lRWUtB?=
 =?utf-8?B?NEtRMFJnMm5uaDJMeGJBelF5TG1qR0djbGlNMDhBYXVSS2VBLzFpWUdrZ0Rq?=
 =?utf-8?B?NW14ZmRDMW55V3lXNWE1Y2poZDJnWkc0WUNPVm5TU2dZaUtPZHIzM0cydzR4?=
 =?utf-8?B?THR0d1JqTmVKT3k1aEFqVXdFQWo2UVo1TlJiYjR2aDBSOEtwL3pPRzk2NStX?=
 =?utf-8?B?WnUyYWlSWVVPdDJZZ3I1SnE1aTFNeWJXQmJOMWhoZ3B4MkprbFFsQ3h6cHFk?=
 =?utf-8?B?dmFEekVEUEFKak9BSTJNMHE4U1V2Y1lpSjFlcFdERk8vWnQxdXdJak5waUpv?=
 =?utf-8?B?R0tBL2NwSHJ4VElEdER6MlBDYkxYT3FXalgvUjNsQ3dyL3lSdXA0KzUxMUx0?=
 =?utf-8?B?cC8zWDZGa1MrUk80alRkenpVSjYrVWR4Z09kNlFFR3FlK2JGNEEyOUJnZFYr?=
 =?utf-8?B?dVBvcnB1UFhUMnAwUHh1RnhhamhMZTM2N1RJM3Y5VS90U2dhRThITW5UQklT?=
 =?utf-8?B?dW5FSnJQVEhrNkZaWW4zK25UdG1jQm9YVS85eHBHbkd1ZitZU29VM2t1RERT?=
 =?utf-8?B?L0Y5SEtvSXZKNW1jSjNQU2ZIN012NDB5YVB5elF3NjlITCszbEdLRC92QkJD?=
 =?utf-8?B?MHFXRVdVbnN2Z3l3WWFuODk0NFFLZDVidFZXclZ4UVFzaXRLa0FrRCtIWlQx?=
 =?utf-8?B?d3k2LzgyN3lzSjc3cExVK3pLajZqRjJxZVcvbU5DUmtkWG5RNDZaWnA0cVAr?=
 =?utf-8?B?R2NjZFUwdStzYkZiam84d2dxc1VYNkZLWHloQ05JYUo3MnQ0QUlleVVNcmVp?=
 =?utf-8?B?NkhSU3lsL1FqN3pBNk9MbnJQNEZ2RFg2Y1lrWXB2eWk3MWZmUXhsTE44Zndm?=
 =?utf-8?B?UXJ1V2RZcmlwQ2Foak5JeTlKTDk0aUQ5K1JJeURuaWNnK2x5V1VWQzRQWXRK?=
 =?utf-8?B?UGNvK2lsd3hvS3NQMFN0dXU2aXpCY1N0eENPMVZyL3FnTHBuQmdCUTFWM3BC?=
 =?utf-8?B?c2JjcWhKSFhIbjFwdy9lOENST1BtS3BWVFF6TGdVWmxFSDVMaGZvdGJjY2p0?=
 =?utf-8?B?RE9pR2tDejB1NjBNWGRkdU1CK1RRMmxFbDlqQjdoalN4U05JcU5rVFc3Y1Ey?=
 =?utf-8?B?bmNTbG5jbE02WE5yYVBORTR5NVZmV0c0RklUUHl4R3J5NEtuK3JaU3o5Qk4w?=
 =?utf-8?B?cTgwaDhhS04zTkRYL0g4eWk2ZEJhUDBLS0NTS0pTTzhIU1RUcnlHQWw5aXBl?=
 =?utf-8?B?M3ZZcEh1aW5WRWJPVGc2RG4wdURzZEZRaW85K0JqQWRPZG1oNVlPRHZ6a0Fn?=
 =?utf-8?B?OGoxelYvNnllbTd4QmxqZDRlbDFiRWROS2s1Q0NhdVFJbU45bWFEL04xWXR2?=
 =?utf-8?B?N0RPanM2blk4TUF6dGsvRHhSSVc5dk1TeGRVekcyZ0ZoWG1oUGZOVktnY2JS?=
 =?utf-8?B?TGM0OEdPMjNWTDBXRVZNeUNUcVZ2TnV4MTdsTzlnN25zbkR4VUdCamtNMjda?=
 =?utf-8?B?emcvRVc3NVJUMExvTnA4UFpTVVg5andpL1VESFcyNnRGV3F3NklPdUwxNi9s?=
 =?utf-8?B?U01Zd3NzL2pRRCtCUnBjZEJ3TTllNWEvSHYyb1RMa1FOVTNMaDgzclcwYlg3?=
 =?utf-8?B?NmxMMU9TMHQxSncxS0RRMDlPK2cwbEp0Y0E0YjZNWXNoMnJURmtLQ3EwenFl?=
 =?utf-8?Q?ZVB3xIC6lMZj0?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OWYwNXVlMmo1S2ZGdmdUNy9Ub0RmZVRVcVU0L2k0QkYrMjlFcTBydE9tTVJY?=
 =?utf-8?B?L1QxQktpZUFLamg5YWlKZ2cyMytnbXpuODdET2R6YWhJK0xGTE11TiswOU9s?=
 =?utf-8?B?N2kwek83OTdINHpFOEZCZUprZHFNdEhmRXhUZ0k5NDFOcktPcnlwQkNoTFQw?=
 =?utf-8?B?UkZpUC9mQzVCa29QblZKak9naGtwRHNnMlhuOURHWG5JbGs5enBtL0FFWW9j?=
 =?utf-8?B?ME9jYkovbW5BRnNia3BWMkhxYll0U0FSWFhFakp6MFo4Y1F3d1cyZ1V3WVhu?=
 =?utf-8?B?NmJ4bDZKbk1Bd0lqaGVFRTFmNWwyMkxqZlZNYU5nRmF4MmpjN3ZCdXJrR0R4?=
 =?utf-8?B?NVJHbjRXQVZpY0hEZWRrakxwZ21RZGJ2TlhHUW5KYUZZMGNTQzFtUW81MHhR?=
 =?utf-8?B?STNmWVpqMWNseWMrWTU0bkVHdjFMazV4UmtlWG84SDlDRGg3U3JMcUp1TTdk?=
 =?utf-8?B?TXY0cm5aZ1VsR01VWTA4NnhUaHdIcGlESm0yeU5HZXVRVUhNUzNIT0dYSzcx?=
 =?utf-8?B?NWdXZTRFamFJSU9CM3RyS0Y0UDFGSk1UTDVEaW82WThvdmduUmlYd1ZBeGJw?=
 =?utf-8?B?K0pSTnFmUks2QTExS3lUSUFERWZ5NnU2djV4cldqOC9Zc284UzFEWGFRVHFK?=
 =?utf-8?B?K2FMelpROVgxdTF5NzdMU1A3SGlKSmFEUEF5NlBZVFRiOHFGVFpzNFZYVkVq?=
 =?utf-8?B?aVNEdk1LWjBJa3hvU3d5cGs4YnZCODZVQjlzb0U1Z0dHRzV5WE5QZzRPMER4?=
 =?utf-8?B?QzJqVHZYK1dMVkE3dUErSHkzeVZUL1cxd2c4ZHVCMy9pZTlXcUM5WklNZWJo?=
 =?utf-8?B?QjdxSTZWeEVPK1ZWR0ExaXJvdjQ2ZnB3WDhUY1FrSE5sazE5MUZwQmJDU3Uv?=
 =?utf-8?B?VTFHdkxRdjRUNFFmcTZySVlLN0FnT0xCVUU0enVML29mWTBDVGtkMEQ3Q0p2?=
 =?utf-8?B?Ly9iR24rSVN3TTZXWmVzWnZSa3JBUVl5WTlGOS8vV25xcWZDRG9kRG40T3hr?=
 =?utf-8?B?d3lEWlN5ZlZYUm9kTUkvYWlTak5wczhickpNZDNPWUExNEdQMVpNSzhiMEND?=
 =?utf-8?B?YUpmMTRYaGFlR09QN1hFNUt6eFFCaTFKeW9hOFgrSkdpOXVmTm9Ma2xvUEVl?=
 =?utf-8?B?N3plQjJyMUlKMHZkTDhzLzJtVjBXRXh0YisyUHpKZTU3L1pQMGhEQmRmZXhu?=
 =?utf-8?B?SDZBNENIMWxwYTVFVTRHSDNpTFNtRWVEc0I4dlJEZERzemp2NmlIb1doWGtq?=
 =?utf-8?B?VzhDblI2ZjRZdzcrZkNvNmk3NXZ0MENTazE4WnE1QXcrQnhzaXkxQlVMKzli?=
 =?utf-8?B?ZHJrMlc5emN5R1hJQWtwS0FrZmo2NEthaEJOZWRIZGhpRjJwbUNJZGZYdXFw?=
 =?utf-8?B?S2lDLzJGd2todzhUM2dLblhnQTNscE14ajIwM21HSFcvRmtXN2lYbXZYSG4v?=
 =?utf-8?B?KzhlVHI1NVpZd3JHeEZpdGdUK2FFdTB0V3hZQmkwb1ZOeEo1R0wxM1BXME1u?=
 =?utf-8?B?M0VvbG50c3VUZ2xTNmVvQWpWbFpTNEFYUjdQdHBWYjY4aGNjdFR2ZDQxVGxw?=
 =?utf-8?B?SENiVThEcFNhVDhYVHdsNVFVamJtVFAwZjlWaHpJdks5Z09jWjVlKytlWmlZ?=
 =?utf-8?B?dEFCVjMvZjllUEFLSThIMmdtSzhFbXdKSlViem5lMk5XR09xRVpIVkcycVJX?=
 =?utf-8?B?eFFqNE53SFpMRk0vS1pRVFlEZjdjdDRZOEFhVnpYZ1JYY2YwdlR6NmNaWjJz?=
 =?utf-8?B?MjRneXRsOThVeXBISi85bWMxSktwR2EzK1Avc0h2aE1tbjVTK1pIcjlUdTlV?=
 =?utf-8?B?Tkhid0VOZm5qUlRzWXZibFlCUkJ1T2NxS0N5aHN3YVY5YVhpVHhEaFdJblhi?=
 =?utf-8?B?Uk5haDdEM0liVXhWckE4bHYrWlFiMkhuYVE4MWxaRUlYY2dTemNseGVZZm55?=
 =?utf-8?B?U3hQWjBQUnNYOTkrVDV6TmYxM0JVMjhjRWdqeDlablc5dUpqZS9yQ05IdTBo?=
 =?utf-8?B?V3YrYkxJK2dRNHVDTWlzQytRWXY5MTQ2MkdEYllOU3hjUWRCWkR6cCtSOE0v?=
 =?utf-8?B?Zkx1bS8wQ0NLbHhSUk1wQUVGQU5oUFczUzVPNTBCRGZzTDVxczRmczlraTRo?=
 =?utf-8?B?cEVJalU1NmhaSHlXSTR1UWx0SHpSd0tNZHJQOWxQb0pLMzVIclkwZDlicFZi?=
 =?utf-8?B?VHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ac876b8a-b676-4bec-b086-08dd40f57996
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2025 06:15:21.0976 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2eCFcOrnFz/gz/x4ma7rtiYOztCyoHiz2V8a4ctkU56+XQOyQIK5woAut/btGj+VevsnZ5ffF0FmLcWMbYi7xm2re4YAxiy7eg7qVRtO+ng=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5295
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


On 1/30/2025 10:46 AM, Mitul Golani wrote:
> as_sdp param changes from vrr to cmrr should happen to fastset.
> Changing as_sdp params should not trigger any modeset.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 7d68d652c1bc..60867b5b03ec 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5752,10 +5752,11 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   	PIPE_CONF_CHECK_INFOFRAME(avi);
>   	PIPE_CONF_CHECK_INFOFRAME(spd);
>   	PIPE_CONF_CHECK_INFOFRAME(hdmi);
> -	if (!fastset)
> +	if (!fastset) {
>   		PIPE_CONF_CHECK_INFOFRAME(drm);
> +		PIPE_CONF_CHECK_DP_AS_SDP(as_sdp);
> +	}
>   	PIPE_CONF_CHECK_DP_VSC_SDP(vsc);
> -	PIPE_CONF_CHECK_DP_AS_SDP(as_sdp);
>   
>   	PIPE_CONF_CHECK_X(sync_mode_slaves_mask);
>   	PIPE_CONF_CHECK_I(master_transcoder);
