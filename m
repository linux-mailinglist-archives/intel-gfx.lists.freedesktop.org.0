Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C07B19DEE
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 10:48:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A114B10E421;
	Mon,  4 Aug 2025 08:48:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M2DEmaK5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE25B10E421
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Aug 2025 08:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754297292; x=1785833292;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=66vN0pKVVL2P00/2OLlDuLP/0gy7SJgMP6+9SxP105g=;
 b=M2DEmaK54idt3FtfKdK6WyynfpRiewfuHxIi9fNfNxmutSNApw5oL2tg
 UEfOQcXGHldW6seTRA8VWqivEPId+vhZY9plsAOcWnB4jbyfGu2hyfTgi
 89rvfSvQ71cyOOcqEc8z2LpgcEOXIVndb9Qb/UeTEqndYoRtOwRz610iK
 9NvyrpLPPLfhIg7Ib8Ut6y1AAUH+eAueg6+bW7VoCzjnCvpFuzq901ubA
 j1uNTwaNm4GmSoop0bVQ4226Rb8u3gCOhJsSC63qCELbsqt0nGMDKmy+q
 XGMSTDthn+RFpuo0T/O4D/Z9iTs25zy/LHlKtpcKXH53LLlmurFf6dDwu Q==;
X-CSE-ConnectionGUID: 1wf/P0Y5Qs6porf1Mcbzww==
X-CSE-MsgGUID: JnBcBlMsRDCwUf3LXLt/tA==
X-IronPort-AV: E=McAfee;i="6800,10657,11511"; a="55754474"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="55754474"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 01:48:11 -0700
X-CSE-ConnectionGUID: D7O/dL+wQJedpijuLG2R1g==
X-CSE-MsgGUID: 29DF44AgRISXGjkYKJsR8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="163371475"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 01:48:11 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 4 Aug 2025 01:48:10 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 4 Aug 2025 01:48:10 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.76)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 4 Aug 2025 01:48:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cmh1f52wSLiaRUe7JVv7KYZ63KVeprdJladBhaEfMWgjPYlv969LsIQVo7k5fKnt1Pf8Bwfr+ny8mqEACBM4uNBjzcYq73hG8iU4bWXLaNPE47cyBGD95/NEexgVk0MANrFD9ezFZO7nNyuhYlG4NfBUcQFYshDKWLG63up1fgfUnPTtpRF0BG9tr9h+U/eKwbxX6f09RRq2eOekQEu3a1niWjIIt/N7SdO5FXQHoPpWO/0UKZaj6fU8NBVU3ihK5OvHwyORIBsYA+T9PDYgCZTXGb84gKNZ9j8NDnLPmajIJ/EODkYZRcchG5F5Q0VRkO4fsFAT7XG5xZ/hNl5Vqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bRrUaMQKMdT+y6xufAWX61I7GOipcQ7uzF02hL2+TxM=;
 b=bwu4U+9VWtZW9cvxp4FwuHylOuolgjnAo+BtoZnXu/3t1fRsQfNHd3XqEvR1a9wPLpFdmnVgC1FKVi62lq3R4ocImdkicNQtIh2YrZVJzX0Y40MNvKc5Rgr7qDr3sWMpzkS2G2qbUu8Wu0BG+QfQCYSN34Neyh7HxQRcbH9hoC4b2sRxNdA4Hy0eke3hPcm6WYng5ClsJrfUgFdhklFOevOI3cjl8onoWX3YT5grCIVlLQ2BGdUpJ1790qaN8zBxFZIW1JRwleKXBFP9+vNu8Xm/kYagqqtOJ4gguHHhIRg3gvXsYFnB7/30ORljIF3k2eNw6lfaDlCtq05f/UbQtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SA1PR11MB8254.namprd11.prod.outlook.com (2603:10b6:806:251::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Mon, 4 Aug
 2025 08:48:07 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%4]) with mapi id 15.20.8989.018; Mon, 4 Aug 2025
 08:48:07 +0000
Message-ID: <9fba1363-5c7d-4b2a-91e1-40bd0e6ac665@intel.com>
Date: Mon, 4 Aug 2025 14:18:00 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: Issue or bug concerning DRRS on old i7-4980HQ
To: =?UTF-8?Q?Ren=C3=A9_Herman?= <rene.herman@gmail.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
References: <3aebffd3-b3b7-4c3c-a7ac-816965d0204d@gmail.com>
 <77f3386d-756b-4cca-b317-1b3c5ad725fb@gmail.com>
 <b2250460639d81b79f15995c9769eac21849766b@intel.com>
 <d9d1a7ff-307a-4964-98bf-209781ffc6fe@gmail.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <d9d1a7ff-307a-4964-98bf-209781ffc6fe@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0029.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:178::17) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|SA1PR11MB8254:EE_
X-MS-Office365-Filtering-Correlation-Id: b81aac0f-c940-4691-2f89-08ddd333a205
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?blA5VzFDRGJja2JlMktNdUFHK04vQkFKaGxROXN0Nmk3MnQ2bkN2QmtKb2E1?=
 =?utf-8?B?ai8xdml2QU1GbHp0YTJQT254NEI2V0hPTnRCUitFaU85Y2VzbkVsR1B0MDFl?=
 =?utf-8?B?RUJLMDdVV1hHV0RiUXAwSms1bjZDQ2c1WVBCTHJhNHFxQ3JtV3ZMVmN2MURY?=
 =?utf-8?B?S0tHMllmTlRoakRveVpMdnR5dTdxVkdxN2VvMEFZUVhVRjdKK2dpQzJkdTdE?=
 =?utf-8?B?c3JjNXpZaVNhakZCOGJQSEZjSFFaemhiR25BNTk3ZFpCakd1Nk81UmhYSGY5?=
 =?utf-8?B?dGJCRnBuS3EzTHJDZHJKR0VKR3Zlb0VleXpNVDRoaEJmaGNoZGRHdVBDVjA3?=
 =?utf-8?B?TU43cnRFM2VCSTFaUGJqYlZpaWVPbkE0aDdDQ09qVEQzVGwrdDArNEFybDk2?=
 =?utf-8?B?eHR3cThoTFBKaCtPalBMWjZQeTAwQlF6RzdCclpwWUoyRVJwT20rVXNndC80?=
 =?utf-8?B?dFB2U1N3TE5IMlQ4bERPUmZPY1U3Znd4K0ptZFB2OW85K2JXaG1FS1dJU0I0?=
 =?utf-8?B?N2twYW1OTjdHV0tqOHhia2QrSklRVzczQVVaYWErem5QRXJTL1NOcUNKa1po?=
 =?utf-8?B?NTNVSHlmMWVZNklYVmtMR3pzU3VMYmFrNUxhUzg0UUhnN3ljNHUzSStwdEY3?=
 =?utf-8?B?eStWT2N5cVczUWV1clI4ak9jYURQUkZVSkVFOTk1V3E2OWtUYTBlYkpqN1JV?=
 =?utf-8?B?dUV0WGFJZTE5MmUvdzVXQVdEY1NENmJGMnJ6K2wxM3JFOG9YSlIwRlBKWXkw?=
 =?utf-8?B?WHhOSFNtcEZYeHQ3dktDczM2V1VqTjdsRFMrYjFoRER5NTlrT0NuWmg1ZG5W?=
 =?utf-8?B?MlpaM0RCbUdvdEFWRktaYkRjcE1QellRS3dEUkg3U1pYMjZHVnpueUNBelpl?=
 =?utf-8?B?bmRUYitiRWdDSG9tOTFrMXV5bjVTSTFQVWt3K3B1akpWeWQrTTNuQ29TMkR0?=
 =?utf-8?B?SEFRRmFCYTBVemRWeDQ3SWdRbGJINEVVVWZTTjNFWXBISFloRDhBYkRyeW1i?=
 =?utf-8?B?dzVQdTJrVmVVOHJDUlNsZ0RnZ1JzK1NhRHBEdnF3eklFYSt1L1gxYkVmaDIv?=
 =?utf-8?B?bXM3aGRZTnd0bkRxSUFza2lOZTNhTjkxcFJ2VlRVVFBtZUpJcWk0WjFJK3Iv?=
 =?utf-8?B?NGlEWXdjNlo1aHBmRGI0S1ZUUnhoYmNISS9qZ3hkVDZMRDI2OEhoTW1mbkRu?=
 =?utf-8?B?YStKd2NxSzBmcVA0WE9VUzdSNHEwMVRHT1NEd3VHQ0R6dGtFeVI5Z3J5WDZI?=
 =?utf-8?B?K2VVVWVIZFRpazUvcytRazFrZStaK2ljR0lML3NPbUhET1ppYlNXVjZQMlU4?=
 =?utf-8?B?Z0Z1cjdhRmVsckluT2VsU2xkdEhBWnY4ZjdrbzI1bkd1NTUveVZTSFQ0bVpC?=
 =?utf-8?B?T0dDWW1hZkFmYnFGcVdCUktSY3lwQ2p3bk1NREx3SThhQ1NpZWlyb0t5SzEv?=
 =?utf-8?B?UytiZUNpa3h5MEp5N1ovWFFiZ2F6a1pJMVBVdGNMdFhadWgrMGp5K3E3dVpF?=
 =?utf-8?B?d2o2N1pXSklIM0YyOXFyVFZ1YldFNHpKMW1zam1wL1lqNFRZTUZtTzM4T1NU?=
 =?utf-8?B?eTR2UHZ6MVMvcWpvNHg1bXpjbk55V3YzNkdUYTA2Tm9xQ1ZsczhmZ3lZT2lD?=
 =?utf-8?B?dHVhd1FyWDRnNm5xWmhRNjgvMHFuV3l4bWVaNklqZTV2WjFlc1FWTUhWUm11?=
 =?utf-8?B?Vk1FOUppQi9JdVZqVmlMUTQ5VUw5MjVVQXlGL1BLbXExdEZ0b2lnWHRwbkZs?=
 =?utf-8?B?VVYxdnpyelpoMkNpUUZPYXUzeEpadEpCSmp2Y2ZGazNiUDN6bVFYVE9obDl5?=
 =?utf-8?Q?tAMPUWnrlwzzKt3jdxWWR190Y/r785PY+vScQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?clFNOElZMlllN2p6VkpHK3JKMzBwa1M5OERWSVZFU0JJeUNwRllndE1JdFZy?=
 =?utf-8?B?Z1ArNDkyWERYS2VEclRlek5xMmMrV212Q2ZaZjdsZm9vL25uaFZwbGo0WVVx?=
 =?utf-8?B?MmVpS21qK2U2dGtaTXFhR1dDUGFJc1lWZVVlakNIZ0dDeEM3QlVJc29mNWhU?=
 =?utf-8?B?d2ExTXJqN3pDelBjQkdhZG5kZVY1R2F6QzVqRE5zUFJJeFY5L0tlb0FOV2lD?=
 =?utf-8?B?Uk4wOXJHbU9rZ1RuUkZDTFpFaXk1ZmpyaityNEJuUjhFek9pMHppcjhyZHp0?=
 =?utf-8?B?b2JFaHFqQmhXK2Rld21nbHF4TlRVNDZEb0E0cStGcDJjYzNQaDhSbE9tckdo?=
 =?utf-8?B?amZNWnlHYW5SdVp2S2ZyeHhWZGJQUU1lZW9DSTZzTkpZWXVDL1hOaVM5NWYv?=
 =?utf-8?B?YlMzTjI0NGJCZVdHT1MrNTJENWh5UlNhK3Q2K0oxQnVtWitlM0I5TWZ0WExQ?=
 =?utf-8?B?N2JwdUxOMXJWYzdMSk04REVMRm1nOG5JSXc4KzRTbEVRWVFyOFNZNkIwa1NZ?=
 =?utf-8?B?U3hKWjJmT2U1czd4Rkx5cVhoT296S1ZyWVZ1VEFBcjhFYWxuTFd2OE45a0NT?=
 =?utf-8?B?elNEMEdqTGxWM2NNV3JDa2dhY3RZV2FnSG9GbVZNMEtmRmJHUTNrdFJscEVT?=
 =?utf-8?B?cE41TVg1QmFHRVRYQkU0L0xhZ3pwVjhoWVRwdDVRRkp1UmRvek5YWElzZmV6?=
 =?utf-8?B?c3NDMFM0endpdHZ2T2dCZzJXUEJRNStNVzgrczMwckcwWURwZ1I5OUcxN2Rv?=
 =?utf-8?B?RENETTJEaE9Keld2NksxZmtTU1g5OXl4YzlmVnNhSVVmRkxsTW1vR2R4QnZC?=
 =?utf-8?B?ZGZoTXY1dGcwQzc4SVVReTQ4VENVeDFUZmlVaXpKV2RKcDhPZndhbEoxM08r?=
 =?utf-8?B?Snl3Y1hhaUhwaDJjOUE1TndURW1xRno0Y2VJSlJYNHhPWkd0NERXa24ybURx?=
 =?utf-8?B?UDVLUTJSSG1RbnNBS2J6Y1lYNklFMDMzZEhIT0tNWXl3SitGb2FDdkZPSC9C?=
 =?utf-8?B?NU1NeG5vNjJKazdwaURQNVZiK1RpcTJWVGp4WlZlUFhYK2VDZFk1aXhmNGpL?=
 =?utf-8?B?Uldsd01JODBFT2toUkMxbGQzSDQxelZIVldNRG1PRHdJRG9JRVpCY0xVTGNB?=
 =?utf-8?B?U2dZKzVvNC9xY3BiMFNyZWp3L2ZQNXY3TVNEMzZ3Z3Z6c1BIdFlZVktHM2J0?=
 =?utf-8?B?Vy9aYVV0YjlhK3hsWWJIWWF1ZHJZSXUvNjFEbzNMWGJEdFByMUhwRTZ0MzNQ?=
 =?utf-8?B?ZU5WbFdHT1ZDVm5mdkxuWjl3TmNrK1dKS3VHYy82ZHNlRWVHL2N1bFpmeSti?=
 =?utf-8?B?a1RvakxKRjVrMkgyTmYyY1hyclZkT2lqOVMvV3ZQTjVCaVRXZUp6OUhGZm5n?=
 =?utf-8?B?R25jNEVsVkZxUkY1YUFtSm5wZTBkSnA4UkpYOUt1M3Z3SXhqb0tZcjBkSkta?=
 =?utf-8?B?Y2hWVHJHMkJWTHdySVlNYlZIR1Mrb0NWeW5uWmVwRG9zd2oxdEZiZnNrbE8v?=
 =?utf-8?B?OVJrZC9TZXMzU0FFb2RvZFpuNEQyWVNJeDlkQlhIUFVhMDZzV1g4ekh4OXd6?=
 =?utf-8?B?UG5uL2xiRDBacXlrSC9WUjZqZklFa2lkSy9HRkRJZUh6dlZ1akc0VHpBRGl0?=
 =?utf-8?B?UDM0VVVOQVpGOEVUOGF2WWt1akNjRi8rT1BRTGVxTWltSFJDdzRvdzlCZExt?=
 =?utf-8?B?ZlFpVXFKSEtnaWo5Z3ozWVFuKzJoUFpXUkVYc3ZjSUUwZWVidllTS0FlbmVR?=
 =?utf-8?B?QTRCV09OY1hldlJQMUtTY1p2d1VsTTZPOTdtUXhVcS83alQvdkN4c3pNLzk4?=
 =?utf-8?B?c2hVVlRIaE9uajZ3Y0puWExObnZONjlMNHpkNzMxNVp1SWozQUdsQWtIek1q?=
 =?utf-8?B?MVZ6NExyY09aSjNHUVBDQ0I3eGFqSnliaFNRMFRQa0huUFk1TGgyS2tzUHEr?=
 =?utf-8?B?Tk9ML1czdmU3WWxwK0hnUDRuNTZjb0xDcVZlYTVKMnZLWTJJQ09za1lLejNO?=
 =?utf-8?B?ZWkyTlVMOWNzeTRKdjlKUWJ3R3JvRSs4NUZSS1FWMmNDd1lha05pT1dRTWVH?=
 =?utf-8?B?ZkFRNnBvc2xiVGpTYWQycUZyTVlCRU1WVTBJa0dxTWtZTVcrMVRjYzFQWklw?=
 =?utf-8?B?ajZJOEhwQzhkUG5Hb1JBZm1iUmFtVjI0Rkp2WDduUCsxZ0h4NFZhaFNLTTJN?=
 =?utf-8?B?eEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b81aac0f-c940-4691-2f89-08ddd333a205
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2025 08:48:07.4608 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Dcq0XaOATOJC9vM4wg/RILIrmUxWf/Vb1NsPHt43f6WKKlADXKX/VBb1yzCrndjp2bnJRUk8jKkPxB+wL5vjZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8254
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


On 02-08-2025 16:06, René Herman wrote:
> On 01-08-2025 11:19, Jani Nikula wrote:
>
>> On Thu, 31 Jul 2025, René Herman <rene.herman@gmail.com> wrote:
>>> Here's that Ubuntu launchpad bug on freedesktop.org, but including a
>>> possibly interesting fix from 5 months ago in the currently last 
>>> comment:
>>>
>>> https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3441
>>
>> Might be useful to attach dmesg and VBT to the bug as described at [1].
>
> Just in case: please note the freedesktop.org bug is not our bug but 
> just a 4 year old same one. I also unfortunately don't have the 
> hardware on hand, and it seems the person I am assisting with this 
> can't due to vacation get to it right now.
>
> Although I'm not a graphics/display person, seems to me it's more or 
> less fixed by Arun Murthy (added to the To: list) in the last, still 
> recent-ish comment on that bug?

This was a debug patch provided to root case the issue and not a proper fix!

Thanks and Regards,
Arun R Murthy
--------------------

>
> https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3441#note_2803858
>
> I.e., could while working with the person with the hardware not figure 
> out what the point of that i915_drrs_ctl would be if the system 
> immediately enabled it again anyway, so Arun's approach seems to make 
> sense to me.
>
> This is probably going to be a more common issue soon when these older 
> no-TPM Haswell systems get installed with Linux at the end of Windows 
> 10 support.
>
> Regards,
> Rene
>
