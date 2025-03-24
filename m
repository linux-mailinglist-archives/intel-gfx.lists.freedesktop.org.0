Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A06A6D623
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 09:29:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8459810E1F5;
	Mon, 24 Mar 2025 08:29:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JwKI0b+e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B14210E1F5
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Mar 2025 08:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742804949; x=1774340949;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DvGIzhF8APZqVROCfibZYktOVDPYyJPWuXqX0lKkXkM=;
 b=JwKI0b+el8eXcxogj04Jgyw6147ixmRPtS/2ua5pSl9aRV2ti79GjSYF
 GJ1ZHDddOt2sfN+Kj/Lf0+F+5od5Ka6x0S2Bs8c5Zo7txsRDIYCiiCzuB
 Khp9ff50OEWhxeqQmBrNHVDtrG9mt3ChpELBC0daQHD2pWbBa5zpzvEOc
 qhkkuajqiYjeeCxBBhEdnA0XXGAUz/2Hk8swVO4R78dPeIKxqxTYbFQ2Z
 zc9QgXA3+nLbafngPfS9M/XbuZB8FQADZzkLzGbq4N/YU0Mx+zPCwqQWp
 7Zs0o3eDMWW5W2JUZvGqRknewdH45c16dpySHdRvXbGKnMuJxK0JvGE/w Q==;
X-CSE-ConnectionGUID: QcSfAmwZRvu94h5NlNaP2A==
X-CSE-MsgGUID: bL8E9eWMQMm1u7/bEmjyvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11382"; a="44162284"
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="44162284"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 01:29:08 -0700
X-CSE-ConnectionGUID: 80Fvl3rBQX+0nrZOd8iKjQ==
X-CSE-MsgGUID: /b3xr9lvS0SeKd2Rlrq8rA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="154987206"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 01:29:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 24 Mar 2025 01:29:07 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 24 Mar 2025 01:29:07 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 01:29:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sWmk3COB9Aw7gZK5azSnxT/HBtOjM98E1/UM050h0n8y28D/nLkj0Afp5HjcTje785caMiOt5deANKEKinnPolOWSM5uiZy/cIGiWhJwzPHKbEKDY81dKyBtYcwc4b28ezRsYzh9bHRqYTqZVHHZVUxsGGQPa0R780g+5Zi3HHU/TiVV/zICq3iR3WdXsKqoKleb/xHCRGL/MXbYidu0/oIbW6FpJrpHQUZ8xIElflsYBc07JFRJ21rIO9eNxAGMG8ZzMAUWh/GlCKPVLgvIXd8jvsd1DVfLzFkAemzc8KRDY1iA+iMXPIPgEN8YgoFxNyfSDj9wis416zBQ2Yw8CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y8xxBDfGxxJ7DBkJTUtr+vrbzlGj+UUQ1zLyDaUHF+E=;
 b=ElfaryZMYFT2U2efu7ueYOB1A08GOTXGWT/RAEmOfXbIBp730g5suDubqGUQahJwGJWaZXtfW/VbPkoq/EgLIlw9ZKin4QBvjhXAV2Xcn7m+R2t1cSpp3Nn3ySkALWqEVeLtb82Z+Xqb9K1GlAz1IcHaiBJbmCZL5Fip6T2My87b/FxqilGlb5oZqE+PKRMBsVI81Dpb19ylqOnhHr284MUcYAtNUVlgRE5m7VtI48fWWUzzju/J7PM9UVGw573h+lzSx3OHOdv/RzZ1eWm58DH4UK8QXk4Nj+u4U0GzmyTx3PgB2pC+Zp69gmPgemuJ3J+syCAeKDi1hixHTKV2FA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH3PR11MB8094.namprd11.prod.outlook.com (2603:10b6:610:156::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Mon, 24 Mar
 2025 08:29:04 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8511.026; Mon, 24 Mar 2025
 08:29:04 +0000
Message-ID: <c2f69b8f-9d2e-40b4-aec5-27130c06c810@intel.com>
Date: Mon, 24 Mar 2025 13:58:57 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8] drm/i915/dmc: Create debugfs entry for dc6 counter
To: Mohammed Thasleem <mohammed.thasleem@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <imre.deak@intel.com>
References: <20250321123707.287745-1-mohammed.thasleem@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250321123707.287745-1-mohammed.thasleem@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1P287CA0007.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::24) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH3PR11MB8094:EE_
X-MS-Office365-Filtering-Correlation-Id: ad7f5c34-bc7e-4d7b-4b14-08dd6aadeff4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?djU5MGNyYlB1M1ZUQmNCZEZpZzY5M2QrMUJ4ZFh3MFF0SXJBMmZZZWJkUERm?=
 =?utf-8?B?Z29kYVUydkszN3ZaWWh4OTdYY0NQcVJLVXpzaXhTMFRXakI0ajY3ZnJMYlVX?=
 =?utf-8?B?NHBGYW9YN2UvTVFNbDArQndmbExWc2NQWmhocHBFT1l5M29WRXFHMmZGUnZM?=
 =?utf-8?B?clV0TlJFWnE2a0NTZGhiWlZiWkcvVzdDeUIyTDVqMnJMbmNtZ2t1ejhzdW96?=
 =?utf-8?B?Ry9kTUxiamtKQ3JtaTNjNWJYWmR2RGYrbGF5UkRVeGVGKzZzQ0xZRU9EVXJx?=
 =?utf-8?B?VkJDczJYUmkrVnVyMlYxeVdUUENLMEFyNC9nekhWYmhONGlCQmpha3FEZ0Nx?=
 =?utf-8?B?VkN1Sy9MUk5hWnRCZzJKWUNjbTdka1lOVUNHbytVdEdzMDRPWFQxdk92YlAy?=
 =?utf-8?B?S3M1YXFzaEJPTzRlV2phbWpydHl6SXBSaDg5RzA3S3JXQ1hlcW1YZ0pGdTlN?=
 =?utf-8?B?dzFSWHZPSjJzeHI1NFNpRUV4VENKUURCTElrcHJlSFZBRFAyQTJXY2ZJdk9J?=
 =?utf-8?B?L21nVHhvQmNFRzRMQXhtZDdTY1M4Z0pMYVUzMlVPQ3piU1ErVXAvWTVsaVpp?=
 =?utf-8?B?WFlDRldTdGNIUlp4akFsMjNCNWhuTkt2d1JMRVR0ZlA2a2FpRUpkSXNpUHJL?=
 =?utf-8?B?bVJwMVd2RytlNDhReGVrbHBVUHJuUGdtTlZVYUFnWmZGQm1odDUzUGxtWjJ1?=
 =?utf-8?B?bzhXUElCMWZjMVVMOWp3MGxvSmthVGR1bXpZUkg2bHpvZWdCcGp2SUhRcDlO?=
 =?utf-8?B?NXdZVDkvWGJIYnIxOXdlbnpTaWFHMzF1b1V4RW9XV0oyWElnU1JVTjY5Qysz?=
 =?utf-8?B?UFNGdEV5TERDaHI5d3lWVUJCejdLOFVqaDJaNndOSVV4L1o1enJWUXRRZWJz?=
 =?utf-8?B?NTdEMzAwQ0pYWTdhaitXQk5lcTZqaW9WSVAwLzMxZ0hoaEFaWEVCMzZIZkQx?=
 =?utf-8?B?SkplR28vVUdoSHhKU2tWUGhHV1V1eitBN0hrenVuQmtra3RPWU1lRXk3UExj?=
 =?utf-8?B?eE42YkwxVlpuZ2FhZExnWVgrMVVaMUFYN09IQWlIN2s4enNIWkdJajJIYzBy?=
 =?utf-8?B?MThKYTA1NVp0b1FkUzdXSHNvZmJjNTFac0poT1NoWWRWUWJKNzRTc1N3ZCtJ?=
 =?utf-8?B?RGRzYXlDL0J3VUtOR2NSR203Nm1tdkpiNUNMUFM2MTNkTElJbnl6OGtMUnlY?=
 =?utf-8?B?cGZTazVCOC9kZURuNnBpUnp6TDREOHB6WjAzandDVjIyWm9kdXhtRkdaQUUr?=
 =?utf-8?B?UzlDS1NGZHgrMU5NaXEyNjQ4NlhBTmlvVUc4Tkh2ZkE1cUxsV3hpV2ZNOEFa?=
 =?utf-8?B?M2FZQWNPak8zc281Q2NwaGJZYjRBMVpUTWRSL1VtekF6NVJTazA0aGozV0ZC?=
 =?utf-8?B?UE1od1plZkdMUjB2QW8xR1pnWGVTeE5XWXl3aWh0dGxEaUg5bVBzblp5UVAw?=
 =?utf-8?B?NjRUZnk5eEZSdW5TVXlEZHNVWTJmaWxlMkJraTZoSzUyb1ZtdktaS2trbk5l?=
 =?utf-8?B?ckF3U3FmQmRvaDhUbFlQWjNmdFFKMUwzSDJVSFh0UGhDbVE3SHB4S0VPK1FG?=
 =?utf-8?B?SlZUbGtJamNiZkRNeS8zSklzTFVqV3pNQitsM3ZuaHFrcHlTLzhYeDlucVRI?=
 =?utf-8?B?c0Q0RWd6bXNleG42RXhxeXpmL1F6L3ZITk52ZTF1ckxGUkRjZ0xMZGVaR3JE?=
 =?utf-8?B?dlFiZGhzUXlVUldkdGlUZEl2MmJHRG9yZllGaE9aaUczZmdPSUZQczB2SjM1?=
 =?utf-8?B?cnkwLzl3N3JNY1djWWZ4RHlnM0Foc3QzSy83NFZqMTJlZFh3eHF0b0cvL3da?=
 =?utf-8?B?blh4eHYvd3VJeG56ZTlMQXRiMndERTQ3LzVyNGpBTGwyUzZQZUtaRXRrR0Fm?=
 =?utf-8?Q?adEovWVVo5boB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OThBZ2VpVS9xcmlJTXhDeHdmZUg4UTd1TmtXOEFPTHJUOTRyKzFoTDRZem1W?=
 =?utf-8?B?ZGJWZkxXcWtnMktreXRNM09HajJieHM1TXZ5bTAzQnFmOFpHOHdWeWxMYm56?=
 =?utf-8?B?VEJjTFlZdkJOTkVCUTJnekVWR3VDRmNqaVpTSkRQUGl3YTlPZGNSV0lOMUwy?=
 =?utf-8?B?NzFhbEg5UU44b0ppZnZ5Rm0xaHZGc1BxM1JLaTZtM2Z1MDV0TU4vdnBUWWpM?=
 =?utf-8?B?UERTd3VsRnc5Rms5eHNnbFBwTVNhcnlxNkw3WGdRN2k0dVo0QkxjT2Nmb3FO?=
 =?utf-8?B?S2hRaGNjS2hvd245S1RoaE1mTlFQejZRU3F6WXFqNXdXTVVlemI3bE5xNmhB?=
 =?utf-8?B?V3hidlluWWdUc1FXZ3pObE5uNFhxcUsraG9hUktmTDd4eVBVOHB1dnlwK05J?=
 =?utf-8?B?eWs5UnlSZmMwYVp0c2V4RE9Jc0lkdXN0Z25uekI5RVhLVjBWRTJTaVJYRlcz?=
 =?utf-8?B?QVVpa3FQd1RZRDNsRUFTL2xmdUprNXE5a0QvS1VmT2FySkdYbVJNcUhLNjRO?=
 =?utf-8?B?Ty9UWmV6ZmdOSUhHR0RJbGdXTS9SQ3RxZW81cGhTY3EzbHlabWd2VVVZaHFs?=
 =?utf-8?B?OXFDL21zZE5FN25JTU5KdWhCVmdyUnl0Y3RVSE5SSm5LRnB3VTkxakEzQTRG?=
 =?utf-8?B?VDVUUjE5U2VYMllDWVBaSDFDczFiQnBnT3N0MEc4SGJjcXg0dEJNWFJING1N?=
 =?utf-8?B?M3ZjSDJPbk1RR3prbUxYL28vZkxlQWkxVnNOQjZjUXZqYm5KKy9ia2JvRUFC?=
 =?utf-8?B?SEtocE5Ha2RwTW5GVEUwelBNYnR1dEN5eGgvVjl6YTFpNHFCZUgwTFY2eTNT?=
 =?utf-8?B?U251TVRJMTM4Mks2Z1BRZ0QwM0RQVVBQbDF5UXFEanNHR24rWmdSMEQwZlg1?=
 =?utf-8?B?UXNoZVdFYzRvbXBwTnpqUStQSXFScExHbTQ2UUhzYmNWZEsyUFduMldpYmhR?=
 =?utf-8?B?ZW9pRzgrUzM5MmN6NS91U1B1NkpnRzdyUUVlWURGM3RMQTViS0tvSG5PVUM2?=
 =?utf-8?B?SkZJLzRZL3EwTWVzYXo3NUZvaEhTU09sTG16MzlEUEcrM2tyUzFWcGl5VENY?=
 =?utf-8?B?dC9tU3lNK1UzL2hqTEt1MTNKOUZCMzdLSU9PdnhDT1hzNUxhN1gxTGpYbnA3?=
 =?utf-8?B?OGVnWUw4cmRPc1ZhM3V4Uk1BTDJ4RStTSk1ERksraWd4dXpGRlovNnAydkdK?=
 =?utf-8?B?TUlydzZFdjRGaTJtZHBLSTN4WVpMNEF4cDZxL3hzTDNZSVhWK0pvQTJiU2dq?=
 =?utf-8?B?dmVPaWdhUmN2WkF0NVEva3VCekRpVzQ2Tk9ydXo4K0FhRVZCRVUvaHBZYnVB?=
 =?utf-8?B?YlY3L1lpR3gwSnFOVUJ4ZGlhN09nemhrZkxWRFdhd1NiL2pUdXd5SS83ZVZ0?=
 =?utf-8?B?TkthemNpb1VkQ1JJYjc3UDVWZmU2a1o2YmduV2NaL1Z3SHZucEJXS0VpeUZG?=
 =?utf-8?B?YkF6RXhSeHdFQTVub1hHQXhPWHM5ZDlWQkNJbExyT29SVDE4eHZYSXpUM1Zh?=
 =?utf-8?B?MVBvcnhYK0ErQ2VRRmtSMDhNMnVLSUF1dzRiSy9pNVUxZzZCWnFidHdmT1Qr?=
 =?utf-8?B?VjJHelphNWdmdzhBUFR3NkxEcHUvQlRESC82bTR5anFlUkRtOUZadnZpS3RD?=
 =?utf-8?B?eVFvbmV0a0lYaTczOVVqZ2FlR2p3YXVsckN6eXVQenhLT01DTXpqQ1NuNXo0?=
 =?utf-8?B?RGJZenZDSUpHTVVXdXUya0Zjd1d4bXJ2cFFSeWZRd0kwc09qL000RXBHamtm?=
 =?utf-8?B?c2ZOeGZOWGJEZFQ3TlAxWHR1QVdHd2FNVWpIcHZlZXZKM1pZL0ZDTTQvT1Z3?=
 =?utf-8?B?YWYwalBDYlpwdzN0enBVUlJoTmtnMTBHVVgrVWpoREZKRUJUdDkvNk15UzRQ?=
 =?utf-8?B?NlZHaC9BVzRyd1lleDJmL2xVRzhUM2xzVnUxQ0llZ0NuMHFWaDNGQXA1UjFZ?=
 =?utf-8?B?YVZzSEJ5RkorTFNlTG1kTnozV3I4Um5lRFFTZ2MyMFJHdWdobUg5UTlTSytB?=
 =?utf-8?B?WkFScTkxdTNFWVN5bDNQUTFqQmk0bDkzcUhPWTVYUFl4a1NuaWlyZnBDWWxX?=
 =?utf-8?B?TWJwdXFodFdzLzFkTFJkUmk1V3N1ZlFjWXRpcTdNODFjK2psTVNwL3ZYVndO?=
 =?utf-8?B?bXZoNU1adHVUWjlhQTE2Zi82VVZ2QStXKzF0VlRlampiS1Byai9PY3NDblgw?=
 =?utf-8?B?Qnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ad7f5c34-bc7e-4d7b-4b14-08dd6aadeff4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2025 08:29:04.5317 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O2yyiJ7bNYbujAt7qgJbk5+fkloRLOYlZ0aytC8y78CHhS6PYRBCQoRUnIO3sezF4tXyHfIufyFFliC+0L2wNYpcHGTdyUvMPMkVTbZA53I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8094
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


On 3/21/2025 6:07 PM, Mohammed Thasleem wrote:
> Starting from MTL we don't have a platform agnostic way to validate
> DC6 state due to dc6 counter has been removed to validate DC state.
>
> The goal is to validate that the display HW can reach the DC6 power
> state. There is no HW DC6 residency counter (and there wasn't such
> a counter earlier either), so an alternative way is required. According
> to the HW team the display driver has programmed everything correctly in
> order to allow the DC6 power state if the DC5 power state is reached
> (indicated by the HW DC5 residency counter incrementing) and DC6 is
> enabled by the driver.
>
> Driver could take a snapshot of the DC5 residency counter right
> after it enables DC6 (dc5_residency_start) and increment the SW
> DC6 residency counter right before it disables DC6 or when user space
> reads the DC6 counter. So the driver would update the counter at these
> two points in the following way:
> dc6_residency_counter += dc5_current_count - dc5_start_count
>
> v2: Update the discription. (Imre)
>      Read dc5 count during dc6 enable and disable then and update
>      dc6 residency counter. (Imre)
>      Remove variable from dmc structure. (Jani)
>      Updated the subject title.
> v3: Add i915_power_domains lock to updated dc6 count in debugfs. (Imre)
>      Use flags to check dc6 enable/disable states. (Imre)
>      Move the display version check and counter read/update to
>      a helper. (Imre)
>      Resize the variable length. (Rodrigo)
>      Use old dc6 debugfs entry for every platform. (Rodrigo)
> v4: Remove superfluous whitespace. (Jani)
>      Read DMC registers in intel_dmc.c (Jani)
>      Rename dc6_en_dis to dc6_enabled and change its type to bool. (Jani)
>      Rename update_dc6_count and move it to intel_dmc.c (Jani)
>      Rename dc6_en_dis to start_tracking. (Imre)
>      Have lock for dc6 state read aswelll. (Imre)
>      Keep the existing way print 'DC5 -> DC6 count' along with
>      new 'DC6 Allowed Count' print. (Imre)
>      Add counters in intel_dmc struct. (Imre)
>      Have interface to return dc6 allowed count. (Imre)
>      Rename dc6_count to dc6_allowed_count. (Rodrigo)
> v5: Rename counters and move in to dc6_allowed structure. (Imre)
>      Order declaration lines in decreasing line length. (Imre)
>      Update start_tacking logic. (Imre)
>      Move get couner inside lock and DISPLAY_VER code to helper. (Imre)
> v6: Change intel_dmc_get_dc6_allowed_count return type to bool. (Imre)
>      Update debugfs print to better allien with old print. (Imre)
>      Remove braces at if/else for signle line statements. (Imre)
> v7: Remove in line variable declaration. (Imre)
> v8: Rebase the changes.
>
> Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
> Reviewed-by: Imre Deak <imre.deak@intel.com>

Thanks for the patch and the reviews, patch is pushed to drm-intel-next


Regards,

Ankit

> ---
>   .../i915/display/intel_display_power_well.c   | 11 +++-
>   drivers/gpu/drm/i915/display/intel_dmc.c      | 50 ++++++++++++++++++-
>   drivers/gpu/drm/i915/display/intel_dmc.h      |  1 +
>   3 files changed, 60 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 751e49b880d6..b9b4359751cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -749,8 +749,9 @@ void gen9_sanitize_dc_state(struct intel_display *display)
>   void gen9_set_dc_state(struct intel_display *display, u32 state)
>   {
>   	struct i915_power_domains *power_domains = &display->power.domains;
> -	u32 val;
> +	bool dc6_was_enabled, enable_dc6;
>   	u32 mask;
> +	u32 val;
>   
>   	if (!HAS_DISPLAY(display))
>   		return;
> @@ -769,11 +770,19 @@ void gen9_set_dc_state(struct intel_display *display, u32 state)
>   		drm_err(display->drm, "DC state mismatch (0x%x -> 0x%x)\n",
>   			power_domains->dc_state, val & mask);
>   
> +	enable_dc6 = state & DC_STATE_EN_UPTO_DC6;
> +	dc6_was_enabled = val & DC_STATE_EN_UPTO_DC6;
> +	if (!dc6_was_enabled && enable_dc6)
> +		intel_dmc_update_dc6_allowed_count(display, true);
> +
>   	val &= ~mask;
>   	val |= state;
>   
>   	gen9_write_dc_state(display, val);
>   
> +	if (!enable_dc6 && dc6_was_enabled)
> +		intel_dmc_update_dc6_allowed_count(display, false);
> +
>   	power_domains->dc_state = val & mask;
>   }
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index eb6b47ba0870..98f80a6c63e8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -29,6 +29,7 @@
>   #include "i915_reg.h"
>   #include "intel_de.h"
>   #include "intel_display_rpm.h"
> +#include "intel_display_power_well.h"
>   #include "intel_dmc.h"
>   #include "intel_dmc_regs.h"
>   #include "intel_step.h"
> @@ -58,6 +59,10 @@ struct intel_dmc {
>   	const char *fw_path;
>   	u32 max_fw_size; /* bytes */
>   	u32 version;
> +	struct {
> +		u32 dc5_start;
> +		u32 count;
> +	} dc6_allowed;
>   	struct dmc_fw_info {
>   		u32 mmio_count;
>   		i915_reg_t mmioaddr[20];
> @@ -1233,6 +1238,44 @@ void intel_dmc_snapshot_print(const struct intel_dmc_snapshot *snapshot, struct
>   			   DMC_VERSION_MINOR(snapshot->version));
>   }
>   
> +void intel_dmc_update_dc6_allowed_count(struct intel_display *display,
> +					bool start_tracking)
> +{
> +	struct intel_dmc *dmc = display_to_dmc(display);
> +	u32 dc5_cur_count;
> +
> +	if (DISPLAY_VER(dmc->display) < 14)
> +		return;
> +
> +	dc5_cur_count = intel_de_read(dmc->display, DG1_DMC_DEBUG_DC5_COUNT);
> +
> +	if (!start_tracking)
> +		dmc->dc6_allowed.count += dc5_cur_count - dmc->dc6_allowed.dc5_start;
> +
> +	dmc->dc6_allowed.dc5_start = dc5_cur_count;
> +}
> +
> +static bool intel_dmc_get_dc6_allowed_count(struct intel_display *display, u32 *count)
> +{
> +	struct i915_power_domains *power_domains = &display->power.domains;
> +	struct intel_dmc *dmc = display_to_dmc(display);
> +	bool dc6_enabled;
> +
> +	if (DISPLAY_VER(display) < 14)
> +		return false;
> +
> +	mutex_lock(&power_domains->lock);
> +	dc6_enabled = intel_de_read(display, DC_STATE_EN) &
> +		      DC_STATE_EN_UPTO_DC6;
> +	if (dc6_enabled)
> +		intel_dmc_update_dc6_allowed_count(display, false);
> +
> +	*count = dmc->dc6_allowed.count;
> +	mutex_unlock(&power_domains->lock);
> +
> +	return true;
> +}
> +
>   static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>   {
>   	struct intel_display *display = m->private;
> @@ -1240,6 +1283,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>   	struct intel_dmc *dmc = display_to_dmc(display);
>   	struct ref_tracker *wakeref;
>   	i915_reg_t dc5_reg, dc6_reg = INVALID_MMIO_REG;
> +	u32 dc6_allowed_count;
>   
>   	if (!HAS_DMC(display))
>   		return -ENODEV;
> @@ -1288,7 +1332,11 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>   	}
>   
>   	seq_printf(m, "DC3 -> DC5 count: %d\n", intel_de_read(display, dc5_reg));
> -	if (i915_mmio_reg_valid(dc6_reg))
> +
> +	if (intel_dmc_get_dc6_allowed_count(display, &dc6_allowed_count))
> +		seq_printf(m, "DC5 -> DC6 allowed count: %d\n",
> +			   dc6_allowed_count);
> +	else if (i915_mmio_reg_valid(dc6_reg))
>   		seq_printf(m, "DC5 -> DC6 count: %d\n",
>   			   intel_de_read(display, dc6_reg));
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> index 44cecef98e73..c78426eb4cd5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> @@ -26,6 +26,7 @@ void intel_dmc_debugfs_register(struct intel_display *display);
>   
>   struct intel_dmc_snapshot *intel_dmc_snapshot_capture(struct intel_display *display);
>   void intel_dmc_snapshot_print(const struct intel_dmc_snapshot *snapshot, struct drm_printer *p);
> +void intel_dmc_update_dc6_allowed_count(struct intel_display *display, bool start_tracking);
>   
>   void assert_dmc_loaded(struct intel_display *display);
>   
