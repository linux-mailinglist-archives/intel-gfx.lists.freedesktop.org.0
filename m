Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC03B163FE
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jul 2025 17:59:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28B8E10E36A;
	Wed, 30 Jul 2025 15:59:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YCayPurL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D45A10E36A
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Jul 2025 15:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753891194; x=1785427194;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PZlI9ULaZBBM8Mqa5GON6xQVu0HmuqccU9OLc3UedjA=;
 b=YCayPurLwTo5wHlvFZnzHJoIeZ5vWPtua/9mRLYNaBh4OYiwJi3bbh2K
 PwjDvvVMLLhEGgVvWdAhzmm4H4wVT+cDDpMwV5MpTwvnruRJQ/u9zNrDf
 p61B1JIK/MS9gq/AxP3s7UP4k9TX3chylOqA2eQ5PXMmxxOwMEVfKXQVh
 wJAoJ9Vfc9heBHlqKxGvZ6NYh4lQlnj1SIccXg4IycIWlfRI0bl3nVe4k
 syEt6sd0MCXHJo+1zjztxroJej+kXrHiGvza4wDmuKJQ4ByKQUIrDUq5y
 XEd67JmQlWuL5VnMzrQwCVH334AVtv+fy4bReKTUYn0uX12SHpp2dkpiE Q==;
X-CSE-ConnectionGUID: du5NoeQySPK2y1gmMco7mQ==
X-CSE-MsgGUID: 8T5HQ8gBTaa5DkQ1/OxwOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="56131036"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="56131036"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 08:57:40 -0700
X-CSE-ConnectionGUID: jhkzXE2rRO6YYKvn3UmPDw==
X-CSE-MsgGUID: tCbU9pkBSJGO6sTG5Oep0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="168316612"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 08:57:37 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 30 Jul 2025 08:57:35 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 30 Jul 2025 08:57:35 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.61) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 30 Jul 2025 08:57:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PzIAHw5yjzR4omDdBcc9h5XGF+buH2UfVieYQVZrFESjdodnAMrrXB7XyBHWqnoVJuIVur0j4rG/2cwH8YRNLUgoQPQjDR13uMIuzMHLJfThGc8bhspzkSBD3HwFsmBIY1pie3OklT9/Kq6UAO3TqNo0SnLs5p8z1nkaVZGqCHZJiCEILnPJKcnXfO5FfW1Im6wOzd8FEmw4Nnj4hRZiJ49Mc01OmDZBrKyht0RvpaOQwADTtbuNmfua3j4KxpEpaiI+ijKb2jM93kTWR0zIkWw7VuxPsRWJw/pC8jvsteB6rCzrGGruJuexFro0CzFf4hHfrfF6h242jvx/XAHu8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vVCpIfeC8pmOIYFMMkyUaTswTT4iq6+6lJSjG6H2Cmw=;
 b=JxJgryThcBuVO7LmzSYtGHje9JhfdaTNup2xKk5CJ2ZJ2RSz8STZOfzuFVPz33yA8x9fH0SYundhz8X04AaTOhRXm2LM7+b/1NcsFwcyGweUvUIgX7SjAoqKTtzyvYIAtw7OC34T0SKI3Q2VtYttVL1dcxy+iZUGYq5krrx/ZIwec6yBHlHGoj7W47HDm99Kvs5oss/1aDQkHoWrvEg0n1zQtxyXUaT5/hMobB9mXvvKi5F62/7QuJFpIE6Iqq3RXo9hM9ngXBoEmgJZFjKrudk2jjQLPzkiEsaWkDpmbgWWoHQfgkCsZ+x0sJq6XoznpAC+d58XxFErHFpLPaDFwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by SN7PR11MB8112.namprd11.prod.outlook.com (2603:10b6:806:2ea::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.26; Wed, 30 Jul
 2025 15:57:16 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50%5]) with mapi id 15.20.8964.023; Wed, 30 Jul 2025
 15:57:15 +0000
Message-ID: <5dba7a87-a88d-4407-9230-44ac42ab2934@intel.com>
Date: Wed, 30 Jul 2025 08:57:14 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] mei: me: Add exported function to check ME device
 availabiliy
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: <intel-gfx@lists.freedesktop.org>, Alexander Usyskin
 <alexander.usyskin@intel.com>
References: <20250715225959.488109-4-daniele.ceraolospurio@intel.com>
 <20250715225959.488109-5-daniele.ceraolospurio@intel.com>
 <2025071622-frequency-sneer-0ad9@gregkh>
 <5d588a32-fbe5-41c8-8cd5-0d53b1b44637@intel.com>
 <2025071653-outdoors-elusive-dcf4@gregkh>
 <b30a22dc-217a-4e74-8ab8-6b606bf45e2f@intel.com>
Content-Language: en-US
In-Reply-To: <b30a22dc-217a-4e74-8ab8-6b606bf45e2f@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0360.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::35) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|SN7PR11MB8112:EE_
X-MS-Office365-Filtering-Correlation-Id: 3847215c-5145-4122-82d0-08ddcf81c0ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MGd4ckpGdTJoOGFOU2ZPVDIxQ044dDRsQmxIR1BlNTdRYjcvb3ZSMHVsakE4?=
 =?utf-8?B?c1gyS1JkNHNqbWI4dEJ5bllaa0tVU3Q0N3QxWW1uOHdEM1ZJcGEySW54OEZW?=
 =?utf-8?B?SHMzWCtGVnhMT2pvR1RoMFFxZ3RRdTVNcVhXOTJsVE5WTUNOUkZ4NmhFZlgy?=
 =?utf-8?B?QWdOcXl5L1hpK0I0VnIraEJMNFVKUkJ0bE5IR1BYRGVPZ3RONjNvcVJUVG1X?=
 =?utf-8?B?NWNtYUlXSGxRblB2UUVxb25GUTRXM0RMMzh5QXVaNURCSFd6UVYxUXdEdEp4?=
 =?utf-8?B?R3h1MWRTN01SUGRXR1JUWm12UTQ0akh1anNKeUs0bFdIN3gvRHVZL1ZsU2ta?=
 =?utf-8?B?dFFFVmxDZzlCWjRLREd6c1kwMW1ZNVUwVk5PQmRjaE9YVy8xbmpoZGl6aGNr?=
 =?utf-8?B?dXpVNEhIdFRCL0gwcWZHU3d0NTJsZTZXMUY0bUFlSlpGazVteFNiQnQ3akhy?=
 =?utf-8?B?ZDFSWVlXUWdpUnZmQ3U3b01lNTdSQ3o1QWVuN3M2L1hqRW56OUFsK2NDR25D?=
 =?utf-8?B?UUxQWnFEVUE3cDYyL3ZEVGxUNlpsSUlNMldoS2Rhemo4RnJnSC9jR3kvSmQ5?=
 =?utf-8?B?a2VLaGpGUDdNbDVwdjNtM1pKK2MvNHNRMGFVKzRmVnRCWUJHY3BTeEpIUDlr?=
 =?utf-8?B?M2RiZkVKcjFsSnRLUTgxZTlMYlhJMDV3ODRRRGRtQkJJK2E4c2dTZWdLWnRK?=
 =?utf-8?B?SUY1VzVCT2JHNHJKUksyRDBQa2pZSEJLd09TOWhwY3JDM0l4ZEdpdUdmK0l6?=
 =?utf-8?B?SEJuTm5Ed0Y3ZHluampQQnBwL1d0Z0EzUk5XK0Y2Z2kyMXdZMzJXeGJCWk4r?=
 =?utf-8?B?ZXExN0hMQkhpUEdvLy9KenNORDAzWStld0ZycmUzRU55NElMdTJvUGpUSTZk?=
 =?utf-8?B?MmZLRGROWStMcWVhSTFMYkpoV2JwZUdXSkRwSEFJd0QzWEN4YTI5a0xJa2k0?=
 =?utf-8?B?aDM4dkZBTGl1dktwckZJSVhJTTNFOXBpdkdGZGFibHY1NTg0c1ZmUzM2b3BK?=
 =?utf-8?B?U052V1NiOG4rRVcrT3lsL0p1dks0WTkzUE91eW5ISmlMVmlVblM5aHpHbzg4?=
 =?utf-8?B?MHBYUStUSlJzTXgxUVJ6WFVLSEVTRERlU3piR2NrMDU0Rmc1aW5SVGorMTNX?=
 =?utf-8?B?K08xSGNLblI5b1dwczFhd2pFdG1rV0tFRktrVHl0OFJoQUVTSm9QM2dJRnJJ?=
 =?utf-8?B?NmtweE5uaU1JaEZQMWtFMFJVQlhuYkxVbTZwSXN2ZTR6TTVWRGNnNFBQY0Ux?=
 =?utf-8?B?UnRWUXpqWk1ZVzErT0RqYVBjSE1lQ2VQZlBTWXJCSTlTWkdOZm1lL0paYlEx?=
 =?utf-8?B?dnd3UUM1ZCtGZzlPeVNIcVJ2bkNGRE82WUdCY1lpbElRZktjQ3AxUzhGZitW?=
 =?utf-8?B?SlRLazBzS3JrREpLWHRxRElDN2pkWngvb1J6VmpRaWFsUC92djAzNDlwZGlW?=
 =?utf-8?B?U2I0RWE2bEpaUkRlMExYRFBPVDJhQVNZTEQzSGV5ek9BY1RuTE96VU1KMjZx?=
 =?utf-8?B?ZEVDN005MkNmam10UWFhd3AyYzlMS0dRekFTamZKZTFWMUd3cUc5KzdMbFVy?=
 =?utf-8?B?a3AxVlBGZlg2MmJyR3NUQUk0SEVjQmc0ejVHK2QwMjhpV1VoemtFa0Y0VnMr?=
 =?utf-8?B?QmV4TDJWemtFdW5uTlkvM04ya1AxSlZ1VS9qU21YVFd1eXUyOTg4T1A0Smtr?=
 =?utf-8?B?UFBMaUhEemIxMS95UXArRis0UGg0djA5d08rakYwM2pXL1hQczZnWXFvNERB?=
 =?utf-8?B?bVhpMGl3OHp3MWgzK1JySjJYTTF5dXFPb3plZ215VGZWbzFUMW9aQjQ3enJ1?=
 =?utf-8?B?OWdOQU8zaXB5UzdyZ2NMZmJSN2hVN1kyay9UNVJYeXJWbzlwbG1pOXFZNmRJ?=
 =?utf-8?B?dlZ1SWZXNXE4NmxrVzJoRVRSbUtuWHpxTXZjZlFMbjlhWUpRaG4wdHhKaXA1?=
 =?utf-8?Q?ZYkMtUXsOLc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UFVIamkrWlNmK1F3SEV5SHVkTVc5bmIxZXZMdTVvMk5jd08reUc0dCtMTUVW?=
 =?utf-8?B?TW9McUsvV3F4VkZKcm4wLzBpZkVjT0wzV1Z0ei9pNS9LejB0TUlMM2M1UURn?=
 =?utf-8?B?angyWWRqdHJka3U1cjFIV1JLYkJGSWFNNlc3Q1gvWmdsNjlXSWJ5U2hsNkRL?=
 =?utf-8?B?S1U2b1RVaDRIYmI1S1hhcUFhRWZtVGJCa3Rya1FjM2VGUVJEcFlodDBpMFI1?=
 =?utf-8?B?Z3NpWnVXclNZY3MrMktORjY1cGpvR0kzZnNrNWN1NVEzSlc1Y2srM0dMenZJ?=
 =?utf-8?B?Z0xkY1lOd2YweVp2bHdDUW5MK25SV1U3UTJJMi9qaGJGdXQ2VXNjZ1FDZmht?=
 =?utf-8?B?QTRQaDZBVzRyQkcvaE5DZTB3OW9KV3VCNkVCaDMzc1dvU01Yd2ZFYnUxVTA4?=
 =?utf-8?B?dTlDNjBKY3R6T0Y3UW9OR0hERjBPeVlTeDBQdExuTnkrN1JTaW9LNDJDK0w0?=
 =?utf-8?B?cElseDVKRERwRkNWaFphNFltUFVrS3ZVcWNRcmpGbDNmS1p6TTVoaEV3ZUNw?=
 =?utf-8?B?MTROaGRaUXVkVGpKWnFackRnZjlTZzlwREVRTFN3dEVydTU4ZmhmTTNyQlpx?=
 =?utf-8?B?eHpUa2JlU0Nwcm9JTlVaczl3dm1URG1IUnJ4SkphcStjMUNDa1hHSmxYTWNw?=
 =?utf-8?B?WGxvZktIME54NUhac3oyYWNRTm1xdlc4ellCdVBYMkhGQ3lLK1YvTnRjbm9F?=
 =?utf-8?B?bnc3Z1VkUDJyK2VxMUJYdHNKem8xZjdsbEFKRHRnQ0JTZ3NaaHpraC80WStD?=
 =?utf-8?B?a2Q1VVFRTm9Kc1U5VWxEdE85VTFqYkZEQTE3MEk0MklZRDNDTHVKdyt6VWF3?=
 =?utf-8?B?OUJESFdRTHJ2ODNRNXA0Z1JsdkRrckQrWXQ3aWZxUmZLVGNSaDRVUHZmRk1y?=
 =?utf-8?B?SlNZTEw3azg4NUd1M3g0NTIvL1RWWUZRQ2dzT2F0S01zNGVPUGpGN3FYMTRx?=
 =?utf-8?B?WGRmVnNYRVVGKzFRQkxLQ1hZSGRtazE3ZXJaaFFzUGpKaGpzeWMvMXF5dmJM?=
 =?utf-8?B?SEZFV0t4S01aNHBOajdYWUwzcms4QmR5aHB4d2c5N1VtWU1uKy9TaVdVTWJ5?=
 =?utf-8?B?UTNTem1CMGtRT2UxSEE4VHdUQTBraVZtTFJJMnJrWkp6dVNRVlQvTGFWNGN1?=
 =?utf-8?B?QlZHR0VGRVNHZnVSdnhuWmZhOVIxYmdraCtGUkNHMzlDSklyL2QveHdEdU5j?=
 =?utf-8?B?VHZpTWpjTE9EZll3UUlycWN2T2dHL1M1RmFjZXlLSHBLbXp6S0pjSUVmTTdG?=
 =?utf-8?B?ZmcxNlB3aXh5NENJQzRSdThEVjVsd05hY2gzRWo1Q1VYa3lxb2ZRTWFIQjBq?=
 =?utf-8?B?Q2lCTjZCb2QrRUxJUlc4UTUwd2NBdTAvN1lmYWVGdjVsNzlMdHpCa013TnUv?=
 =?utf-8?B?bHRWVkNCUEF4cVRidDNFQVVXS2tFeDY1R0RMZXNyRkNCSXUycGNQV3owdGVk?=
 =?utf-8?B?NmlJak9vOUxveEFQQ01BaG1vSGlWVUdHOEh0Z3U5MElOaWljekRYNHR6VmR6?=
 =?utf-8?B?S3pxRWFrbmhkalpYRVNaRGJKL1ZJZ2EvNzhtRmc0dGhTZDh3bEtUQU5TL0JL?=
 =?utf-8?B?WnE1d0ZWRXZhYlNDc3JMN0paWDhCTEZFbGFnTFhWQnpLSEU0azJtRm9GMk41?=
 =?utf-8?B?NUdQVVV1K0lCVTZuS1daL3E5eVFXS1FMREc1eVJNSzRNc3lTT29wYmNXUUdD?=
 =?utf-8?B?MmtjQ0F1azlCYkJOTDFia2s3Z05TVFAxdVZpQXNwZEhwbkdKczdzMnNEcDRG?=
 =?utf-8?B?UXVDUjdkc2R6Nkd2cDNOd0tobDBuTHJ4THcwVXJzeFo2VE1pQXVQckx0Z28z?=
 =?utf-8?B?N01IaGM5b0dQZXR1bTJXYjFzd215QmJ5bUdZYmtCb0YvVXpVY0FkVVJiVXB2?=
 =?utf-8?B?NzNhQm1yT1FaMHNxNXhqa3JaL1FXdVA4ZlIvYUlFVWlPSUNITFhQb2h0cUUv?=
 =?utf-8?B?ODRvd1NrcHl0MjdUcTMyOXdLSmwwRzNJd01qdFlsTWVyRnd5TlZYbCtESWd6?=
 =?utf-8?B?ZmZPSGNrcnF2b0dSdU4xT0ZseEpaQ2RJSk9UVnZiWlo5eTQ4ZFFlTW9VdDM4?=
 =?utf-8?B?TnVVNjRpK1NDVktKMnQzWnFXTDNYaEE3V0lqUmZlbXl4MEovUHd4M25xWGpX?=
 =?utf-8?B?S05FeC9reFJzQnJkbW9Db1REVWErRkZhTmNyUWZROTFJeXY1ODVRWGxOeGdh?=
 =?utf-8?B?T3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3847215c-5145-4122-82d0-08ddcf81c0ed
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2025 15:57:15.2571 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iDWkJRWo1GpDZYGC8RvaBD7/iffPppYztlGwy+FaONMwhnAeKJVZGcQv8WLY3dlIXnjJOooMTvMz5PgJFNVj8SsgBq25bh2+rIP1z411zxM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8112
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



On 7/16/2025 10:57 AM, Daniele Ceraolo Spurio wrote:
>
>
> On 7/16/2025 9:49 AM, Greg Kroah-Hartman wrote:
>> On Wed, Jul 16, 2025 at 09:38:09AM -0700, Daniele Ceraolo Spurio wrote:
>>>
>>> On 7/15/2025 10:10 PM, Greg Kroah-Hartman wrote:
>>>> On Tue, Jul 15, 2025 at 04:00:01PM -0700, Daniele Ceraolo Spurio 
>>>> wrote:
>>>>> The intel GFX drivers (i915/xe) interface with the ME device for 
>>>>> some of
>>>>> their features (e.g. PXP, HDCP) via the component interface. Given 
>>>>> that
>>>>> the MEI device can be hidden by BIOS/Coreboot, the GFX drivers need a
>>>>> way to check if the device is available before attempting to bind the
>>>>> component, otherwise they'll go ahead and initialize features that 
>>>>> will
>>>>> never work.
>>>>> The simplest way to check if the device is available is to check the
>>>>> available devices against the PCI ID list of the mei_me driver. To 
>>>>> avoid
>>>>> duplication of the list, the function to do such a check is added to
>>>>> the mei_me driver and exported so that the GFX driver can call it
>>>>> directly.
>>>>>
>>>>> Signed-off-by: Daniele Ceraolo Spurio 
>>>>> <daniele.ceraolospurio@intel.com>
>>>>> Cc: Alexander Usyskin <alexander.usyskin@intel.com>
>>>>> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>>>>> ---
>>>>>    drivers/misc/mei/pci-me.c | 17 +++++++++++++++++
>>>>>    include/linux/mei_me.h    | 20 ++++++++++++++++++++
>>>>>    2 files changed, 37 insertions(+)
>>>>>    create mode 100644 include/linux/mei_me.h
>>>>>
>>>>> diff --git a/drivers/misc/mei/pci-me.c b/drivers/misc/mei/pci-me.c
>>>>> index 3f9c60b579ae..16e9a11eb286 100644
>>>>> --- a/drivers/misc/mei/pci-me.c
>>>>> +++ b/drivers/misc/mei/pci-me.c
>>>>> @@ -18,6 +18,7 @@
>>>>>    #include <linux/pm_runtime.h>
>>>>>    #include <linux/mei.h>
>>>>> +#include <linux/mei_me.h>
>>>>>    #include "mei_dev.h"
>>>>>    #include "client.h"
>>>>> @@ -133,6 +134,22 @@ static const struct pci_device_id 
>>>>> mei_me_pci_tbl[] = {
>>>>>    MODULE_DEVICE_TABLE(pci, mei_me_pci_tbl);
>>>>> +/**
>>>>> + * mei_me_device_present - check if an ME device is present on 
>>>>> the system
>>>>> + *
>>>>> + * Other drivers (e.g., i915, xe) interface with the ME device 
>>>>> for some of their
>>>>> + * features (e.g., PXP, HDCP). However, the ME device can be 
>>>>> hidden by
>>>>> + * BIOS/coreboot, so this function offers a way for those drivers 
>>>>> to check if
>>>>> + * the device is available before attempting to interface with it.
>>>>> + *
>>>>> + * Return: true if an ME device is available, false otherwise
>>>>> + */
>>>>> +bool mei_me_device_present(void)
>>>>> +{
>>>>> +    return pci_dev_present(mei_me_pci_tbl);
>>>> And what happens if the device goes away right after you call this?
>>> Both intel graphics drivers do already handle the device being 
>>> missing or
>>> going away, it's just not very clean. Behavior changes based on when 
>>> this
>>> happens:
>>>
>>> - if the device is never there or disappears before the component 
>>> binds, we
>>> timeout waiting for the bind
>>> - if the device disappears after the bind, we handle the case as 
>>> part of the
>>> component unbind call
>>>
>>> The timeout is quite long and can therefore impact/delay userspace, 
>>> so the
>>> aim here is to mitigate that impact in the case where the device is 
>>> just
>>> never there, which is easy to check and more likely to happen 
>>> compared to
>>> the device going away after initially being there.
>>>
>>> Should I add a note about the device going away to the function doc?
>>> Something like "Callers are still expected to handle the case where the
>>> device goes away after this check is performed".
>> My point is that calls like this are pointless without a lock, as the
>> state that you think the device is in (which this function returns), is
>> just a lie as it could have already changed.
>>
>> So look into what you are really wanting to do here, as what this
>> function does is not what you think it is doing :)
>
> What we want to do from the GFX driver POV can be summarized as 
> follows: if at the time we try to initialize PXP the CSME PCI device 
> is not present, we don't initialize PXP and continue without it.
>
> We don't want to support hot (re-)plug of CSME, so we don't care if 
> the state changes after we've checked (or it has already changed by 
> the time we act on it):
> - if CSME was not there at check-time and re-appears later, we'll 
> still continue without PXP support.
> - if CSME was there at check-time and then disappears, we'll handle it 
> as described above.
>
> IMO this function covers this use-case, but maybe it's too narrow a 
> use-case for it to be a generic export in the mei driver?
> Would it be cleaner if I replaced this with a function to export the 
> PCI ID list, and then ran the pci_dev_present check inside i915, so it 
> doesn't matter if it only covers our narrow use-case?

Any more feedback on this? Should I just go ahead and switch to 
returning the PCI ID list?

Thanks,
Daniele

>
>>
>>>>> +}
>>>>> +EXPORT_SYMBOL(mei_me_device_present);
>>>> EXPORT_SYMBOL_GPL()?  I have to ask, sorry.
>>> The non-GPL version seemed more appropriate to me because I didn't 
>>> think
>>> calling this function qualified as "derivative work", but I don't 
>>> really
>>> care either way because both i915 and Xe are part of the kernel and
>>> GPL-compatible, so I can switch to the GPL version.
>> All other mei_* exports are EXPORT_SYMBOL_GPL(), please don't break that
>> pattern without a whole lot of documentation and reasons to back it up.
>
> Sure, will switch.
>
> Thanks,
> Daniele
>
>>
>> thanks,
>>
>> greg k-h
>

