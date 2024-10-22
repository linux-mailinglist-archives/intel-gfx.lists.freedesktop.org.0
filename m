Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8DB9A9764
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 06:02:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7A7210E2E8;
	Tue, 22 Oct 2024 04:02:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OeKU0n62";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F245410E21A;
 Tue, 22 Oct 2024 04:02:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729569771; x=1761105771;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4jcDXB2FZjJt8ZEN8BlN3AI/40msO+IDlWo62l6GpiA=;
 b=OeKU0n62Pl42F+XAq0wKEiO6cLGV+iAD9g7qJzgOGFv8nTKIPHXHy8NY
 HHHAtKNlzvxQ1oyVRq90ugontJ8vQEf6nOhBdtaroimB/JYkVpWd+yMM6
 e5DsD4Fo1brQDuFAQ/Wgin7DMK1Yt8toMdk5zg+vnDGbMUa+pxUSEoqic
 U4T7H2/r30HOfSQAQlABnVQO/84QagOI1G2jDlxxoPt5HHS0vpIzx60c3
 GFnMiBLQ+MjI3r2x6Sl2B0HAtyO2j+2CMPZJp31eot611GaQ6XfeSp1AM
 G28Dv4brgcF60PRAzzDyumOWt2OWaKgPQ8Li00VXox+RLho3xR/51N2XP g==;
X-CSE-ConnectionGUID: tuddMaoXQhaIyXMacj/aRw==
X-CSE-MsgGUID: BqJkxEZeQPqhfWUFm+NpzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="29179661"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="29179661"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 21:02:50 -0700
X-CSE-ConnectionGUID: gnJEWXroR/GjRW6JWSConQ==
X-CSE-MsgGUID: 2yVeBKGqTmeTWyWCuVNQJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="83729475"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Oct 2024 21:02:49 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 21 Oct 2024 21:02:48 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 21 Oct 2024 21:02:48 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 21 Oct 2024 21:02:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eRRITmjAUwDRJ7ckYBGnb+H9o6LvpePVA9a/hlM0XqubkBRZqfeymHPE3/lRUSLnnN/zSU3o0bTq9FetB4HXeJbSDWz8XGvmTXaUbXFPLDIMYUdieHFhezQkASQJw5EI9+agOebip0dD5cFj3hn647cooUYHyeogal7/3lvELFc9SjPvJ0w+AI07gggwcEqhNVkVuqgAaG2ADALtEXGENFW3dWXeJp67CEVhB4cEcpKkoR1MN1zeQBK87GNYhRccVQBP4VBYB8CeUxxPHrA9R5DfAMYfgU0sW2frEYhGLr+BrzSHWuqnhM5JfhEjnrrbcmRjmQWzsZ99HrqCzc2K3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BJ1ydot5Rwc69s0e/La6S3p4lUggOPACgGklr0916Lg=;
 b=MNOJ0lcJFhzWTtpnYNKgElzb7xnP8Q+X9Ov3ql5bA6Fgyg2BdmILRkz75eVh9hs5elW3aejlvZuEDRnAa+W7T9NpEMeX9u9HwbKax0EvHpkK65A1kx12SmdKV2PrHlIB39OlPB5oSykoC+u1lrRGWoIqP50c05Ulk4GwyPmvBMskh0mEqAQaIsdP82Z8CoZxK2bylC53bgnUFY+8ApgFb9IhR3pPiPJN38pdu/c1BQX/eZ7JgYVUhMmWlycd8bDNFtF6m3ae1sEzKFR6bLsRKTiCrgTcBJIVhU40wsfi0wwecPm3hFO0KZEVkf8Yur0iwQbYWSxLDrcks37Fap14lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ2PR11MB8567.namprd11.prod.outlook.com (2603:10b6:a03:568::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Tue, 22 Oct
 2024 04:02:45 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8069.027; Tue, 22 Oct 2024
 04:02:45 +0000
Message-ID: <f0cdac3f-7e42-412f-9185-d7ba097e1ead@intel.com>
Date: Tue, 22 Oct 2024 09:32:39 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/16] drm/i915/display: Add macro HAS_PIXEL_REPLICATION
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <suraj.kandpal@intel.com>
References: <20241021123414.3993899-1-ankit.k.nautiyal@intel.com>
 <20241021123414.3993899-9-ankit.k.nautiyal@intel.com>
 <87ttd5y62d.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87ttd5y62d.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0168.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ2PR11MB8567:EE_
X-MS-Office365-Filtering-Correlation-Id: 444e5640-6744-437a-1168-08dcf24e6278
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UDNRWHRkRmxlbW0rU1UzL05pd29yTVpiOTgwZmhweTZwcFdHZW5mNktOK3hX?=
 =?utf-8?B?MmltTmdnUW0wb2ppcytaV3hNc2wrNVhRSlJ5VlhNLzRMR1RrQXRZSkxCcTdw?=
 =?utf-8?B?RWZpSkFsTmtkY21mc2ZCVDQvSTgzWEJad2NkZ283NC9yRUlGKzh3eTZrS1FD?=
 =?utf-8?B?UVlyMTBoWktIWlVjT3JFQVRCNU1PcExVc3pvRDYxampiTzNJTkJYbnVLZUl6?=
 =?utf-8?B?WUpUS1YxNG00ZVZ2cHYzMmY3NWlzb0Rzd1U0cTFRWjVBNnFTWlp4M2RwcDMx?=
 =?utf-8?B?Rkk1cGliYjFjbTF5c21Qd1MrTU1xOU53emlreFkrZkV5VGIzdFI1Qi80L0s2?=
 =?utf-8?B?NXhZRHRvbTV4YWt2Y2tzUjczc1djYnN1RVJQcGl5d3FYM0VocmRJOVU5ZWRk?=
 =?utf-8?B?aFZGSkhQelJqVGJoenkvNytDUUVzU1VpbmpVS1pSbVIvY3BKOFJSTW92L0Y0?=
 =?utf-8?B?WXJjbDJvQno1S1JLZzd1NkF0d0Q4TjdMZUo3YjJ5a00xTk5LbGFIZmtPanQz?=
 =?utf-8?B?V2RGeTNFR1g1WWw0K2YyKzh6UEN0ZmI4YlVPTlV4cHlCNzBCWm1EdVB0eVpJ?=
 =?utf-8?B?cjlvL2tkRVAzL1RwM2NtU2NNSFY1b0tFdW9Qa25qeWxmelZ3ZFlxWlRmYUhB?=
 =?utf-8?B?Yi9VNnRxbVowbTdiM0dkcU52aFd2a3Vya0FUTXJoVFJ1SFNZU1R6bDBNdnlR?=
 =?utf-8?B?TVNWSXRyb3pPMDFZamZseTZWWkFTeGJrM056em1WeFNZUzRFQWpiendUWFY3?=
 =?utf-8?B?ZTNnemFjOU53N0tJdzVNWll1YzkycWQreVNCb056ZEozdjhsTnpzbm5nNEJm?=
 =?utf-8?B?MDJqYkdrZGlnWGs1b2tpSVpaTklRKytTRDhBNElTeUp4SVJDVlozdUtLYzEz?=
 =?utf-8?B?aFRFTFBZNG03MEhOVVFNNmdzS0pGdjVISFBZVGYyc3ZBQnhleU1ZaGxobmdG?=
 =?utf-8?B?Njc2aUVyWG1BNHArL1ZFbUpnR2VTNXRFVDVQbVY1VGxNYnFYN09CSWEzT3BB?=
 =?utf-8?B?ZFNORUtHWlp2aFR3cmZvRmNnTmZWU0hoOGl5Ulp3WkV4blRGR01FUFA5UnIz?=
 =?utf-8?B?dk41VnVOWjF3SXZPZ1d6cUtkaDhTOExuK09UdTVUYXRrRWJlV1FEbHd4RStj?=
 =?utf-8?B?QjBDQU9SR0NHOEZuZ1g3aDgveDJmQmQ3dTliSjBpc3cvMGl5T3V5R2JWaFFB?=
 =?utf-8?B?YkxOaERGUkVJQXBxNU1LTzJLdlFHNTJpMW1MQkRXblVXR01OMk40SzNhTFdq?=
 =?utf-8?B?UXNLQ3lZSEd0TUJkSjJ3emFsQlRmeHdnd09PNGtvd2JkTmpKYzc4cytXQUF3?=
 =?utf-8?B?SjZLb2RZVVd5V2hENkt5ODZYbEt3ZUswYmFWZ1VINmhtVTRCbERhbm1vZ1Bq?=
 =?utf-8?B?TkNLclZxQmY4THRPNCtOQmJvTGk5dFR1dUQ5TzY5bGdqdnpnMVNtS255OVZO?=
 =?utf-8?B?TW9NZk82THB3cm9tSHB3cjFLZisyWXlZT0NEeUxKK1EyZnJPTUlIMm9Odk16?=
 =?utf-8?B?L3F0R2dxd2RqREFWbWphNFpqZDYvNjZQSGJqTjhvbXd5VWEyTyszUmpBQmdi?=
 =?utf-8?B?aXhGVS85bUpGeWpYb21aVmpwUDJpU0NKd1JkeGVzUzJVcU5BS3I5dVJEY25m?=
 =?utf-8?B?TlliZ2VsQWdZeWx2NlBLV2h5eFlJbmhNZ0t5U0lWcWkwajE0ekVWNytyWnBl?=
 =?utf-8?B?WDVlSVhKWFAvbTFJWXhud1BTc2ZYMWVRRXhmeUwrZHR3Z3hQaVNmQ1hEV1lm?=
 =?utf-8?Q?QC/cGVb+rCSCGO1lBbPWc3E7tgOf4T0O/9yhbv9?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TXgxR0xPOVo0U2NxOC90WGNVQmsrTmFQUE5FOGRmMURaZlNCdjN4L2VnZ2Mx?=
 =?utf-8?B?U0Z0cUxpWWtaOS9HN3hsY3RzK1djUi9zRVdydTdVb0JXQ0NQZ2lCZ1pmanNk?=
 =?utf-8?B?T3FHNloxTThKUTl4KzJzR1dTY0d4WTN1bU9XbmhFd2hOQmkrYUZFRkVlRFBB?=
 =?utf-8?B?OEhiaDl4bVF0NWpra1B3Ky9ZMDYzdUFNTm50czZ6RzRpTkkrK1RmUlQxYUVD?=
 =?utf-8?B?KytjZ3NaTWZmQ1ZhNXV3WWJKMmwyWU1IaEZENWFILzQwV2tmS3VaNnpjTVF2?=
 =?utf-8?B?VnhCdUtTNHNYSi9wZkt0UDBFMHRZMGZpTzVVdHlpbCt3cDJTM1h1WnVJSUZ1?=
 =?utf-8?B?R3N5L1N4NjBZNlpXdEhUZ1N2Nzk3RExKVDRhOTh2NDdNQzh0ZEtlVlBHazVi?=
 =?utf-8?B?cHVEaFU3MGFrR0xzQ3UwNDl6ak1sNWRlRE5BdUpmRDNNbU1mQTEvL2JpcXpU?=
 =?utf-8?B?NUJwdkY1djVPTmxROVM2Y3VIZ3lIdjQ5dGpFNlI0aFFsanloaTRNSTFWYnBu?=
 =?utf-8?B?aGJpVWE2NGhXSzVzR0RzTFNCSEZ4YUllMkRWeGxBdlN6dXgxM2ZKcUpqSWtY?=
 =?utf-8?B?MWVLdmpDd1pjNThFYUMzcERPTU9NNHdaQjNLYVJtcUpMTzRJUXdMUHQwTUJm?=
 =?utf-8?B?KzR5RE5zWlJ4WVhBNWdZMDNEcUt2YktHOTRnWE92UVZuYTdyd1BJQ25VNFlS?=
 =?utf-8?B?SVpMSjVUbUx2elUzVnJtendQaTNNUG9PZlFNT0RjRFQyQ3RHWG0xTmNuU1Zw?=
 =?utf-8?B?V0JzMzJ6OXd0b2J2WGpCdlY1bFE1WU9UdWJoUVRybkp0a2tiZ0l2aGhRdlNw?=
 =?utf-8?B?aFNMYzJUMlZRZGlSajF6NGJ4c3lyOUVDSkJiSnV3NDhQV3ZBRTlYRmxSUjFV?=
 =?utf-8?B?YW8rVjVYMHNTT0NZem1SQ09MeHVwVy9JMXEzN2R3cVpETGdBdU1HYXdUMWk0?=
 =?utf-8?B?NEJDd2FtSkNKaVJBLzVVcmJPc3hwM3EzaElxczhsSzBhSGVwdHdJdXRmaEd2?=
 =?utf-8?B?UDk0dHZLZ0tNRjQwLzRDMEpFUzYzRFkzQk5DWkNjeFh1aEVKYU1wMnFZd1FB?=
 =?utf-8?B?UVhOWFlwN0JBOUhuQ3llU1EvcHdZMnBUcmJoZmg2bDZTVGVseWFxUmViSVE2?=
 =?utf-8?B?ckxNRGpncEtGeGNKdm5KN1BVclBXV1pDd1hrTGhoK2E5MURwMXg1M29SNFBa?=
 =?utf-8?B?blRYN0w3eG9wamNFUjhMUUFJMzJHWTRBT1NTQ1NPVzREeWloQk52VURjRGVz?=
 =?utf-8?B?bTBULzM3WGJzSmJiM3VuVUpvQXdzUkNCZTRsZmYvOEpDWmROL25SZlZIdHgx?=
 =?utf-8?B?YU9PZThsZ3lFaUl4R3ZCUkdLWlJXRUpGM1RjRlV6SGdKQ2hiR2hPb01SZkhv?=
 =?utf-8?B?NW1WZDJVcGZRYWdaMGJFK3Zhcll1NlgwQ0xXWXlxSFpuMzcrcVZwWTF2enEz?=
 =?utf-8?B?dzlReHZnblNPcnFXdzhUT2ZMcFowRUVoZ1VFbll5bWZQQ3BOZmhjaDJSWTJD?=
 =?utf-8?B?R1JCWHZhZVJiMVg5aTBPTTllc2tyVUlXV1dWQVAwMlk2KzQ5UHQ3ajBlTzh5?=
 =?utf-8?B?TzhodHlZa2lQaDdnUDhKNVZLRk10MzRvSGdRNTlmR3NkdmdoRGtpelhTajZm?=
 =?utf-8?B?dHVldzJLZGxYWURKN0Qrcmk0YnlaNWxZY1F4QW1qZnZWUzdycXJ0QjVPL3ZJ?=
 =?utf-8?B?dkgvVVpJRXB6TVpyeXh2M2JhOVNXSlRSK2ZacGszd0dXbXBmZDZLV3VteWhZ?=
 =?utf-8?B?QWFmWXoxemYwejdvNUN0eDR5Njdiem5oazRFSUxqVTdFQXJnbWI4RDliWDJq?=
 =?utf-8?B?R3RHYVpkZjB5TStmcjFjZ243Y0RGdlorRC9zMFRjajc2L2FRZDUvMGJGdlpD?=
 =?utf-8?B?NTBKSklUenI5SS9jU2NtYXNhUjVrbDltMFJZNGlUSWhXblZnOFM3T1BOL0M3?=
 =?utf-8?B?NmEwWHJLbzJLTVFucW9WUVZ5QWhSakszdDduY05tR2hIdHJLbG5KVWxoWHFO?=
 =?utf-8?B?NEVSakcySi9qendQVDBZRGVGb3FwdjRncFpST1UzeWtFNzBPNUdHMUFKTkpI?=
 =?utf-8?B?SU92V1A1amI2dU1MOWpWU0ZycS9tRUUzck1IbmRvVTRRZlZUV0NVa0J0MzRY?=
 =?utf-8?B?N25VQ2F6ZWR1NjJ1dUVLSW9jLytzemlGMWNkQitWcDFwMEx0VXM3Sy80ajRT?=
 =?utf-8?B?L3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 444e5640-6744-437a-1168-08dcf24e6278
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 04:02:45.6478 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 28xUhMarUMz8hf2NhYkBuJvjzjSr2rUggYiyosWLDqyN/IOM5rVqROE26HM32QmUs8aKnh9r55WaMw4W/2Z5oshNgwo/vXf9hdoX+r04Sbc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8567
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


On 10/21/2024 6:19 PM, Jani Nikula wrote:
> On Mon, 21 Oct 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Add macro for Pixel replication support with DSC.
> Add blank line here.
>
>> Bspec: 49259, 68912.
>>
> Remove blank line here.

Noted will have Bspec as first line of the trailer.

Regards,

Ankit

>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_device.h | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>> index 071a36b51f79..a21b910879df 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -149,6 +149,9 @@ enum intel_display_subplatform {
>>   #define HAS_MBUS_JOINING(i915)		(IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)
>>   #define HAS_MSO(i915)			(DISPLAY_VER(i915) >= 12)
>>   #define HAS_OVERLAY(i915)		(DISPLAY_INFO(i915)->has_overlay)
>> +#define HAS_PIXEL_REPLICATION(i915)	(HAS_DSC(i915) && \
>> +					 (DISPLAY_VER(i915) >= 20 || \
>> +					  DISPLAY_VER_FULL(i915) == IP_VER(14, 1)))
>>   #define HAS_PSR(i915)			(DISPLAY_INFO(i915)->has_psr)
>>   #define HAS_PSR_HW_TRACKING(i915)	(DISPLAY_INFO(i915)->has_psr_hw_tracking)
>>   #define HAS_PSR2_SEL_FETCH(i915)	(DISPLAY_VER(i915) >= 12)
