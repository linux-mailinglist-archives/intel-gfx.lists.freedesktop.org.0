Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B2CA6D62E
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 09:31:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F2D610E226;
	Mon, 24 Mar 2025 08:31:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dvUhXdpW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5F3910E1A0;
 Mon, 24 Mar 2025 08:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742805071; x=1774341071;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kWU0ikD2iWwmMTGj7piu9DLdha8Fnh1Z63WkWjbY2Kg=;
 b=dvUhXdpWW/wtXTYxq2NNv8mcb7bPBHg2VHB83WVKEi7iSuTcokT7ms2M
 amdR3p+XFePJL1T1qWIlOitk384sb35in9pAiPwCabB7/PJrmSedC2dm0
 v7QhE8g2I6M7r6sUhTWd53olRELise0GIiADFSGoh0BkhLI2UO5KIA8VZ
 9xnhETlcu1kiJdtecWQZuklDBrRpPMidUUpQqFVwgO498jLbdgRO1RUKt
 YJYBj/NmKVmvXZ7YcVZltKZ22XOcfLWVO+h+Kg1JcQ7XQQTl1aBoGFodg
 Tl+PFHBpiMUqfd0SyqDi7/uJJ5mcylknAQWZWm6V8hMIey/WV6s9TYgoD A==;
X-CSE-ConnectionGUID: PNC16AssT4CLg9aQxx+w+g==
X-CSE-MsgGUID: hwl02MJWTMSZHwsfFd3sqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11382"; a="61391385"
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="61391385"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 01:31:11 -0700
X-CSE-ConnectionGUID: RzKy8kyvSmKJFOLDQS2QdA==
X-CSE-MsgGUID: WF/xQrm8RL237OFtK68UmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="154877179"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 01:31:10 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Mon, 24 Mar 2025 01:31:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 24 Mar 2025 01:31:10 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 01:31:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pp7heyj+AJl1lRe3HOiuLkR3LmdOP8CQC4z8WMSOahlgUYKGNFuSGYiBDIxg98v3BC5q0dClNnlokG1P/rNjfoGz7QRCHragRlwqP8nD7Y4rpdBBG3f4tZ29uKz6/ro99sJNHfSYaSL9BdWaJX3TQFBwKTGJQv6aa3/Cqmv35cJpfqPCh/zl8V+1JTUPIHdD3AVLicvfiCAr22a2S6jXNs/p2jupfrfMgwj2Jn/q7U6g4uC5SOH8wE9vl6w9bjgqBVp5s5gh2fU+dAWSixCVQLysza00QmHaBHAehycla2UqocDn96wDNK4GrL8bNcFlAKw57kOdLIVSstnFmBLwpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=id7NPPXLiqME5DS/Ezw/arSacXcIorlV/ZZlDDEYjDw=;
 b=CVEwpgxTlqm35HZOcCtPGd/dFdhbt1iH2PhuPTQr2kLLxEYekpuNVhTFRHcjA5/5z7FCwkqeRvbA9volgEIVtviltkg+50nEZrICH90ASpcV48B9Sfbt+GBb+I+0shKU+H/PJzfzxYIA2zHi2bqvxOcU4m3eJd1RxMbvptzhFjzhqVqnH+pP+i50p4JADK7laGVOO/o797XvDQk/WZQQnZjj4ByOcTTi4Jagun+aFX78S7OU2FC60pUMI2G6mrXqTgopQ33z+BbX9x063dM8z7Mw71WFnHE4Ehxsjrl3Bo54AZi5xxbP/7I1J2SkjgLX36Wpp4pWPl85eqaPzISI4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB7448.namprd11.prod.outlook.com (2603:10b6:510:26c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Mon, 24 Mar
 2025 08:30:39 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8511.026; Mon, 24 Mar 2025
 08:30:39 +0000
Message-ID: <67891807-51ff-4b31-abe3-862dcd5e8f2b@intel.com>
Date: Mon, 24 Mar 2025 14:00:32 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND 0/2] Fix vrr.enable handling and add logging for fixed_rr
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <jani.nikula@linux.intel.com>,
 <ville.syrjala@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250322044345.3827137-1-ankit.k.nautiyal@intel.com>
Content-Language: en-US
In-Reply-To: <20250322044345.3827137-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0P287CA0013.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB7448:EE_
X-MS-Office365-Filtering-Correlation-Id: 33663f82-2555-4b0e-5a81-08dd6aae2867
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WkxIU1lGNWlFWGdnL1dXVHUvR25TS2tnWWtrZlFJMk5TMTJqVzBVWVZ4NThD?=
 =?utf-8?B?WXhXOTg0MlVpY2ZtUUtwTGcwdERiVTNUSXB4bkxQd3lxZ0YwbDZiVmp6em9q?=
 =?utf-8?B?czhxMm83WUNMYzV5aTVYalk2dkNiNlpjMmpHZDkwYWdTcjJPVE1Sbkk5U0RR?=
 =?utf-8?B?NzR6MmY4cmVZY1JTdXdsajdURVNQRjE3QmcweUp3M0x3U0F1dlovM243ZUR1?=
 =?utf-8?B?cGN5cG83ekFYOUM1RlBpUXdKRGRubGFOTzhFbTlna05sV0xMM0Juem1vMGhY?=
 =?utf-8?B?cVhZaUszcENwRWtmb1gxTUNRaWpjZkZQSTVaOWowTzFydWNpMUVnNDM5ZWxt?=
 =?utf-8?B?YTVXZGlJaThsa1d4U1FtclQ0c3NyekFVSUJ2WW1XaEUxZHJuU0FyVkpoTEsv?=
 =?utf-8?B?ZmxKdHNZSEFUaU9sZ0MrMlV3TXNGZ1N2bnlMV0kyS2NZQVJ3VFFtZDJ2K3Rr?=
 =?utf-8?B?OWN4RFVJNGxuUFlFampkVmwwR2xSdk0zeVc3WGtmL3NHRk4rNWd1dXVyUWsx?=
 =?utf-8?B?ZkV2cTJkQ3Q1dmd2OUpOd1dIaFVycmRsbk5pdW9kbXVnR1FVMzJoa0pXeGF4?=
 =?utf-8?B?UjFQcGoyNVdJaGw4U0ppY1J6R2hFeFlJYlVvL0t2R0RHeGNJTUptRUxQbTR0?=
 =?utf-8?B?Uld3Q1NobExDN04wRzd3N3lnUk9xQkFkLzdMeTdKZCtDSXhqSTZ6RFNTa2ZF?=
 =?utf-8?B?RU1RTWFuQk1Gc0QyMlozNytPN3NRamNxbU95QXVEbFZoY3VRelVpRjlZWVQz?=
 =?utf-8?B?R1ZaNDBGdDV6YUFtMlBJNU5LTmZNLytiSU0xY1R3YlBTRHVFamRlNFVaSVFp?=
 =?utf-8?B?ZHQyOWJmVGlSVjNlU3J3aFk1dnhzZ2lPK3hwa21sc0JsRFhydmFadzhFSFha?=
 =?utf-8?B?bjlFdDZxTXp4YytlS0hjTWxUb09LZCtQWmNVS2JJWUJFMm9FWk1IdHI1WWs5?=
 =?utf-8?B?c2pJKzRrbng5WnI0UFQyNGFNNGVsMXB6WTRJVHExMXBONk1TWmNSNi9RLzAz?=
 =?utf-8?B?RVo4QjJSbWtyVFowTks5Y21VRHp4SFAwZUszMUNZS1E5Um5BMVlLVE9PK1pk?=
 =?utf-8?B?QVEzYktHYU0zK0hFd01BUkhpNnhDVEFlSk9zL3RWUHBnd3Rvc1kzWHpTeGlL?=
 =?utf-8?B?TlFyQjkrd3ZSNzNCSGUyK2hVT3M1czgwa3hVME5YZEtiNXpOT05zbnJGKytP?=
 =?utf-8?B?bmRZN3NSQXZQNHZOWFh0a08rVW9LRmd3MGVVSHhZRndvTjdRdGpWRm5xdCtE?=
 =?utf-8?B?dDdzd1FUNVBydWpmaFZKVzNVaUZJeDNqRHpVdUJDaXRjMVFWUHk2c245YldQ?=
 =?utf-8?B?RGhpMGREdmtmNjFNSmJSRjR5RUhWNmJmSktuVWsvN3BHZEM2dmZIWmtWNm4v?=
 =?utf-8?B?UWpoVVJJMnRFaDhncWMwRkc5ZWY5SWpRTFZaeVpvODZaYkxkNDNSUUs4MFoz?=
 =?utf-8?B?K3NFL3hFSk9UV2dNY1o3NndNcmlmWm82NWh6amhxaFZtclIrTzlBY3YvZGE4?=
 =?utf-8?B?bi93NkhBMnVzc1dmQlM1enRxMjJkUS91bmtqaGFEMWMzRElaNFIya3luZ3ho?=
 =?utf-8?B?T01vK0RBUjMyMkFua3VBZ2p2aHBaT2Zsenlid1hJb3hYdTIvY0Nhcy9YdWlH?=
 =?utf-8?B?dXp0OGtkd1JiTDJwM0pkVDNIWllSY0RSZ0diYm5qemVsM241REtJdDZheUo4?=
 =?utf-8?B?bDFBaCt4Z0hpY1NBMGI3L2FYSGVtTUlvVVd6cVRObzV2Nk5UcEh4aGRHclRj?=
 =?utf-8?B?dlIzVXJZSTh0QXZuTWZ0dWdjU21oS1JTN2lVbUk5eXFlak45Qm9zTVlEUGVo?=
 =?utf-8?B?S1NFYVNjMWZYY3Q1QTFnUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WjJvK05sV0hWamtEK2IxcTR1L0pBN2lHUlB0R0R6U29aNUN6b3p5ZTBiYWdI?=
 =?utf-8?B?Vzh1eVNqYlhGcDVuSHJxK2xnSXJoV0lzcTIrYlNHTDl1THBoYlJDMEkwZ2RW?=
 =?utf-8?B?M1c3UmFaV3RaVUM2K3UyZUR2UlhSUDdoRkd3czNWOTMxTDdHdis5WWJjN3Zm?=
 =?utf-8?B?c004MkRmVUdjQTNKcWFrZjFQR3BCaHdERVNCVnBybkJGOHpLMnNYcTVpK2p6?=
 =?utf-8?B?dk9TdFNnYVdoU2d3Y0FTQ2F1OXhVNzBaT3FQQlZpalp3TVVtY3ZpYkZsL0hP?=
 =?utf-8?B?RzlmZ2s1ZXJ3VDVWL29iWTJBaEs2VEhnL2EwdU1OLzRtcXppZlZlOEwwNVhC?=
 =?utf-8?B?MTRhS2NDU0c4SjFqMi9tRzZVU3FMWmZZWXVtZFBYS0J0enNyREp0Y1FodFlo?=
 =?utf-8?B?TS9KVUVvTUo3NUF4bWkrejZtUnFLcnNJSDA0QThPVlU3SVdmUkNHV01XSDVD?=
 =?utf-8?B?cXFTVlRJM25oU2RlUHhtUlhpa2pobVZLQ3lZNmQrZEw2MVdLcjhKL2s5MzQx?=
 =?utf-8?B?RUtUMHJ0M3BiYnphdDl0UC8zT24vaWNadmt3SDBZUE5Nbi9JTTZ2NzlKOWRp?=
 =?utf-8?B?QUFHS2ZIbW1FMmZBZS8wOXZNMVVxMnZpY3NUZGc3OHViYUVTdnRMWWkvOGM4?=
 =?utf-8?B?dHcyekZmWStLSU5MVDZVYjhYT3NiMjRwR0ZGVXB0cjBXYkNSWi9SWEV2T0NB?=
 =?utf-8?B?RWNUVy9UNzM5cVJrQVlMOW04R3JIK1h5T0Fwd2RMZ0lwOHUvekdLL1AxTXF2?=
 =?utf-8?B?MWJEQTJPZ2p2UW1XT04rSGVJN0YzNFIwNG9odTg3N1NoQldqbnJseEd2M25l?=
 =?utf-8?B?dEFIOTVpYXVUeWFaRGdybmVmeE5MYUN0cjIzYWx1bDU5eFdLWWJpYzc0WmY0?=
 =?utf-8?B?UVFFSTU1VWFybmZaMDZZeE51Sm9IL2RlUUdGK1N3V0YrOS92Z211K0RKQUpS?=
 =?utf-8?B?VHFReC9GTEMzeVEyQUQwcWVmSWI5Yk8xQnlleUdwblU1TDdrd0dLZVRQMmpG?=
 =?utf-8?B?TUp5S0RjM0YxS3VGSythVkMvek5JbnhwbVVHenN0K2dSTi94cjBXODYyS0d0?=
 =?utf-8?B?R3dGeURHeHN0ek5jR2l4eVM1VUdSeUUwY2hLczkrZXZ3NU56ZjNUb3NMaVZs?=
 =?utf-8?B?eHpGcHZPSkkwb2VZSDcrRjIxSWYzUkVqWWdWNnp5WjNHckV6eHNOZW5HaFRh?=
 =?utf-8?B?MTN5WVdRc3JFdU5PemVyVDhKQU9TdnVhWkFNNlV6U29hNDdyL0dKcHFSaU5a?=
 =?utf-8?B?VFlBSDF6Q0cxVWlJV2E2S3JTRVBiWDRzUUg3MGozL3J3UG5LMW5IWFdlMEcz?=
 =?utf-8?B?QUxYQXBjQ1JHZ01lMmQ5QnN0NElTQm01UnI0S2dRVTltVENPb25UQ3F4UlBp?=
 =?utf-8?B?dzd3c21Od0dsMkdzTHljOTIvMTNVU2lHUmY4VTRoVEdIcmFZM0lURmxPeEZD?=
 =?utf-8?B?NGRNaEJvWVhmQmsvQkRFNFhWY0dTUkJPLzd3clVPRUVlbTNpalZobDF5Q0Vz?=
 =?utf-8?B?TEdOcENBc2M4bDFkbjR1RTJ6QXAxcmlCcFV6WERNZENFYit5Y1JBRjlFaEtz?=
 =?utf-8?B?ekEvQ0hkMVBhYjB3S1RvaXduRVFaSUFJRzFMVU9qMmR2V0w0UlBKM09sNlN2?=
 =?utf-8?B?QzcyVGo2MCtwU3ZRK21lcVl1ak96dTJRR0crejFEbTdPS2d0NHpDTmhyNXV4?=
 =?utf-8?B?Y05GVWc5Y2trNHdScDhXNnYybGFRc1lydTN2MUZlaStCbWU5QnRWY0tkR3Vv?=
 =?utf-8?B?SDJYVkI5VVdhUXE1VVBCazlWdVpGb0VFU1ZvY0xxZDcwTVFhSEo2VTF2Ukc1?=
 =?utf-8?B?TTV3WWtFZWRzaXNjSVJHWnJqclppOFkzWXlMRGsyMzd3RFhVNHhtdTdTaEs5?=
 =?utf-8?B?bDBIdk5mRENwTlpWYTltSEF5cklMTDhZVmhTV05yV05OZkNrWlNIOVYyMDF5?=
 =?utf-8?B?dExxWG42NnlmblFQa1NnNTcyWHIyd0h5ZEdRd2tqQytwMHZCVGVubVhQTmFE?=
 =?utf-8?B?SWd6L2ZBd2JDYUpiK1ZibktVUXZjblNnWVY3TVY2bzBBaDhKVlFQUmRRTkdm?=
 =?utf-8?B?ZURjWnoxbHZ2d0tLL0NpeGRRZ3ROS3B0TXhDVkJYdEdaRm05bGljdEJSZEFx?=
 =?utf-8?B?WWNJOXVYYjNqMTJLMGNhb2hZc3AvWG5CWmRENVJoMmo1cU9zb2lsa21ETm1M?=
 =?utf-8?B?RWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 33663f82-2555-4b0e-5a81-08dd6aae2867
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2025 08:30:39.2466 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /jDf8yytgaYZEcBINSSgldEVtp7R7Rgc8BkAQ5iwicoDjg9Vr+bURvnCYSApZiQek9u4n/+OX46Tj+alwIs1Ky96SeDBgYE9G61i3Eed3PY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7448
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


On 3/22/2025 10:13 AM, Ankit Nautiyal wrote:
> This series is split from the main series [1] for merging the fixes early,
> while other patches of the series are still in review:
>
> The commit:
> a27217f9d1856 ("drm/i915/vrr: Track vrr.enable only for variable timing")
> adds a change in reading the vrr.enable, which is causing issue when GOP
> enables VRR timing generator with fixed timings.
>
> Add the fixed_rr status in crtc_state_dump and remove the check for
> fixed_rr during readout.
>
> [1] Use VRR timing generator for fixed refresh rate modes
> https://patchwork.freedesktop.org/series/134383/
>
> Ankit Nautiyal (2):
>    drm/i915/display: Add fixed_rr to crtc_state dump
>    drm/i915/vrr: Avoid reading vrr.enable based on fixed_rr check

Thanks for the reviews, patches are pushed to drm-intel-next.

Regards,

Ankit


>
>   drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 3 ++-
>   drivers/gpu/drm/i915/display/intel_vrr.c             | 4 +---
>   drivers/gpu/drm/i915/display/intel_vrr.h             | 1 +
>   3 files changed, 4 insertions(+), 4 deletions(-)
>
