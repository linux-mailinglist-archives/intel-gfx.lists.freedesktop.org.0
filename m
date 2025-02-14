Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90549A35DCD
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 13:42:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28C7710E2F6;
	Fri, 14 Feb 2025 12:42:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CibZ7Pml";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86E4F10E2C8;
 Fri, 14 Feb 2025 12:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739536969; x=1771072969;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/S0XUGhCm+45KvV4xPMQr66dSp8b8p9bgJVQB6vW3do=;
 b=CibZ7Pmlx2pPeJcpOIkebo7oHnKLG4HALr/IppIHPmuSebbE8nZqlkFI
 q9yI4vAEMkvujZwX8dxhATYRd2ylRZcZBQTyEquJkxvDEecMtnWqmPyQy
 sXvstssgHgQFtJOWII+m5q25Rob8luuzLdyxHtFbr0SQMGNMH+OSKvhcG
 WuGerIgKdo0Qoi95qyc+35rApLO+JeVliBG4RG2LeC9BoNEomom5iL/J5
 6foMIF5BSX7vF43G/JHFFWGmA7dTxvJ40iydYE28e5mGARo9ueiCz3QKT
 6ns6O60wrb+WWKV4wxOjxz7ZepVEqYrn1q6zFSSVQ2PvUUfLhLHTLVTKM w==;
X-CSE-ConnectionGUID: 6TzuU25/RRC5SzB4ttNdqw==
X-CSE-MsgGUID: H8zqkbYJTsyxFI0S5xkC+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="65635822"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="65635822"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:42:49 -0800
X-CSE-ConnectionGUID: uJFiYAXgT3yjFC9IPygxPQ==
X-CSE-MsgGUID: UheoKW55So6ARcifs4xJfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="144299993"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:42:49 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 14 Feb 2025 04:42:48 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Feb 2025 04:42:48 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Feb 2025 04:42:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=si2wnt2LE4kKnZzA0i7+B2L1tAj9h3ulh90kF58sW6c1l8pvlJNckUQFO7piaJ3PNMMeuAEYFMHSylPxR30PZFwtyJX5SjhZ+/V/MhtPGUjjd2pAUO3cwEI411ZS2VmvQX2kq1yK6LQU0Ia44G4MRAvTjGXvJADGH2F6UFL3jNzzkoG8q6sqUC6oM0ARM5f+DCwNJ5ZeR0Xu7dgsKR7KQSma8UiqVAqBL2CPkt9728eeyd4qSEnvm//H6Oz5UNYx+NkAvGzGzgTrV6MnLqYTkfVKx5wka4caz58LZGJ4BmuFm2OAJkeaGl02Lt3cRlV+haRZhMVCsKt3g9Yfp8jBRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wqWWHUOeXUGCAuZ1s87xh6n6pO2pzkOS6+670Lsmqso=;
 b=Sq7pK3vSkGjFhg/QUUBV8Wm5CMTKzzNBOzW9mJ8eHK2EGjgGinotNBkP3ChFeeqTwmTbE/p9y6HAJ4w9kF2UHlMqtmgWzFcUe/GUsWGdt6U0xZLSIunD/I9SOZzpIWi2SAYPu7vyPnzP6hWytyFtaMoLov1eG7zEFj113hjeijl3kwcaM47cu1QxEqd1Uo0zoKvBstb28oIJPjmtjX5SPW9ENqkHcKzEolZQzjrPhRn5pFWt0Jf3DGBZQH1N24lbqvlSsWMb0tZfCQ8zVFmRa9UikTgxz5lCB0bcu97KQraoQOCnMvd+3uXHe37wiRQecK75jxZpwvEz0VCrbfCn1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB7752.namprd11.prod.outlook.com (2603:10b6:208:442::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.13; Fri, 14 Feb
 2025 12:42:45 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8445.013; Fri, 14 Feb 2025
 12:42:45 +0000
Message-ID: <dbf161ec-1aa4-43a9-a732-231ff1f7659f@intel.com>
Date: Fri, 14 Feb 2025 18:12:39 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/hdcp: Create force_hdcp14 debug fs entry
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <santhosh.reddy.guddati@intel.com>, <jani.nikula@intel.com>
References: <20250213082541.3772212-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250213082541.3772212-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0P287CA0014.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB7752:EE_
X-MS-Office365-Filtering-Correlation-Id: 58cbf216-1290-45a7-70ac-08dd4cf514a8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y1dLbnNRQndKNXlIdkYveEl5MytXS2tVTFJNUGNjVUhleG5uOXZXS1ZyMGVN?=
 =?utf-8?B?WEFKL2NWTFIzQXNrdlBnai9wRHJJU2VFOURzV09uZWZ3dzdvbUVObmFNTHUx?=
 =?utf-8?B?TCtldU9kQlFoM05qcnNQMGRqa0QyMDJJYVZUYUdMaUZIcEtRTVRhVVczTk54?=
 =?utf-8?B?NTZob2JITFVrVmxXN0ltZUw5Vzlqa1E5ZW9VOXlaUVF1VGRhMklZRWdaWkVz?=
 =?utf-8?B?bFduRTd6bGNVbU1uQjMzSTRMNi91Q1luOXJha3d6V3ZLcUdORVhFNkhJcXRx?=
 =?utf-8?B?VWtXbUhqTDNQTVpxQVpCTDFuQ1hFMkFTQW9EdUpiZVZzbFZFb1lPMjRpQUdJ?=
 =?utf-8?B?N01Mb2VHTFNpb2NFcVNsNlFaVFZxaGM1cHBTVlc0aEVpY2NTYWtnWmFOZ25q?=
 =?utf-8?B?azJETkk1aXVwZHprMEJtd25QaVIwY1lkYWhnYzVqdDVwU0dDNC9TNHpaKzh3?=
 =?utf-8?B?Tko1WmJ5bWcwUDlvS3pUcm96eTNNSVFYd2JQS28zSnhYNjI3NmRKVlFaSnN4?=
 =?utf-8?B?VW9RdFBkOGF5NVEwNXcwVi9FaWx3MzJlYXBCZ1pDNUVtRk9oYi9PV0pYdVFk?=
 =?utf-8?B?NjBOK3M3ZFl5eEZDZElSSUVoOTB5VUROdVZvaUsvS25jZnFoL2g5SEFFQ05Q?=
 =?utf-8?B?S3gvdFhCSkZrNmpmWjBrUFRZV0QrMjRVamRSRGNXUXRkMCs2YjZlWEJEKzhO?=
 =?utf-8?B?RGZ6SlpDR1RyOFd3YWJTZGJOc1NHNUFzV3NUblNjdDlNQ1ovN1YzcnhiYXB3?=
 =?utf-8?B?L0licXhMenZERlhPZ3d0a1FldU1PZDdCRnhhMXlMOXVwY0wvdTRCREkxamNE?=
 =?utf-8?B?K3RLTnhTMGxRTExDYWJWcGtDSlM2Zmk0TmRIdzJOWXBsT3dHbnVPMjhoV21I?=
 =?utf-8?B?QVhzUk5VUERXYjlWK0dBb0dOdDJmZjNLYjFtUVdBVjgzaVZEYTRSWmZabnNz?=
 =?utf-8?B?eXNpNXhSa0kvc29wcUJhd09hQ2pyQWRNMUlwcjdBMm1yMTMyc0RLMEZ1NkE4?=
 =?utf-8?B?NVRHSnZnSWVOS0FsM0p2SnJWQjliTjY5YktSV1dVRHpNN0Zjd2VrdUdJTlVq?=
 =?utf-8?B?Njdib09mY2tHQVc2QUdMTllyVlZwWkpMVnJZZGorU2RBUWxZSHFGVXJ1SUMz?=
 =?utf-8?B?WC9Mdk80UkdwM2NjblYrUWpPM2FiUFV2bFV1OTB1UDJPeWhheG43Y2hORlA2?=
 =?utf-8?B?bGtOak1paTlBekJFLy9FWTUzV0Iyd1N1dktCbHJzem1oV0w0djlpeWJoYWU5?=
 =?utf-8?B?cmZXUFlzY3hUUFhDYW9rcGZITFhxeDBSdmFtRGVpbnhIWEI1NXFTZkdUeXlN?=
 =?utf-8?B?TVhUU3Bqclc1dEpqeGdNUkh5eTBBanpwWk5JUVBQcGJsN0VuNm53UGNJSjZ5?=
 =?utf-8?B?NG5UL25YOWRVbjhXZ2EyZXc0a3MwQ3pSeFNTTjNiZVgyQ3FTUCs3ZFhqSzZl?=
 =?utf-8?B?TUZwcS9rRFBmcmRJLzk4SjllakFjaTk1UjI5bDVVekJXa3NEY21uQ0ZQMXdq?=
 =?utf-8?B?Zngyb3QveUZTMGttZGNTL1dWM0pkaEhBQy9hNFJrTVdrNGlUYnZEQnNpU3lE?=
 =?utf-8?B?QXFKbE1Ya1R6Mi9pNFByU2tNMitUUmE3UWEvdlVUOW9QTVd2VFFKcXdjdHlu?=
 =?utf-8?B?VC9PUy9LTUZ6V3RwcEN2eVZHK3krYnBrMXN5WGJKZ2NFdjNRd3M1dHQvWll5?=
 =?utf-8?B?MUhmMjh0U1JrSWJOQWJHQzh4KzMrSmFDQllRakkveVQwUEsxVVljRy81RklV?=
 =?utf-8?B?cWhrVTNwRlErdnM3K2hYRmtJZEpDZmJCb2NiNml2S01veCttcUlRTVhiTVZu?=
 =?utf-8?B?OXl3SUVaVlM1Q2p2cnRQdlBJdXlobGFLMjZNek9wVXBkRUNtN25mdnVweEEr?=
 =?utf-8?Q?dgwP4oXaUzb9M?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bUY4RE1wcDlEQkJvRlJiQ2p0T0NRZXB1bmVGRXVWSHlMK09LamVoVmdOY0Yr?=
 =?utf-8?B?UEVVWXZwWk1DdndVM2VLRUZCcThFU0ZNUndKdjhzWENHNCtlZnZ4Qm92WGtT?=
 =?utf-8?B?QU8vZGZxb1hiT0Q3dnJjRGUvekFMOG5kS0JBVDV6eTk5WCtXcmxFM1JlY0RC?=
 =?utf-8?B?MDVhWDJIVkZ2UkpGZ3dwOUZMaW9lcm5tR1BWRmpBeE5Ha2V4NUZydlRRb252?=
 =?utf-8?B?dzc5a1RaRWpvOWk5WEoyNzdQTWY3SWRza0FnTHdyM0RLRG1hR3cxUXR3VVpM?=
 =?utf-8?B?a0J1T2NleHFLaGVHZ2Q5TVh3RFk3YkVwWlpJNmVqcmhTTmdwV1RtTjlLUDJo?=
 =?utf-8?B?WjdsSlByM1U0bjZIT3Z6ZTc4bnpTNDlha2FvVit3Tm80eSsvdU4yYjd5TFFZ?=
 =?utf-8?B?NVdISjZaWG1kWkxDZVZGZmZPQy9UOXpkaUtiMDRNZ1hnQjB0aVI3VFpMY2g3?=
 =?utf-8?B?KzhXT3JJMzN3aWprYzhiOGExTjBUYUV0YkUxK1VXQVNiNnA2RGpUbkFnVjVK?=
 =?utf-8?B?U2kyNEpNRmJjWG1QdFUrL3psMVpmTzFaNFZDdHRxb0VGMmJLOWhYYU9lZnBv?=
 =?utf-8?B?YnE3ZzlrT3dtMTBuOW1hVW1oYzczTWovb1FJZmpIZmlMSjFxbmVaUTlaMVJi?=
 =?utf-8?B?VlZ1QUw0b25SL0pSeWJuUmhielg3ZWZzY3NtL29ZYktHTWlHeS9zdGdIQU9W?=
 =?utf-8?B?S2VQRTdMZFMzYytkWHFTVXBHQlZNNnNFMHBySlY4eFJ6N0FIaEVlMXo4S0ds?=
 =?utf-8?B?TjRFNUtsWENFTVNSMlNZRnpHMExrY29GcjJrZGo3QjVPWTY5Wlhud2RxaFhr?=
 =?utf-8?B?VFBGZzZ2UkJZUWpKQTRyWldoOC9BR0E4MHp5Q291YlQzaXplUGtJYU1PblNt?=
 =?utf-8?B?NmsvWU1hVkRUNHdIeXJzWURibXpDVitoclEyeTBwRXB4cVVScTlwb25Na2M5?=
 =?utf-8?B?VW9oRXVLc2tpZWREanVodUNESjBTN0tqNHZ6YWVuMkNyMGVPbFN1NjJ4OGpv?=
 =?utf-8?B?VEZPRDZDSGMxK3pSNWFEUXRoNExvb0hEVTY5bWlJSEcvRjc4QjBkWXExUHE1?=
 =?utf-8?B?V3dmZGM4WEJ4RlNjMjhBY2UxN0NlTXhHL3dndFQ4Y1BxNTVjeXBrMUlHU2Zj?=
 =?utf-8?B?ME1BeTRCUjFxUFVmWkVIZ3R5cm9ZR2U5RDlXaGhvd3BTcXZUMW81d0VUVDNZ?=
 =?utf-8?B?Z2JEdHdRSjY2Q1FuLzZFMk9RcFVEZ0M0UTlhejhvSWtzeGNSRXovRStHSTgx?=
 =?utf-8?B?NUZsalVsV00weVRtV1BWalplalp2K3IxNnhiS1pkak1BZGJYaEdNQ3pYT2ZQ?=
 =?utf-8?B?NGE5TE41eTlwRU9QRFNWbnRRQlYwajZaRDFEd0dVS0x1c0xDOXVwakVVNVdh?=
 =?utf-8?B?TUlIbUxZRDJ3T3ZOZ2ZJcVlxaEFJTjRoVkE5NTFnNFRJdXNzQmRYVSswSEx2?=
 =?utf-8?B?aWpPU05oZzQzSHZhNHZwZkZ5VnFqNytkR2twZXdoenFWbzE2bFg2SmRMOERC?=
 =?utf-8?B?RFp5cWdnZlJKenBnNXNSb1dwTmVocnRRcmFDUGFqYU5XdFdPVW91WUx2eVlx?=
 =?utf-8?B?N3IwVVk4WExIUSsxUmpTclBTRUtaTDVpZkpFeVFSWjlqZUVNeFpVc1RGaysv?=
 =?utf-8?B?Risxb01jUGtGV3ErQWhMM1ZjWDlpUGE5cEkvTitqZmQ3dkVQNWp1KzRvSlMy?=
 =?utf-8?B?Mis5MkpaWitMUisyOVBxQ1RuYVVteFFxRlA2R0pZQW5LTVdvbjcyTzZCY1BW?=
 =?utf-8?B?eEQ5bHlHY2JncG1mYTBLYU9venZLcFdqSU1mZzY3L1grRTM0L3QwbjZ5eDFI?=
 =?utf-8?B?aUR0QnVOQ296c0VtMEdoUFJ2bTVKbmdZSGR3aXhPcTVLSWtaYmtHbjdyYUx0?=
 =?utf-8?B?VEFMazQyS2QyL0thMGtHV0ZiU3hVRHhmdzlGNXB5N3BEVUl0M3l4eEovTlRN?=
 =?utf-8?B?SkFYdnB1TWgzK01QMktCT1dLOHhXaGVqL2ptTCt1T29vUDR4R29MTDd4QWZT?=
 =?utf-8?B?Snk4WGovMlVJOVRrNEZJVW1OZFFhQUlGTk1qTkZCM0lxRG1rTnNFNTlBL254?=
 =?utf-8?B?RWZjdm5XS2xDQzloZWFzSUxCVGZnUm1pcVlyVVZORXFISzFRWTFrTW1ZL0V6?=
 =?utf-8?B?RHd5YUV2cmxxVHZXS1VackRVcm1BakNVc1pDZ0VmOEwzMUtpZ3hvd2Y2Yndv?=
 =?utf-8?B?c0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 58cbf216-1290-45a7-70ac-08dd4cf514a8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2025 12:42:45.7177 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f3EMTzDfEuOTYr9NsbspoSouwj3GsitBe73buMvsK5pmCWKqfIQ/5gXiWYoSHYZrZeF1sGa5/q0ZoOXaGFTbpmYzU0GDE9WoPrHhbFA6ee8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7752
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


On 2/13/2025 1:55 PM, Suraj Kandpal wrote:
> Testing HDCP 1.4 becomes tough since the only way our code comes to
> HDCP 1.4 pathway is if the monitor only supports HDCP 1.4 which
> becomes tough to find sometimes.
> Setting this debug_fs entry will force use to use the HDCP 1.4 path
> so that more robust HDCP 1.4 testing can take place.
>
> --v2
> -Move the code to intel_hdcp.c [Jani]
> -Remove useless debug logging [Jani]
> -Remove Force_HDCP from the debug file [Jani]
>
> --v3
> -Remove leftover debug loggings [Jani]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   .../drm/i915/display/intel_display_types.h    |  2 +
>   drivers/gpu/drm/i915/display/intel_hdcp.c     | 75 ++++++++++++++++++-
>   2 files changed, 76 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 6a82c6ade549..c78dd77ef74c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -496,6 +496,8 @@ struct intel_hdcp {
>   	enum transcoder cpu_transcoder;
>   	/* Only used for DP MST stream encryption */
>   	enum transcoder stream_transcoder;
> +	/* Used to force HDCP 1.4 bypassing HDCP 2.x */
> +	bool force_hdcp14;
>   };
>   
>   struct intel_connector {
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 1aa4c0fd216f..0e663e0e72bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2472,13 +2472,16 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
>   	 * Considering that HDCP2.2 is more secure than HDCP1.4, If the setup
>   	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
>   	 */
> -	if (intel_hdcp2_get_capability(connector)) {
> +	if (!hdcp->force_hdcp14 && intel_hdcp2_get_capability(connector)) {
>   		ret = _intel_hdcp2_enable(state, connector);
>   		if (!ret)
>   			check_link_interval =
>   				DRM_HDCP2_CHECK_PERIOD_MS;
>   	}
>   
> +	if (hdcp->force_hdcp14)
> +		drm_dbg_kms(display->drm, "Forcing HDCP 1.4\n");
> +
>   	/*
>   	 * When HDCP2.2 fails and Content Type is not Type1, HDCP1.4 will
>   	 * be attempted.
> @@ -2797,6 +2800,74 @@ static int intel_hdcp_sink_capability_show(struct seq_file *m, void *data)
>   }
>   DEFINE_SHOW_ATTRIBUTE(intel_hdcp_sink_capability);
>   
> +static ssize_t intel_hdcp_force_14_write(struct file *file,
> +					 const char __user *ubuf,
> +					 size_t len, loff_t *offp)
> +{
> +	struct seq_file *m = file->private_data;
> +	struct intel_connector *connector = m->private;
> +	struct intel_hdcp *hdcp = &connector->hdcp;
> +	bool force_hdcp14 = false;
> +	int ret;
> +
> +	if (len == 0)
> +		return 0;
> +
> +	ret = kstrtobool_from_user(ubuf, len, &force_hdcp14);
> +	if (ret < 0)
> +		return ret;
> +
> +	hdcp->force_hdcp14 = force_hdcp14;
> +
> +	*offp += len;

I think you missed to add blank line, as suggested by Jani.


> +	return len;
> +}
> +
> +static int intel_hdcp_force_14_show(struct seq_file *m, void *data)
> +{
> +	struct intel_connector *connector = m->private;
> +	struct intel_display *display = to_intel_display(connector);
> +	struct intel_encoder *encoder = intel_attached_encoder(connector);
> +	struct intel_hdcp *hdcp = &connector->hdcp;
> +	struct drm_crtc *crtc;
> +	int ret;
> +
> +	if (!encoder)
> +		return -ENODEV;
> +
> +	ret = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
> +	if (ret)
> +		return ret;
> +
> +	crtc = connector->base.state->crtc;
> +	if (connector->base.status != connector_status_connected || !crtc) {
> +		ret = -ENODEV;
> +		goto out;
> +	}
> +
> +	seq_printf(m, "%s\n",
> +		   str_yes_no(hdcp->force_hdcp14));
> +out:
> +	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);

Ditto.


Apart from styling issues above, patch looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> +	return ret;
> +}
> +
> +static int intel_hdcp_force_14_open(struct inode *inode,
> +				    struct file *file)
> +{
> +	return single_open(file, intel_hdcp_force_14_show,
> +			   inode->i_private);
> +}
> +
> +static const struct file_operations intel_hdcp_force_14_fops = {
> +	.owner = THIS_MODULE,
> +	.open = intel_hdcp_force_14_open,
> +	.read = seq_read,
> +	.llseek = seq_lseek,
> +	.release = single_release,
> +	.write = intel_hdcp_force_14_write
> +};
> +
>   void intel_hdcp_connector_debugfs_add(struct intel_connector *connector)
>   {
>   	struct dentry *root = connector->base.debugfs_entry;
> @@ -2807,5 +2878,7 @@ void intel_hdcp_connector_debugfs_add(struct intel_connector *connector)
>   	    connector_type == DRM_MODE_CONNECTOR_HDMIB) {
>   		debugfs_create_file("i915_hdcp_sink_capability", 0444, root,
>   				    connector, &intel_hdcp_sink_capability_fops);
> +		debugfs_create_file("i915_force_hdcp14", 0644, root,
> +				    connector, &intel_hdcp_force_14_fops);
>   	}
>   }
