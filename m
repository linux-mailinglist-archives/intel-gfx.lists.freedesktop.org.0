Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C3AA008DD
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 12:48:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3704B10E090;
	Fri,  3 Jan 2025 11:48:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eNWyZBEu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAD7110E090
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 11:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735904903; x=1767440903;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ydTkq2+Mhcz+71zP76fTowo38FpVgWXiC8bVBABoMOQ=;
 b=eNWyZBEusGAEYkzBr38dC/HriBhsUH52396HQKpqY4UIjWTkxgB2HSgO
 JXXg34FZOk3aALnlQGdmt/hoA1tr8Y3vHuxivmn30Y7SB2QBB22ivcqCW
 nWSaodjoOpac003QlAm7Za6i+O9DOWaQgZtwP+hvBALPQ32vOUc2vY55h
 /YZt3elogDBDoZLaqkyMK+0qK+qSuDjRoEz67fhdGKl//jL9k2XlzMo66
 8Ue/T5M+Uub4+ZRRMApdvGKkTH12IsrtgouuQoH6Q26Q6I+iPSpQFPJZW
 trCm99QITm+hDyNiLHrGi3KAwgiHlHH27wkPWPNqSVmRDxD4nQ2uq/W7L Q==;
X-CSE-ConnectionGUID: 7hA8tWcUS7CP2nMUnjiiiw==
X-CSE-MsgGUID: 7dy6XV7nTaKiq7vpeiEWzw==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="46827339"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="46827339"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 03:48:23 -0800
X-CSE-ConnectionGUID: BqMSpT3AQ4Cn1EoK7nDrdg==
X-CSE-MsgGUID: R8EMe3JkSuih4EQU6EmVXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="132625874"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2025 03:48:22 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 3 Jan 2025 03:48:21 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 3 Jan 2025 03:48:21 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 3 Jan 2025 03:48:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VehjudQ4bCi+WsAmgcD6GHz+U9sKCj3277HTH7/vf92pfMbMcgkqRKcMijZKIA7IbzFKSqCH+7HOdMvVCk+sNilAZn6kB4uzi4iP1y5EGY+wHW26AvyFpZc6mKWnCn7dGjmxS/cqaCW59rmKrlF5kbstQ46o0C6Gv26Cil6HTL4AkF1SjcY+CXGSAWjFYGx/FbZVTtq4pKi2FUjae8NWYKM72midiy4evgSpLfCLfMxHA0Plf8D+VsJVxOLgFM+vYbeH6sgZn93+RmrYu5Hz8ZmTLBrvhUInas+wzPZG17lmMlsIfIhpWhNKIB9pb8oTa1QqUvIN/i4Cqxsr0v+Oxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bs89E7SZoe/ZfZI9MnZYlMtm5jKMVIDXKiBXueedhGY=;
 b=D0CkcRMAUXhoLRjvnk9QJgEfOQQLMCxj4uLppGvGjXx6I3mC+EcTppMNJa4DJkdYWF7cpXBHlroHdbrJhS78LMaTe+VkjByYLG8sqswiC187q+AyQ+XlJoGP4QofbVq+Nln//aKAOUHPVLV9jc1S+/kHapt+kR+zKamHrzOCZxQX6T2Qa35T6pb2u56up4KUCGAKtC46DgYfrWhrul7Wf2Iy01Vk7W8oBDNYdGUDQ3va+b0QhQXSblFOGQZ0zI2aHpt4XkoN4tK+X7yE1jZcWpi0sZAHjzbmyauxQbsVglamhOvBDFGFMcVQMwPnfiLAdhhcrQSB59AMQKzhwJzbaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB6544.namprd11.prod.outlook.com (2603:10b6:8:d0::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8314.12; Fri, 3 Jan 2025 11:48:09 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8293.000; Fri, 3 Jan 2025
 11:48:09 +0000
Message-ID: <8fa7f9af-a592-4654-ab65-6440315499f7@intel.com>
Date: Fri, 3 Jan 2025 17:18:03 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/18] drm/i915/vrr: Introduce intel_vrr_vblank_delay()
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
 <20241210211007.5976-13-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241210211007.5976-13-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0119.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:96::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB6544:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a6cacd1-8ec0-47b9-6bd3-08dd2bec7e60
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OVF5Q0wxOTBOM2pCOXhNa2hwdzdjM050dytjelFDQjBPMEl1Qnc3Rk01VTRE?=
 =?utf-8?B?cFhmeDdJSEZXZ3QxaTFlQVFHU2RmZHdVbGxDVkJJSzg4S1lCUzhId0JVdHBI?=
 =?utf-8?B?NnpLMmwyTmEzcTBhSG95SVRLV0pKT2QvVzhKaEdZaGxvekdCZHVzMXo3VXVk?=
 =?utf-8?B?L1MyVDQ3dEZ4aWtlOXRBTHR4NHd4NndUUzNoc0tiSjFnQmcwL09reStqcndE?=
 =?utf-8?B?QlZ5ZlV3UHljOFA4N1d5RWxkTHBFLzlNTnFvVk1XQ0J2bVl0eDRubHNzaXBj?=
 =?utf-8?B?V0oyQnZBYlVISEZ1OHNjNTdZYVpxNks5a2dNUllMZjNmL3ZVR0JMYWc2YTN0?=
 =?utf-8?B?U1NMRStYRGFVTlpROUUyR1FyVFU5SGZNcld3Mk9rWnFablZWZlpVMisycThp?=
 =?utf-8?B?a0pEZkpEUkRKWlJWVzRPcG8vTHRCYTVyWkVndEg0ZTJLVGNvOVRSM3IwYkt5?=
 =?utf-8?B?N2dYcmlxU0VxejZmcmtuQ010cjg3TTJCSG43akZrbmVuVDgya0dLWUFBSFlQ?=
 =?utf-8?B?c2ZYT3pObG43VFNRT2N4OENkV21LM2pRVWVUOGVnRjlLWnIzeTFnUWN6M1Iy?=
 =?utf-8?B?QXRHUFl5ajhTNGVVWTdxWFBVbUR2aGk5SDZsaTJJejRSYWdVWkx6Q2RKTExS?=
 =?utf-8?B?U2R1ci9JUXY5WlZPM2ZJYllJQ1hMcTBtbnJEUVVIOS9mV3NvVVF1TGd0Q3RV?=
 =?utf-8?B?ZE1LNWVBRG40eGJlODhvQWN0aUh1TURUbUNmWVJYSlYzTWhRN0Q0T2FsUmlU?=
 =?utf-8?B?MkplOGozeWhBL21xT2NaY1IrTVNjdTF3QjYxSlRPTEVWN3ZVSVJzWEgvbjEx?=
 =?utf-8?B?TEcycU4yUVBicFlaN2NhN1pOUGpuQVY1OWNkZ1N4M1o3SVEvdnA1RFdBeU1I?=
 =?utf-8?B?b2xsZmx6dXh6dWFKV2JpR3VtQ2tiaENGMTAvbXRLdGlURlBlUlVhL1FuWk0v?=
 =?utf-8?B?TWhVUU16bnMrWWU1c2RzbDRwWERpbk1KWlBUeHEyT21Sd2pGSFRZS0FKaHJp?=
 =?utf-8?B?THljVklHci9IcE83anErRmowamhXQUE4WHF5KzJibUdYaEd1WnhiUjJxQnBp?=
 =?utf-8?B?Mk1uSVVZZmFpNjNJWnlQQk5xMUl0RmpxZU9melRjc2dmWW9NcFRiOFZJdUlP?=
 =?utf-8?B?aVBmNjdtZG5MTWQ5UlY1T3JkSDB2bHorK3dEZFVoenVBOVZoYitIcFdtRzlR?=
 =?utf-8?B?Z1pWVnE1amIvejQ3WnFuSUxjNTNHUEx6ajNzdHVEMnArSE45VWg5endFWVZM?=
 =?utf-8?B?enFpSDJTNlh1ZWgrSnVwUVpzY2RvZXdCNkFnb2JBdXFYVlYxOG5aay9hK3V2?=
 =?utf-8?B?QzFhditvWmw5aFpnbW8yOEpoOFJ2M2VLcE90SlNIcW53U1J5MUZPZHJXQWYy?=
 =?utf-8?B?MC9QcWtBekNMSS84L0ZYa1ljUXhzOUhndWR0T2h2WlNoRlhsSWNHMjZnQmha?=
 =?utf-8?B?Ym1zcy8xcU5lRlJBTGVpZllMcUxRaTZYcHBUR1BDSnQ2SzF2S2lLaUdHc0pG?=
 =?utf-8?B?c2c2dTJ2L0tSRDhXRkhFeGx4VHRKSzA3Mmp2SDA2Wm8zbWdEcWk2Sk9ZWWs5?=
 =?utf-8?B?RnZnUWoxdUdXWk1CQzJRa1Q5VWdBM3hNZmxNVlUvK0NwODRSWW1wOFZ2N0pO?=
 =?utf-8?B?MjF4NWgzQ3VrcGI5ck5JL1p1V0dXSmlZR3JpUVYvbDFLaWlQdFlWYWMzeW44?=
 =?utf-8?B?NWFoODhKNHY1S1V1VURjck5hdVY5cGRLaEhnaE1QTGdZa0g1Q2JEVzFpNDNJ?=
 =?utf-8?B?T2VZUzhTUElsTlBiZXZZUldQZUU3aGErRi9vdWFvcSt6OXpjVVppelZrUG1P?=
 =?utf-8?B?NUZZakkvMFFCZ2JUS2ZKQVJiamVLQjFTWnZSUllzWXJ5ejk3ckRvR1RxbUdr?=
 =?utf-8?Q?vR58FkP5DBh8M?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NXN4OVM3ZlNkdlNhTHBHa2pHZFFwZnZvN2c5bWEwdGpOYytFU2U3WG40YlZ5?=
 =?utf-8?B?emVwSk82MEQrM1hoSzJ2MHlsWVd1WFJEcGs3blVQeXNKRXdDdmxUdjM2RDFD?=
 =?utf-8?B?Mk9zZHdtaFV5SWdJYlNwWmgyTmgrRmtOYnNpMzVYTTMwQmlKdkZQWUdDNVV6?=
 =?utf-8?B?QlFTNE96ZjRNTVlPWnZuYzY5eExqYWJSaHU3a253dGRpVjRZZHhXbTl5Mkw4?=
 =?utf-8?B?WnZyVU9rVU5IZ0l5UEYzRXJYYXZqVlprNzBYSmo3bSt4eGZNTnZsWm5ycDZC?=
 =?utf-8?B?ZVJCakY3MU94YkVkN0FKSXRDR1cxOFVoNWtXSGwzbk9ScTdGYktzTlIvWHkx?=
 =?utf-8?B?MGUzK2k5ZGVPb25ha0paakRzSlh6Yml5S2tUNjkreTd1eXFGZDRBa2RuTW1R?=
 =?utf-8?B?M0h0OGRVTmtvOEMwRk5TRktyZXBZTStxRlpSREhVUzcvZzBSUGFEd0Rqd3M3?=
 =?utf-8?B?ZFdOSVdDYVJaT3Vxcy9yeExXSUVhSnZHM1JNZ3lzM1h3a3JUdWxSajN3SkVO?=
 =?utf-8?B?OWZsNXZndGZiMjB1ajRtK1lDZXFTd24rM0xTNERWa0JhcU9mc3FyZDY5eWN4?=
 =?utf-8?B?WC9FenN6SldQSURUWk4rT1gzVWxhVk45dmU3WENDd2VGTk9XTUJWNytoS2Rh?=
 =?utf-8?B?azJCcDA1bzNIbENyRkM2Sno5VGFwVjgramR4bk5BRUtaV2lYd2wxVEpzN0Jz?=
 =?utf-8?B?a3RZR3N4cFlya09wbTFkQnlub3F6S3BDTDFHbDNsWHpIT0tvaEJiZGs3aEZt?=
 =?utf-8?B?dHJYNENxZkl6b1NsM1R0THFtK3c0ek1uU0UzcjZqOHBodWFHbVN5TlRMMndM?=
 =?utf-8?B?Y2RjeDJFNzhISGtqTmRTc1NOVUM3RFBReTdlN0Q0dXVBTjZlUE8rVWI1ejR0?=
 =?utf-8?B?dFdFYlRsejRWV2VEelRSZ0E1ZHFFZmZOUXNqL3Z2ajNUY2xhK055dDl1bENW?=
 =?utf-8?B?MWl1alk1cmdURFJ5cXhCMUNsWFNkQ3d1NlVpcUlRU1h2ZDJkVHpXYm1kb0hy?=
 =?utf-8?B?Uk5VOTk5SVZBU1IzcENnRWtMWHBGZUI3NjA1MU1HeFZhUlJrM3cweFRSVVVY?=
 =?utf-8?B?YmQvM0hNa3N5dFU5TUxoSG1Jdmt1STNqdlNFMHAxL1ovblkvbDJpc3UvQWlh?=
 =?utf-8?B?cVQzZG5FbzJVQ2VWU05ScWs2VnRYbHpkTVJ4ZkZlTnVtVHJsTEtjcEJsemEw?=
 =?utf-8?B?cDdlSUsxL1BLUWlQcUF5ZXhaQTlZWHlCekdXcTFIWC9CMi9CTG1rYnFtb3VK?=
 =?utf-8?B?YXpldG9hclR1UGgxRERtY2UwdGpia3NDUkJkYWttTzVVNkRwRDJFb3hUQlJH?=
 =?utf-8?B?QVVFd20zMk9KVEpTWUxaNVcreUgwSE5WM1BkT3JucXlhNzFjei9YTWh3cHZL?=
 =?utf-8?B?bW9EUXRqdTZTOGxBM1Zta1NmYnF0a1ovOGtRRU9YN3Rmc3hqNGEzdVdSUXFp?=
 =?utf-8?B?TEtsYlFFeVpUSGdiRXJQZGhjUml4cTBhM3pBNVNKWDF6S0hsdHJBNlk2Y1FE?=
 =?utf-8?B?MHZsa2QvekxCZS8rSVhocEFISERTdGNIdDN2Y3hGR2RyMll0b2wwMmlNOW93?=
 =?utf-8?B?YXJubGVTWXJjSDFpMG5LMW9OWmhCNnpBNUt2a21Eelp6dm92Y3BSSVJHRjdl?=
 =?utf-8?B?d2RhT3MrWFF0VkErSHl6bG4vWmxGU2wrU1AxaDg4dnE5L282RUdZcHBSZFZ4?=
 =?utf-8?B?aGRURzVlSXNSbUFzdW1JbUtPSkxVZHkyMkVSTmU4b2VLSHFMMUxwbFZkL01Z?=
 =?utf-8?B?aWh6QnlROExOQzJmcmJjNlB2UCthUjMvVDVUNDFYOEJySGtxVTIrZlNxRzZs?=
 =?utf-8?B?U2NEQ25zdzlIZjNjVFltazVJVHRUREdUZE5XTUJtRmlqYk16aTFkZmFDdDh4?=
 =?utf-8?B?d0FRSEEzQ1huV1k1MUx0RzNjVjdZOEdONnh5VWhPZEM4eEw1ZStBTkZjRzNS?=
 =?utf-8?B?ZHJCTHZEOEVFQ3V5ZGdmOFdhWXpjTUtTcTdEMlhCbEJyUW9vZ1krYXJKd3Ax?=
 =?utf-8?B?c0RXYm95WEN6UlBiTkNlUnVqS2pWRnowYWlXaGpycW1GVmtSQktVUnVZcGFK?=
 =?utf-8?B?eTA3L1hUeUlSMHg3cHVyK0lRK0tSYXFNby9wMUJRSjF2S1c4eHlZc0huK0JH?=
 =?utf-8?B?QW1BTksrZmtPNnBobU9VY0FwdXlVUUR4OWNoNHpxVVFQcE9lam1GY1FjeCtx?=
 =?utf-8?B?ZlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a6cacd1-8ec0-47b9-6bd3-08dd2bec7e60
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2025 11:48:09.3079 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SP3f6ewRmjlW8pAseuzN1JnD4I6rkJ76/QQJFfO5PB/SLODdyTOiKx+4W8+xvcfuheBXZTtT+Am+NzRXxg5RXNZhwvJ1JK83sLXW9DiMf44=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6544
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


On 12/11/2024 2:40 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Introduce a VRR specific function for determining the current
> vblank delay. Currently thus will give the same answer as
> intel_mode_vblank_delay() but that will change later.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dsb.c    | 18 ++++++++++++++----
>   drivers/gpu/drm/i915/display/intel_vblank.c |  7 ++++++-
>   drivers/gpu/drm/i915/display/intel_vrr.c    |  6 ++++++
>   drivers/gpu/drm/i915/display/intel_vrr.h    |  1 +
>   4 files changed, 27 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index 673f75703785..89d3496bcbdb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -109,9 +109,16 @@ static bool pre_commit_is_vrr_active(struct intel_atomic_state *state,
>   	return old_crtc_state->vrr.enable && !intel_crtc_vrr_disabling(state, crtc);
>   }
>   
> -static int dsb_vblank_delay(const struct intel_crtc_state *crtc_state)
> +static int dsb_vblank_delay(struct intel_atomic_state *state,
> +			    struct intel_crtc *crtc)
>   {
> -	return intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
> +	const struct intel_crtc_state *crtc_state =
> +		intel_pre_commit_crtc_state(state, crtc);
> +
> +	if (pre_commit_is_vrr_active(state, crtc))
> +		return intel_vrr_vblank_delay(crtc_state);
> +	else
> +		return intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
>   }
>   
>   static int dsb_vtotal(struct intel_atomic_state *state,
> @@ -520,10 +527,11 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
>   		intel_pre_commit_crtc_state(state, crtc);
>   	/* FIXME calibrate sensibly */
>   	int latency = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, 20);
> -	int vblank_delay = dsb_vblank_delay(crtc_state);
>   	int start, end;
>   
>   	if (pre_commit_is_vrr_active(state, crtc)) {
> +		int vblank_delay = intel_vrr_vblank_delay(crtc_state);
> +
>   		end = intel_vrr_vmin_vblank_start(crtc_state);
>   		start = end - vblank_delay - latency;
>   		intel_dsb_wait_scanline_out(state, dsb, start, end);
> @@ -532,6 +540,8 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
>   		start = end - vblank_delay - latency;
>   		intel_dsb_wait_scanline_out(state, dsb, start, end);
>   	} else {
> +		int vblank_delay = intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
> +
>   		end = intel_mode_vblank_start(&crtc_state->hw.adjusted_mode);
>   		start = end - vblank_delay - latency;
>   		intel_dsb_wait_scanline_out(state, dsb, start, end);
> @@ -612,7 +622,7 @@ void intel_dsb_wait_vblank_delay(struct intel_atomic_state *state,
>   	const struct intel_crtc_state *crtc_state =
>   		intel_pre_commit_crtc_state(state, crtc);
>   	int usecs = intel_scanlines_to_usecs(&crtc_state->hw.adjusted_mode,
> -					     dsb_vblank_delay(crtc_state)) + 1;
> +					     dsb_vblank_delay(state, crtc)) + 1;
>   
>   	intel_dsb_wait_usec(dsb, usecs);
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index 2a99bde457db..fb80e0bef08a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -647,6 +647,7 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
>   	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
>   	const struct intel_crtc_state *crtc_state;
>   	const struct drm_display_mode *adjusted_mode;
> +	int vblank_delay;
>   
>   	evade->crtc = crtc;
>   
> @@ -668,8 +669,12 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
>   			evade->vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
>   		else
>   			evade->vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
> +
> +		vblank_delay = intel_vrr_vblank_delay(crtc_state);
>   	} else {
>   		evade->vblank_start = intel_mode_vblank_start(adjusted_mode);
> +
> +		vblank_delay = intel_mode_vblank_delay(adjusted_mode);
>   	}
>   
>   	/* FIXME needs to be calibrated sensibly */
> @@ -687,7 +692,7 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
>   	 */
>   	if (intel_color_uses_dsb(new_crtc_state) ||
>   	    new_crtc_state->update_m_n || new_crtc_state->update_lrr)
> -		evade->min -= intel_mode_vblank_delay(adjusted_mode);
> +		evade->min -= vblank_delay;
>   }
>   
>   /* must be called with vblank interrupt already enabled! */
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 0d40402fe043..a0ddc288c1a3 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -76,6 +76,12 @@ intel_vrr_check_modeset(struct intel_atomic_state *state)
>   	}
>   }
>   
> +int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state)
> +{
> +	return crtc_state->hw.adjusted_mode.crtc_vblank_start -
> +		crtc_state->hw.adjusted_mode.crtc_vdisplay;
> +}
> +
>   /*
>    * Without VRR registers get latched at:
>    *  vblank_start
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 75db88ae9cc4..8e8961adce39 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -30,5 +30,6 @@ int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state);
>   int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
>   int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
>   int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
> +int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
>   
>   #endif /* __INTEL_VRR_H__ */
