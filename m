Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OPpROkUEcmmvZwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 12:04:37 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D677E65AF8
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 12:04:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44F0710E97C;
	Thu, 22 Jan 2026 11:04:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b1/2XLkd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A64F10E02A;
 Thu, 22 Jan 2026 11:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769079872; x=1800615872;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Q0762k17tTWSmQ4QgpEqQn0lJLs13VKAcgh23CQ9+T4=;
 b=b1/2XLkdh6OS+3arQdO9BeERN42vI7LV2VU5/ZloN8hVE81C8eI5YUvy
 uqKuDV2KF6QAqslnCp0QAOVxeE/sBxMxjxsoXjypqFbmCsaOk4E5KO4q2
 NdnRW40XQfatfVgleAIGqP2T3c/w1JRO0bgH5Tnua335Q8ESGc6mLC/IM
 DsXmyC+UzgeU7XA9CTwcM9G3NtMBleV7i91FUe58zUeQFStueVkCl6lNU
 +NLPscdXVD0HpXHpBEoUgbOuk2dj+DVMb0ixAEf2GZPHNi8CFKwD+mCCz
 52bKgO7JVCZlOuuR6v2NN5K4jIEc67S4t4T7d/fNmFvng3oib28+ty9vu A==;
X-CSE-ConnectionGUID: IPnLcDYwQViPH6vBCTy9DA==
X-CSE-MsgGUID: vPCM2F8cQ26Jt2Xq9r5vuw==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="70485214"
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="70485214"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 03:04:32 -0800
X-CSE-ConnectionGUID: mNV+oxINSHiMMsikHx+26w==
X-CSE-MsgGUID: pP3yENf8SIycSWmOAJLxAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="210852883"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 03:04:32 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 03:04:31 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 22 Jan 2026 03:04:31 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.47) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 03:04:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tzfxUncAjuE1MT8/8iqeu+OC6T7rdWgN26v3EkgKVCFxgfd+Nmf8qYRmPzRsrJFbNvUohoNwZdN5yd1UkOybfMchyNCL+GsneD+dW7XnNmRceI/dR8QZ0rkKvHb6BzX9Bc71o/E42oenpCz195iCf0sNJZ1WqjUMCkL0FzvHW+cmGbeb4jCYD800loKWBcVB/KNHvWhjWYo/ew15FYqVTYiz2COjfI5bwx0LVnnlmLxsFgjCAqYSrwDPd+bNfOTkjaxITUrY77iByrWX/+Rgoqkn172sRIAcTqx3ZBsxAyBGFzzunRWQkFwA4gwXnCnjswLdiqjx26NCTxg3NNJC3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TtplwECF3uFrCrp9+Fauzq8ClVDFAg6BbxVQxDwJmGE=;
 b=dvzNxtq+thlcfQHMpU/IfnqnHA6E9VyerXqKeMG4F/zEVkAmuaq+r9YmyeMyt993oM+/0239MUTWxXMqCCaQLjlhqsYiqwfKApalN/1PpfREC2lsZ/6n13qJIGcCPO3dUDUV3nWvr6mS5Wzm6dJWkArICbKAeUqtVGuU52QkLEhL85nOvVsvLr2V3sWw2wXYLeFay7rp/sXXZMF8P5U2Zq7vAwBVkMQRhCLWDFpfC+lZMIosXtYC6g0Ly+Md/ddTasGe9bzB2iQl9sAY6lXasQq0q0XT5lR7NdzZduaFAa+ON4QxQI+lQ3+lvhfLXtsZiLRH7iobzOTP7wVF/gbrBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ1PR11MB6201.namprd11.prod.outlook.com (2603:10b6:a03:45c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Thu, 22 Jan
 2026 11:04:23 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Thu, 22 Jan 2026
 11:04:23 +0000
Message-ID: <be688bf9-cfc9-4c4e-8e76-3b02181eb4da@intel.com>
Date: Thu, 22 Jan 2026 16:34:16 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 3/8] drm/i915/vrr: Prepare to Use TRANS_PUSH mechanism
 for PSR frame change
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20251223105120.21505-1-jouni.hogander@intel.com>
 <20251223105120.21505-4-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251223105120.21505-4-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0253.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1f1::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ1PR11MB6201:EE_
X-MS-Office365-Filtering-Correlation-Id: 5daf7171-74f1-4d56-9cdb-08de59a5ffef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TExneHVQbkYyTEpoSUlycEtFbzFsZ2xpY0YyMG9QQ05zdVRJZDJXc3dXRXFC?=
 =?utf-8?B?K2JIVGdHdklvbko5UGI2L1loOUVRdWxVMlMvVWhwODNqaU1hZ010eStmRzd5?=
 =?utf-8?B?cVJsRXVLRmx1VzdlYUtkL2pRc08vNUNMR3p3SHBNVDJQaFgzVWFJR1F5TUFi?=
 =?utf-8?B?ZS9Md3MvVmQ2WEdiQ0xpNVBzUlViUkQwQ0xhbWl1bHpXeG9nWkczWWljZnpy?=
 =?utf-8?B?enI0b0RpVC8vWHNSUzFiWmNpUHhJMWU4OUMzOXkwU2pOZFNsb0FqVVVlZVY2?=
 =?utf-8?B?OWdIa2lSTVlEc3JVcVZNVkd5TmQyaWFCWTdGWXdWUjVtaEhWM0tOMzV2emd5?=
 =?utf-8?B?U0hJSm1FOXp5MzJ6OUxPZW9uais0L0FvTG1rL3FxM3doRlNpeXI3bnFzanFN?=
 =?utf-8?B?UDR1ZWxKb1paeTNuOFFrWjJmRWNRUGZyVUlNNXpSU1FKTnhRTEYvQ09DSlhK?=
 =?utf-8?B?LzUzMUVITDVuNjVCUFRjbGdtOVgyUE5jOGdzdmhtMHJKSzdqVllBS25XbXhJ?=
 =?utf-8?B?dmdNN3VybDA3YzlrMFFEL1JmdUVQL3d3V0kyd0M1WDlqZ3ZvQ213NFFZT0Ir?=
 =?utf-8?B?aVRDcTNPdVJEdHBxaXlVOGtHaE9hNnVUckFVY0tTU2ErQ1NkUE9STFVLYnh3?=
 =?utf-8?B?N2hrM09OWFQ4TmV3UVZIOUN0dzEwNXZFaTErQTNIeVVRLzdwNWh6VFF0elBn?=
 =?utf-8?B?V3ZhN1cxQnZjT3pRemRnbUQ4eU56bk9FelNRU0d6K1M5ampZNVI1RW5tZEc2?=
 =?utf-8?B?allmMUo2K3B1L1ZvTndPVkh6anJPWDJDZk9NSXdSTVNBWm5iR09SU1pKL2tq?=
 =?utf-8?B?OW9vUVBEK2x0aHBnWllydnJGbmtvUW9xS3Fyb1haaUlWQ01PWWJmY1RDR0JU?=
 =?utf-8?B?YTdBcTA1bHBYZVA5TGlERFV4bzZJK1FSTS9Mb3FBQnJGWmlyMVZGOVdUQWZm?=
 =?utf-8?B?VVFyM05sMFVJaFR4MDlYS0REL044aW5SRk9FTkVOMHRGSndtUk9idU81aFZk?=
 =?utf-8?B?b3JnV0tldjg1eEo5L1NGSHYxZTFYN041ZWFCVWFvazM1RGpmYmFiUmpZck9u?=
 =?utf-8?B?aXkwRC9PdVgxUW1uYUlqLzhsMXJ4cE9uWWh3dWQzejV1YVNpbEN4dnducDFj?=
 =?utf-8?B?clF4WkZaUWF4UmZ6MDBJR0tSbG84TjRhZWh1T1dTWjU2T0tTeWZKSGlpeFVR?=
 =?utf-8?B?cFp6RHZMeXozY2ZSeFJGN0tPa3p0R0ZRdytDQUxBWStXMFd3eGg1MEQwWitW?=
 =?utf-8?B?NURhRWEvdFZiT0xxMHhJWjJDQnZqSzF5SmI1am8va1BKNURtNFlhQ1lXRXdC?=
 =?utf-8?B?MmV0UHlQMk5WU2g5R0JTRytxZHBMOUxVMVJ3L0g0eEQ3ZUZlSTRzR0I2d1cr?=
 =?utf-8?B?ektwcmVPb2lMOENQdGN1eHlUU05uRGxlS3pPSkFwOFNpSld3bXMrcUQ2cVA1?=
 =?utf-8?B?cjF0bE45enBVMmxOaWs4cGpnbDluRjhiQ1AxUUMvdURiZ2pVWUtGa3c4aXRT?=
 =?utf-8?B?QVM5ekJOd28vSmplZjB6Uk9yTlJ1eXpJR1RxR3ZUSlV3NXlsWUM1SjBxNVlR?=
 =?utf-8?B?bjNGSGVNOVROUkw1WHNXa29uT0IwSlFQL1JUYVB4WUIxUDVRb2drSUhWdjcr?=
 =?utf-8?B?emVyYnBGRWtRZ2VWR0FxQkJYcVpua0Z1NmhlZnU2U2FWam04RjZIbEI3MVFN?=
 =?utf-8?B?T3l3WlJYdlpldDk5VkQ0SS9WSkMyUXEvdnB0WWV0dmhjdlUyTS9RYzJtaXVE?=
 =?utf-8?B?RGptenVVczBCL1dqQ2pwcHg0RUwvMlI0YnBld0hmVWNPWW5DdjJEeU56ZlpX?=
 =?utf-8?B?ZUlSb1VEWjFmeEZHUHdwbE02UVdIWUtNZEpJWnVsajBsWUhNZGNYbjZJM2xr?=
 =?utf-8?B?QmRwTUVYdmtQVUl2aXM5UUxIUkxDOEk5ejR6VEYyT3cwNWEyTUZrL1EzbjRD?=
 =?utf-8?B?amJDRHdTOWMrVk83QS9lNkJvUmZ1VVlpa2FRTHlERVdtTmdZTzVWUU5ZTWF3?=
 =?utf-8?B?bzhUQWtva0swRlJveDN4ck04UDJjaFpHZjNUT05IbG14V3d3YXM0cHE2YWt2?=
 =?utf-8?B?QUdWSFZFWjZNSHJqcFlSaWpLTjdIcksveWhoUGlFU1grMGpMSHFxTmVmd0Vq?=
 =?utf-8?Q?LEqo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T1dvWWVpZkREOGVZRldrVVVWM2Y4Tkpqc3V0WlBUUUdLdDk0OFJ0OENQenNr?=
 =?utf-8?B?YTFKZFVqY2xhUlIxVjVCRUVwaXA2dENXTVVZRytsTlJqQnRwYlpqVUJZUGQv?=
 =?utf-8?B?MDEzVWVkWnp6a2dMdFdNcUZlUFFXb0w1SWtoYkZJbmF1MjFLRWpBcGxSNER5?=
 =?utf-8?B?d1V4b0pCWVZHRENTNmpaS1RQVmkvSTN6Qit0THVpbm1MZEVKZC9sMUlWTWh1?=
 =?utf-8?B?RjJlQWQvdmRLWGpIM3FpSXg0M3BSNHFYODBzYzljMU1LNVpGT3duZmRTMHIz?=
 =?utf-8?B?RW1DR2tvaFNyVnZGVWtrSTJYbWI5MWZzREVmR1hQZmc5Zlk5V056akxZTWtQ?=
 =?utf-8?B?K3FoZU95L01OaTByN3p3YXZVNlkraUlmK0tSOXU2QS9BOFUrS0o5SlMyd2RR?=
 =?utf-8?B?VkozOFpIVXNVQ1U4S2RxSCs0S2J3S01TRXZoOHNUTlB1M3JCSk0xdGR2ZnZL?=
 =?utf-8?B?cy9rL2c4UzBQSHVpZWJPMzJDSUhSUjJ1WTIwUFMvMytMTVgyY3JITnljbTNz?=
 =?utf-8?B?R2dVc3JmZUJaOUpkanQ0enRIbUxKTkFEM1ZsVEFmMEJkQjJuZXNOb25iMTdl?=
 =?utf-8?B?bndPeEJZM1pqWlM5QUxJSDlML3JIK2d0TW1aRUU3dmhNRjV0UTNMS0ZvVG9p?=
 =?utf-8?B?THl3QSszeG5VZUVwTVkzekV2R0lYRlNkdi91UVlwcE5tc083dzlINzRMNnNv?=
 =?utf-8?B?ZU1NbHFEQ1RCZTJ6cXlMWjFlYnNiT2VYUEY2VDl5S3FZZXY4SEkyR3AxMmRE?=
 =?utf-8?B?c1Zyc0RlR2VLcmM3Y3FDQ0FubEpZUHdMOG9md2ZvMC9mQ01zS2l5TkxMMk5y?=
 =?utf-8?B?Ulp0MEdmbFBTcmtSN1FTbVBrVGVXZWlZVFh1M0p0Sks4MzRKQUhMTlB2aUhX?=
 =?utf-8?B?U005cDZVUEdTZUpCTWw0UzJ2N1RUVGdWUTRUd3VXK3h4V2ZtVHB3UlRvUklo?=
 =?utf-8?B?NXVjUnlpT1FIZ2RCdDBxWGZkV29xOGFzNjBsczNmb0hyQTJpL0F0Ym5CVXAr?=
 =?utf-8?B?bnl4dWh4KzZIRVBpamx1WG5pRW1KUEppdVhmbVc1RlVFQnNMWERWSlZPSlZi?=
 =?utf-8?B?OWdiR042V1N6SWY3V1piVDNsZWViTVhVd3dqVm5vRENNTUljYVpRNWxaYXlR?=
 =?utf-8?B?YloyalJXT2k0V1BQTVM2TkQzQUR6a3BiR2x2Wno5SHNZb3VFelhYQU5nN3dw?=
 =?utf-8?B?cEgwb3Fyc2R0b2JEQk1NRis2eTZIZ0VLYnBqUjNxQnIyU2JWbFBtaWVZNjQy?=
 =?utf-8?B?N0RlL1lDQiszQjRnTHhhNVBFSmtzZ0gwUFJPMVZhekVNRFM3cGU5ODJDVFdl?=
 =?utf-8?B?ZGRBU1ZuM3EzaTFlbFdxajU0NytRRjZxamRIUUIwdEo2aUdmdzA0S2ZzWUI3?=
 =?utf-8?B?dTJRaWZaOTIvSjJacU9SVmpKMkM0QnZmd0thS0hlZnR6RHdZTEpiaDZWV2hQ?=
 =?utf-8?B?VDZ0OXBIb1A4Nll2L2ZxcFRVSVAwcmQ1dWNFN3g1ZUhhSnVxR3QzWXJUdDA1?=
 =?utf-8?B?b3ludCsvbThKZTRZREYzSlpLTGJOMjRaMzA4Ym1EOENzVWhhZlVlOVpVaTF5?=
 =?utf-8?B?ZXViRGx2aTdHaHMxK05aUmtPTHB0TkdhNDZ5OHgyYzRBMXVDOExIUWltblRX?=
 =?utf-8?B?WEJDY0tWenByQVVnTkhyeTZJV3FFWUZ5OUVyZHdDT3J6VklXNGZweDcwYUtW?=
 =?utf-8?B?SGlNcy9SQ25BWXB2TFJPUnFlbmJaL1ZwMjJHbm9mb1MxTjIyWmJna1dqVWVB?=
 =?utf-8?B?aTVRZXpsM1VmK0FHWlAyNHc3R1hwRHdrZ0hmQWdoTDFLeFRIMjRua080Rk92?=
 =?utf-8?B?NDdUQUhXbmpuaVdrMCt0ekthZmowOW92dk9tWnFxcXYzbm0vRloyVmlPdC9Z?=
 =?utf-8?B?UHE3Znd1U2Q2V1NweHRVcEVMQ2xrYmR1L2FaclpsNHNzNUtIaG9LeElJMEI5?=
 =?utf-8?B?OXRLa1Q5M0YzK0VOL3I5RmhzbWJPTXhtVGkzL2NFMjhCNWE4Z0NBcHk3UFFv?=
 =?utf-8?B?bUZKR3lvVnU5UXp6M085MWw3NWozVUcyUk4yN09wblJVZmVSTDRYREtwZVRl?=
 =?utf-8?B?elYwaytmNTVTUlhOVmxLV0tMMU0rQU9BZEJsdlI2Mzkwb2YyclI3a0ltMUlI?=
 =?utf-8?B?RlpHUVlTZEgrcnk3NmRwTTVmWUNtbm5yS0l2SGs3KzBDMWJtNmFmamVWMHA2?=
 =?utf-8?B?d3lZMXU2TXA1QU0vWlkxdmQveVQ0QUYxYWlwY0FMUjhUN2FaMXZQQmVpdkVE?=
 =?utf-8?B?b2pvbTVWWlh1bno2dkc1YkIxMDBZaUVReXNXL0djeVpsMmRZKzJTNnJPYVVm?=
 =?utf-8?B?Y3VNd1ZpdFpJQ3NsZCt5TCtGS1NBdDJwdmFzUU5WQ21WN3FrRWtlek9tWTR3?=
 =?utf-8?Q?rB2L1P287AVDGKMQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5daf7171-74f1-4d56-9cdb-08de59a5ffef
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2026 11:04:23.2806 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HSPu9DT2edJT1eNe5j07A2XoGvTkZoExOONFWW9QtLetdhwYszEQwaALaQCSPK4BtPK0+jdrBo/YoxdXudSn38dGQb1HQOdPJgOJ+f2NSp4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6201
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D677E65AF8
X-Rspamd-Action: no action


On 12/23/2025 4:21 PM, Jouni Högander wrote:
> On Lunarlake and onwards it is possible to generate PSR "frame change"
> event using TRANS_PUSH mechanism. Implement function to enable this and
> take PSR into account in intel_vrr_send_push.
>
> v6:
>    - add HAS_PSR_FRAME_CHANGE macro
>    - use TRANS_PUSH in instead of TRAN_VRR_CTL
> v5: use intel_psr_use_trans_push for intel_vrr_psr_frame_change_enable
> v4:
>    - use rmw when enabling/disabling transcoder
>    - set TRANS_PUSH_EN conditionally in intel_vrr_send_push
>    - do not call intel_vrr_send_push from intel_psr_trigger_frame_change
>    - do not enable using TRANS_PUSH mechanism for PSR "Frame Change"
> v3:
>    - use rmw when enabling/disabling
>    - keep LNL_TRANS_PUSH_PSR_PR_EN set always on LunarLake and onwards
> v2: use intel_vrr_trans_push_enabled_set_clear instead of rmw
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_crtc.c |  4 +++-
>   drivers/gpu/drm/i915/display/intel_psr.c  | 13 +++++++---
>   drivers/gpu/drm/i915/display/intel_vrr.c  | 29 ++++++++++++++++++-----
>   drivers/gpu/drm/i915/display/intel_vrr.h  |  1 +
>   4 files changed, 37 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 778ebc5095c3..ed3c6c4ce025 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -747,7 +747,9 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
>   	 * which would cause the next frame to terminate already at vmin
>   	 * vblank start instead of vmax vblank start.
>   	 */
> -	if (!state->base.legacy_cursor_update)
> +	if (!state->base.legacy_cursor_update ||
> +	    (intel_psr_use_trans_push(new_crtc_state) &&
> +	     !new_crtc_state->vrr.enable))
>   		intel_vrr_send_push(NULL, new_crtc_state);
>   
>   	local_irq_enable();
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 170d65999ccd..4336ba188aa7 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -207,6 +207,8 @@
>   #define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
>   			   (intel_dp)->psr.source_support)
>   
> +#define HAS_PSR_FRAME_CHANGE(display)	(DISPLAY_VER(display) >= 20)
> +
>   bool intel_encoder_can_psr(struct intel_encoder *encoder)
>   {
>   	if (intel_encoder_is_dp(encoder) || encoder->type == INTEL_OUTPUT_DP_MST)
> @@ -2120,6 +2122,9 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>   		intel_dmc_block_pkgc(display, intel_dp->psr.pipe, true);
>   
>   	intel_alpm_configure(intel_dp, crtc_state);
> +
> +	if (intel_psr_use_trans_push(crtc_state))
> +		intel_vrr_psr_frame_change_enable(crtc_state);
>   }
>   
>   static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
> @@ -2511,9 +2516,11 @@ void intel_psr_trigger_frame_change_event(struct intel_dsb *dsb,
>   		intel_pre_commit_crtc_state(state, crtc);
>   	struct intel_display *display = to_intel_display(crtc);
>   
> -	if (crtc_state->has_psr)
> -		intel_de_write_dsb(display, dsb,
> -				   CURSURFLIVE(display, crtc->pipe), 0);
> +	if (!crtc_state->has_psr || HAS_PSR_FRAME_CHANGE(display))
> +		return;
> +
> +	intel_de_write_dsb(display, dsb,
> +			   CURSURFLIVE(display, crtc->pipe), 0);
>   }
>   
>   /**
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index b92c42fde937..aaf0f6cf3cfe 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -584,16 +584,23 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 trans_push;
>   
> -	if (!crtc_state->vrr.enable)
> +	if (!crtc_state->vrr.enable && !intel_psr_use_trans_push(crtc_state))
>   		return;
>   
>   	if (dsb)
>   		intel_dsb_nonpost_start(dsb);
>   
> -	intel_de_write_dsb(display, dsb,
> -			   TRANS_PUSH(display, cpu_transcoder),
> -			   TRANS_PUSH_EN | TRANS_PUSH_SEND);
> +	trans_push = TRANS_PUSH_SEND;
> +
> +	if (crtc_state->vrr.enable)
> +		trans_push |= TRANS_PUSH_EN;
> +	if (intel_psr_use_trans_push(crtc_state))
> +		trans_push |= LNL_TRANS_PUSH_PSR_PR_EN;
> +
> +	intel_de_write_dsb(display, dsb, TRANS_PUSH(display, cpu_transcoder),
> +			   trans_push);
>   
>   	if (dsb)
>   		intel_dsb_nonpost_end(dsb);
> @@ -693,7 +700,7 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>   	u32 vrr_ctl;
>   
> -	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), TRANS_PUSH_EN);
> +	intel_de_rmw(display, TRANS_PUSH(display, cpu_transcoder), 0, TRANS_PUSH_EN);
>   
>   	vrr_ctl = VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state);
>   
> @@ -721,7 +728,8 @@ static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
>   				       VRR_STATUS_VRR_EN_LIVE, 1000))
>   		drm_err(display->drm, "Timed out waiting for VRR live status to clear\n");
>   
> -	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
> +	intel_de_rmw(display, TRANS_PUSH(display, cpu_transcoder),
> +		     TRANS_PUSH_EN, 0);
>   }
>   
>   void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
> @@ -737,6 +745,15 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   		intel_vrr_tg_enable(crtc_state, crtc_state->cmrr.enable);
>   }
>   
> +void intel_vrr_psr_frame_change_enable(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	intel_de_rmw(display, TRANS_PUSH(display, cpu_transcoder), 0,
> +		     LNL_TRANS_PUSH_PSR_PR_EN);
> +}


Can we have a function that tells us what to write in the TRANS_VRR_PUSH 
reg, instead or rmw.

static u32 trans_vrr_push(const struct intel_crtc_state *crtc_state, 
bool send_push)
{
         struct intel_display *display = to_intel_display(crtc_state);
         u32 trans_vrr_push = 0;

         if (intel_vrr_always_use_vrr_tg(display) ||
             crtc_state->vrr.enable)
                 trans_vrr_push |= TRANS_PUSH_EN;

         if (send_push)
                 trans_vrr_push |= TRANS_PUSH_SEND;

         if (intel_psr_use_trans_push(crtc_state))
                 trans_vrr_push |= LNL_TRANS_PUSH_PSR_PR_EN;

         return trans_vrr_push;
}

Then we can just use this in different place.

I think that will make things easier.

We can have first a preparatory patch with changes without the bit 
: LNL_TRANS_PUSH_PSR_PR_EN;

The current patch will then just add the lines to set 
the LNL_TRANS_PUSH_PSR_PR_EN and thats it.


Regards,

Ankit


> +
>   void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(old_crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index bc9044621635..4dc5bb3f6f28 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -30,6 +30,7 @@ void intel_vrr_check_push_sent(struct intel_dsb *dsb,
>   			       const struct intel_crtc_state *crtc_state);
>   bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
> +void intel_vrr_psr_frame_change_enable(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
>   int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state);
>   int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
