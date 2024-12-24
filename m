Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4929FBBEA
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2024 11:09:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2488F10E2A8;
	Tue, 24 Dec 2024 10:09:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bUnVgxF9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0667B10E2A8;
 Tue, 24 Dec 2024 10:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735034941; x=1766570941;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fUyXjGyvt9/Kk/n8CTlDD+kpLkRqev4oZmT6xcq1N4E=;
 b=bUnVgxF95rr7fO0wevSIAKGvYcP+IgmGYv7jiXlVY3l1MaHrNQH9bL5S
 0K7DhiW3bOaCmgqoAThHN/2JliBlSFVCA+UeKmk+66MixWvVQpW1zX//o
 wFY/6jI1j2w62fpkWK3OPHCitNWJhtDmtpa/u6TrjAEX5Pf2EZLBcOUjw
 YWHxZPVutZHFJqkAWf95G34l1h/t9/GJKKV0uzkHlBH/tuE7M0SVocAMd
 wrfGhg7WKnU+rQF4KoLIFRxkFOD2Px6WS5psO5RChhkjGXb2sX88ETEkf
 HmLa0ZYlXH4TeOaeGN5D7cpz6HSK8OvGMtrA7iQZNdGyXmvXmZHvUfGKU A==;
X-CSE-ConnectionGUID: CgJbKadGR8yvYAg0BSVaRg==
X-CSE-MsgGUID: 5SvO38BUTkSDKZq7NXDo9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11295"; a="35725073"
X-IronPort-AV: E=Sophos;i="6.12,259,1728975600"; d="scan'208";a="35725073"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2024 02:09:01 -0800
X-CSE-ConnectionGUID: oyfpxFlWQiCpKMimioRGhw==
X-CSE-MsgGUID: eZk8yrBDTGefmUpFroV+/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="104072123"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Dec 2024 02:09:00 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 24 Dec 2024 02:09:00 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 24 Dec 2024 02:09:00 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 24 Dec 2024 02:08:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tiDcX1JdO3pmmxpAxxh7qRAED5KOWYtwbPo4t7v+pi7cBboGg34aR1UweOnWpXKHXxeymu1OTh1Xd/vEksLjCikQz6OEIgk8Q54UuVmXjK5uBTkUwOrdJ1xOfBYDH7q/yxPuNI6lRYp17H4urkfUmg5lskfhIFeJqxfqoz7lT1tqTbV8yhuCfXD/MG8oOtDMrE9NoM/QBoE0i7+iuimMAigPExRMxJpUaKkBTcbDHEyDVhqFCWG/qYNzsyJRlgvjti3beZMBits9nHuraEiY60iiFUDPGvhhuznywnF/aRH/iqAIEEyKMgYUnC3n1Bq26smZymmxdtctxMOe5iEJ9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pPWjvL0+Xq8uJK4DntkeMz8XBjV92TwqRAwJ2WAgPto=;
 b=X6DoE2dWPJXIwo/iCQ1EWHSqz5sdjenFpDprbYyxYE3lHuo7M+5cEJjwUYcpx6DRPkbXA/dj0gMpkFsB7tWAWGGmCZaP/sn2R9Nztgn35cC6Tkhdws6Bf5kysQK4hEaNA+DTE1E5omidYnZ82I6LgjdDxFxodYnvFnN9orCajWWt6x2S81dookZsfSrl2zKVVnYSWqTnALPGxSUyU+6cw2I0+vRGb6ZFGkulPkYkVouUdFXJYPMrXVqRrq8aHdI0U2v3H+zAnTFx1ckAGLdpn+Vkgqzhg8vD8b8uqkaylStqZIQdjS3S2aSVVgdw1GilqmeToFEmlFH3OUQ2g0uY3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB8063.namprd11.prod.outlook.com (2603:10b6:510:252::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.20; Tue, 24 Dec
 2024 10:08:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8272.013; Tue, 24 Dec 2024
 10:08:52 +0000
Message-ID: <7f26a655-4a9e-456d-b0e9-02d4475d9e48@intel.com>
Date: Tue, 24 Dec 2024 15:38:45 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/14] drm/i915/dp: Return early if DSC not supported
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <suraj.kandpal@intel.com>,
 <imre.deak@intel.com>
References: <20241217093244.3938132-1-ankit.k.nautiyal@intel.com>
 <20241217093244.3938132-3-ankit.k.nautiyal@intel.com>
 <871py6sho2.fsf@intel.com> <87seqmr2qo.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87seqmr2qo.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0241.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:21a::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB8063:EE_
X-MS-Office365-Filtering-Correlation-Id: 64a5ff8a-775c-4a43-bcc2-08dd2402f7d8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SjJlcW9ieDM1OUdVTnpCd092NE5ndGxJRllIYTAyeXhrdjZPS0tHMU1WNGV6?=
 =?utf-8?B?a3ZTQkVnZ1I1YXVVYkUyK3BuZ1NmZGdTWEJ0cEozaTMwMXBpM0V1bWVUNUxo?=
 =?utf-8?B?dFhuVFFIMklVMVJRSHQ5ZXNTVk5Eazcvbm1wbUJkMlJ4UDFNbW5EY2xack14?=
 =?utf-8?B?clZRdXlVbE0rVFNkaW5BTGxSN20xdWRVUDIvNElhU2xReGh1TUhJMXV6bDM0?=
 =?utf-8?B?Y2M0OGtuK1UwSHBDZmtQaDNRUG82aFFyY2xPZkpMMGhSSDRqbkRvTXhENUpy?=
 =?utf-8?B?dnN5WHI0SmJDRnlpL3E4ZU02QW4zSFNnK3g0Y3lDZklhc29vcGdobHg0dkxo?=
 =?utf-8?B?Mko0NUZlbXcrYjJUamlDcFJkSktjVFhPRzJNMjlqamhEbnVPWlpBUm9oaTdv?=
 =?utf-8?B?OUZZRVU4aVp5MVluRWJFczNiNnczK1dReUZRNk81VTRPbXo4dVAyQ3VYUFMx?=
 =?utf-8?B?NXBvLzA0MW14OVBnck5nTEpOazg2Ri9Mb3VCbXlGdEw3S0JWU004RGVmWHIx?=
 =?utf-8?B?SnVLM1NGYU5TcVF4MHJGUXNFb0M4SXBwRWpaaTZCcUh5d2NNNFRNV3dOTUJ2?=
 =?utf-8?B?ZTlCRUh2bWhCL1RlZWZ4eXhGcVpHOCsySnNHWGVBaHV6WHFhL0xrcnhlNmQ3?=
 =?utf-8?B?dzE5UmhYY3pUS2lSSEs5UVNVTFJkeTZ2dFdRVml6V1RNckFBN1VmQithY1ha?=
 =?utf-8?B?bWJqMlV3Q2FGU3BoWWlzLzNRY0srNnNxM2h5dGZkTDhJR2FHc0FGbE41Sngz?=
 =?utf-8?B?WG5sMzFSSW4wNHNGeVg3Wk4yVmdNWDJuRTBaeGxwSkNQWTg5aW5mbVpiZzB2?=
 =?utf-8?B?dkRQOGc1VXBROEpIVWdaK2EySitHMkpTQkpNQ2V6MW1jdEdxb2JIYmxnaFl2?=
 =?utf-8?B?eS9OQWttZkJMc2Q0NDdOWmx2SERGU1NDNm9semMyMmRSVktpZGRIOGc5WW9I?=
 =?utf-8?B?RHY0ZE12SCtvRkhTeHc5dFIxL24zTHNIaVRGejVyRDdqNWR0Y08vNDVEM2Rs?=
 =?utf-8?B?RENCSEhhUGZhZjNndXpCUmpza1NMVW8wYU9ibkplU3FFNXQrT3FCeUQ1RzM2?=
 =?utf-8?B?ZFZpTkordElLYjljTjRwRktpWTRXdkdueXBmQ1ByeUtBclh5VE0xZDRxWFB5?=
 =?utf-8?B?bFJJY2NvMmNoSTNtSzdyQUVUc3NFcXFUc29DWndFcTBOeDAxeFdnZlArRVFo?=
 =?utf-8?B?MzQ1OUFKdnpDcU5KTGxzWE1yTER1VUJIYVVJbUZTVHRtQnFoaWNETG1QaFV0?=
 =?utf-8?B?cHZkT3V1SnZOSUNoTGsweTVGNXFUbE1xeFdVaXNadXVURDRMMWk1YmJZV2dr?=
 =?utf-8?B?ZTFpUzBnSzk3NGpuNDcwZDVuOFhyRk56ZWVwa2hCT2NaSkszZmxDT3hZRFZB?=
 =?utf-8?B?cld3Y1NvRFAzYjlDaHFLZ0p0Y0hxYzRJTjQzdFVxZEQzVExkTThYQ21UbnRM?=
 =?utf-8?B?eTVwRnNvN0NXVXd3TDFaRGxCMTJWSGZhT2grc3NrM29mQk01aWlIQkpZSStw?=
 =?utf-8?B?OENHZUZCakR4MHgvbW5nTFlRekZsU0gxRGc4alhOaGZ1ekFZbERCV0hrMkJR?=
 =?utf-8?B?QllyUnBjMkRPa2xmZzN1NjJCcHJ1NU41VjhNTFdCRWJ0TTlpbGZPQk9nZ3lp?=
 =?utf-8?B?d3ZzUER3NGIybjhiYjNmSlBnNW15dmFqcmpQYklXNkJmNkVLOGZTWWdRME95?=
 =?utf-8?B?cUVuZ2g0SGs2MWRiZndNakZ6ZUpLR1gxckdxUzhmYTFVMzVDZHUrS1A2TU1P?=
 =?utf-8?B?MmxEbkhnV2QzNFduc3hPa3RNYTlubTBUcE5iRStEQU1teThQbndBYWhCZHJY?=
 =?utf-8?B?TTVHUURLdnc4N0h2VXBsNVppc2pJWU9DTEVBNjR6Nm1lcjBSUEVRRC8zK3RX?=
 =?utf-8?Q?tImKDPamNtY2F?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L0NnNDV6cDVGMHlXMExDNjFyVnEvM1ExcEpRN1R3S1hqYVZCUXl2WktQMXFm?=
 =?utf-8?B?SmpaS3NjZTBCSkFVS2k0bDdoV1BETHA2TkM5alFyOE5RY3htT0V3N2xXbjgv?=
 =?utf-8?B?dmJhR1h6cXJTL3ZtZ1ErZExSeTMrN25SZFF2T2RXZHAzWXIyRndxa2M0dmRK?=
 =?utf-8?B?cmt6Q0pXMW84NXk5bzE5QWRZT1pkaTJwclNpMCtXNXdONm12L2ZsMzhYTmVt?=
 =?utf-8?B?dkR5OWU5K2dhMTFJUWlad2F1VFdZOWdmUnRUVzlabFpGaU1oQjA2dzc5TEQ2?=
 =?utf-8?B?QTBhTmdoTllOamxVb2pvUUxsRVZPRUxIQ0tuY2pWK2swaC9yUVp6andpaE53?=
 =?utf-8?B?SFphNTNuWTlWOU5SYjZSVGxOb2xtRElFMVB1dVJyU0tocFNaWEF4K1ZHVXFq?=
 =?utf-8?B?WFliRGdKQnVLVDBvNmFBelY4OVdCaEEvYk5BOE54Wm1VVTRwYjdpY1JlSWRp?=
 =?utf-8?B?Wm9jYUl1aGFDNUZLc2tuc2xpQ3RBUFBwUnkrcUZRQndHQUt0RjNWYWRlbUpH?=
 =?utf-8?B?eG1MUXByUUkrWGRHZ1BIYWcvL2oxTVpaaEtzV1VkWDRFRFZadVpINFNzRWpW?=
 =?utf-8?B?M0JQN1BLdHFwd2JUYWNpeURFZG96R2lNSXY4SU1BNi91RTlHS2U3aWMycGlZ?=
 =?utf-8?B?SG93R0ZTbklDeUROb1BNTzg1MldENkUrT0VqTUZuZ0hCdkdPb0E4eFJXUFNY?=
 =?utf-8?B?dlhuaHhZbElJaXBDb1NrWFQ4NUlsVUhrZWQzOUF3a2E4VTB6amhEbTk5dStt?=
 =?utf-8?B?S0NvWURkUlNwZzVYd29JSXVzbTZqWXFlSmFnTDI1V3l2Z2ZqSG1LWkM5bHpk?=
 =?utf-8?B?Y0s5bWFZbHBHS0x0MnBldFh0b2liUXlib3EvS1RpTUJINzljbFcwdWN5S3Ax?=
 =?utf-8?B?T1E4TUV6VUI1dHlZTUc1ck42V290T0NTZFgyczN1aEZEdXRkaFU2dW5ZTjRM?=
 =?utf-8?B?TmhSc0RXQnFPVGFZQXpaT1JXdDRpQ2txTTdEL0tzTVY5TW83dXJSR1FVR0x5?=
 =?utf-8?B?cUExNkZ5L0Q2S2ZhdXhKQTZhMlFQNE55SkhWYk1xVG1Wa2NPVXROb096R2V4?=
 =?utf-8?B?TTRBMUFmM2U1THh4Zm0ybFpCZnovcWh5ZCtvRmtZTEtwVDRVYUFiVlR5WkdN?=
 =?utf-8?B?a0VmZVlmUTIvSVRHQUxsNEFTU3hpbnRTZysrWjBUamxBSXZpRGdLSXpjYnVH?=
 =?utf-8?B?UkFuZ2JxTmNPWnltZHIwQlcwenZZR2VUMFRkSnNtM0lIWUVHU1U4QUcvR2F5?=
 =?utf-8?B?OFVrQVpTVTAvck1ZZkNRRVpyYVJYYkd0R0RMUElMeVBLUkJCZm5jSmZqRFF4?=
 =?utf-8?B?Mlo0YkV6Y0trYkNRVzBOYjVoMkh0emFPUDFGSHpYNk9icUhQR0JtZEF6a3lJ?=
 =?utf-8?B?bmt5bXBGSHprMFdxMVJNZUVzV1FuY2ZHVzIxV1g5Z0RKOWRCMUFqWHlMVHZY?=
 =?utf-8?B?UmFuUEM4Q0hIc1FPTCt5QkE4VlRrSFRHNUNNWTBmM2IyNGkycXp0eDBuaTN2?=
 =?utf-8?B?cFBDWDk3TGxCTnNKMkpPY1Y3NHhLYldMNDcrWmdZUSszaDd0ZGppTDFya1JL?=
 =?utf-8?B?aVFvWWVkek1yUGFHbG16VWNVVmkrWW5TOXV2UDNNOWFtVnVrUlM0d2NCb2w4?=
 =?utf-8?B?b3Uwa3UzK1BwdlNBTGp6UFVRclVxSnl6TENmS0xnOWZsaVIwSWZYL1k4TzZR?=
 =?utf-8?B?Wmsvc211ejNpd3AzcTdLNDdDNnZPVFQxUFgvWWFKRllKUGZTdG1kREhaSkYr?=
 =?utf-8?B?SCtzd29HU3JNUnVNZ1VqZWkrSmwwUW5IQjRaa2lBZDRCOHBFa2FQRFpkM2dy?=
 =?utf-8?B?ZTVkSG01UjBEQ1Q2dFhpOTM5TlpDcXZSSzFBMHVNZFE0OVdPbm1taHA2M2ZW?=
 =?utf-8?B?RXNUeENvbkxZQWVBRDRmeWJvTXZ6aEVYRDNEV0JSVDZhZ0x6d0FPRlNYYllo?=
 =?utf-8?B?cTFQSjEzamVnay9abEp2aGI2TWlWRTZ6ZllZZU02NVVGMnRYQkxhUzVOZzZa?=
 =?utf-8?B?Vy80NUxEUlNOUVlFMXFYRktkS2F4bU9LZ3FBVVF4YUlaRG93bnRFOWFHaHp1?=
 =?utf-8?B?akZLUlVOOG9EZk9FWXJzc0Nkb0N1SUtjSEJZbzEya3plUEtDRWtQSjJINkxW?=
 =?utf-8?B?aGhzR05vd0h2U0FBcjltVHNQdDVqa1FzWFk1dWNCcXNsQ0dQQThHU1pnY1Nr?=
 =?utf-8?B?UWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 64a5ff8a-775c-4a43-bcc2-08dd2402f7d8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Dec 2024 10:08:52.6814 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YFGxb+Qb0eKdN6hFI/3cSVup4W4Hd/BNN4hboa0dKoKIB9gOfzeJoYINuoSazd1wCPvSa1QaPyCDtPtS8d4LLQrt/s1ynZDpiL8zusRz48c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8063
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


On 12/17/2024 4:32 PM, Jani Nikula wrote:
> On Tue, 17 Dec 2024, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>> On Tue, 17 Dec 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>>> Check for DSC support before computing link config with DSC.
>>> For DP MST we are already doing the same.
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_dp.c | 6 +++---
>>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index 908b9887f89b..dd2da9facaad 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -2375,9 +2375,6 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>>>   		 intel_dp_supports_fec(intel_dp, connector, pipe_config) &&
>>>   		 !intel_dp_is_uhbr(pipe_config));
>>>   
>>> -	if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
>>> -		return -EINVAL;
>>> -
>>>   	if (!intel_dp_dsc_supports_format(connector, pipe_config->output_format))
>>>   		return -EINVAL;
>>>   
>>> @@ -2652,6 +2649,9 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>>>   			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
>>>   			    str_yes_no(intel_dp->force_dsc_en));
>>>   
>>> +		if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
>>> +			return -EINVAL;
>>> +
>> The (pre-existing) problem with this is that we debug log we fall back
>> to DSC, while we don't.
>>
>> Maybe we should do something like this instead, both in SST and MST code:
> On second thought, this can also come as a follow-up later. I don't want
> to block the series with this.


Thanks Jani for the reviews and suggestions.

I will address the debug logging issue separately as suggested.

Regards,

Ankit


>
> BR,
> Jani.
>
>
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -2644,6 +2644,11 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>>   			dsc_needed = true;
>>   	}
>>   
>> +	if (dsc_needed && !intel_dp_supports_dsc(connector, pipe_config)) {
>> +		drm_dbg_kms(display->drm, "DSC required but not available.\n");
>> +		return -EINVAL;
>> +	}
>> +
>>   	if (dsc_needed) {
>>   		drm_dbg_kms(display->drm,
>>   			    "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
>>
>> BR,
>> Jani.
>>
>>>   		if (!intel_dp_compute_config_limits(intel_dp, pipe_config,
>>>   						    respect_downstream_limits,
>>>   						    true,
