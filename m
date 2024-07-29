Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6ACB93FB82
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 18:41:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F22B10E42D;
	Mon, 29 Jul 2024 16:41:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K8tPa2L/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F8FB10E42C;
 Mon, 29 Jul 2024 16:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722271295; x=1753807295;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=GEmXLTuduYbPwq0lu5dfX38UHexuiwvDv1ZclwLS6oM=;
 b=K8tPa2L/+IVJEaoqXVr5rnp1gUyUNC96LpjacSGZt6frCrQXIMYEO6XC
 TgPN6NYenMQMeGQL3TM4bjAsyLXL3K4l7MrttgocLUis6RPEI2ID4+qhL
 bZyHke5IjR9cl46KBGK5iNsA+/ymEv/efBFO8O/BaJhQYEKj4TgDoRIRo
 U+bK8WQ2LTw2nTcDW6oLe5jfnCnJBUKMBNwwH4GORNRThiBTy+uUJx1Ht
 pYMeWhKeLwlzunL+xPk4ZaTeY3LrvvnfIYzZ/EtGGNHcHKFTdm5DOyryL
 hsrLwJD9TPkzJX4snACnX48J9aBGIIpw8IhD+gPIYWbHeLEsATJbAldtw w==;
X-CSE-ConnectionGUID: +KoMyEgpTayrrs08PaNxuw==
X-CSE-MsgGUID: yNzgF0vnRGm9OF33lVLIXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="37549047"
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="37549047"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 09:40:36 -0700
X-CSE-ConnectionGUID: 82KL6Jm7QjWH+JaQz/ED2w==
X-CSE-MsgGUID: oL1dyqZIRPG+lFlwLmwCcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="54852606"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jul 2024 09:40:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 29 Jul 2024 09:40:34 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 29 Jul 2024 09:40:34 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 29 Jul 2024 09:40:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=POWsxirGX4OEmJwUilMTi58SEy3OIFP4yD6BsoeX6InPjNkTS4Ltlt6ryDhHZcYRJHmP5Z0qUVBBJc9jMm6mRPjaDmoeyhJvRY511WrP6oCOr7BOz3bkPAGPpcIKSSg/AmpTnCK+X88jqTl4uJSFT0DEzPv46zM2QH1ZN62d6oXBuOVDRPRvAhYXB2wrJH/ARnHDSX1Z6AKJjsCXaalElDsRG2xzRqXuCc3yp5rHwaMcMGnPk42KvL0Kj9ZN9tWsS4eDJ+wBJ7WFt3scxqYY9EmOKrQQGFY+nJK+tBrjm7b8KdCpGPGvt7H4NnJ8yuRDWxDDCefc917u+rKibI8RZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0qHD5nOXX6ejrHSYxY7NDWyxC/kinVl/XBN0JC+xVb0=;
 b=eAhtPHp0vrGQyfMOnbiJpFzWawiBgXCnpXRZWA1s+Upzy9DF+Qg7bcSt9+yWd/0MbRB/UUqKjlY5agmqwG50KiwULOuppSNYNeFGj0hhtZY3P6/+PMnpyk9Fr9WIbBs2rzxohU7ItMAwgnoO5giE8RnpTVHOPUBo/C4To0eAFlUjqYkFTQtbw+SiFKyJ9BLAZNEKPOnZrNmUiv6UoJ28e0dcUax4Htli/zfbHAZEG7wge4LgelhCJfYheZD/DH/irHRVf2v5Kw57DuKy78BWEaOiNImhUOuWwErWsW8CcihlvabDNS15ca2wQbIOFvpoNQhqSGXOdlj7TSLlkUDPSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7757.namprd11.prod.outlook.com (2603:10b6:8:103::22)
 by PH8PR11MB7047.namprd11.prod.outlook.com (2603:10b6:510:215::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Mon, 29 Jul
 2024 16:40:26 +0000
Received: from DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1]) by DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1%5]) with mapi id 15.20.7807.026; Mon, 29 Jul 2024
 16:40:26 +0000
Message-ID: <14837965-0b99-4653-9f5d-8f05fc24c62b@intel.com>
Date: Mon, 29 Jul 2024 09:40:22 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t] tests/xe_gt_freq: Avoid RPe usage in subtests
To: Riana Tauro <riana.tauro@intel.com>, "Nilawar, Badal"
 <badal.nilawar@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <igt-dev@lists.freedesktop.org>
References: <20240724165952.1605698-1-vinay.belgaumkar@intel.com>
 <5ee20318-0645-44d4-870a-beb58e6d5939@intel.com>
 <b3e57ca2-aa12-4dbf-9b9b-7aad3dc71d76@intel.com>
Content-Language: en-US
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <b3e57ca2-aa12-4dbf-9b9b-7aad3dc71d76@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR11CA0050.namprd11.prod.outlook.com
 (2603:10b6:a03:80::27) To DM4PR11MB7757.namprd11.prod.outlook.com
 (2603:10b6:8:103::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7757:EE_|PH8PR11MB7047:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d4c6857-0641-4797-b72a-08dcafed25ee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VFU2dGtsSVlXZWorRDJralJWSkJieGpwU2x0b2J2b1NwZWNRT1I5VXZ6cGJE?=
 =?utf-8?B?NWxVcHhkWCtDeFNVZUZEeXVLYVB5RW9CbWcyWjlDRldqbjRMekk2Ry9TcXZS?=
 =?utf-8?B?dytsbzQwREl4MGJJYXZFcGRBNHB4a05nWGttR2NtK0hJOURDQnFPVTJKOHFa?=
 =?utf-8?B?OVhJN3gySWRHSCtIYXR0Y25aT2pUc01mNFJvc1ZIa1E1UDRJQTE3TGd4anZK?=
 =?utf-8?B?bVErYVNVZDVqZlNkS2h5WW9IMERyeVJaQjB3OEt5dzBLOHE3ZERQRnl5Q2pM?=
 =?utf-8?B?aUw4RTN2eGJSbFpFZlp2QnRsbjVKcXhuL2JWdDllQjBEblJuczY5VmRsdzdq?=
 =?utf-8?B?alVnTndsOVhEbWc1NjQxZ251UkxPZS96UzZCRjBleFh0L0d2NFkrU0hNWkpv?=
 =?utf-8?B?K20rdVdsUklLb1VRQ29lWTdldGlUbGd1WDNkcUJCbVl1NGVTQ3JsZkVkcnNz?=
 =?utf-8?B?RE1yVXgvMnM4RVJESy9wVGk5VHNjQ1dvZ2lWZ2d1djBGVE1abnFvcVRLNEhY?=
 =?utf-8?B?S1dLVzRlKzJDSVYvWk9mT0htWVc2Q1Z3dWNQTTFRV29XTHY3bjdtakl4KzVr?=
 =?utf-8?B?VzI4TG1zZHhmSmVaS3lmQmQ4dSthNy9DWmw0N2VJeDZkOWJDWU00eTF1RWZo?=
 =?utf-8?B?cTcwV2N1T2Z6bUdIcHhNU1VDZi9aZnVBUEErek0zQ3JlK0FGT2lrOWVmV3VT?=
 =?utf-8?B?Mm9qTG8xKzBEQ2N6NFNqTkFYdGJ5cUdDMktwTU4rUVdiMlV1SXdXbThDU253?=
 =?utf-8?B?OTFUTEY3eUN6RHlPZFlVRWEwbXlpMWlRYmFiU2ZlUGxmK2E5M2ZuYVNXQ3l6?=
 =?utf-8?B?Q3BQczF0ZEoyMkxiS2JkaXBCZlBvQ0RIUWcyeGRDZXZKQWVCOVM5Q1d4ZElJ?=
 =?utf-8?B?ekZrWnI3NEZHeVlBOFhKeVI2UTRBb0kwVU02UGcwSDJiZFM2Y01nKzMyN2la?=
 =?utf-8?B?M3pkM3lyaTdHbXNZTzlLWFFrNTRpaGoyTDdRREh1b05ScmwxNnZKS0ZyQ3NI?=
 =?utf-8?B?Y0k3cHdJUnlQOHhZaU8xM3Y5a0draGZsRmpFZmxPaFRIZUVaU0VrUkFWSC9U?=
 =?utf-8?B?NXpWNi95c0tkWUZYM1BpcHo2UThDVWwvbVJYcGVTVlFoMGx3U0tSTStmMmds?=
 =?utf-8?B?UGRnL2dsaGV6QVlBNG56M0xlQzdpQW1pQjdXaXJWak1iNEV3L1BLejBTMmRZ?=
 =?utf-8?B?bWZHcFJJTEIwQytXR1dOd21rQS9ISXZhei9DM2ZpOWxpUHN0eXJWTTlDSGZu?=
 =?utf-8?B?UWF4Q2daam5NRDNNcHhneHQzZE40T2JBQ3hyYTZ1MmlzbExsYnB2YlhncG5n?=
 =?utf-8?B?bllpcHB6YXp0UU5UaUd6eEJ1SjdlWklldnRhSDl3Q1RwakdmQ1V4b3pMeDFJ?=
 =?utf-8?B?SnVXM3YvbFRkQWtHQVZsRVdYS05RbHpUbUh6RFc3QTlVVGoxbWMxbFJmbUFP?=
 =?utf-8?B?ak16UE5aV2w2SStweGxOZ0MyK0xCM0NBVDZVNGIxVUZKeTlOSTl2eWZkOHVu?=
 =?utf-8?B?YzhvdFBmSHpJeDhEOWxiRFF4eWpQQ3lUcHRXTDg5NkU1eU1FcU54VUNPT3R3?=
 =?utf-8?B?aGJFeWJnMWY3Vk9qcGFJUDRpZi9IejZ5S1BLS0RDYWJEQXFUQ1FkZG1vS1Yr?=
 =?utf-8?B?T0JZNFFVdEZ6aW9zZG9pRGRIUXU0OXZ1RHJwV0VuOEYyc0xZYk5OSVh4SEtU?=
 =?utf-8?B?N0RqMWsvK3Vmb2FvZVo4QTErQ0NEc2VzaU5qRWExVDVNL0ZJM2x0UVo1N2Vn?=
 =?utf-8?Q?3aiY7pxLUSlY34asKw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7757.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NnZ2VWlRck9zdDM4d2pZdjVVMWNHUHp6TjdpdHJ4RnN3SHlXSjh1QTZRc0xj?=
 =?utf-8?B?Q2xyT3dVSmx6dmFIWEhjNSthRE9mQzVXWGlxbnFaSU9mbTFheHZRTXRKRGVu?=
 =?utf-8?B?QXBEMW85TExjMEJZWW1GUUl0K05LdWhUV2t6bDBNcm51VnRDcWlHaTZPcUxt?=
 =?utf-8?B?azhBNW52RkdUcHlSNVhrWkVIZHoxL0JER3VqODVIM0NkdGJDcjhwME1BUzBk?=
 =?utf-8?B?RUkwL2xmbFJLVFU5enpYNjFFZEZIOS9kUGk1c2RZYVovK1F5U1RPV0g2U1Bh?=
 =?utf-8?B?TzFaUlIxSE5ycm54dFdkcmRXMGpYOWpkNTRiUlc2M2pZQlljRTQ1RU80UmE0?=
 =?utf-8?B?WllIMy8vY21LZjJDbnphbXp2SFNkc01Tek13TDNZRTh3YTRDNU5DTjRsdEN2?=
 =?utf-8?B?cjlLZ3dibkpUampIOEpaM0FnRWlETzlhRTVPMXp2VmpRUHRTcU1VMHh0dW94?=
 =?utf-8?B?S0Z4eGsrZ1hSeW85Zml1WjBHSUhzM1EvL0JNRnFYbjdiVEdUeEU1YnNKUTV1?=
 =?utf-8?B?akZBL2hlUDZzMElhcVg1VXJjWncwcGFxUmVjTm5kSXVkQ2pGUGNGbS9HbUl4?=
 =?utf-8?B?OFBSTzdiVHVSd0VsR2F4S2V6dEU0QkV5ZllzQUtVMWVhTVNUbWloZ1B5Lzl5?=
 =?utf-8?B?LzY5NGkxam9lSldiUXpxUmtNOERIUDhkclh4R0tpdndKOHczbkcrTk9sUXdF?=
 =?utf-8?B?b05LaGFra1k4SURqYkt4Mm5WbWpHTzVhUDZBK0tlZk1oYjNDRkpCTUFTZXdo?=
 =?utf-8?B?TEV2ZkFlMy9ubmNQempHSWdMbzVXVU5pSDhjbWtDTFo4UU1kQTJYNEg4QXho?=
 =?utf-8?B?RHRvRUxqZ1N4aUJVTjFxTStsZ1JSdzBHNTdid3BNaWtlUmRhS2ZEb01kdHhj?=
 =?utf-8?B?ek9PWG5CQm1EYjdmM2JubTAxV3ZTaXFlR3U4L2grVVd5WU5tZURVMkJzWktj?=
 =?utf-8?B?WUtmcjhOeUJRZkQ5Y0gwM0NQZUZkMDNzK1p1d1NJSTVhaUJWMUtBNFNzVDBV?=
 =?utf-8?B?dnRodlhpN3ZXOEppT1IvMEJWRVNBa0hlL0lyQngzVEtZNUdVcGF2UFp4R2xy?=
 =?utf-8?B?dExLMnV2YlRQYzkweTl2QVRuUlJUaTFWeHNJZEk4bjVFR2ZwTnY1WE1NejB6?=
 =?utf-8?B?MTFwQktQQ3g1ckFLTCszT1djUE5NcnFwdzhJd2M2YXBzL1JtdytodFhvS0hj?=
 =?utf-8?B?aE02REdJekJ0aS9vbzJWY1N3cXBsZjQ2Y1J6U3NGVXY4MUc3MkVTODdsVjha?=
 =?utf-8?B?OWNsb0RJTmlhY0plLzVwd0I3VVByMmNocmpEZFJxeXltU3NlNEpBWHp1a2Np?=
 =?utf-8?B?TEx1QzZaUENYRWdHODlVbzljRDhmRmY5dGhlY0p0NWg3R0xxMzNiV3hpTVJZ?=
 =?utf-8?B?ZHgrWGtpWWU3eVdXVmlzQnlYSS93d0w0NE9WRGxoR3VWYldxbXNIRll6SHBo?=
 =?utf-8?B?eG1VRk00T0oyRWh1M0MwMEcyVGp1MlB0dkhtQjNuaDZCWGRBY1h1L1BqNEpN?=
 =?utf-8?B?WEVqMlN2bStpNnNJbENlNHhtTWsyRm9SUUtOTTUrNDl6WGc4SU5KcHorWS9P?=
 =?utf-8?B?VFJqZzBmMEZNMUYrSXNWRjU1N0pYZzRSZGp4L2RDNjRtVXZzak9remsxVzA2?=
 =?utf-8?B?RFZKVDRqRllHTFYyb3gxZHp4L3B5Skw2MlBwSVhLVjJ4WjEvVGd5akE3QXFR?=
 =?utf-8?B?Wm41SVZzbjhQNm1ZNFJVbW5kU2N4eUxQb0FHcVU2SFR4emt0NmJ6TWZmSURF?=
 =?utf-8?B?NHdWQnQxSlB1Lzl4UmEvS0ZNLy9oODN2amRCNFA5R0daR0JIM1FWZHlWNC9y?=
 =?utf-8?B?VXpOL3NjNUdtczdSU0hWMTJwaXY2M3U5Y3N3bXM0WlZhUGp0cVg1MUorUW5M?=
 =?utf-8?B?cjFnWkpTQ0FmZzN0dkhHWWhoNkpiSnVCaXljV3hNMXhMOWRjR3lZcjEyejFH?=
 =?utf-8?B?QWRpT0NIbk91cVhBaEg2QTg3NGJQUjVOcmxCOGVIMjZ5L1E3cjdoRjBkcGhD?=
 =?utf-8?B?YWx0czF6ZkJYTnNSRlJDSzBxZTdFVjZocWl3RWhJZ1RWeWRwVVNLS2JmLytk?=
 =?utf-8?B?NS9tS0s4S0g0bjgzQzRvL1hFYUJlZjI4QmMxVFBGT0kya0FVTlFxcElBZTNj?=
 =?utf-8?B?NXlwaXdNdTE4ZjgwMWJydERrOWtFQXI4VDdIc01lTWE5MlhIWFlrMGUwOEll?=
 =?utf-8?B?T1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d4c6857-0641-4797-b72a-08dcafed25ee
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7757.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2024 16:40:25.9452 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /76OzTBIg1YrfPgZ5U/l63IESMOw5KJ6etGKg06E0nRkXPJQ09knS3fDMX4i17jDRpL68soXeysHkD6QnoxciMo7Leciu6Z4yQ9KdPBxSDs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7047
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


On 7/28/2024 10:19 PM, Riana Tauro wrote:
> Hi Vinay
>
> On 7/26/2024 10:38 AM, Nilawar, Badal wrote:
>> Hi Vinay,
>>
>> On 24-07-2024 22:29, Vinay Belgaumkar wrote:
>>> We are seeing several instances where the RPe, which can be altered by
>>> pcode dynamically, is causing subtests to fail randomly. Instead of 
>>> relying
>>> on it, we can use a mid frequency value for these subtests and avoid 
>>> these
>>> failures.
>>>
>>> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2262
>>> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2256
>>>
>>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>>> ---
>>>   tests/intel/xe_gt_freq.c | 37 +++++++++++++++++++++++++++++--------
>>>   1 file changed, 29 insertions(+), 8 deletions(-)
>>>
>>> diff --git a/tests/intel/xe_gt_freq.c b/tests/intel/xe_gt_freq.c
>>> index 93ebb5ed0..442f5658f 100644
>>> --- a/tests/intel/xe_gt_freq.c
>>> +++ b/tests/intel/xe_gt_freq.c
>>> @@ -26,6 +26,9 @@
>>>   #include <sys/time.h>
>>>   #define MAX_N_EXEC_QUEUES 16
>>> +#define GT_FREQUENCY_MULTIPLIER    50
>>> +#define GT_FREQUENCY_SCALER    3
>>> +#define FREQ_UNIT_MHZ (GT_FREQUENCY_MULTIPLIER / GT_FREQUENCY_SCALER)
>>>   /*
>>>    * Too many intermediate components and steps before freq is adjusted
>>> @@ -70,6 +73,16 @@ static uint32_t get_freq(int fd, int gt_id, const 
>>> char *freq_name)
>>>       return freq;
>>>   }
>>> +static bool within_expected_range(uint32_t freq, uint32_t val)
>>> +{
>>> +    /*
>>> +     * GT Frequencies are requested at units of 16.66 Mhz, so allow
>>> +     * that tolerance.
>>> +     */
>>> +    return (freq <= val + FREQ_UNIT_MHZ) ||
>>> +        (freq >= val - FREQ_UNIT_MHZ);
>>> +}
>>> +
>>>   static uint32_t rpe(int fd, int gt_id)
>>>   {
>>>       return get_freq(fd, gt_id, "rpe");
>>> @@ -128,6 +141,8 @@ static void test_freq_basic_api(int fd, int gt_id)
> This test doesn't need the current rpe since it only sets min and max 
> to rpe and reads it back.
>
> We could use the previous saved value here
We saw failures here before which were related to the same RPe issue. 
SLPC min freq follows RPe. So it did cause failures previously - 
http://gfx-ci-internal.igk.intel.com/cibuglog/testresult/507280198?query_key=fc962f34cc955ef24ea629f91af5c7284fcf890c
>>>   {
>>>       uint32_t rpn = get_freq(fd, gt_id, "rpn");
>>>       uint32_t rp0 = get_freq(fd, gt_id, "rp0");
>>> +    uint32_t rpmid = (rp0 + rpn) / 2;
>>> +    uint32_t min_freq, max_freq;
>>>       /*
>>>        * Negative bound tests
>>> @@ -142,16 +157,18 @@ static void test_freq_basic_api(int fd, int 
>>> gt_id)
>>>       /* Assert min requests are respected from rp0 to rpn */
>>>       igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);
>>>       igt_assert(get_freq(fd, gt_id, "min") == rp0);
>>> -    igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
>>> -    igt_assert(get_freq(fd, gt_id, "min") == rpe(fd, gt_id));
>>> +    igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
>>> +    min_freq = get_freq(fd, gt_id, "min");
>>> +    igt_assert(within_expected_range(min_freq, rpmid));
>>>       igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
>>>       igt_assert(get_freq(fd, gt_id, "min") == rpn);
>>>       /* Assert max requests are respected from rpn to rp0 */
>>>       igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
>>>       igt_assert(get_freq(fd, gt_id, "max") == rpn);
>>> -    igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
>>> -    igt_assert(get_freq(fd, gt_id, "max") == rpe(fd, gt_id));
>>> +    igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
>>> +    max_freq = get_freq(fd, gt_id, "min");
> get_freq(fd, gt_id, "max")
yup, typo!
>>> + igt_assert(within_expected_range(max_freq, rpmid));
>>>       igt_assert(set_freq(fd, gt_id, "max", rp0) > 0);
>>>       igt_assert(get_freq(fd, gt_id, "max") == rp0);
>>>   }
>>> @@ -168,6 +185,8 @@ static void test_freq_fixed(int fd, int gt_id, 
>>> bool gt_idle)
>>>   {
>>>       uint32_t rpn = get_freq(fd, gt_id, "rpn");
>>>       uint32_t rp0 = get_freq(fd, gt_id, "rp0");
>>> +    uint32_t rpmid = (rp0 + rpn) / 2;
>>> +    uint32_t cur_freq, act_freq;
>>>       igt_debug("Starting testing fixed request\n");
>>> @@ -190,17 +209,19 @@ static void test_freq_fixed(int fd, int gt_id, 
>>> bool gt_idle)
>
>
> The comment in this test needs to be modified since we are not using 
> Rpe here anymore

yes, will update.

Thanks,

Vinay.

>
>
> /*
>  * For Fixed freq we need to set both min and max to the desired value
>  * Then we check if hardware is actually operating at the desired freq
>  * And let's do this for all the 3 known Render Performance (RP) values.
>  */
>
> Thanks,
> Riana
>
>>>           igt_assert(get_freq(fd, gt_id, "act") == rpn);
>>>       }
>>> -    igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
>>> -    igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
>>> +    igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
>>> +    igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
>>>       usleep(ACT_FREQ_LATENCY_US);
>>> -    igt_assert(get_freq(fd, gt_id, "cur") == rpe(fd, gt_id));
>>> +    cur_freq = get_freq(fd, gt_id, "cur");
>>> +    igt_assert(within_expected_range(cur_freq, rpmid));
>>>       if (gt_idle) {
>>>           igt_assert_f(igt_wait(xe_is_gt_in_c6(fd, gt_id), 1000, 10),
>>>                    "GT %d should be in C6\n", gt_id);
>>>           igt_assert(get_freq(fd, gt_id, "act") == 0);
>>>       } else {
>>> -        igt_assert(get_freq(fd, gt_id, "act") == rpe(fd, gt_id));
>>> +        act_freq = get_freq(fd, gt_id, "act");
>>> +        igt_assert(within_expected_range(act_freq, rpmid));
>>>       }
>>>       igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);
>>
>> We should cover freq range subtests as well.
>>
>> https://intel-gfx-ci.01.org/tree/intel-xe/xe-1667-9f8e597a1c39d7e316f9479e6f627c15dbc58e1d/shard-lnl-7/igt@xe_gt_freq@freq_range_exec.html 
>>
>>
>> Regards,
>> Badal
