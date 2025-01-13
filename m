Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2393A0B124
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 09:30:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E50810E5B7;
	Mon, 13 Jan 2025 08:30:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OKXK9XZk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 697C310E5AB;
 Mon, 13 Jan 2025 08:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736757011; x=1768293011;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ajoomsTYY5VIUXKu60aIZi0fStPBWCF3oiXMETu4TQ0=;
 b=OKXK9XZkvNUKg83ZbuRROFAR6ejzPR2OykBDTxafexciTBcNa50db2Sa
 w0WoOQC5w0OCIn5VzDiq+HIaeHeiczuRvOwCCrPQtznGn9cJK9DzkhQk1
 wW2EwFEuPhArOF3NMVwphdlCBCJrOsYJkuPXzaqlifKCSpSsQeV5mQa+T
 ZWlF/UePlb8W+yvd3GrPuMs9RKrzhGPQt+wriUCIcYTsIFvBBQPp5XaeW
 ITOZ9upnehAJy1nkiDhgie7ZR54RVnzH6M2Bdc6Trya9IkCOHMPEcqNhz
 xE9RguYDbmyxSx/9CcWLLswAlRQWaCDWfTBlMtIg6jLJXne8rtGL1MRz/ Q==;
X-CSE-ConnectionGUID: R87cXMSiQ46oKLyEkIffkg==
X-CSE-MsgGUID: /XkIukB2T2qCvQNZVxbTUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11313"; a="47666857"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="47666857"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 00:30:09 -0800
X-CSE-ConnectionGUID: sQZTUJYvQfu5BQgj4zoJow==
X-CSE-MsgGUID: AdxncvAnTayYxd8T2cfiHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="104216023"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jan 2025 00:30:08 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 13 Jan 2025 00:30:07 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 13 Jan 2025 00:30:07 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 13 Jan 2025 00:30:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CrC5mCRtD/GRte91KQyeDYnBY3ozyahX1KoN8SVtRT71rRX6pD0ABSR1WU9P7jzwT7OvLvJRc6532sjjCI/3vdTww5N3lFDKEuAyPcl2cx8Br+1rhoqO8fUXU3vC4o/qo0rnSrDEzhylKUXXH0XfKSVZZXtg0wsUjkhTG36H6Vb0gRVpfJj4B3D0IChJG63KaUop4qOawoR+nhNU0z+l9szKTVTgngpqbfs7Heizd5Vg8S2Qxn5QQwXdw6UkeNr+aTmnzrsUkOBmRS+IiDVKB6WsCW9pjIT538DWiPu7gyU5CfzM1oq5GdDeoaWS6Qg4QjI/WfHjFc2z+4BzsV5Vjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C3EFcodtnm+CBkbuhvHsPwjgzMhJE8NeV7TGrcI6fZQ=;
 b=s3WpdA8CTAr8gCV0epTSYOno/DmXRX4qZSAE33P9mEI8YHj2cJjxFOHifPl2yOf5n0sym19RiI1/wYb7T5Lr2iF6KzMjhhzN6/1BaKtTrJ4YJaYTEIwUR0wNqadhIw4NTstZMRKtm6j2Tqx9ybyt/UlbEfzJDXpbt1szlma3GTpm1OQkDmZeJWVOVhK9eZG0o9WNr19WeyIEymBwiJQKnMCYkZJ5tEspQzzuPN0tvmz1d12xSP1dqFQQBSgveozQVqXChc9U12l6So2FkTEmsgknfdJ6nPr+3Qz+5hkunzDhrP6tK7crimgcsRss13G0nYQMUXfjhlfgh/0SXLYmSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY5PR11MB6209.namprd11.prod.outlook.com (2603:10b6:930:27::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Mon, 13 Jan
 2025 08:29:37 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8335.017; Mon, 13 Jan 2025
 08:29:37 +0000
Message-ID: <4959c345-509a-4129-aeff-52507b50fd35@intel.com>
Date: Mon, 13 Jan 2025 13:59:31 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/7] drm/i915/scaler: Refactor max_scale computation
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <jani.nikula@intel.com>, <ville.syrjala@intel.com>
References: <20250108123541.2101643-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250108123541.2101643-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250108123541.2101643-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0042.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:98::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY5PR11MB6209:EE_
X-MS-Office365-Filtering-Correlation-Id: 7349afc2-3074-46ca-e869-08dd33ac6ad0
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RVVRdWJxZXIySkpxS25Xbjd6WVRhR09seFNPZHpoUlBjZ2ZlQ0cvK1hZejlO?=
 =?utf-8?B?VmV5ajZzNmh6ZjB5L0hMRjVPb3JNZDNFdzRja1pTZ21Yb1pNeTBnV1hBMUlh?=
 =?utf-8?B?Z2xZNmNDK0JhTEwxVzhocWozaWp3UCtZcHdtWHFrbktHbFFPTDhLVWxuck1N?=
 =?utf-8?B?YkxOSUwxazR0bkdQamcxV0ovWXhhOE5ycnc2d0VFeW1ZckZQZTY0aENFS1FX?=
 =?utf-8?B?ZVJQa0xSVWtpb003Q2N1VjJWVmltRWVrellXcnBQclovbk1yakgvV3hlUDBO?=
 =?utf-8?B?aXQ5NUFoOVl0WWdBRytPM3BraFFsZWg3UDhZZUVlUnk1cmpraWRHRytCOUJz?=
 =?utf-8?B?YkpmdWk2cWRzcUE0N1hWNG1YTVgvaDJ4M1VVZ25wLzRRYW5MV2dRcGk5eHNk?=
 =?utf-8?B?eUhBNUNuc3M1NjdTUEVpOEVxL2J5VW5tei9iTVQ4YnJvcUhlM2xEa1J4S2Ev?=
 =?utf-8?B?U1dlNDIvbkFLams1UFR1TkZFUFpoR0VyaEU3aTVZc1pqdVRlRTk0Ykk3Zm5I?=
 =?utf-8?B?SUFkL0phVUFjTzJ6akJCMStnUUxGamZsYUFudU1BY210R1UyUUNvVGR3aThy?=
 =?utf-8?B?cXZ3QXBNUW53MkJTdHQyS1V3RWh6N3YxaVVYQlJzVm5UQ1I2bjM2U3JBYnd2?=
 =?utf-8?B?YlZsRTh0di94QmIxR3VGMHhGYWlpRCsvTVl6aEwrRE9YTVlTU1dmaHJ4U0ZR?=
 =?utf-8?B?aDIxNTdhbUhIcHphR3FmUVhJd2JnVkVyQytuV2F6MDZvSjh2RklRQllZVVNn?=
 =?utf-8?B?RFNHejVhMzN3eCtramlsK0dMdFEzMlFVSUJBaThJS0NnVkZPQ1NuZ1pocjZ3?=
 =?utf-8?B?ZEFEZytXMTg1VjNUeWJOYnkxS2Jja2t2TVVjdXhMamJHVVVEaUJUaGN6VTBO?=
 =?utf-8?B?MmxUa3NYN0NJY2RHMVFmQW4vTklNVDBZa0VTb2o4MzNwNXZXVVg1T05YbWFW?=
 =?utf-8?B?UE5EZ0QxdjY0NkU1VnFiUnZ0ZUs2VXcyUXRVaHE4SUVsUkU2elhSQ1FCUi96?=
 =?utf-8?B?T2p5MktLMWg1Z2k0dUdhcFRNeXRWTUYzdU9WS21wenAycndqUHozVHJQY01r?=
 =?utf-8?B?c1k3a2xxZGxERVVLb050WUJ2Wm5iVk52YzFYdUwxTFJJdGtTRVZSSDZFQnpq?=
 =?utf-8?B?c2hHbklScGU4N2w5cDZqYVZVV21qcnpudUVSekJVMGxGZktUNGZKeWpXTHY1?=
 =?utf-8?B?WDVBcDdJTlJnMjlGVlJjTVZvWktwY0w5dWFNTFpMUzNmWEdOM1gvQVd2aCtp?=
 =?utf-8?B?aGQ5MVdZaFNvT1Roem9RdW5MUnpyVkFqMGQvNkhyL3ZOdjdDMFcyNDNueU4y?=
 =?utf-8?B?SzZ0ZmhLcWg2bEN5NzNSZjBqZVZoR2xQb29yUUtKQmxMR3c5M1pKVUtzK21H?=
 =?utf-8?B?WnVLU0ZITER5SzNreFgzTVlPdUwyQndXY1J2MmNoOWpFV1BzdWxmSlFWQ1hX?=
 =?utf-8?B?WTQ5REFhcUw5SEhXL2ROM3F1Nm54dmtod2l3TE85TlYrU0dkaEFldnpLaEFt?=
 =?utf-8?B?L3FBeWh4Qk1QYWwwUUVCNm1aYi9BaS9qbm5OVEloR1VUdnExUk9DMXRjc09j?=
 =?utf-8?B?QmJpSDBFL3EyQmdFQkFuRWppTitWdTZmblRmN1NtL0g0NU9WNTg4TVlCQnlF?=
 =?utf-8?B?MzZrbURBR2J0MmxQT2xDTUU0S0Fqa29LdUQ4aDJOWmpTMGVwTUdENTlFSG5X?=
 =?utf-8?B?eHE3QnRWOEhvTlFkMjRvaTB2QXBOWHlKMjZWOTFiNzgzc3NBRnJNb0VBY3hh?=
 =?utf-8?B?NElTZUduQlZOc0lvKzhwNDZRdWovOHlqY0RHd3ZEb0tXbDc2YWF4WlkyMWJx?=
 =?utf-8?B?U0lzYW9hRFN5M05aZG1RVXBhWm5SUERxZnhvL1lINFo2bXhPV21ucmlLOE9I?=
 =?utf-8?Q?FIyI5QpQENlah?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?blpRNTM5OWptcFRmVG01MmN5MjdWYkl1L2hvMVVUREhzMENSRVg0ZGFNVDVV?=
 =?utf-8?B?UXBod3pIMnI3VFJZbEUzamM5VTdlaHJDK3JEL1VkTGdyKzVpNEx1RVNJcjBt?=
 =?utf-8?B?eFNnVG9PaDlqWE0yT1pQU3VMMEtBWVRiTU51VEtJcG53ckNtdjdieHhMaVlL?=
 =?utf-8?B?UEdId1czcWtXSXZLQTd0TmhOejU3bTMxRlIyRXFwN1Nlb3hsZTdsUXpiRjRP?=
 =?utf-8?B?UlNTTDBkTU9XQkJkTnNSbEd5ZmgrM1hEeHJGTDREQ25obmdOZ0dxcU50Vlhn?=
 =?utf-8?B?b3VOdVpHS2FqM0c4dWZYNEFxakQwdW1xck5xOCszdFVRcmp6YktCZWdydldn?=
 =?utf-8?B?MDlvRXJUZC9DazJpTUxVamlrZUdSTUZtTS9WUWM4RTV2RGkrUTNIakZjOWF5?=
 =?utf-8?B?aXNCajl1bVlIU2l2cGJPZ1dMV1lJZkNzdjdwTkxBZGlibHA0WEh2ZmRTWE00?=
 =?utf-8?B?eCtaV0JqT2xGUlZSdFpjeTVESHJjZkVobytoWHB6bTYrREJtN0ZTTDdXNHNi?=
 =?utf-8?B?L1VDRnJwTUplWkhXaHdnWkh5WGZ2WFlnWjVYbHltV0VNYzNYUDFJd3V2SHph?=
 =?utf-8?B?aXpmYUpBR1JYK0hxOVNWTzRhVmVSNmIySjlvNng2UGVVUjlhT3l0VkJvdFNm?=
 =?utf-8?B?NlR0ZWV5Y2d6b1MvZHpYSzhMSGFVRVpTdGZiL3dZWHZUNEY0VmV0YkJmbk9o?=
 =?utf-8?B?bzBDdDBUcStVeWQrUDdDazh1TUhCeXFDcFpiTHgwRVFJVjhzVXRjQ3hMdnNp?=
 =?utf-8?B?TXF5RlJmOWhPcElHQi9uVGRkUzkvcGVMQlppUUhCc1ZRYkNIRUlEbUtkOE5I?=
 =?utf-8?B?UzJabWhDVUgzNmtWS2RpbTFXWlV2K3ZnZ3ZNaTU4MFA4cHp2NGNrODFPaHJp?=
 =?utf-8?B?WExrbytEendwR1dUU0hBZ08wTE9rMFJmMmJSZDRDL2ZjdHJNaEZFT0ZVYnc1?=
 =?utf-8?B?dThzWmdDTUhNK1dVR05HR3ZZSGZiczMvRDR6Q1d6TUhERzJkVHhwOTFmYitk?=
 =?utf-8?B?YnJEd2ZBZkd6bm12amM5TkxpYzBYTTFYRkhoSGdsd0RZck5lY1pQYi9neElH?=
 =?utf-8?B?WHNtZEswYjc0ZHFQTzR2eFBYUHRzTDdpamJad01adjgxbzlSWTdBWHZRN01p?=
 =?utf-8?B?bG5vTlNjZUdSQ0NLTlA1cmEwOTRxWEt2bWN5anVaM0paS3RJN0NXK1RMYXJ2?=
 =?utf-8?B?Qm5vaElGR2N4RDBVZnhKckkza2dOTHZudDBRUkJDY1hUbzdDejBBQzZWcGpW?=
 =?utf-8?B?NXAyTU5ncmhoNHE4RjZNV3VEQTNDSFZRbFZpUmxiWVJYRFRwaFVycm80TzJR?=
 =?utf-8?B?UXNnK0t5TU5Gcnpud0xUN0tHVWxTc3drbDBPWUxpbDdScFVyTTZFRE1RYzlM?=
 =?utf-8?B?N3p4bkNoeDh1SXNhb295bDNLNmZUOGU2aExhbEZ1Qmc1RVMxRWxMQXpNRnF4?=
 =?utf-8?B?MWpIdFlzdVFwR1ZCQUl0TlRibnJzcng2MXp1M1NBVE1ZYmRBK1hwUDRKUms4?=
 =?utf-8?B?aFlvRXVhMWNjN21RWWpUNk9ubzg1a0JSWnJTQlJNcUkyK1Z5N08zRnVzSE9n?=
 =?utf-8?B?NTcxNnQ1dFZ3Y1FpQ0I3U05IbEtHRnhaVlZvVzN0NXdMNjNXYzR1a3M0bzhT?=
 =?utf-8?B?QXFKYmJ3TkU5OE5DOWcwemtEREVndzczakErWFlHYnUreitjYmJTRVM1d05O?=
 =?utf-8?B?YlBzNmM2K3BCT3Z2SnV6VVAyWkdnRzNUb1NoNWkzNlYvSW0xWWdaang4clVX?=
 =?utf-8?B?cVQzOHkvVExiakd1VjFqTWllTWx5RUVQUmdKOWtzT1pQd3ZaKzU4clVlN1ox?=
 =?utf-8?B?WCt5S1dUdWpyL2p1UnhPUmsvbTBCZWthalQraEtCbktGS1NyaWIrLzBGcEtB?=
 =?utf-8?B?WGdCeWhBMnpNUkZ4T0RCL2tLRVVtN1huQzd3eWZKaFlJNjNQWCt6d0tkSW1x?=
 =?utf-8?B?U0xvcUFrUm9VU0d0enZ1NkZOclBpSFMySEtiZXhjbGFaTEVNWXpiRWZEcGUw?=
 =?utf-8?B?eGNvNVUyRkdQUjMrQU5hVE1BMVV0SGxBK0NOdGZTTmN0V2xwazJZMlEydDM4?=
 =?utf-8?B?dlpBNzE5ajAxN2N1TStOUThTeWtRdVQrMTN5OEFBTU1XNmFseGJZMlYyQlNv?=
 =?utf-8?B?ZFowVWJjWTBYMkQ2YWJWbVZjZHJQczhCLzRVTWM0Sitjd3dhNWtYMkVEWkt4?=
 =?utf-8?B?QkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7349afc2-3074-46ca-e869-08dd33ac6ad0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2025 08:29:37.7332 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5sOGXswskGj3Xz+HHSYWRlztfgto0MOT1xtRf4z3sFe16x+i6MCRy9tv09RuiFTP9/PQ7H3mrnE1SxaKwTXME6UxDN2h71NHfUXGzClPAAY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6209
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


On 1/8/2025 6:05 PM, Mitul Golani wrote:
> Refactor max scaling factor computation into a reusable
> function for scalers.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_scaler.c | 63 ++++++++++++-----------
>   1 file changed, 34 insertions(+), 29 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 4f838220f880..19ab7b38c64e 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -309,6 +309,37 @@ static int intel_allocate_scaler(struct intel_crtc_scaler_state *scaler_state,
>   	return -1;
>   }
>   
> +static void
> +calculate_max_scale(struct intel_crtc *crtc,
> +		    bool is_yuv_semiplanar,
> +		    int scaler_id,
> +		    int *max_hscale, int *max_vscale)
> +{
> +	struct intel_display *display = to_intel_display(crtc);
> +
> +	/*
> +	 * FIXME: When two scalers are needed, but only one of
> +	 * them needs to downscale, we should make sure that
> +	 * the one that needs downscaling support is assigned
> +	 * as the first scaler, so we don't reject downscaling
> +	 * unnecessarily.
> +	 */
> +	if (DISPLAY_VER(display) >= 14) {
> +		*max_hscale = 0x30000 - 1;
> +
> +		if (scaler_id == 0)
> +			*max_vscale = 0x30000 - 1;
> +		else
> +			*max_vscale = 0x10000;
> +	} else if (DISPLAY_VER(display) >= 10 || !is_yuv_semiplanar) {
> +		*max_hscale = 0x30000 - 1;
> +		*max_vscale = 0x30000 - 1;
> +	} else {
> +		*max_hscale = 0x20000 - 1;
> +		*max_vscale = 0x20000 - 1;
> +	}
> +}
> +
>   static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
>   				     int num_scalers_need, struct intel_crtc *crtc,
>   				     const char *name, int idx,
> @@ -378,35 +409,9 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
>   		const struct drm_rect *dst = &plane_state->uapi.dst;
>   		int hscale, vscale, max_vscale, max_hscale;
>   
> -		/*
> -		 * FIXME: When two scalers are needed, but only one of
> -		 * them needs to downscale, we should make sure that
> -		 * the one that needs downscaling support is assigned
> -		 * as the first scaler, so we don't reject downscaling
> -		 * unnecessarily.
> -		 */
> -
> -		if (DISPLAY_VER(display) >= 14) {
> -			/*
> -			 * On versions 14 and up, only the first
> -			 * scaler supports a vertical scaling factor
> -			 * of more than 1.0, while a horizontal
> -			 * scaling factor of 3.0 is supported.
> -			 */
> -			max_hscale = 0x30000 - 1;
> -			if (*scaler_id == 0)
> -				max_vscale = 0x30000 - 1;
> -			else
> -				max_vscale = 0x10000;

This part seems to be removed. I don't see anything mentioned in the 
commit message about this too.

If you are moving code to a new function, then it should be a simple 
move, without any functional change.

Regards,

Ankit

> -
> -		} else if (DISPLAY_VER(display) >= 10 ||
> -			   !intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier)) {
> -			max_hscale = 0x30000 - 1;
> -			max_vscale = 0x30000 - 1;
> -		} else {
> -			max_hscale = 0x20000 - 1;
> -			max_vscale = 0x20000 - 1;
> -		}
> +		calculate_max_scale(crtc,
> +				    intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier),
> +				    *scaler_id, &max_hscale, &max_vscale);
>   
>   		/*
>   		 * FIXME: We should change the if-else block above to
