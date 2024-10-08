Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC0F993FFB
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 09:55:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D471110E487;
	Tue,  8 Oct 2024 07:55:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l9GNukuU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF04610E48E;
 Tue,  8 Oct 2024 07:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728374156; x=1759910156;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6qqn98vis75ALlNaVw53hkPtluCGHD+LyFZ540HhwQI=;
 b=l9GNukuUpiRNPmMtQFkqesdN+U1gXPZLLVi76Fyj/qag2p7GUg2Ghf9/
 pH6GsF2kDR8so2pbVa03CUWmF2k0BczN0NXvYEnFVTbqYJB7HUTweB+bJ
 6ugw1wZio9jEF68iXsyAKrVT5Rv42ubxvqBbB/3p/pl+30M1j7qkUBTSG
 TIn7y7aGALe0mGbOMrPJ6XSeYkaJQyHCOqdXk2MwHvsQlzc1pFhiDP8pm
 zJPouuJwBLwIvmpmQO2o5FtFIDbjjG5fT0zc/k8wr0SEWIgB6m1dWsNnr
 kOkTtAkMRV3iu+4hHYve3XRuqd32TlxVf8Nb8si0glGNbbBFfeiir01W/ g==;
X-CSE-ConnectionGUID: Mu/2TeksQHK1vWbKOuSl8w==
X-CSE-MsgGUID: F+2bXPxkRv2sYbFlaq6XDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="27639727"
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="27639727"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 00:55:56 -0700
X-CSE-ConnectionGUID: e2q1ybkpQQWTx38U9sfSoQ==
X-CSE-MsgGUID: hUgKXqEoTXq0m4Cv2k7awQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="106598589"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Oct 2024 00:55:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 00:55:55 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 8 Oct 2024 00:55:55 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 8 Oct 2024 00:55:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uOgkUm6ACyb15HbESoRZ16OszEH5wZ4NJd3vE+UKAEwRIu4iJZDO8ITseW0LAfsXF1h49VNVMyOEOOm3i4D52jW00eidm0llDeNNBY1jefqdjdezCxMSmUNuU3+ucVb2W4Z6xMHl77fwEyhqLpGX/CUcZ4HGcHzGg04ugdHnHYfA3Cl/iUIcOzaXR3vJlVHxC5nW2cAYR2YV0KZ4dlkEURN9hjUmE8XCL4w5J9kurmvvU9dYszGpXbfm+YH8TDQA+WCk4N+1xf9kKt0m17/iIucpbqeyavsoeRWYtKBIPJl8dcoENokX/fuIkdjvrJUDeBoOvvggfr+0OSg2g6oN9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ibSvjJTAOt549cOg4Zyk5AbXglrNhb2wfkVAWbtEYgY=;
 b=bxr+XblKtXJUttHPRBAJlvLpuP6P0K1JlG8P/03Gadz9izC2SEyDlS4ZIYHDEDZ+k0r3QOiJN87+X2fzccJ9MbIx+C6lprGPWoRRRydhfUFbBGUaKI7bhQRe4QmTRw8u7kY8oZ21LHa2iU6OdK4InGDcDotbVh5/AJ0U7d6aeJWnXdgS5ABFsvk5Bbb66blRlydiujMRPtEJrxk0unwJHr9zDNBdpke1wICez9a35rnP7XnHjoS2PgrrNxZ0nqMjtPVoyrDI9hqwhsKwGXBS10cdLTrjabJV95HSlXMNpW8Uo8ik/koIZ7IC2l7DjVJL2w42C0huc7z464ziZXIqKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB3243.namprd11.prod.outlook.com (2603:10b6:5:e::19) by
 CH3PR11MB8315.namprd11.prod.outlook.com (2603:10b6:610:17e::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8026.23; Tue, 8 Oct 2024 07:55:52 +0000
Received: from DM6PR11MB3243.namprd11.prod.outlook.com
 ([fe80::ce44:a4c6:b3a7:8341]) by DM6PR11MB3243.namprd11.prod.outlook.com
 ([fe80::ce44:a4c6:b3a7:8341%6]) with mapi id 15.20.8026.020; Tue, 8 Oct 2024
 07:55:52 +0000
Message-ID: <caeaa7e1-0872-4bf8-99ef-e54933c0715f@intel.com>
Date: Tue, 8 Oct 2024 13:25:45 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Don't allow tile4 framebuffer to do
 hflip on display20 or greater
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
References: <20241007182841.2104740-1-juhapekka.heikkila@gmail.com>
Content-Language: en-US
From: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
In-Reply-To: <20241007182841.2104740-1-juhapekka.heikkila@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0096.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::12) To DM6PR11MB3243.namprd11.prod.outlook.com
 (2603:10b6:5:e::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3243:EE_|CH3PR11MB8315:EE_
X-MS-Office365-Filtering-Correlation-Id: 967a9d20-212b-4099-4a80-08dce76ea16a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?b1FkOVBtU1FsalZpWGR6aUxHN2kxSmpYNTVOT28rWHk5R2tadUkraEZaenY4?=
 =?utf-8?B?MU5hL0g4d2s5WkN2ajRHbEJXL21PeGhlSmdXbVQ3MndZN3RodFV6OGhxdEpN?=
 =?utf-8?B?bkVUMm84Y2FueGtyMnp6N2t2bkdpS2o4MlNNOGdpWmg1R0hLUUJMZmVuTE05?=
 =?utf-8?B?cXpleVE0RnJwaHd2Zk8yZ05WM3lDQ0QrdTdZODFsZXFPdWxaTGlpRTcvaEZF?=
 =?utf-8?B?OFdFdC9sbGdvRWNUY3poc3g1cEFmK1hwNXpOWXA0QXJZci8xaDIzdUZhRkJk?=
 =?utf-8?B?aWJtNkRpSnJBNUZSazNWbi9NUnorOWV3WEtad2hRZ2luT2gwQjA2aTh0MVND?=
 =?utf-8?B?OTVReDRqV2VsY3RldHAxRHRLTzJPWHh0MHN5QXRqRDdVMzhySksyc0RDc25P?=
 =?utf-8?B?ZlRBMnREaXJIZlJmNWRiTGxTTnpUcHN3UTZ4S3BpTWk4c1ppV1c0L01aTWE4?=
 =?utf-8?B?NC9XZkhLYnU1SHBBeXRZR2Z4Q3NHblh2ZFBGOHdXZzd3ak43ZkVkQnd0cHRV?=
 =?utf-8?B?Q3NaQjBLWTBjVjhqRWpRK281NTdERFM5elhmekt0Q0tSMU1uL2VFdnYxMkpn?=
 =?utf-8?B?QTd0NlE3QWZ1QnZJMWI4UUFOeitvY2JFQlZmbVo1ditTeDBkQXorWVNtR1lE?=
 =?utf-8?B?M1poVFErVDcxSHpzYlNZNFRNUldJSllpK0txVU81dXRGS1EvaHNjQi9KS1NZ?=
 =?utf-8?B?OUZuVWpQSDFzZ0JSU0x5azVReHp4NkFJYTgzb010dTYrREtmTllXY21TWGNo?=
 =?utf-8?B?QmM2WjlmeXJRNzFpaXhacEErL3VmaFJsWFZBVjdJR2VnaXNXQS9EV2l0bDFB?=
 =?utf-8?B?VXlmYm9pZis2cnd6bjE1ditvWmQvMWpZeEtkdnhpckFBYkcyM2duUlFLbVZa?=
 =?utf-8?B?OFQ1SllBQ3dxakpEZkdEbFZjRkJ2WWd2dHUzbU5meFBBeE5MZHlpQU5MbS9V?=
 =?utf-8?B?bFZvcEV6QU1OS0dSYzJqK3NTamJLa21PS1JHZHJPbEpvNFFHZzhBMC9hcnhs?=
 =?utf-8?B?R0xWc2RFTkJueWVPbnNzMVVUdjQxbHVueU1BUkdGRUZ2UjhEMWNUOUJOMFE0?=
 =?utf-8?B?Z0pXTGJqZ3dXZ1Y0VWdpd1hxbFcwSVYrbjNwNS9ZQW5kdy9xSWZIbnczUHV6?=
 =?utf-8?B?WkpJNUhPZzRNYnowT1dyZ3dWL21JZXEwRGh3dm00aUtucnhQeFBPUVVneENu?=
 =?utf-8?B?dEtoeWdMSjFEcnJpQ0kwZnZyYUFWY3g2bUxJZHNuUkVvazFsdE1EREZydU02?=
 =?utf-8?B?V042Yjl5cTY3UjErckp0aUlETXhGc0lKdWt4U055TUtYSmpSdDMvWlF3eUMz?=
 =?utf-8?B?Tk1WcU9ETmx4a1pZVjdtdDIzckZmMEFrd2xNS2puSGs0NnIzcktOTjh0YjJ1?=
 =?utf-8?B?VDFKdnN3RGRjQVZxVnZRRjg4VEthRkxWdmFSTGpnbEEvNFUvbVlVWUh6MWpv?=
 =?utf-8?B?MlBoUXFJY01OM2pqbHUvQi9pbjdZM1lZVVVXYlF4L2ZJNnNoZDFkYzB4MDBm?=
 =?utf-8?B?NmU0WXd4TmlTTmhUSU5RbU1OY3ZBa21sYkdkNngydlU5Nm1oR1lGQWJzcWNZ?=
 =?utf-8?B?TGJKQ3FJdTFzTVdiMjhPM2JaVm1jSk5NSy9vZy8xRWlHTU5Ob2FTS3p3RDRt?=
 =?utf-8?B?Qm9kaWZHbXI3ZDJKS25ZMVdKcWpaRmNmVjBFSmF0NGhJS1psdUNUemZaZDBB?=
 =?utf-8?B?b2RnWkVwVzIwdEg2cDVaeXZBOWV4a2J0MWQwVVhNRXEwMEE5di9VM3p3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3243.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cURCbUhjZkprbTZiQU51L3A3VHpTdUVIbTRzcWJvNVFUdVprY3BrK0NlOFBL?=
 =?utf-8?B?NVZ1b0FvNmc0eXdmWGJHRzVJOXRnNDc3UEhmUzdzcDQrSUtkU1NBQWU5ZlZ1?=
 =?utf-8?B?VHZmVUFmYUloam40NFB1ek9uYUI4Vm1HREt1V1Z2NEwxeVVTdkFoUEFOWktM?=
 =?utf-8?B?cmpDVSswTVhibTgyZ2xEMVZGbE9SMExlUzBqeldNc0YyekdTWFhEMFRxemY0?=
 =?utf-8?B?VCtmVExGR01CMVRkaU01Wmh0VGJvV0lxbEx1N0dBcGt2UGxGU0dNUFNYSENz?=
 =?utf-8?B?YnVXY2pPRStUeFUyVlYzaHNXRVozMEZzbm1nRFdIVENPalZHZUIybmxUUjJk?=
 =?utf-8?B?b2poemN0UVpGL3hXTUs1U3pTMXhFSWNXSHRxdk80NnZ1dlpTUURJb2l5NjVR?=
 =?utf-8?B?aEpleGVLbWRoVmlZcUNtSVF6a05HK2pWZ2lQTStuUlJFckFocC9FdVlaL29G?=
 =?utf-8?B?bFZ4cEs4M2dLbWNmdnFDcGtIZElJNGVNTzJhMlk0QkFhbklzRjA2bkxlSHBS?=
 =?utf-8?B?MEFtM3Y4amVCTDVvMHRWVjFtQUhLQ1JPY0pTL25nOGk3KzNzd09xbi9FOHN5?=
 =?utf-8?B?K1VFcnpOLzR4M1ZmNE4renZpSHk2aTI0ZGhLVEhzNngxM3JZYnZDdGllamZv?=
 =?utf-8?B?K2VvTUk2UklhK2FQWmNTeUU5ZXNyVVlyT1IxRkdJOVJYOGxLdDVBbmUrbUpI?=
 =?utf-8?B?cE1SMW82djJVTWlZR1ZFdzc2OU5iWjhYRDgwVzEwSjUxMHF6UGhLU2l6MzlB?=
 =?utf-8?B?MUJNM1RFUDRyNTFQNStuRHlKT3ZhblBLYVp0aExnL0hkYmc4aTJuamxHcWdN?=
 =?utf-8?B?YXRNUzNFV2xtbzVnSkdQbkFyVEdwcXZZYlYzclp0dy84WnVoNzFaUWhZVlFG?=
 =?utf-8?B?c3lFbWozQTFpbnRtUUdTK0RsOS9Ea0lQUm9VREI4eUthM1Y1RzJyNCtHS1lU?=
 =?utf-8?B?aENKbWhKUEJiaHhEMlM1YTR1SUxwc3pEcTExVlBOcW82cUtsVzZucnVTNFBK?=
 =?utf-8?B?MnYyZjU4d01zUFVwWkNXR3BvTGQrZ1lFMDk5ZVFFM1JSemVhQ0Z3U3BxdFQ2?=
 =?utf-8?B?a0hET2FLbXA3ekZSa0dIUnlCeWxwUzBzckVSV3FtZnVZbkE0MXJwZUFlN2sv?=
 =?utf-8?B?NUttaU1nMGlIVU5EUjhBTUN2SXI3eTIwREdocHRZRFNWa1I1UWxGUENXbFJJ?=
 =?utf-8?B?RHBQemhFKzBuZ3NnR0R2REY2UE5KT0hQTkFLMzEvZ0Nnc0dZWHI3ODB0cnAz?=
 =?utf-8?B?SzJ4aWdJaWJ5YmhScDNhOXpLSzJKRHZwczFWb2VncnVKd29aZHl5S1p1RndN?=
 =?utf-8?B?cDY2S1Y0SWQrQVhIL3R2ZHEzL2NXRlF0N3hja1BWUDhvVjNtNDBZWFpWZTA2?=
 =?utf-8?B?NXU1Q0dMQU9JblBVcnZhMHBmeG56YlJVRjdmbHIwQmhoNGdRUVpMaUVMMDlr?=
 =?utf-8?B?cjEvMzRPYUxGTThrcGo4RGI4RjI2em9BV296UUs2Z0FWNGU3YVRxV2VySjAw?=
 =?utf-8?B?RXFZUnlJbnZINE9KUkdGejZKK2w0cGc4U3VZY1ZqRXh6SkxwNDRNVnRBcjNH?=
 =?utf-8?B?eFluNFBYdHRsaC84TTN6MXRLNDdwZkhGY1lFU0tzYjE2d0hFTFVLa25YTEFh?=
 =?utf-8?B?azh4cHNUVEZiaXB3WGVCUUU0VnJ6dlYzSk1pRGhrUVU4eThKaHh0V2hjSWlP?=
 =?utf-8?B?RktLOWZkK1ZLNmFVU3FHeWdtNE1hd0tvaXhiTDRCVEZZRlJTb29zN1VUUCtP?=
 =?utf-8?B?K2pVYWRPNjQwNlhvcEcwUWgweEF4eFF1UzF2dW82ZlZNUWh1bC80d0F2blIy?=
 =?utf-8?B?clpWcXNZcCtmakpxT2Znci84cXhUbVkrSkg1SVRIakU5NHYydEdWNjlMZEY2?=
 =?utf-8?B?VHoxdWdMUTdndGxyTzMrV1M4dHJNL1JIeWs2RDlERFZjMVh5V3F2bmFFVEpy?=
 =?utf-8?B?ZEphN2Y2L2RyL2haVjUyRy9wZTVVb2hUSm1Nams5WkhtNjBqRWJrSjRsYXNC?=
 =?utf-8?B?Q0J4M3FTNU5TbFpRM3AxaTF3dGltUmx0bEI1NUV2MDNHQi9KRmtVRktHdWZX?=
 =?utf-8?B?WGoyc29uMmRoVndUK1NXMmFHN2E1UnhDU0lsTkgvS3RGWVFkRjBYUm11OW9k?=
 =?utf-8?B?WTNCcXFFblBYR0RZWll2aXM1Umg0UExaTU5jTWx1dU5ONjVZajlocFdhY3Rk?=
 =?utf-8?B?U1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 967a9d20-212b-4099-4a80-08dce76ea16a
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3243.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2024 07:55:52.3514 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VSzJwIj9Kq+yU9egDqtk4gsahKWKesByJtSUiHxiNM8Z2JUeDnQP3g7LQ7iHXy1noH4Axg5tFmywS8VMupd5RzbNp8fR3Hlrt4+QSv6Ef6Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8315
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


On 07-10-2024 23:58, Juha-Pekka Heikkila wrote:
> On display ver 20 onwards tile4 is not supported with horizontal flip
>
> Bspec: 69853

Some nitpicks,

1. Probably, we can add Bspec 68904 as well, as it gives more clarity 
about all the support and remove the extra line below the Bspec line.

2. In the commit subject, I think we would usually prefer display 
version 20 instead of display20 directly, and maybe we can have the 
commit message something like "With display version 20, horizontal flip 
is not supported on tile4 surface formats" just to make it a bit more clear.

But other than that, patch looks good to me

Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

>
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>   drivers/gpu/drm/i915/display/intel_fb.c            | 13 +++++++++++++
>   drivers/gpu/drm/i915/display/intel_fb.h            |  1 +
>   drivers/gpu/drm/i915/display/skl_universal_plane.c | 11 +++++++++++
>   3 files changed, 25 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 6c2679e6c980..735fba73c9ad 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -439,6 +439,19 @@ bool intel_fb_needs_64k_phys(u64 modifier)
>   				      INTEL_PLANE_CAP_NEED64K_PHYS);
>   }
>   
> +/**
> + * intel_fb_is_tile4_modifier: Check if a modifier is a tile4 modifier type
> + * @modifier: Modifier to check
> + *
> + * Returns:
> + * Returns %true if @modifier is a tile4 modifier.
> + */
> +bool intel_fb_is_tile4_modifier(u64 modifier)
> +{
> +	return plane_caps_contain_any(lookup_modifier(modifier)->plane_caps,
> +				      INTEL_PLANE_CAP_TILING_4);
> +}
> +
>   static bool check_modifier_display_ver_range(const struct intel_modifier_desc *md,
>   					     u8 display_ver_from, u8 display_ver_until)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
> index 8240febff84c..d78993e5eb62 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -36,6 +36,7 @@ bool intel_fb_is_ccs_modifier(u64 modifier);
>   bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
>   bool intel_fb_is_mc_ccs_modifier(u64 modifier);
>   bool intel_fb_needs_64k_phys(u64 modifier);
> +bool intel_fb_is_tile4_modifier(u64 modifier);
>   
>   bool intel_fb_is_ccs_aux_plane(const struct drm_framebuffer *fb, int color_plane);
>   int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 9207b7e96974..4755a0672739 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1619,6 +1619,17 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
>   		return -EINVAL;
>   	}
>   
> +	/*
> +	 * Display20 onward tile4 hflip is not supported
> +	 */
> +	if (rotation & DRM_MODE_REFLECT_X &&
> +	    intel_fb_is_tile4_modifier(fb->modifier) &&
> +	    DISPLAY_VER(dev_priv) >= 20) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "horizontal flip is not supported with tile4 surface formats\n");
> +		return -EINVAL;
> +	}
> +
>   	if (drm_rotation_90_or_270(rotation)) {
>   		if (!intel_fb_supports_90_270_rotation(to_intel_framebuffer(fb))) {
>   			drm_dbg_kms(&dev_priv->drm,
