Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0wuqAegHMWpaagUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 10:23:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD6F68D1EC
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 10:23:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=javG3wdj;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B36F610E71D;
	Tue, 16 Jun 2026 08:23:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3A7410E71D;
 Tue, 16 Jun 2026 08:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781598181; x=1813134181;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Uulv+TdNm2nsraWI4I3kqGgkfwoYBfmiVMF7uaOcfOA=;
 b=javG3wdjnZSwXlJpe8F8pOMBMuhcMKUX7J/gn2V/bqRe5H+Bgd6hqEiP
 upgnpETlQFTWu6otNoEL6H6IYRpWAr2bKRbAtzOTzOvfJhXOP1To48djP
 HSF8wSN17vgioZBBLIiDpXuSycZSCtxCNLTwssAG7Kp0+ThAK8LmZOe9h
 GuDYppZ4ZZ1N1SK2FFKXTfg9oSOB7Be1sbUJs8y+KWGd2ezSFzwN56DCb
 2eir55klUdW4lSLTiWf+VHWuWQyi4exdwEmxBVrLcqZa9Q9TaEh79ANwg
 OKSikDRMamlnfp8EuOh+/KTpNs33l31w4ES4Fv6DHWlISv4+vmADcv9Qg Q==;
X-CSE-ConnectionGUID: uaBy3W4aSx+ZjPHjWhVO5g==
X-CSE-MsgGUID: +DmdIsxNSGKiFo0CRTS3Ww==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="85992372"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="85992372"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 01:23:00 -0700
X-CSE-ConnectionGUID: LLLAYAZyRbG5j33ORd6Ufg==
X-CSE-MsgGUID: zP1roF3xTeiarH2IQCrBEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="249594114"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 01:23:00 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 01:22:59 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 01:22:59 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.49) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 01:22:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rCyV7qAEJBAHj60GiLkf51KIctJJw/rVQzwLpYPJe6YBIOmE5VnJVwsz9aGrNIW8dnASDcXI4PesqfJtW5sCycANvKkW5KkgpROWGYzEeb9FvlUQ5gDUxsp/4VCAagvpd6fqoRtoe3NSKD8kFPrivbEhkF0pkiIeFRtpJs4xAR01t0qi2kH+/GF4Is4gzxjElRSAdYd7o9sUaZMSQxAV2UtAzyXHS1x/zlez9J1+dckG4eLTruJRuvmIr3/obf+RwimCl751JuEB3xfk751xunmVp898La2aEiG33+5P5N5t88gSerh5PY9sisf/megTbrXtRPxO1ZuXxsF+qJck/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uWO92I7m8TknuggOxkXEtEsfB9+LC5MupMAYeuSq9uE=;
 b=oDuFrqBmTOYZG95fHsnzhdXBJFD2yAPiDRCuHjjp7MkQJ4hIePKFoXBfZDFYJIdRV8QbaxVypu4c1IXBcU3AzwbmsYtXIvaLwcmbiXrrujNOf5yQqhnwAeqz4kqZSekcL1apGqA+EQ6Y0wfRLjSEG96dK4N43CS0l3Nd5/bTUI9ed+i1cyFM9T2HszuKrYizowBt+7ZaEoVMBRmFF2qO76H8dT48rIT6EORopgM8EMLIDd3m95L3DiZNXoFSU8/mZ13HkZrHJCjNyf3KJbzsOE4Ykez0j668CaaPwd4yUOhItAJ1MD52fddRAtBFrthDU6UgakWoVoKUrhUj0P7Aeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB7554.namprd11.prod.outlook.com (2603:10b6:806:315::9)
 by IA4PR11MB9321.namprd11.prod.outlook.com (2603:10b6:208:566::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 08:22:56 +0000
Received: from SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b]) by SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b%5]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 08:22:55 +0000
Message-ID: <46aad3ac-9b60-49fa-9a7b-80702d1f7683@intel.com>
Date: Tue, 16 Jun 2026 13:52:46 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/alpm: Move the check for PSR and Fixed RR in
 compute_config_late
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
References: <20260612034827.1528743-1-ankit.k.nautiyal@intel.com>
 <DS0PR11MB8049EF25E2D6CE5F09F07455F9E52@DS0PR11MB8049.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <DS0PR11MB8049EF25E2D6CE5F09F07455F9E52@DS0PR11MB8049.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0245.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ae::7) To SA3PR11MB7554.namprd11.prod.outlook.com
 (2603:10b6:806:315::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB7554:EE_|IA4PR11MB9321:EE_
X-MS-Office365-Filtering-Correlation-Id: e97f6401-996b-473f-a174-08decb807631
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|23010399003|3023799007|22082099003|18002099003|56012099006|11063799006|4143699003;
X-Microsoft-Antispam-Message-Info: yAngJQlg14k2ytEOr1HwCk1xg04S78tR1vypo/zZt1nj8s9jd7o8e1eaH+3dglGzEf9jvivC3GcacgS/WQjTA7LbydbcqcXblkyjYX9267Ur6LF362i+l3iHSu3m+mo7e24qnpukTML+GcFUp5GRUSFkHaoPGD5SMQiwi9ij6bomj+E7ojpqYwyH7qYZ/2rzVIrhJT0Hh0aRf62cFZpE3ItdpEDTjU0+IdfGu0E3OJ5fiLpE48MZ3wfF2ikYFHUHMhQjNefVnmaq0bjlggDN8FSV1TiGrGxbepLk9IKqmmYTLZPO7C4Qaltul3QQ4fFtnimmd0Rdfq843JovXWNJRqNe0Ai2ivRZgOD7A1aHs5LKUHsQoVNLqoDXDkY9tMTVtW+KdDG75gZpfYk2hhFOEpsylZcgUS1pXiEMZ6DirVecNIA9hsJ6ImCkY7KTPIivzzj7KqxIct5fXlZBersU20AAaVL6WG/L8YBeiQRqbmywEBskxcHCRIgMKLyISUtdqstsw5h/yj7wxQ9gRhf+vqQpthILm7LupDsZoZJvnvoAvtbs4kjcwA2MU0vzcBWVW8OeD+eab7pULldwMsa+Wl+t0C/YZtKFYQx4c6Ag4KFl3CKW+mpGV7W/zC2SoFp2g6HhGZSHnXLcRbyyk+5MbTtywv/LFQtW5CmvCECerkGC7nW277Z1xCCxZUW+Xa1b
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB7554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(23010399003)(3023799007)(22082099003)(18002099003)(56012099006)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z1ZCbVB1NUM5bHhjL2xNamRwOWpLbnVVVkwveDBqY3RweUdZcU9sQlBoVk5s?=
 =?utf-8?B?QmNrdzBEaGoyc2VCN1lidXhST1hGN3NYZHRXbGFld2ZhZERZR09PKyttYUhs?=
 =?utf-8?B?anJGRlBiaTRGU3MrS0FCcjBod3pXb3hxZXhMVVFRa0pndkFSYXhVdlhxUjNN?=
 =?utf-8?B?N0hISGZjZTE0bU8rTzczeWxFL0Y3RWNndnppQXhLc3RxT0lTcHNmN0hHT3oz?=
 =?utf-8?B?WTdUOGdmNGxDbWluNkFlUmt4M0s3UDlLcWpybHVidVhMbk1PRFQ3R2RKcW85?=
 =?utf-8?B?M3JFZnREeEI4MWw0OHIrbWhaSkM2YUptakZjWXNYTXFzVlhwYmFFN3lGZ2c5?=
 =?utf-8?B?QmZUbnNISHJaTWUwNm9zMFk5Z3NDNmQwR0ZEaGNMK1lPUU9WM0R0YjNTbXho?=
 =?utf-8?B?N2dvSHJhNm4zbU1ZRjhrbENCckRmMUlEQ2EvNVNhUVUyeGJ0NHFXNG1LZVYz?=
 =?utf-8?B?S01TTk8vbG16bXhLNEpKMm5rSVc0ZUNCSDAxdnNVM2diVEFJUmhZZCtKS0Fp?=
 =?utf-8?B?U1FiY1c1STJ1RFFXSGpoNmxvaDZ0NklmSEk3NjVqbE14SGtUYndGMy85ZUg0?=
 =?utf-8?B?K2gycjlOT0tZWDJTSnBMN2lnZ2dhZ0tlMHBHZTRZdWZRR2lTVFdiRkpiOEJS?=
 =?utf-8?B?dEZuTXhTUmtYa0liTFhnNDNtcG51dlBHSWFJL2ZwbkZSeURqeVJOV0FTT2Ir?=
 =?utf-8?B?YnducDdRYmRwT3lCN3owZWdVVFh5UWJoenZhL0tMOWIzR09uMk9TUmYxdUNr?=
 =?utf-8?B?WkRRWlRzWVlZOE80bTl1MHRRbWplNFZxTkIxMUFDc2Q1ZVpSdnRBMG0vRmZS?=
 =?utf-8?B?OUhHbUMwVGdLMnBTcDBlNnd2M1dnaXhkZGFHTXp4bmQ3N0J0WEZFV2JWRG00?=
 =?utf-8?B?TXNtb3dZci8xZ0xjTUp0Q2F3ZmFzbmMxNlg3ZTE1L05VODBrSXFqL1l3UDJT?=
 =?utf-8?B?K0FnZ095TzMwTENBdGpKaEdlM2xLSzVBWTVycXFKVXJ1L3lIa25reXVkWDhI?=
 =?utf-8?B?aFZSOGtVcEMzOWxOVi9hMXMvWHJ0Rm5UdmRqTStmTnhjRmlkbitVa3ZoZHhW?=
 =?utf-8?B?Q2tNWFVXaEU0M1o0SWwwMXV2K0JXOFljYzZDTE40S0tyWkZSUXltNmw1ZUtU?=
 =?utf-8?B?dUVkQUt4dXYrU05ocFV6NlVwQ3dET1lxdlVkUERzK1lKUjRoalpHZFh2S3k3?=
 =?utf-8?B?UEFtWWFycWo0bkk5dDN0YXU1azBRVFNtWVBSaGtXZWNYbVRZTWdudFNDRml0?=
 =?utf-8?B?SjBZWXlJL0tMZ0tSU1dUdmFRRWFoSE8xcTd5TG12blJuSHk0K0VTcFpPL2tI?=
 =?utf-8?B?dXVhaHoyUStGc2RVT2hNYmhVeXAzU3pMdGcvMFdBRDN5Q1dSQWV5MjVTRnpW?=
 =?utf-8?B?TTJ1dmNQU1NHZWR3WjA0aUpYZjdIYlVDcG1selVGcVFyRHhhSy81cnZuL0hh?=
 =?utf-8?B?ak50RkJINmVBTEhMa0ZiQXR5Y3lxU0RHZHpwWVNkRUdZVTQxbExnR0wxRWZV?=
 =?utf-8?B?NEVqUEdWcjFHNVNzQnZxVzVjdEpMRXJsM0pZVm5lL3RZU1dFWmgzUnFJTG1X?=
 =?utf-8?B?UUc2U1M3VnhGYUNHUEswOEVhWFAzZ1p1NU8rNDJOKzgrb3hGQ0ZicWIxR1V4?=
 =?utf-8?B?azd1eFZvUFdmaDVMQytJMEhlUnVpNGNjOTRweUJWbVhpNjE3N1dKeTRwL1I4?=
 =?utf-8?B?dmx1V1pxam9OcFpRUUxhZnlKS0ptN1kxYUxac0ViQk5XVFBkbW41ZmZlZk85?=
 =?utf-8?B?cmJRb0lZdkdOMGJEUDdKcE9hMUIyVkJZREVsSklLRCsrNjFWZjJ1OVBRK2dM?=
 =?utf-8?B?d2o4TzkvYUlyZzY1Yk8ySnRxZE9aWlVKN1c1Qk1nQUM2aTZwYVRncnFxK0Fm?=
 =?utf-8?B?RE5xY1YwampDYUk2V0cyVVc4anRCeDdTUDE0TEJnTVJFNW9UeXpqNjgvZFJn?=
 =?utf-8?B?QnhnbkprN1k2U1JYbE0zbm1oVjRubW5lUmtOWEE0V21rRFpVSDJPL3pmQ3Vy?=
 =?utf-8?B?Uy8vWnYxQUMwWnYrY3UwYlRuT01vcVJGd05oUTNLUzRPSjNERDNiemtnWlZp?=
 =?utf-8?B?ZVhab1pMRzRvWFFuay9ZUUxsd2wxcU01dU0ySzNSdzdmSUYvczlTdDNTai94?=
 =?utf-8?B?R2kyMjZITmJTTXJRZFZTU2k4c0FOc1hXOEJCYmR4eXlVM1RpTms1RlM0NWdz?=
 =?utf-8?B?TlI3OG9DNkgyb2IzSHlaL1hLVkF5aDF3N25HK2FaSXEzWTRYQnJydXlsUFA3?=
 =?utf-8?B?VTJ3bDZmNEpQRFJabE5uZ2xocmcrV3ZqTzhZMENkZC9XUTNvWFk0UGNyRmM5?=
 =?utf-8?B?b01EYlVkQkd3a1lTR09sWDBmMkVWRUkxSkRRKzl5OC8rM0x4cW1jY1BDcnEr?=
 =?utf-8?Q?iW1iFvU8xoyCjISE=3D?=
X-Exchange-RoutingPolicyChecked: lVFr92tEl5Q+Oo2nVMHoV7zYnRrPEr79vJZ3CTAO4C8URyk7Ga2RmItwOe5HT0x78ERWj0P1hrxbiesEPMRVF0C7DEcMHXtFnegdNwVYgsH/XC69dULyaGXsQ0ll7IFkek50EoM5RFMFSrIWsdiSjSP6kg8NvHtJRsuc8njjnDjxu1rCqSvqCYEdsT2sQNhaN3lxHNB4aWamaAXWFKqKaom4z8Q20YxWKsSntw9qeQgw/Wb37i0F5rZshRtZ3A/xCxEPVr0kqvsbJZWSi1t5jYq6YsLdrq4ApB7ujeC2wksWaq72COq2Pqkd3C+AMEngkA7AgOvJdLlejrSEGfbM7A==
X-MS-Exchange-CrossTenant-Network-Message-Id: e97f6401-996b-473f-a174-08decb807631
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 08:22:54.9306 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XoZLGsVIqMLl5Vx3iqAsndpXrlx3TU2/MhFn6eWqd8TaMZmJtJg68FPm2hCavCG8WG8fE582Er+eJfgq5Z4YC7aGCBmSFQuJgIJ6fW6R1Nw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9321
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5AD6F68D1EC


On 6/16/2026 10:43 AM, Manna, Animesh wrote:
>
>> -----Original Message-----
>> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
>> Sent: Friday, June 12, 2026 9:18 AM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Hogander, Jouni <jouni.hogander@intel.com>; Manna, Animesh
>> <animesh.manna@intel.com>; Nautiyal, Ankit K
>> <ankit.k.nautiyal@intel.com>
>> Subject: [PATCH] drm/i915/alpm: Move the check for PSR and Fixed RR in
>> compute_config_late
>>
>> With optimized guardband, we need to take into account LOBF requirements
>> via intel_alpm_lobf_min_guardband().
>>
>> Currently, we set has_lobf based not only on whether it is supported, but
>> also on whether PSR/fixed RR are ON. Since these features can switch ON and
>> OFF seamlessly, this may cause LOBF to change, resulting in a change in
>> guardband requirements, and eventually to a full modeset.
>>
>> To avoid this, always account for LOBF if it is supported, in the
>> encoder->compute_config() stage. For this, allow has_lobf to be set
>> irrespective of PSR/Fixed RR. Later, in the encoder->compute_config_late()
>> stage, use the PSR/Fixed RR checks to set has_lobf to the final value.
>>
>> Move the PSR/Fixed RR checks from intel_alpm_lobf_compute_config() to
>> intel_alpm_lobf_compute_config_late(), where we already account for other
>> LOBF constraints.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_alpm.c | 12 +++++++-----
>>   1 file changed, 7 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
>> b/drivers/gpu/drm/i915/display/intel_alpm.c
>> index c6963ea420cc..b7cab744d0ea 100644
>> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
>> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
>> @@ -291,6 +291,12 @@ void intel_alpm_lobf_compute_config_late(struct
>> intel_dp *intel_dp,
>>   	if (!crtc_state->has_lobf)
>>   		return;
>>
>> +	if (crtc_state->has_psr)
>> +		return;
> If has_psr is true we need to reset has_lobf otherwise both flags will be true.
>
>> +
>> +	if (!intel_vrr_is_fixed_rr(crtc_state))
>> +		return;
> Same for fixed_rr.

Oh yes you are right. I will correct this and resend.

Thanks,

Ankit

>> +
>>   	if (!intel_alpm_lobf_is_window1_sufficient(crtc_state)) {
>>   		crtc_state->has_lobf = false;
>>   		return;
>> @@ -343,11 +349,7 @@ void intel_alpm_lobf_compute_config(struct
>> intel_dp *intel_dp,
>>   	if (!intel_dp->as_sdp_supported)
>>   		return;
>>
>> -	if (crtc_state->has_psr)
>> -		return;
>> -
>> -	if (!intel_vrr_always_use_vrr_tg(display) ||
>> -	    !intel_vrr_is_fixed_rr(crtc_state))
>> +	if (!intel_vrr_always_use_vrr_tg(display))
>>   		return;
>>
>>   	if (!(intel_alpm_aux_wake_supported(intel_dp) ||
>> --
>> 2.45.2
