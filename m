Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2178A58540
	for <lists+intel-gfx@lfdr.de>; Sun,  9 Mar 2025 16:02:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53E0310E171;
	Sun,  9 Mar 2025 14:55:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QHCHUNWW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC57B10E0FA;
 Sun,  9 Mar 2025 14:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741532132; x=1773068132;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wHGOB8I7CuE97byePHMiWrBdXsQWpTCjUg0jKoS8eus=;
 b=QHCHUNWWKrlRkG6T3ICko7iDiIYjooH3J9vWnmvNfP0UvYV6G+n/1qN6
 oscsBu9KG2xyoXIqxzD95FnfV3QzEv3V0CbTRDyC2VAtwBLGVXotBLFjh
 HloKiq37knw6BKX7v9rVrUW42I0WHDXjQJ78zIlu9WYCivNY9tNTLThx3
 zrwhmMZszBSmgDBEA9Sth8MSpJzT19TY/70gx/G2Y1PYmo3S5Cbhv0mpi
 tPZC5ZgTBz+beoIMo6Mi+IGX1Pe4Qo9yFn6+VquIygsMuYh88k+ip5EKp
 mK8WhTie5hSmdjLcjXHdtU+mgE9fr5h/k2Qs4tefoTdhvFzlGjL/1OjJy A==;
X-CSE-ConnectionGUID: CochqNrASsmet8O8lTyDmw==
X-CSE-MsgGUID: lw1AqdkNQMqysSYFPoexvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11368"; a="60082304"
X-IronPort-AV: E=Sophos;i="6.14,234,1736841600"; d="scan'208";a="60082304"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2025 07:55:31 -0700
X-CSE-ConnectionGUID: B5Jw3mvYTmOxlB7EJWk5Yw==
X-CSE-MsgGUID: SWz4OoNTRHOOp7hJe7LExQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,234,1736841600"; d="scan'208";a="119733874"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Mar 2025 07:55:31 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Sun, 9 Mar 2025 07:55:30 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 9 Mar 2025 07:55:30 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 9 Mar 2025 07:55:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hS9WvbvK2+RC5T0ntzR2Sm3DfkoS3spb3vh0kV0otLvtEKRlhVp6rF/4p8dNdmKok20UEYkQ7OgEJgX1W+/MK63Fv81QhJLcR4SkBnAai3+KSrcsmGebMf58cDtD1oHsP7RTcowuEPmzD2IrGdfhruID/4toXkuXGwZhAmVh+5R4eb1HBPY3ootlvs5cXv5yzHCLqp+Pg8MsMdydGc5dj5cl8Zy39l1u2AlDv4TvOe9VaC3mlfPJIWVlAOFJiNSwCr43F+aXuWvbYJuAJKUw2sYXjff435wjwscsn89apTQfOS2F1E9Qst7Dh7DjGhV0RdiJ1LDZqt7C7BhkiccniQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YWvc7LcuhWjkxfE4V/gAop2R+bKIyEGbBQNRVYZR22s=;
 b=F6NABb+pD9jWEPXiPlOtq5Rr3vlIz9t92HRsdTr574Kaka0qmO96HJykeGqbfGB0tk8+6A0u7pGYs2lI0gGJIKUFZeZlF//EmZby6jkMCmXrWZMiVJ70IBY7IQkFbVJ2XDx1ghHepFSOC8tBmhiCz+b8cRNQ7l9uxMPBbfjcOzd3lpFpdyj9rjaGU/0hyav0ZOk4h9WuODCmmMl8sTgdzwj8N+o0Ir1tDiji6+lppQpHVXORl/Z/DwM8bKESS4aUCWjaLj4I4gW+uPVQNBjAQselUqRDEz6zLtP/gyOSSKOhR/VNG+0FYvRbPzqLCK1+yEaE/661D0V2kXlXNW4vvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CYYPR11MB8388.namprd11.prod.outlook.com (2603:10b6:930:c2::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.26; Sun, 9 Mar
 2025 14:55:28 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8489.025; Sun, 9 Mar 2025
 14:55:28 +0000
Message-ID: <b27a19a6-551a-429c-b98f-a883910d7b5d@intel.com>
Date: Sun, 9 Mar 2025 20:25:21 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 15/21] drm/i915/display: Use fixed_rr timings in modeset
 sequence
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250306131100.3989503-1-ankit.k.nautiyal@intel.com>
 <20250306131100.3989503-16-ankit.k.nautiyal@intel.com>
 <Z8nRZPU6__OTBWHe@intel.com> <9d1d55c7-199b-47a6-913e-d221d7cf2853@intel.com>
 <Z8rrpvnqE4Lcc4hb@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z8rrpvnqE4Lcc4hb@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXPR01CA0096.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CYYPR11MB8388:EE_
X-MS-Office365-Filtering-Correlation-Id: e184a8f1-3d88-4745-09da-08dd5f1a6e45
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Qi85TUc4MGJPZ21jY1NvUDB0Sjd0RW5KRy85NFU4ZnJTWDRXMGF2Y091V0Jh?=
 =?utf-8?B?Y0huNWQwcVp0Tk5rcGlHVzRuWGFxajg5MUtLNlo1UEEwUm5kVnIyYkZVVUdM?=
 =?utf-8?B?REhGeVB2aWIzeUthaDZTV0V6UjJlT2F6a2VrL29ZTkRYRFpXR2daeVhGYWhV?=
 =?utf-8?B?cExMMUZTeitPNTlWS1JuVzRoRTl5Uy9NNWVtSFlMMWhuelB3OWY4bURrNjBy?=
 =?utf-8?B?MDJ5cnFlUEJ3NnR2aXd5ckY0YnFIVU04WW5GVjZLTkgrRW9mRXROUEtNSVZI?=
 =?utf-8?B?N2dtaVp3T2NYMXN4WGllVnppRGMwekpRV3J3akdjTXE4ZVRCOHBFRVBJd2g5?=
 =?utf-8?B?SUF6dC84OUVkYmdtVGd1Zi9HcnFocVFlSWpSbWdUVmgwZElaSndQazRwV2Vu?=
 =?utf-8?B?L0R4Z0lZdGIrKytkYW5TSWo1WEdGTXJKcHRCR1B1T2ZHSk02NzhZN1BTYURV?=
 =?utf-8?B?QWhBV0Q3aWE1bnNIcTFuWVhHWmg0N2FiQjhnbGR4MTF0eUNDWG9jSnlQZzJZ?=
 =?utf-8?B?ZHcza0c3cm1yaDB3SXR3ZFBLZ1ZjR091UWVCa3Z5MVpNdEQ0SCs4dEhiOHVt?=
 =?utf-8?B?N2x5T0xSdnpvcGxFa2l6YXYrSG5HSEQ4UGtGdUk2bEU0djBYeUw4Y3RCUUpw?=
 =?utf-8?B?c1FHSkxqYlNzTzQyMkcrbThjZDB3UEt0V2NCZGs4QVZmeXlYUVBkL0lDZm5L?=
 =?utf-8?B?UUlROUJ2Rk5MQ0RUa0NFUUk0ZkhXbWVCSnNGL05QZ3ZmUkFZUE9RZ0ZNY1Np?=
 =?utf-8?B?SzY3WE5qVFNpQ21EQ3FzYkx4VTZBZThEbzJicmUxbUt4ZWxwa2t4bGpPSzZU?=
 =?utf-8?B?aDVPc2VwakFiVHl2Mjh5UURzU25id0xXTWF2OVNnYnlWVGNMdUJudVBjUGRQ?=
 =?utf-8?B?WlQ2VnBzZWozdmVCaXk2R3NkZHBnNkJHOEhuY3QwWUNSWVQrQWR2MVkzM05w?=
 =?utf-8?B?b2ZIVnc3UnNJM215enNvWG1HWStrM0FWcVRkZVdacDU4cXNiWDNHOU8wOHNT?=
 =?utf-8?B?WENpeVdDaThxeHdpc25DaGNsMTZJU2tqQlUvOWdRVlZFRktMQWVoRFU4endr?=
 =?utf-8?B?bDkyaUVPMStJMURlK3owTjJVZDFvQ2lKUDdrNXpkUjk1bHo5dzdqRG9QeXFT?=
 =?utf-8?B?S3lJenl1eldhTGZnZWdFcDlKSmFTbi93MlhhbytRSjVkaVczL2ZibGxneS9E?=
 =?utf-8?B?V2RocnNDaDdJRmhib2pkaWpkWXM1VVU1ODRjMm9oT09wdzExU1ZwSnhMU3Ni?=
 =?utf-8?B?azdwdXpYVFlUck82TlVsTXh1eUJqWGdNU0dOM2NDeDE0cS9Yd1dDeXJCK1hN?=
 =?utf-8?B?bnR1alg0b0s2UGx6UlZ6TEM4NnA0cGx6THRGdVF2NDdWRXhkVGtNQVN0cEtM?=
 =?utf-8?B?Vk1GVWk3akxSN2FGekJOak1hb1llaHVZODZTMVpDbTBzbEp1R2F6bXJ3bVEv?=
 =?utf-8?B?ZzVxVHdUT2t3VjltL1BVRk8yeldha2VqTVo1WE5lN0pHYnJRMzloSUN5T0dK?=
 =?utf-8?B?Y1huUDZhRlFHRUt4RkcyY3YyYWhkU1dKWG0wSVRXdTJyTTlpWmVwTkd3bndo?=
 =?utf-8?B?TEQ3dGF6NGoxUkdIOWxwZzExRUE3cGlycWppWnVhY3ovREg2UXBoMHpsQlNl?=
 =?utf-8?B?Z2ZkRk80SlRLTlFBUnNCYkwzeFZGR3EzMFA1OFY0V0dLcDkwaitQcldQbHpD?=
 =?utf-8?B?MWxTR3RNU1Nwamx3NUdVMFlvY1UxR1ZHYU9ReFpZaFdwQ2xXNDE0Qm5pa254?=
 =?utf-8?B?S0NWVDcyenBFcWl1SllYSFkvd3FnRW9sdWZPWlNIZzk2QUhRVUM4aVFmcnVh?=
 =?utf-8?B?VE54cDB0eHlFSU1vRkp3TTN2L253RG1lZ1pWeUJLTjA3OVdGV2xmb1Mzblhs?=
 =?utf-8?Q?pxRUltny1HvMT?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MjZqTFd1aUNPR0kwc1Z4YVN2azhLVGhIM1NZemlKS055c2pKNnVuTG1VM3Jr?=
 =?utf-8?B?ZzM4ZnFIM2VPdGJqS0l2V05OUm9HZWJEYWYvY252dXJCaUMwemhIVHZCaEFv?=
 =?utf-8?B?REc1ZUloaC9VUm42dEcvM3ZVMmdlNzg5OFUvSzNIZEpWNTFZQ1RKRHAwc215?=
 =?utf-8?B?ZThPSXZJTzlsRzB1SHk0by9yaUlxY1g5ZzJHODNMRi83WWlnWGpReWpDSW5J?=
 =?utf-8?B?bHdocHR2ZW4rK0ljVUJKV0pzNUdCbW94cEk3aE1YcGpTa0MwVjM2NXNmRTM3?=
 =?utf-8?B?YkxiZ213NURvd2FEempIRUt4UWJrdW1VV2N6N20rUWNzZEtzbklMcDZTdGpZ?=
 =?utf-8?B?c2hrSmlDMWNPR3ZaYjNiMHRoajljTGFTT0FjL2NmS3dqanE1ejdKZmdMVmdG?=
 =?utf-8?B?dTlBekgxcnh3cG1QbE9vRW9TQnNPcWJEZ2RFeG12ckVPUWdiaVhoTVN0RVRh?=
 =?utf-8?B?NTNGUEk3U3lVRTh6cENxYm1IbkZGVzVWa3JGTDB0T1pKQTFpdWxLbTQ0bncz?=
 =?utf-8?B?NTZSWUpETmllZXBXTXNpcXN5NkwrU2VodDI4ek01bmxGZWpxaTkzanRzdW9Z?=
 =?utf-8?B?aUI5SzAxRGtOcmtnRDhrOEYrSEhrNXMvYW5SQkNLenhQUXlHbnhLakwxT1g4?=
 =?utf-8?B?WEltZnc3RmU0OVlxRC9hS3JLVmNZcnpZR3N4Y2piMTB4VkNqeXNNdVZKT08z?=
 =?utf-8?B?VWthNmdCTTFiRDNKU0dBdm5xRXN3QjNPR0VCeEdnS0I3MGp4c1k3UGliOUJ0?=
 =?utf-8?B?L1VHaTROSmN3UXRkK09GQ2E5V1Uwa3pUQVdTQS85YXg1cDJMV2RTalJUeGNn?=
 =?utf-8?B?UmdsMENWY0ZZeStrVXRPT3dOVFFMNTNMeWpwWHpIUmlhNCtCOHg4c3FnMXNh?=
 =?utf-8?B?OEtPN1ovNG9Ydk9hdi9iOEQrT2p4eW5iVzJJbTJKK2daLzkvZTZSMDZDZ1BP?=
 =?utf-8?B?MkVvVFl3U3VOYThnZmpwb1hNVXFEUWN5cGZydHZ6cmhiaS9CKzh1SGNkU1R3?=
 =?utf-8?B?NFd5VndtMVhzc2htMXBFbHhtRm5rMnRmZmZRVEF6VmtXZUJwWStEaUhkeDRp?=
 =?utf-8?B?cS9YREpva3p4T2tIb1lsaTY4bFp0ZDNEZmQxZGFKVCt6VGhLUTFGQWlxR0ZO?=
 =?utf-8?B?eC9DSmYzRGg1ZGQraHVqK2k2cUNpdWkyNlYxc0xkd2M2T2lrTFdHaUpPV3Bz?=
 =?utf-8?B?ZHFRTWY3a1FhcHFQK2FwNGNTS0V1dyswbnhURUdheFM3R2ZwSUV1YUVqc25W?=
 =?utf-8?B?RWZvN1V6Z3JiSGk5a010SXNoQnZQbm1iMk5JZkRXSXlaWUFaanJqblNBNlBl?=
 =?utf-8?B?NEZ1UGo4ZFRsK2VqSzc1Yy9McXJJM041RkphejJTdW1oTUp1dW1FVlY4SmFt?=
 =?utf-8?B?VFlZb3lwQW1Vc2lMWEJ4Q3hFaW01amJwKzN6T1UwSmdZd0F2OFJkQko0TUdS?=
 =?utf-8?B?THp0TmhsNlRxMm9KVDdJd1M0MEhPTVNYS3FKNHNFb295d2lWWU93Smk2L0tx?=
 =?utf-8?B?TTZ3UVc0alZNY2J2ZTVyYk5ZQmVHa01XbUx3U2d2Mng4SktWKzVmcGpLeEMy?=
 =?utf-8?B?YWEvOUd5ZkdEbWdYell1MHZZWUhTTFM1aGtBeUkzTTBBMC9yVkFBRzJHZHI3?=
 =?utf-8?B?VTYyMGRTUXVkcTdEcDVIa0VreW9IRW50M0VaWlZ1SkRodWtoY0JRQjJvN1RX?=
 =?utf-8?B?M09BMDB6VUlBdUFtRytlcjdRWHIxMkUrMlJRUTdncXZidEM4d0RxWjh1cDlt?=
 =?utf-8?B?NCtRTmZSSE1NZzZzU1BEZHBhV2tsQ3d2Qy94MjFWZmt5UjJJcGI5VWVDalZI?=
 =?utf-8?B?aEVpZ29DRnF5aUJmcWNsWE1ZaHV3L0IrczgrcmQvM3ZjeFFhblZjTmtLOTBJ?=
 =?utf-8?B?cVhlV0xoZmlzZnRzdUpDd1pJOWluQ1dUdURTSGpWTFQ1UFpJelVqREhoTkJH?=
 =?utf-8?B?dlNaNHVPSHhMa0wzTnZ3V3Q2T0I1dlEybFJqUnhJUU9zbC81OXcrYWhGNTNM?=
 =?utf-8?B?d2NHdXIrS1A5dnBhbnhzU1dYRUhyTjZKNEZKQU9GZUd2WWpNaUdFaXFQS2R6?=
 =?utf-8?B?QjlURnZQY3hHMllaQnhWYkdvd0I3azBFcWc3REpSMU9UWGx0WDdNTSsxVGMw?=
 =?utf-8?B?R3JQcmVwTiszUWhWZ29wdUlQMXBHeU56T3JZTUs4dHZ4QjhYbUFNNlFibXRo?=
 =?utf-8?B?ZXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e184a8f1-3d88-4745-09da-08dd5f1a6e45
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2025 14:55:28.4134 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sHP+UDfVyEC3CV8Un6z0t/Nh7nXTneAfImGK82LPwflbb67fwzk1onHJ9cbxtWy5DzXp9da2FGTH/jG2Uxak+6N8LyFESek48qWN2a4NhCQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8388
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


On 3/7/2025 6:20 PM, Ville Syrjälä wrote:
> On Fri, Mar 07, 2025 at 05:33:46PM +0530, Nautiyal, Ankit K wrote:
>> On 3/6/2025 10:16 PM, Ville Syrjälä wrote:
>>> On Thu, Mar 06, 2025 at 06:40:54PM +0530, Ankit Nautiyal wrote:
>>>> During modeset enable sequence, program the fixed timings, and turn on the
>>>> VRR Timing Generator (VRR TG) for platforms that always use VRR TG.
>>>>
>>>> For this intel_vrr_set_transcoder now always programs fixed timings.
>>>> Later if vrr timings are required, vrr_enable() will switch
>>>> to the real VRR timings.
>>>>
>>>> For platforms that will always use VRR TG, the VRR_CTL Enable bit is set
>>>> and reset in the transcoder enable/disable path.
>>>>
>>>> v2: Update intel_vrr_set_transcoder_timings for fixed_rr.
>>>> v3: Update intel_set_transcoder_timings_lrr for fixed_rr. (Ville)
>>>> v4: Have separate functions to enable/disable VRR CTL
>>>> v5:
>>>> -For platforms that do not always have VRRTG on, do write bits other
>>>> than enable bit and also use write the TRANS_VRR_PUSH register. (Ville)
>>>> -Avoid writing trans_ctl_vrr if !vrr_possible().
>>>> v6:
>>>> -Disable VRR just before intel_ddi_disable_transcoder_func(). (Ville)
>>>> -Correct the sequence of configuring PUSH and VRR Enable/Disable. (Ville)
>>>>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_ddi.c    |  5 ++
>>>>    drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 ++
>>>>    drivers/gpu/drm/i915/display/intel_vrr.c    | 63 ++++++++++++++++-----
>>>>    drivers/gpu/drm/i915/display/intel_vrr.h    |  2 +
>>>>    4 files changed, 60 insertions(+), 14 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>>>> index 676c1826f15c..6d89a87b3419 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>>>> @@ -78,6 +78,7 @@
>>>>    #include "intel_tc.h"
>>>>    #include "intel_vdsc.h"
>>>>    #include "intel_vdsc_regs.h"
>>>> +#include "intel_vrr.h"
>>>>    #include "skl_scaler.h"
>>>>    #include "skl_universal_plane.h"
>>>>    
>>>> @@ -3248,6 +3249,8 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
>>>>    		drm_dp_dpcd_poll_act_handled(&intel_dp->aux, 0);
>>>>    	}
>>>>    
>>>> +	intel_vrr_transcoder_disable(old_crtc_state);
>>>> +
>>>>    	intel_ddi_disable_transcoder_func(old_crtc_state);
>>>>    
>>>>    	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
>>>> @@ -3521,6 +3524,8 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
>>>>    
>>>>    	intel_ddi_enable_transcoder_func(encoder, crtc_state);
>>>>    
>>>> +	intel_vrr_transcoder_enable(crtc_state);
>>>> +
>>>>    	/* Enable/Disable DP2.0 SDP split config before transcoder */
>>>>    	intel_audio_sdp_split_update(crtc_state);
>>>>    
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>>> index bd47cf127b4c..d2988b9a6e7b 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>>> @@ -1065,6 +1065,8 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
>>>>    	drm_dp_remove_payload_part2(&intel_dp->mst.mgr, new_mst_state,
>>>>    				    old_payload, new_payload);
>>>>    
>>>> +	intel_vrr_transcoder_disable(old_crtc_state);
>>>> +
>>>>    	intel_ddi_disable_transcoder_func(old_crtc_state);
>>>>    
>>>>    	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
>>>> @@ -1326,6 +1328,8 @@ static void mst_stream_enable(struct intel_atomic_state *state,
>>>>    
>>>>    	intel_ddi_enable_transcoder_func(encoder, pipe_config);
>>>>    
>>>> +	intel_vrr_transcoder_enable(pipe_config);
>>>> +
>>>>    	intel_ddi_clear_act_sent(encoder, pipe_config);
>>>>    
>>>>    	intel_de_rmw(display, TRANS_DDI_FUNC_CTL(display, trans), 0,
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>>>> index f523a48e6186..d7580b6e4e37 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>>>> @@ -460,12 +460,6 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>>>    		intel_de_rmw(display, CHICKEN_TRANS(display, cpu_transcoder),
>>>>    			     0, PIPE_VBLANK_WITH_DELAY);
>>>>    
>>>> -	if (!intel_vrr_possible(crtc_state)) {
>>>> -		intel_de_write(display,
>>>> -			       TRANS_VRR_CTL(display, cpu_transcoder), 0);
>>>> -		return;
>>>> -	}
>>>> -
>>>>    	if (crtc_state->cmrr.enable) {
>>>>    		intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder),
>>>>    			       upper_32_bits(crtc_state->cmrr.cmrr_m));
>>>> @@ -477,14 +471,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>>>    			       lower_32_bits(crtc_state->cmrr.cmrr_n));
>>>>    	}
>>>>    
>>>> -	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>>>> -		       crtc_state->vrr.vmin - 1);
>>>> -	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
>>>> -		       crtc_state->vrr.vmax - 1);
>>>> -	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>>> -		       trans_vrr_ctl(crtc_state));
>>>> -	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
>>>> -		       crtc_state->vrr.flipline - 1);
>>>> +	intel_vrr_set_fixed_rr_timings(crtc_state);
>>>>    
>>>>    	if (HAS_AS_SDP(display))
>>>>    		intel_de_write(display,
>>>> @@ -618,6 +605,54 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>>>>    	intel_vrr_set_fixed_rr_timings(old_crtc_state);
>>>>    }
>>>>    
>>>> +void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
>>>> +{
>>>> +	struct intel_display *display = to_intel_display(crtc_state);
>>>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>>> +
>>>> +	if (!HAS_VRR(display))
>>>> +		return;
>>>> +
>>>> +	if (!intel_vrr_possible(crtc_state))
>>>> +		return;
>>>> +
>>>> +	if (!intel_vrr_always_use_vrr_tg(display)) {
>>>> +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>>> +			       trans_vrr_ctl(crtc_state));
>>>> +		return;
>>>> +	}
>>>> +
>>>> +	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>>>> +		       TRANS_PUSH_EN);
>>>> +
>>>> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>>> +		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>>>> +}
>>>> +
>>>> +void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
>>>> +{
>>>> +	struct intel_display *display = to_intel_display(crtc_state);
>>>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>>> +
>>>> +	if (!HAS_VRR(display))
>>>> +		return;
>>>> +
>>>> +	if (!intel_vrr_possible(crtc_state))
>>>> +		return;
>>>> +
>>>> +	if (!intel_vrr_always_use_vrr_tg(display)) {
>>>> +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>>> +			       trans_vrr_ctl(crtc_state));
>>> IMO we should write 0 here too.
>> There is one problem. If we do not write trans_vrr_ctl but crtc_state
>> has flipline, vmin, vmax all set to some value, then we get mismatch in
>> vrr_get_config.
> This is intel_vrr_transcoder_disable(). Nothing is expected to be
> configured for disabled transcoders.
Okay will set trans_vrr_ctl to 0.

Will retain the wait for clearing of VRR Live status bit for now, but I 
am open to have it removed for disable transcoder case.

Regards,

Ankit

>
