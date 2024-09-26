Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E55987431
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 15:08:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 111DD10EB3F;
	Thu, 26 Sep 2024 13:08:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="atuL3WNL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 550DB10EB3C;
 Thu, 26 Sep 2024 13:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727356080; x=1758892080;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LdiSOcSZ/OmKOGBIGMk1mQ74u0FrbOXtNjsZycjebyk=;
 b=atuL3WNLOkEoyra/UMrEhio8EkZDDm0HPYoF2v8KJEYZPay/6hhvuf8v
 TPHNrQT5Ver7LdHM0aqjvXtTzBr1eFWZJ/TSOidnCLAp526gDgLSwCJ1W
 vcM70iYC43PugSI2MQsJK5Mka0kNvGIq/yd6cYiiQ9Fqw1vCrLkXw/3ml
 pS4nveSMR2I0UDZ9EocOwXVSSl7EZFo9kWcpP2cWOM6wBfTPsnLZf+95z
 LRYJICfbrgubF/vIA1/E8DyXwHlzW0AN46eqrcrk4QrVR++c28jbNv5hp
 LFWhiOeKivdgr1bd3jgD/NMhnIsr5FhzT7Z4+UjqHLl9Y9fZ+RvP3v+Au A==;
X-CSE-ConnectionGUID: f9orB6HySF+Y7KhJaLduKw==
X-CSE-MsgGUID: mGeHhOwuSui0XCZ1rfgCDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="30333874"
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="30333874"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 06:07:59 -0700
X-CSE-ConnectionGUID: Ce4XSUBdTbquiks0f0wlTg==
X-CSE-MsgGUID: ZeT4FrYQQsK7al/+shFpGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="72949322"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2024 06:07:59 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 06:07:58 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 06:07:58 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 26 Sep 2024 06:07:58 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 26 Sep 2024 06:07:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mtKZBMmTia4jb9bqLvP3202ArJtLa3ISQ4ntBNbM4HaboczicI9AhhuaY4CFaaAhJkPQwdVzPET+gd6lEb41E53HmE074HyyE00IVjCzWtzwPQE6PSaorfv2a9GVWcL15l0aACRJRfimVew1L3+m0fwfiVYEaJ8x3/FOqK9ULLMIi5JDY7l47T+GcRRp0UYYG+oXJat4W8GxS/i9uQq59m+lgqmjNcb7zlL6100stz/SmTorrSeppUXld3hYrJ1euf9wyHkIvV5ULX/y8D0WDXiNSgjossAw61cTQhTMWSIRmLMzLYstOMJNQXJ1CQSMRJFeEXzpbmPBff42rF+fWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vsRCCu0IxdUNLHwTvh+LGlY5M2/nEFx4PS44R23Q47o=;
 b=r4vnbanynyeQEdptPOM0NqRROKb4963SVm/hiU2tmLFq+DtvOf0eDESjtsQWtMHy34sCzXg/7g2SDSiuxFj5Ub92cVjjY0fa1Ne8IN83LY92T6CAwcWvb0StxV0tkA3rruve01plsLOLmEpkUVD8+lNtpwJfSFR9jWN2+id2HYvctbfJWUcAshfMGV7Opx8tgTgBSWJrV2pwVAGW106s+Jo4wc6pmMasYRlRdKbY1mfwMNfYAHIyDSXHkC621ab8AuhbJkWys3AIFXOQS5M9SFzAzJltXp9SnkZM+xFrjnE1lUcGg99RhJkLaRqOpGrfR7bVI9q2S+l8rZ81p3OUbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB7663.namprd11.prod.outlook.com (2603:10b6:510:27c::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.28; Thu, 26 Sep
 2024 13:07:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8005.020; Thu, 26 Sep 2024
 13:07:53 +0000
Message-ID: <a7ad897f-a6d5-4172-a46a-2683f8d3a52c@intel.com>
Date: Thu, 26 Sep 2024 18:37:46 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/15] drm/i915/display_debugfs: Allow force joiner only
 if supported
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <suraj.kandpal@intel.com>
References: <20240926072638.3689367-1-ankit.k.nautiyal@intel.com>
 <20240926072638.3689367-3-ankit.k.nautiyal@intel.com>
 <ZvVCMMoVowdWfrAz@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZvVCMMoVowdWfrAz@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1P287CA0007.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::24) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB7663:EE_
X-MS-Office365-Filtering-Correlation-Id: 30d8f8ea-dd1f-4113-30d3-08dcde2c3b38
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RzVwWkZCWmNNSllYelgvbmxUbGhUS3A4ZThHWk5jNkI0QmcvOXdiUWtYR0c5?=
 =?utf-8?B?WG9ucnlCVFhWQWZJNzF0RFY4UnQ0dE9reDBhVi9xZWxRZERvNnpOdVh4Y3Mw?=
 =?utf-8?B?M0ZlajltYzRWQzI5YjB5eUY3ZEdXUG9NQ1JVV3NIcmVpYXhkNFQxM1l4YVRy?=
 =?utf-8?B?eWRYMGY4V3p3T0g1VkJQSElIc0drSmgxRnRRN290eU5tMzhad0tnT0wyY2FP?=
 =?utf-8?B?d3VBTzZwRkthMGd5cG8wUThmcUwzdFNUbE1EcDkxK2FtYTBRcGVFR2Z5TEJ0?=
 =?utf-8?B?aTd5NmJZY1NWTFRyWHN6QTl2UXJIaytvckoxTWxLWW8vdm82UFFHRmthQkg5?=
 =?utf-8?B?K1Z1UUFRcDJraTlxQXFlWXJKSEtwdEdPL0FuWFdVK3o3cGl2SHhicU04eDlW?=
 =?utf-8?B?WDUxVnUyVXEyTk9rYjVOdDBXSmtzWTJmWmVieW5Mc01VNjhidWtMZWE3ckhv?=
 =?utf-8?B?bDMvOHA3aEw4RkdqNmRyOUxmbEUyeTFGdGR1RXdscjlTdDNTb3NwRklHM2NI?=
 =?utf-8?B?amZkeFJFODZpeEdpUGpzUit0UkNpNWNjTEtLczN2d3Boc0xkSTNSQVdsbW9F?=
 =?utf-8?B?S2NoZ3YvUkxOanczVVA5cWZPYkpEaU5Qbm9UQTNjeE5tVDFFZk0xYzlobUxQ?=
 =?utf-8?B?MXkxbFA2YVZzM1J3d2I2Nk1XZmZ6c2J2dEZ6d2dQMk1Wbys0eHNkQTNYWjJz?=
 =?utf-8?B?dkNHN1p6bFc3ZmpRYk1ybnU1Z2hUMC95ODMzeFpDcjNWZzlGUnRVTmF2UVBL?=
 =?utf-8?B?MmFLa1VIZXh3UEFnMG8xS0l0c3MxdW13MGdmSk96c3hkVklGQWlxRURZK3E0?=
 =?utf-8?B?ZEsrRFJUMmprcDArSVZoeTFGU2JqSE5LNDhJT2x1dlVlUno1TGlsWkdLNnBW?=
 =?utf-8?B?emg0UWczYmgzUkpNUUZVQmUvNVQ3ZTUwVVdzQ2tzZ09ZSmZjT2d2L3p1eHR3?=
 =?utf-8?B?MHlBTEtrYkZqQy9rbmdTOGpabWx1RTlINUJVdnd1RGlQTnFMbjNDaGlVRmJp?=
 =?utf-8?B?am1sdElaeElkY2hNMjJFT1duSTV4alFIRHh2T2xjdnFGS2xleXlnVzMrc0Zm?=
 =?utf-8?B?QUxnME5DcnNqRlpTZkdQQk1jeG9GNDRnYjljekJtOFYxbytFVEhSR3ZSc29Y?=
 =?utf-8?B?dUJYdy82ZHFGQlEvQ1ZESHhlNml5WVJqTXc0dmpRSTB6ckdRejJxeVlKTTk1?=
 =?utf-8?B?eERJbDMvMUxiNTdPQi9DVVF2YUhFYUpsUm9zeUFnVm40cm44cUhTRDMrQnN3?=
 =?utf-8?B?UkVacllrT2hQSkE5bjNpM2UwUXFMQ0E0QjJyTXpKazd2RUVnTG5iWHVjMWRs?=
 =?utf-8?B?MzRSbnZ3VVZ4SnhBbnJlR2xmK1pjTHRQTmhOU01BR2NYODIzQU5zTU9zNzFH?=
 =?utf-8?B?bXhvY3I4MjYwMjNSL3QwM3FYRHdHTDVGV0JsbEo3SlVsaFFXVm5Sd29VK2Mr?=
 =?utf-8?B?MUZBdkpQWXlqdXR5SlkrQkxwWjdvZG5jS0wvaDZUQ2lJeWRzYlI0V01GMHZy?=
 =?utf-8?B?ajkyV01CeDd6b205ZXdpTXEzYmkrdGpBUkV2VlRDaUZLdlI3ZlpIK0pFTEJv?=
 =?utf-8?B?YTdTUmdZMStRTzFOaFZxb2VkSEUrSUNvQWNsa3Z6MlRiakVUdldIR21LV0dl?=
 =?utf-8?B?SysyS0svYTVZZWlPWXFWbnYxY0JhbjB5RnpXNFdudTUxWm1TdzQrTlpwdnNl?=
 =?utf-8?B?OWxyb1o4cVRnSVkyZXUxb2htREpNMVY2NVZrRlByL1NUQzZnaTVRZGdIbUdP?=
 =?utf-8?B?TUJIMm42bllwQU9nWVlCMEVtZkNGZDZqMUJxVEJZOTB4aFZBbWtGZS9YQXU5?=
 =?utf-8?B?aEVsL2NBRUFpcjRmZUNhdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z2RmcFNpbW5FSEdHLytmQjVlK0VVa3YxQ1VNRmZaWWZKclFJOWUwL2R1VzE5?=
 =?utf-8?B?ZndyV2JxNUNrRE8zNVhvZDJWSmpKYVlmcXlJb1JxNU5hOUFSSVQzcG56U0E5?=
 =?utf-8?B?QU4xa3l4UmZMbWltUGlGREg2cWh0VlVPQk9lajhON1k1WVh3UlVxeHBNWjBm?=
 =?utf-8?B?ekU4akRXQmNaMk9zMkVKYmN3MDFXbGtsUHJMcHV5Y0F4TVlQdCtxcmRMVmZT?=
 =?utf-8?B?TFp6dTN2TDhNTGZCTldjL2lKbVRrK3ZSR1p2ZGd4bGplWEgvVE1HeC94bnNj?=
 =?utf-8?B?ZVl0akNjeVJkbitQU0ovSllzWHIvbFB0dEp2VGtuUitZb2t1cHVmd0tQVStP?=
 =?utf-8?B?VkJ0Q3crZGlqR2IwRC9EVWdWRTBzYm1zWTRSa2sxd2FkOC82Vk1MT0hrQWdX?=
 =?utf-8?B?WnpPYWNkOURLQytMUSs1dmVmSDlpWU9VZURKckJmV1VqcC9hM3VWaFNXMUdr?=
 =?utf-8?B?NVozSytPRTloYXpPeGpUcGJJM3k1SGVtZU96MEd5eTJZUmxQaDM3bHNGRWtv?=
 =?utf-8?B?a1pPNTF5elRhS09nU3pMaGYyWVptS213QU14WmJvNUNFSUFpWmIwZGxBazdJ?=
 =?utf-8?B?QnlQSkdaZHA3blZ2bk9EYW5mUHZEUnBDNEFXeWpaTmkzMWFOamwzVy9hNU1v?=
 =?utf-8?B?a2JOV1VhajZZaENuWFNNVzU2MXdkVEIwTFI4Ykcwemx3ZFB0M3dMUkd1Nmx1?=
 =?utf-8?B?K1BIWmRncGkzUmRMV2ZmajZYZTZWOG1FKzhXdDE2TTRXcDlJYmZYaTVKb1VM?=
 =?utf-8?B?V2hRb2Z1Vnl3N2U3cE1VWWNNTTdNSnVNODlET2ZKYmZ6QWw5a09idUFSR0VF?=
 =?utf-8?B?UHNDb25QYzRsUUVJT0wveERsUDRFYyt6UkxodDdFM0x3YnRadERLd2YxM3dl?=
 =?utf-8?B?d2t4aGx0aXJMbU43cWZsMkFLT0crOEMzWnJrUzk5ajlmbFpiMEM5cTFDSmto?=
 =?utf-8?B?Nzk0ejd6L29wWnYzUnBkL3JDR093QVJwY3RWS01pWHl2N2lyUkdqN0JmVThp?=
 =?utf-8?B?VkdLT1pIK1YvdWVhcGJjT3E1d2dTbXg0dTRBSExDb0NXZG93NFVtbFdLNDR3?=
 =?utf-8?B?L1lqa1JRTmRqK3IrM3pSeHg5TlhKbk9wQU90QlBSNDRlakR4ZHFqNTArL2N2?=
 =?utf-8?B?UEFwbXpMS1RpRFU2L0dOOVlWcEEvZHhlaVNWeTZvUUMzYjhkR2ZycjkvQkhv?=
 =?utf-8?B?OUZRcDhFd2FrQnRPdTg5RnFvVzNVK2VQWUFpdjBleW1MNjVsUnFvcyttOFN6?=
 =?utf-8?B?M3YwV2lRTnRkdldVSDlJc29wUlk4RGlOenhQZUhVZEZYMEdzWkZwcUVEWlc5?=
 =?utf-8?B?cWlJMDd0aU84TGgrVXFzWDdTdktYK0pqQkVPckZxOUNQYjArc0hEZ2RvVTJ0?=
 =?utf-8?B?UUk2R2liYjQrVCtibksyQ0p1WkJ5TjBXNDdDRWFXYVc2QjNoQThsc0NrWk0w?=
 =?utf-8?B?V3hGajVhRjJQajNnL2dYeStFOHMwdHdSR1k4UXpNT21SRmg2MjN6MURnUzY2?=
 =?utf-8?B?R2NidXNpSDZlVGMwV2g1SXkyQjIrL3g0RmExTGt4K1FYczg3SXVZWDIrdndm?=
 =?utf-8?B?cEQzclZPY2lJMUt0OS9RT1JaN3U0bXRrNGlUdTJvZEtYY0pFT25zZWxPNDBQ?=
 =?utf-8?B?VldBYmNKNUgvVlJSNFg3TzlxQkdSdkkzd0JKelRqdU5kcFlLaFNxM01qaVY4?=
 =?utf-8?B?cEN2ck1TajdndjllcGN0bHMvSC9Sd2xmYzYwcERlaHYvTGhoSWRNSnV2dUJy?=
 =?utf-8?B?RXZ4Tmh1RzJaaWVtb3QvRllNSWtKSTJtQkRQdEZmQkk4eWwyc3NReFlxWnVT?=
 =?utf-8?B?elRBZklKaUpEMkppR1JzZG5udUFOTkh6TUdqOUlvcFE0U2h5SlRsYk5idmRF?=
 =?utf-8?B?Z0tqcmlrNVVJazc4MS9iczVXMklDWStCWVYxNlZNS3ZydFVDNHErbGpiaDA4?=
 =?utf-8?B?WDB3ZnlXTDExR3Yydjh5dFhvYUtvd0JnMDM2Qkt2ZmZIRWtNTFlObGl6ZTdz?=
 =?utf-8?B?NzlTVG9wV2RiNk4xSG1ad1dha2JzMUJBOUEwMDZJNkpMd00zY09hcnpwYVJY?=
 =?utf-8?B?dURTTERiQW44QzArTDRlTW95dVdJbGFiZ2xnTFIvSnZKTE4vRE51S21idzhs?=
 =?utf-8?B?amdkaWNCenI1L0V5dTlCOVJtblVPMzF5d3N4K0RqUUtEREdTTnBvTDFMbUlk?=
 =?utf-8?B?M2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 30d8f8ea-dd1f-4113-30d3-08dcde2c3b38
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2024 13:07:53.7234 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EeNg7ZR9aq5U6c7xSEzPTOzlp9shvPnv0JcxPoZdK9fcpYe3mEWZ9aqb8NVlPdmxAZzGUyzxM/jlCBK9wm4VTmoGvPkaTAVSbZ4MYdWOvyw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7663
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


On 9/26/2024 4:44 PM, Ville Syrjälä wrote:
> On Thu, Sep 26, 2024 at 12:56:25PM +0530, Ankit Nautiyal wrote:
>> Currently we support joiner only for DP encoder.
>> Do not create the debugfs for joiner if DP does not support the joiner.
>> This will also help avoiding cases where config has eDP MSO, with which
>> we do not support joiner.
>>
>> v2: Check for intel_dp_has_joiner and avoid creating debugfs if not
>> supported. (Ville)
>> v3: Remove HAS_BIGJOINER check. (Ville)
>> v4: Reverse checks for connector type and intel_dp_has_joiner(). (Ville)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_debugfs.c | 7 ++++---
>>   1 file changed, 4 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> index 890ef7067b77..08adeaa2e87f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> @@ -1328,6 +1328,7 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
>>   	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>>   	struct dentry *root = connector->base.debugfs_entry;
>>   	int connector_type = connector->base.connector_type;
>> +	struct intel_dp *intel_dp = intel_attached_dp(connector);
> I'd probably drop the local variable entirely since it
> can give us garbage for non-dp stuff.

Yeah, can directly use intel_attached_dp(connector) to avoid having 
intel_dp with some garbage values for non DP connectors.

Thanks for the review.

As an aside, now that the first 4 patches (that are dealing with the 
debugfs) are reviewed, can I send them as separate series and merge them?

This will help get the IGT changes merge for debugfs changes.

Thanks & Regards,

Ankit

>
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
>>   
>>   	/* The connector must have been registered beforehands. */
>>   	if (!root)
>> @@ -1362,9 +1363,9 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
>>   				    connector, &i915_dsc_fractional_bpp_fops);
>>   	}
>>   
>> -	if (HAS_BIGJOINER(i915) &&
>> -	    (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
>> -	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
>> +	if ((connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
>> +	     connector_type == DRM_MODE_CONNECTOR_eDP) &&
>> +	    intel_dp_has_joiner(intel_dp)) {
>>   		debugfs_create_bool("i915_bigjoiner_force_enable", 0644, root,
>>   				    &connector->force_bigjoiner_enable);
>>   	}
>> -- 
>> 2.45.2
