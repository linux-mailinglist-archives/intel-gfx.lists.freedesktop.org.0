Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6486CA16D38
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 14:16:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AD1810E401;
	Mon, 20 Jan 2025 13:16:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fxMpjMP/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55ACB10E3FF
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2025 13:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737378985; x=1768914985;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=FS+dTi4fDh8uJLBifm0Ye57EozB0p2chWrvHFG3Nq5o=;
 b=fxMpjMP/z34ibRHSwXj5UgcOZf9PhxJI28nV1tHJuU9fB11IOBuQznRH
 ZgPqON7H8asN14ywKwXdt2BAH85vah3jyhsZwb/JJIsjIfYaOz1BkihPr
 EN5Z2CWxVZNlVRL8jNkhdPH+HwBmeFToZkPJlQUnWXfYa+erIuknUpH/x
 CdZ1K7ZgvcF2MAdSGUFYoZ21iXdecboxlDSYxQ/6HcF7vg8vvZT7xdjrR
 IXjPzfiYoKdZ5OjZK7Khulf8jlplI/Si/oGFFmQVeFcqfEVQqPA/x/Pzt
 Uc+GiKxP/Qk8lQejA/Lb7zebeRm9bBYsRMiMtA4Z9qFnsy9cH4FTf2MtO w==;
X-CSE-ConnectionGUID: kJs+baBeRfmv3xzdgc8GAg==
X-CSE-MsgGUID: aDsmy14tRS+XyfCnyoJo1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="48361354"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="48361354"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 05:16:25 -0800
X-CSE-ConnectionGUID: A+inGn90TNmhDEbCkO1sHQ==
X-CSE-MsgGUID: M0ksDT7cSAKlkZDT8238fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="111499545"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Jan 2025 05:16:25 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 20 Jan 2025 05:16:24 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 20 Jan 2025 05:16:24 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 20 Jan 2025 05:16:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nFX/vyOHXmb+IhiC7RYQMO4q1ZoHFOD9rWzzIIJOz6ss4GHMd1ieZ2R5ruoeHktg/ftxFUmj2QJ0St3wPUOLn5lKF/5rZehCgafR68I/a0od5v1wMNPgcJdup3FyF113WQJFUsjaKKGQVyNR1CMFsn1PzH8TnigHBF/Xt7+ruhggmOAlDT4t89N/jB7vkMVb9HZC4B7kvj61sEiuAKZwX22eWU6i7SUE0DyHxGq3CMzWvxTGyMXMqLtiTMxR2J3HD22Y7PMMLp7Wc5Q6s9TLbMM99qkgwgJ963jpEGd7Bjk25HEebN6rllU0BqHfrCRNvA15SuSgggs0Sai0YLFXCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FgeOFV6Mgw4ZolPqTYooGg+6/BFoqBQ5wwbpDMUuZAM=;
 b=tpo6Web7NALvVeB7GSuPoKxzs9CgYZa7PEJbI3ka6hGPcNgR/O+64ymYn0PPhYzx1Hm/epAqDAwZElMxA6PAkhGoH4FVAsQSa8Mh23/i1a676fMY4Q5xnsRJevGcXDCnc2tjmHjrDkWeEdJfmekZ/jukB6iUM9UBgF2ld0CM+AD1zAJiNILYw5H4E33aweHoNh4AvqgxFOTv1WBqe5UlB/2ZVF9jk2sE2Tbo/QMX4Rte1EH14j+A6FkJNGOiUOk0aOu8wLMwL/mH2QWBZx0yehZcmi1yVTLYGm/CXvxyw0cnFjRLsdmEMALLPxIW3XHPRtdzDo8kNUyZyJO0senVzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Mon, 20 Jan
 2025 13:15:41 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%3]) with mapi id 15.20.8356.020; Mon, 20 Jan 2025
 13:15:41 +0000
Date: Mon, 20 Jan 2025 14:15:35 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
CC: <andi.shyti@intel.com>, <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v4 3/8] drm/i915/gem: fix typos in i915/gem files
Message-ID: <7xi5gijt4mzfcp23emkrp4q4mrf5jupxvmcx5znixziclpdiej@hygfczdepy53>
References: <20250120081517.3237326-1-nitin.r.gote@intel.com>
 <20250120081517.3237326-4-nitin.r.gote@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250120081517.3237326-4-nitin.r.gote@intel.com>
X-ClientProxiedBy: MI1P293CA0029.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:3::15) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|CO1PR11MB5105:EE_
X-MS-Office365-Filtering-Correlation-Id: a94ac5af-cde6-44fc-a23e-08dd395489c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V05iakNYeFloQldSZFZ4VjlnQStpV3AyaFU1VkhyWGNXUTRxMDVuR3RwWk5h?=
 =?utf-8?B?cnBFNnF2OGIzME5YUU9oTTNSOWFEV3dVb2o5bHd0dkUwcXF2OUlnTzNQbElv?=
 =?utf-8?B?NkJWSE5RdFA3NDJzcTh4S1ZKUSszY1FXcFhmVEVMWWVaOFkxU3pZVmtvUmdw?=
 =?utf-8?B?RGsxK3lwRWFTY2l4eElaWC9DTndRSCtSVE9jRWo1WktEWTRuQksvWlJKU2ZN?=
 =?utf-8?B?UHovL3BTNDhEaWhVRDVwdHlMM0V2UkNjOHQzdDN1RTR3aFU4cmFWZDZGazdO?=
 =?utf-8?B?UjdmclVVUEtnV28zeXZZNEZRTTdSTUxDOFpLNUJZMFh6RXh0bnJJcHFzd1hu?=
 =?utf-8?B?SHZZV09ZOG4wS1g1Sm5RbEhpMWZSOHFLTzM5UTcvVlBtaG5jOVd4N1dtcm9i?=
 =?utf-8?B?MmpKeEZuUEZuSDNUbmxwZjZEb0RKY1o0OFc5cTY5Sm0vSjZ1UmwwTHhTOEdT?=
 =?utf-8?B?cnU4U0RTZ3k5U1BnRTh3UVp2WE1QYldkb1lkTTN1RFhNRWxrNzlRcDdTR3NX?=
 =?utf-8?B?K0Rnd0lPbWc0bWdrMDF5bXpiNE1tdkMvTUFEbGVrVjJlN21rWUl2WDRZd1hl?=
 =?utf-8?B?ZEJadjRYa3pFQ0VsaHl4V3FPc3krOXFWaWtlWVliakFiSDdwSklUTi91MjNU?=
 =?utf-8?B?N1dJc1RTaTF4SElkZnhRL2FubjVXU2oxSE9BOGZPTDlCYUR5cHgwNGg3YWtT?=
 =?utf-8?B?SGMzdU5MZCtzVE9ZK1RqK1lWZ21YclRpMFY5aDZ6bWxvRFhPNE0yVWsycHAv?=
 =?utf-8?B?c3N2ZFl0RUdkUDhmRXVZbkFjNkJLazVLeHkrRHRPdVBXdnVoalFMUjBJU2hm?=
 =?utf-8?B?bmRDYVhNYzIyYW1ySEdTSzdrSWY5QlZyb1BXNUJnZERPb1pyc25aVnQ1M2VT?=
 =?utf-8?B?UHFkQzhaK2J2MVdpOUd0cTkzMkZNaXFDRmxXbi9qajJCYWJOei84a25VRkJY?=
 =?utf-8?B?dis1TkhucE1iYXJMaURxSkpPWlBud2NHb1ZUQXNmUlMvSVNYbmFpRDArNk12?=
 =?utf-8?B?Z0ExZ1kwZDVYbVZSZTdHdGR5c0d3aWNZMXdOMmwxcWRFK0hYdElaLzJzaEVy?=
 =?utf-8?B?QnpHQ3pxeUNmamdXcWhlellvVUc3NHJvNWlSd2JWTDVTbE5XdEF2bnNoNDhw?=
 =?utf-8?B?OXdVVzRkdm1YVzZMZ1crT0RGQnY4OGhuaVlTZmFyYjZSSCtBQm9tOGx5b08v?=
 =?utf-8?B?bFdmakdMclRRMGU3WjJaQzZzcEg0Z0JlVmNCUDZXZmVzRGtyWmRmUCtnLzZS?=
 =?utf-8?B?ZUQvQ21iMm0wenhEbXkrT0Ryd1pVV0NGMWNyY2RqQURoRzN1c3pxTXZ5RFph?=
 =?utf-8?B?WjZVcVM3QXlrUk5IRUczc3U1dUFqNVlTVWpSU0twM3lJTlJuOHY1YnlkRVAw?=
 =?utf-8?B?dWpMU3A0TXlncDN1RkZsMnVmajNZTDJ2T2RIaU5nMTc0anplcFhhZEtrZFMr?=
 =?utf-8?B?UndmeHA0SVpITkFHVEtLZnhCQWEzbnliMnVGaGNzSStlM2RKNXZSdFBNdHFp?=
 =?utf-8?B?ZHFJOGFtNHUwRUFVYytBU3o3dUJPTWl4ckh1SUVMUlhVZVNpbGN0QU5SaFo4?=
 =?utf-8?B?TTk2bG56VFhLcjg2RFBvQ0p1VHRmWGtOeEFNdCtVWXQ0cTNNU3dJMmQwODlz?=
 =?utf-8?B?bTREUU9sSXh6a2MxT3VhVHJXeVRISmk1eEJjZDdma3pYWmZiZ25yUk9aTGVs?=
 =?utf-8?B?cnNhTmczcmQ5RjFHUDVYamhIbmhaUmNsdElLZDZZVzl0YlhpQW8rWFgvNUhm?=
 =?utf-8?B?ck5pbWZWMzNrbXRwZ3B1bUZNY1VlZVYrbW4rNEs3QVRGOTdCSStlOXpNK1Zw?=
 =?utf-8?B?SHNMRVVRYjFUWnpia0NjR29lYWU4aWtQQ0NBQU01NTFLclZmc1A3TlZyT3Zl?=
 =?utf-8?Q?b2RHbJBCUtSYI?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bkUwR21ReEtZRHZTT080SUUra3ZnOGNJOVc5M1N3SXlpWG5seDZEbGhiRWE2?=
 =?utf-8?B?Z1pqRDVmMGhqeWlGMGt3S1NINzh0OWsvMlFnQkVjcU1UT2cvWFRJVXFKQUpD?=
 =?utf-8?B?OUt5R2txdVVBVUlJdkgvdzJWeWpqdTBxOTVaUU9tUFlWY2xqeDZ5dmg5eVRR?=
 =?utf-8?B?Tlo3Q0VzQlkyYUdDaUNlQ0R2VWZGd2I3cUNXNUFyeWpXTXZBMEg5ZCtLZHBK?=
 =?utf-8?B?NWFFb3hDQlh1TGVuTkpkeitWU2tsWkZVeGh3Z2VpeTBaOEZQd3MwWStKYm5i?=
 =?utf-8?B?Qi8rTGFrazZjZkhRYUV6cmUxSWIvK2U1QlZBUjRmVUxFa1Z0cThaUUNXNGNp?=
 =?utf-8?B?S3FhTlJ4OUpRdFNPRS90cXNvNWJONzBDay9ZVWxrVkJDdGdlR3R2S1E3RDRk?=
 =?utf-8?B?dS9VNVVGeGRXbEFjRnBSbzZxdi82ZmozTmU4ZHhoSXdZeVBPdWdQNndnUC9D?=
 =?utf-8?B?UDc5eEU4WkN5VUpzV3Q5cTZqaGNEcDdpQkttQ0ZUT0plZll0RU8rbFpzamNN?=
 =?utf-8?B?dStCOWVvNEp2bEpVQjdRaXVsV3R2WXk0Z0pOd1EzbG5YV29HNTlPL09pSEJS?=
 =?utf-8?B?RWl0eE15M1gzVVZoOEdaRkc4OHJ0S3R3ZlQ1anU1U08wQlBRTFdRVklidm1V?=
 =?utf-8?B?K3U5UWxsV3VXbmorTXdrdG9ERVBpZXlXbFpMOE9aSEhPUHkvSFgwaTFXTjFp?=
 =?utf-8?B?bHJwNU1ObE5ZSG5nQ251bExpdXRCckxzdFJqc3pDNDFlL0grdmUybEljTmVt?=
 =?utf-8?B?OWcxK0R5YW5yZHFYS3NBMlkzOUFMTzI1ajVZVktaUHczNklQaDBZU08yZ2dS?=
 =?utf-8?B?Y2U5aURvT1l1d1ZRbkJxZnRFM3NEckJzKzBVT3VDVHdmQXFJVTk2Vmd4RU9u?=
 =?utf-8?B?Sm1pSTg0UmlMMDBwQnZxZVhyS3JXV0cycERTenJVbmFkQXM2ak5JK2NjZXlH?=
 =?utf-8?B?ejRqS1U2bWd1VjRxUXo1ajRUV3A0ZjROSUFyMzQrWEQ1aGk5TmUyUGVOWjJG?=
 =?utf-8?B?S01IYVVKNmUva3JkbUxlVHJkNFVjbk53MXIyd1Uzd1ZYbVJ2bzRXdDVJNEgv?=
 =?utf-8?B?Qmxaei9WRzY0ZHlpM2R6M2pqd3RmZkFaRCtQb3p5cHRRU0NmenJ1M2E4TEdH?=
 =?utf-8?B?VjRyYm9UT1VwYW8yYjRCNGkvUnNVQXVsYjFxVDZLdDE2UkV0cUdQYWtyNG9B?=
 =?utf-8?B?TS9SWjdKU3JaNnRCN0VlZUJ0QVRpb3RhRUJLTTFvTmhibDUzbk1XZFlsblVl?=
 =?utf-8?B?WVVGa3hVUFNaY1pqMVVTbFc1eGtVYjdyeUtGUEVYdHJocTJMaG9MdlpxK001?=
 =?utf-8?B?d1VkcmZIS3Z0dVVwdmRuSk1xeTVRZGRyTzZCdnZ4MFFFdjV4NjhNdi9yTmE0?=
 =?utf-8?B?T1Y4akVxU1lTMVpMbWhDNHVpMEI0ZW9LWUhiQllaaDY3a3FRZGpMTVJZQnBM?=
 =?utf-8?B?UDhTcnBSMFBqMTlndFgrVVovZmo2bHpKQXBlUHl2L0pHOFFiK2lqNTlpTjJs?=
 =?utf-8?B?NUdWdFo4cmFKU3UvZnlESXpJTUYrQkFVQktTSWE4aHVaRy9JMVpxejVnWXhH?=
 =?utf-8?B?d3NtdlFYeEM1bGlKSktUc0tKNDNyVys5Y1AvVmxpWFhjY056dW0xdzFxT0Rm?=
 =?utf-8?B?VWxIWXFlTmtZdGk2TzdZZE5Ra0l5Vkt2OHZCeTA1OVpYdXBmbU14ZHlzWnEr?=
 =?utf-8?B?L3M3ZXlNMHhSSWRySjE1dTkxQ2QxeHpKa3Fjald3SEp6cWdXSGI3emJKczNp?=
 =?utf-8?B?MnpjaFZnU3lncTluTk0zalQ3WWUram9IazN2UVh5MmZ3SEZyZEdtQUZmVmFF?=
 =?utf-8?B?ckJpc01reWd2QW9JczhXV1lXVTZDSEhhdXpFWFFxSjFKd3MveXBqL3BvbkVa?=
 =?utf-8?B?UFJZM25iUnpzZXgrM0VLUGlCd3grMEtMVGVoYnpZbGhmNXc4RWxSSlB1VExk?=
 =?utf-8?B?VUN4RXhvcmhOZjdlbVZiL0sxRXkzY0hsMmlWcnovWVFiQ0NyWmdaQWRBOFgr?=
 =?utf-8?B?d2N5bkk0Zkc5TmlGT3RrOTlsbVpIWGJPUExmVGxMOC9lNmlJQ3JiM0hMZ0ZI?=
 =?utf-8?B?dm5nNFhseG1nTFVFY2RYNCsxWHFucjlpYzNTa0hRL21sSnVoMDY4cTNGeUdX?=
 =?utf-8?B?YURHRTZYZjkrYmhJVXJOS1NyNlBUNlQ2b1lBZmlaTjZkbUJmcGZ0SllENXBl?=
 =?utf-8?B?SHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a94ac5af-cde6-44fc-a23e-08dd395489c9
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2025 13:15:40.9233 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FommWSo7rjHati2zCtd0G+cf5Wc909v98mFVHhk6G9YUhHhyc+JK44Kb0foQtf1Ap5m3ozZAXZ4UgvS2hBQ380acXGCU23MEHR/0XzqKkas=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5105
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

Hi Nitin,

On 2025-01-20 at 13:45:12 GMT, Nitin Gote wrote:
> Fix all typos in files under drm/i915/gem reported by codespell tool.
> 
> v2: Codespell won't catch it, but it should be
>     "user defined" and not "use defined". <Krzysztof Niemiec>
> 
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>

Reviewed-by: Krzysztof Niemiec <krzysztof.niemiec@intel.com>

Thanks
Krzysztof
