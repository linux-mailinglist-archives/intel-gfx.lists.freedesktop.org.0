Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MOH+Jol2eWkSxQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 03:38:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C55979C546
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 03:38:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13D4E10E60F;
	Wed, 28 Jan 2026 02:37:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q52hMapt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 637BF10E1BF;
 Wed, 28 Jan 2026 02:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769567878; x=1801103878;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=KcobXuH+spV5PbQR7SksB1Vlr+OpxMXRL+jfgl3gzjw=;
 b=Q52hMaptmTlcRy5gOU1BbgDL6bS8T0yGoioXFbSNgKndhoeoSrLydNaC
 00wvgpLiNNLHsnbtkoPxe1PgDX9qoQZe2YgmFGdVxRtRX82xB9ckOxXX3
 nWfWyvEU0Ocyh7XVTSZtqu4thFs5vH8Nge5Otm6H3j2fUGBKeRfvwGge9
 qUROYyQqRDJZbo6yepS7JpkTQgYmpHb+F9xY/Gc+TDO1vMQ2x7y1dKtD/
 BncVfLa36xw1CR0IMyLSpNcZPMhuppMOVDnfUI3ciEbsCTtLgU3jNBYnh
 QlVK8MEqy958mZIRX4TbY9FTyfPZllsBX3BUxGK9Aa1UOp1RoIqX2EvaQ A==;
X-CSE-ConnectionGUID: jF6e7o5GTmSLxF3rzRMSZA==
X-CSE-MsgGUID: L3F3r7a3RaiOp/nzTd8e4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="81882082"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="81882082"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 18:37:57 -0800
X-CSE-ConnectionGUID: mggiPL6wTv6MYN4u+CsQTA==
X-CSE-MsgGUID: fj6hcnDuQ+6NZvmO6pALQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="207279411"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 18:37:57 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 18:37:55 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 27 Jan 2026 18:37:55 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.45) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 18:37:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WDQn1Qpmk12GCrUIF8XDFf28NrdZ5AvJon/eO0QNaDDDHGs8XlUvrafP5ZVU2Gd0KRArVQgqUfDYIw8WX6GjaCc8h1bnmWJWxlKhkqQxxptP+A6JACV0AgFRJNtkmSj3r2yBJsxQGY8yJ+g2NIxhuaTmlBojxL/lJ+9anKV4ndUZdHu4rCsmxJ9elEMblwc5UiXMQ/9XzXFPaBLyYJldUeNAy81Xz0qN3OgxAbplLg92vFSRuXJcdIgscx+bmwQmzVv2qVC3PSNHE9UMvIaqXA5R+NSL8gptXYZA6llBGMNKB63YPX9x4E59iXZon6FMrq3dFkKm14EyeeUYKWo38w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ijjHV6eSs62Bzzw9E45XKYe64oZxWAUHQH1zB5cUH7A=;
 b=I9kselWpZwimvac7wnoxmXWEs2xO0GhK4ZenZWMdkW3EQ3RZ6ai6YmdxEdpabmiK8ZqU1DbWzUUhcIDVd9KL7gxFHWVgnwQjDK4Xyt0Y1DsM+ozXfuBAWsfHior4zarZk7xVCozkKKiEW0rjynD+7fbhAyiBVIoXJJOM5lmx1FKaF9JPWXtrE0wbHeXbMNUZhmmXM3xYXLETRRYQKTFZ/9JYJ3qngvqD9Ync2pOtR0JzmfYYuh/J6aLUvWgayCvR2ArmGrrX0v2YspXCDQggDBLd4kUbFecXCvPyM/L1ttvfvo9W8LJ9M42Ldm+4MQLarjk3+2M28r36IUgtzdQ4Ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6699.namprd11.prod.outlook.com (2603:10b6:510:1ad::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Wed, 28 Jan
 2026 02:37:53 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 02:37:53 +0000
Message-ID: <da886030-08fe-4c42-8e90-c25b5a05f510@intel.com>
Date: Wed, 28 Jan 2026 08:07:47 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 05/11] drm/i915/vrr: Prepare to Use TRANS_PUSH
 mechanism for PSR frame change
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260127124120.1069026-1-jouni.hogander@intel.com>
 <20260127124120.1069026-6-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260127124120.1069026-6-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0192.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b6::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6699:EE_
X-MS-Office365-Filtering-Correlation-Id: 00caf63e-ee09-4639-1b91-08de5e163c89
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aXJoYmdNUEhoNzN4dFViN3YyVWl5bmR3dGpXd25tTXc2L092Tm50eVB6YTQv?=
 =?utf-8?B?UVQ0bFByYUZybjZRZEJzR29PcVRHS0dvQm4yeHAyTmlLZC9BVWVNME1ZOTVC?=
 =?utf-8?B?NGNBMGpXN1ByQ3VSVENXN3N2VFJ3Y2tMSy9qbU45Z25oT240SHd3REFCdndJ?=
 =?utf-8?B?eWFFeE1UanJyOEFzKzU1VS96YkYwbFkwSjBPUC9SS2ZZWmM5ZGluc20wSG5u?=
 =?utf-8?B?eXdlQVFweHRlZThiVVl5THdhSzUrMVE4WjdraDVtRHdCei9KRUZXK05GdE5X?=
 =?utf-8?B?ZGNwdkc2ZUs3bDZNSmdDeTQrbEdLbTB0OGhWTmVNdzNxbmlNd1kzZ05CMkpl?=
 =?utf-8?B?QWo1TFhZZE1sMWRPOEEzTTlRcWxGa3RGUGNFTGpHbEdESGdFanNRVTNKSDMw?=
 =?utf-8?B?Ry9PUjFoRUZGdUkyZWRXbVlwYS94cGhQeDV5NktLaWJQWmVzWjFCbDVKaE0r?=
 =?utf-8?B?cU5YbkpYUDk4TTA1dHUvTEFZMU96c2VUTlhxeWowdHFYMDR1dHJLNjNNWXJW?=
 =?utf-8?B?TWF2V0poUVArYjFadWVBNlIvWHdTcG5PNCs5Q3R6MHo2aVpJNXFPSHczRGt3?=
 =?utf-8?B?clE1QnB5TUlaWE10VUg1cDVxaGJKT1VaUnMydzhtem5ndmR5U0Nla3RySDU5?=
 =?utf-8?B?UkxzK3cxVGtGUG9odW5Ja1Ara1Zmb3NlaWpGM0hQdVNRV2tRaUlXQkozMWtZ?=
 =?utf-8?B?K1dMNmlqeUlYTWYrL2pCUUtscnp5M0V4RVM5MFkrMGhyTm5UU25PRTJTcmNF?=
 =?utf-8?B?UWZvZEdsZ1Yxb1dUSzFKQXJ2d1ZUZVVGdmdUZk45d1N3OWF5WU9IVjRIRTVk?=
 =?utf-8?B?SFMrWXdTNW16ckJZaEx0NmxxS0hjdG9WNTRTMmtyR2xXVVMvUm9FR3NQNk4v?=
 =?utf-8?B?MjlWQnFha2tWREJNUHJZR2JoaWsrbWJLdVN6MkJYa3dVVS9lQVdKRlV0ZC9C?=
 =?utf-8?B?dFZzemdjMVB0N0xPdXg0bVhvRllHWlg2c3RnbGdSbE15OHB0bzlRY2UrWGJH?=
 =?utf-8?B?QWZldlh4aWhIUEdQM3hIa0tlYmlvY2o4SVB6cGMrQ2wwUlJHR3lQaWdLc3VH?=
 =?utf-8?B?R242V0hXYnUvTUJrY0NDcktxNE1LajZoSlQ1N1V3UTdBZ3lYenZFdjBucDQ2?=
 =?utf-8?B?ZUMrck9MMldPL3Z3TUhudGxUM3ZJd0hCV0ZMMkk3dVdqdVBNV01LOEdOL2RN?=
 =?utf-8?B?M1F0aGU3YXg0UkFaTXY2OXYzOTFBdDEzSXpncEVDK2VFbWJ6c3lpOEg3NDdz?=
 =?utf-8?B?aGhYNDVKWnNWSG5pUlFiS243aWpZMEZ6ejJHOU9sc0U2UTgwVEh6a2IrZjlj?=
 =?utf-8?B?eW1uTTlJY0JsTWtCcVNrS2lta20xWjVrejNFWjJkMmVpanppcUUrWXpaUGdD?=
 =?utf-8?B?TnF0a2d3czJKNXB6VFVaSXVVK0MxeSsva3JZSVFXbGRCRTNVdTlRZG1NSTQ2?=
 =?utf-8?B?dGdYd3oweUQrdzNxVlhRazc3Rnc1NUVDOEVJUG44aDVPN1FiZzlISUtGZHlL?=
 =?utf-8?B?WG1JRXZiYWFZVnZaZWgwOXRpOXZaYm9TNkZZYlk0QjlKT3FhMGN4VDRJOVRX?=
 =?utf-8?B?K0JtcWVSUW1zLzg1amtVMFVQenZvckhQbjVMWUppL2tQY1VuSTJ6NEdHUW9u?=
 =?utf-8?B?RHdNeFZRS09kYmNQelJvVTJMd0kwNlVIZEovWTRLSFhYSkMvYzRxdVpwRmwv?=
 =?utf-8?B?VDZLV09VUEl3RXdQd0owV2kreWY1R2Fhb3RHdTJIODRnQjh2RDlHQU5EOVVR?=
 =?utf-8?B?cGptdWRRYzBEN01BUXB3QXVPeVdJdGFpTW9ZZ1lxLzB5QUxLOVlkaXNUUmR1?=
 =?utf-8?B?SHhjbzNxalBDK3ZTWUFMSng3L3JjWENQeFpjMjlRV2ltYWY5RSs2ZFEyMENB?=
 =?utf-8?B?RTFmRHRuRCtoa2Vvc09pMnpDWDlwaERRclZzOTZsTzBmUVV0alErRkFSRFR0?=
 =?utf-8?B?cGZwdzcrSHlNQUh5eU4yOUl3Q0ZtK3NjcmxjNlFMZjFBYzV4ZWZQa3gvQ095?=
 =?utf-8?B?MTRVdE83TmlaUi9VOWhXSW9WTFRGaEJINmdPRjA5N3NERDFEeFdlL3NWRmcy?=
 =?utf-8?B?TmExZk5RVUpPL0lyNEZBeXdGQmU4ZW5rZGcyUGdPd1pWQ29pVU5EcUpNMUtI?=
 =?utf-8?Q?eRPw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bW9wNHNsVk5RV2N5U0tGZ0puMjdJaVQzak5LTzN4Qk5RVlV4Rmc1ZG1xeUlh?=
 =?utf-8?B?ZzhNWW9IZ0NrWHl5Z1Eza2xvRklVTjFYc2paN29FMHAwd3pLZURPc2xva3RE?=
 =?utf-8?B?b1lKWTFESCtQNHRHUm5xdXlUdFF1SDhYSXo1bUFDdW05bzRRREM2MzZxcXNR?=
 =?utf-8?B?aG5NVUZWQ1UxdkZVZnlMUWlocDBpdW5tNmh2Ukh0QVdlSk5MMmlUNzJ3MGEx?=
 =?utf-8?B?SDFFWHpHSkwxL1huQ2lvaGFxMWJlMDFBZGZOMU5FeCsxY1JzYndTUzYwY3JO?=
 =?utf-8?B?Y1ora2FoanBmNHBtQkdBa1hWSEYza1RERU1tVGpBRWxMNnAzQW9qMVBSc3R6?=
 =?utf-8?B?YTF6ZVVlalNBOXB6SmY2enp2ZEJzbWFzUVBpN0g0V29JV0VMUFhwSytJT1E5?=
 =?utf-8?B?WmJaYWZnVVZqMUhqSjU1ekUyN0N3WklQR2RNK3FKNTc1YlIxU2VOTXZUZ093?=
 =?utf-8?B?eW56UTBsK2xCUWFaZzlnOHo0NXZCQTFaRkNCcEVkWGM0cEVZTzN2aTEzT1RL?=
 =?utf-8?B?azdFVVE2L2RPd3FrVmx3eEV1aUpaeTIvdzBMYi9jMC9SQUh4eld0S3FUNGZR?=
 =?utf-8?B?dDVzZi93YjNYYlVSU0x3cHk5d3dLRVVQdkJNNUlLR0hUSHY2NWt6MEErNXdX?=
 =?utf-8?B?SFNzZ1dIa1Vib3RFd0ZReG82c1pSeFVpdTdXWHpvaC9OQ3VLUGREVkJCQnFI?=
 =?utf-8?B?OWdWWHk2ZERRS25TdnV1VTFyTit6b1lsMzE4ekQvL09Cb0JOWUxIUENqR3E3?=
 =?utf-8?B?aFI0aEZJSHQwNjhDWXdHRlU2QWRoOHM5NWhjQm94ZlVFSHE4YTh2cUlvRnBw?=
 =?utf-8?B?N2pXVys5dzRLUWFQdDJPODNTY2FlT3BtYlY1WXBRSUhrZXArTzJpVTEyOFlp?=
 =?utf-8?B?WmViazlaVzV5eSsvZnRxR1NPRmFmZ282RWNjaXNjM0RNelFwdVBzdjgzY0Fh?=
 =?utf-8?B?OWZnL0RaNmpOdGdPYitLU1FIZEMyWWhoMm8yRzd0QU9QeklibkNsaWY4Tm5B?=
 =?utf-8?B?K29YY1Q5UlhEVHFHQ0NoRERoaVpYbzlKeUo1bHFOSzRLaU1nT2ZMVDBUM1Ev?=
 =?utf-8?B?dmhrZ0NGZk0wUnd5eml5cFhoWFpCdnBKaVlrbmRsQkVTYk4xTEZHRDc3ODRC?=
 =?utf-8?B?cVZES0w4T28weTk0Ty9WSm8rVENaK1hPaGtwRjF2YzNWT2hqc0xSUjMrSjE1?=
 =?utf-8?B?ZXBuUFV3QlJNakl2d3ZuQld6QjkrM3JITktCUitTRGNVci9aeS9nb2NFUzR4?=
 =?utf-8?B?cHpoejBWTU8wa2tJaXBHVEVZV01vTk5VT2xSWS83ZWtjSkVBN2pMdjhrTUxC?=
 =?utf-8?B?ejI0aU5Ub05DUGJmbmJwV2w4TDJlZERCWnBkdStNNjE0V2pDMm5EV2hoektR?=
 =?utf-8?B?VktBOURtTFM0MzdkU2lCa20vSHhkcE5icGMzZ05lTEt4ZlV4YlM0dHNmMytM?=
 =?utf-8?B?ZTYxdE1vSkd6TDVOS0FUdmxvNnY5OXJqaWtLbGQrdTd6bExHQlVwd2lOMERt?=
 =?utf-8?B?M05HRFVSRGV2Nmo4YmJmSEJFVVFZQTBIUzl1K0Vvb2RrNnlFQW9wNGlDSDFx?=
 =?utf-8?B?aGxsR3BnM3V2ZlM4R2FyRlhrcU9yZ0g2aFdjZW83dDdTOHorTFlIS0JkWDhs?=
 =?utf-8?B?RytMc1lTNVIvQ0dNWHVndWI5VjRGdTRpQklnV1QyeXVoYXBXQWVDY3ZBQ0Qw?=
 =?utf-8?B?LzQrcUJFaHVXLzZPT1p5c1ptMkx4bUtReld6OVJrQk9URzdYYXpYZjlPaXFv?=
 =?utf-8?B?U3BVVkl0UVJtbDhmRmZNNWFMamtiRUloVnBFRUhRcm9yV0VjNVFqazFEZThK?=
 =?utf-8?B?WjhONitVTmQ5aHhkTUhUYmxSZW5obnNLZ3hLYUYvRFFYUGFLbVMzcDN2TWFi?=
 =?utf-8?B?RC8vZ3VBYXBJWTRyVUx1Z21HMGNFUGF5VlZFaVFoaEhwWk1najQvTUhyeXJR?=
 =?utf-8?B?WUs4YmJMdG9QcVg4Y3k3RlVwVVY5K2MveCtBSFBCaFV6NmhwWnpXNXZGVmJn?=
 =?utf-8?B?b01La1JrK3R3QjhZQTVPT3VnT08vMjVJRFRGekRSLzFoSEpYOHYxTGJaUkQ1?=
 =?utf-8?B?WkdCQkhzZEg4dHAzMTlUT3NjZGt3WVFhMndaRUVjYkFYaUp0YW82MzRWMnVV?=
 =?utf-8?B?WGFRUTJDOEJlT2k4dngvMk1Xcnc2TktCOUN5T2U1QTdQVVFrQWhjWnliNXpB?=
 =?utf-8?B?SGl4VEhCUWpYeklJc0NqVTU4OElBaTExWEFLWUM5Qk9ZZjFTc0xac3B4NWM2?=
 =?utf-8?B?WGliL1JUMlEyV3dOaDQ5SUVoRTcxSU9wdzJLUXhoZWRvbUYyQWM5RHZnTXJp?=
 =?utf-8?B?Y0I2THY2MnJ3dDJFM3pwU3N3bGYvaWU0Uk42eE5telVKYkVSU2dhbWlJUWJK?=
 =?utf-8?Q?nZ2iC68jqS0+5tAo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 00caf63e-ee09-4639-1b91-08de5e163c89
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 02:37:53.4935 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +m+z5UAO5OqTA81kP+48/CjyiKfQOHgeFgckRHmcsTQsQwPX5G9xmMjdwnb7X0dbizJ1d0FIGQV10DNQ7Ga9bdm2410S2kcKHgHutADK0nw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6699
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: C55979C546
X-Rspamd-Action: no action


On 1/27/2026 6:11 PM, Jouni Högander wrote:
> On Lunarlake and onward it is possible to generate PSR Frame Change
> event using TRANS_PUSH mechanism:
>
> Ensure push is performed on flip if needed by PSR.
>
> Don't use intel_psr_trigger_frame_change_event if PSR uses trans push as
> Frame Change event: When not using trans push to generate Frame Change
> event plane/pipe register writes are triggering the event. This is causing
> problems when transiting to PSR active/idle and the event is coming in. To
> tackle this we are waiting PSR to idle and using
> intel_psr_trigger_frame_change_event to ensure PSR exit. If the Frame
> change event is triggered after everything is configured (on trans push) we
> don't need to worry about all this.
>
> Ensure possible intel_vrr_tg_disable call is not overwriting
> LNL_TRANS_PUSH_PSR_PR_EN.
>
> v8:
>    - split adding intel_vrr_psr_frame_change_enable as a separate change
>    - update commit message
> v7:
>    - HAS_PSR_FRAME_CHANGE macro moved to separate patch and renamed as
>      HAS_PSR_TRANS_PUSH_FRAME_CHANGE
>    - use intel_psr_use_trans_push instead of HAS_PSR_FRAME_CHANGE in
>      intel_psr_trigger_frame_change
>    - moved calling intel_vrr_psr_frame_change_enable away from this patch
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

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_crtc.c | 4 +++-
>   drivers/gpu/drm/i915/display/intel_psr.c  | 8 +++++---
>   drivers/gpu/drm/i915/display/intel_vrr.c  | 5 +++--
>   3 files changed, 11 insertions(+), 6 deletions(-)
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
> index b0d72c04db45..9613c50623dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2516,9 +2516,11 @@ void intel_psr_trigger_frame_change_event(struct intel_dsb *dsb,
>   		intel_pre_commit_crtc_state(state, crtc);
>   	struct intel_display *display = to_intel_display(crtc);
>   
> -	if (crtc_state->has_psr)
> -		intel_de_write_dsb(display, dsb,
> -				   CURSURFLIVE(display, crtc->pipe), 0);
> +	if (!crtc_state->has_psr || intel_psr_use_trans_push(crtc_state))
> +		return;
> +
> +	intel_de_write_dsb(display, dsb,
> +			   CURSURFLIVE(display, crtc->pipe), 0);
>   }
>   
>   /**
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 66c68e7f3a49..8a072f90049f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -698,7 +698,7 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>   
> -	if (!crtc_state->vrr.enable)
> +	if (!crtc_state->vrr.enable && !intel_psr_use_trans_push(crtc_state))
>   		return;
>   
>   	if (dsb)
> @@ -920,7 +920,8 @@ static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
>   				       VRR_STATUS_VRR_EN_LIVE, 1000))
>   		drm_err(display->drm, "Timed out waiting for VRR live status to clear\n");
>   
> -	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
> +	intel_de_rmw(display, TRANS_PUSH(display, cpu_transcoder),
> +		     TRANS_PUSH_EN, 0);
>   }
>   
>   void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
