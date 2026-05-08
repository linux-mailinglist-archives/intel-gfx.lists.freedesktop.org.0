Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KOEKzyV/WmXgAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 09:48:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D694F340F
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 09:48:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDD0F10E2ED;
	Fri,  8 May 2026 07:48:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RaVJqtaG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D942E10E29C;
 Fri,  8 May 2026 07:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778226488; x=1809762488;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Rfu/MeuJCe4pEDPv/EAVRC/+7qf8SXjVTU8NvHjnVfc=;
 b=RaVJqtaGnRzpET729sSEn40ZFVLQNUur54Jpj7SDVSUo6NgRRUlItlU+
 /IXlaj/O656WEVv0S3jEqBG8cL8CewCH7oxqNPP84OCSlHoUhCLiEueiP
 IihGMfp07hA/hKoIO00mMcsA59msNT0DGqXJj9tX93o/Y5V2GUm7E89dR
 n6wgpeb9za3ykiWSn47lKMsp8efKzLPzBHjEiw/eOAnn5iGRfMMhYAK73
 2Wx2oQjErii4JeJWwRJqfG2tMz+3x/DuzEzxkk9JuGnJbZdR/HCI8kAjJ
 mb22786AP7q7LEvJod86tNF8JuezLn8dEy4IUvoSI4ufcHJcijqOqaOJ3 w==;
X-CSE-ConnectionGUID: 84MEhNc+SPS6zMtnnPUexw==
X-CSE-MsgGUID: uYwtpXoDROaXeiNLJK/9aQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="78335960"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="78335960"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 00:48:06 -0700
X-CSE-ConnectionGUID: FPoXprYYTselWv7nk4S0fA==
X-CSE-MsgGUID: Fa+n+ohSSfeSByAJ07vLTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="274816582"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 00:48:06 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 00:48:05 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 00:48:05 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.3) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 00:48:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lBuY6DcVFDznfoYDGY4H2QvdCj/YCz1Cr1YRlrXSW/mBtC6CjQK4I6PZIlVPKu14M0KciBp4BiGX+L30XP7P/UCTtBhaCk3yuvN82QEQ0Aleh5xXuHPoZ0Fq4KA3ESy9PU2kXNabJBpfwe6j3B1itmwqIoWnlJqBgO/199b24lXC8d2oS9RSW5+zz+A7umOFaQt+uZc+8X0q9nGSeiE5IiC9wNz9tUY8420cL6s6Oon59EzQHDA9Fx+ckXuLFrTnMKo1dAzDOD/CEJoyhYqAkN2mVj9pDyHKYeX4GQb7oJ/qC3FYAaNl/D84eRVTLjtEuD9wJTkmepdeub9y0JJJzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kd3chGe40GsUWsQqzHRinY3GrKgzpwnrZF2N8xZmgqQ=;
 b=WdJAUyn3sz9XBmeesMHP1sx9EzQ9reX1ppoSbLeb9KwmJH1XMopQXsaiIan5YX73L80kwvWms1lAR1aK6PDh8lhU/9cL3BuW4YNvB788mkgonlBNaNpaZvKyiFTPH4Ba1ddJS0rfnxOIWX3MNZhMRujx7EpFnP39MMJ9QeX37Hu1IFLT2yvnmjSeHfGIdeAnQ5VDylpH4bWjlz8hJi3FXiTS18lZJSQaqo2FtUBowJInlhcvwe1hL/CMOcyjzSWxzY4naHo8GWbQFKsnHeTc6jafgnS6EC/l5r22W8rLYMLK39qK/RVJG8e/9VjPSCKW4iJh9cROzmdc+buma+Hqiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS4PPFA84FA90FC.namprd11.prod.outlook.com (2603:10b6:f:fc02::43) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 8 May
 2026 07:48:00 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9891.019; Fri, 8 May 2026
 07:48:00 +0000
Message-ID: <a009c659-5070-4ea8-b904-6a54c06f73d6@intel.com>
Date: Fri, 8 May 2026 13:17:51 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/intel_panel: Use highest refresh rate mode
 for seamless VRR changes
To: Manasi Navare <navaremanasi@google.com>
CC: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, Sean Paul <seanpaul@google.com>
References: <20260428083323.3745772-1-ankit.k.nautiyal@intel.com>
 <20260428083323.3745772-3-ankit.k.nautiyal@intel.com>
 <afH2DKWGJs5nmFwh@intel.com> <11998bff-4d5c-4a41-a9e8-312e90cbe1bf@intel.com>
 <8878f6d3-0d38-41f3-a0c5-2c229fd553ec@intel.com>
 <172dd0cf-8e0b-4e00-a50e-708196928a7e@intel.com>
 <CAMNLLoTKjz-Fg7Dp5R6_XG8PEcOAiDfPx+=UVeKkkRoBYeRYug@mail.gmail.com>
 <ee4eef18-7901-4e5f-b914-65b01d1fe7fe@intel.com>
 <CAMNLLoQUwkk3QJOyHv2Lk30d=V3erJKrBcFsjkFXPE8dFmvgjA@mail.gmail.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <CAMNLLoQUwkk3QJOyHv2Lk30d=V3erJKrBcFsjkFXPE8dFmvgjA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0273.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1f2::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS4PPFA84FA90FC:EE_
X-MS-Office365-Filtering-Correlation-Id: cba36a2e-b0dc-47b8-e339-08deacd61f82
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|3023799003|56012099003|18002099003|18092099006;
X-Microsoft-Antispam-Message-Info: EB2f24NI6IDh2dy2kN2uSwmZ6iKv/basbHdTl5xpFpVO2rg2FhFnRSWbjT+OyZKr0TpP5JAhYCceRcAVnPn1W25UOKlZ/HUNq+PZfDCeOYjKKlm7zzvVJD0qNdm6zDnj5BIw00tY7z1/gFtua55GAuEkaVQXDQR5u+jre0K4P8CQXNChxblPdme8NLf6QdDL6hOEEf5eG2KMkTEi2Sq2+qqhbjtpzKQylHj3fuQdgSC2z6vmNk/9LxP2si+70QcurEgKybiD0q1VfoPHW3XX5LdtWyL1QPQ6grtm4+X9gQMJ2ElxwSd8vqBBsasHitDPqWTNajS36MQgRLJt8R8iDO8afiv9ImdyfxX79Q2qNbOA72YCg389bcHJ5Qv3KGzQoLpSdXA332AgNbNJ5F4DtT2pUlHHusxsKFPsXp8xF5vYbpus4CGIFMwr9y7ZAdYGlPcJIaynI6jfz128/8w3MfW2zIULkQ1R0HQ5i7PgNP8kz3nbnkjNppQ+9CTDKIQMhtAq1ChDhS2JCYbOcP92IyQurODi6klTkWhRSqQkqhjWHfXXS0axNcTghK/yzSb+w4i7P40MVkaZKbuw5GuC9Zpyi1dj7MkZqzFPNSOg3u5UKzRI1+LbapjK00/SjG7V40PWglzTUXz1bQFm36N7qQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(3023799003)(56012099003)(18002099003)(18092099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TVgwOEswT0cxNFVLajYzRGVYbkZEaFlZMzl1MVhiVlErQ01ORFd5K2lDNWND?=
 =?utf-8?B?RktpblIzSnFZdXhmOTM0WERhbWgyU1Y4S3lkZ003T3FWVEJDQVNkQkFOWlFa?=
 =?utf-8?B?UmlTQUFCY3dZRXJ6ZGRaT3VWQ2ozTWRnTVRCNmtxNHU5a0d4SStEaWFMVWhI?=
 =?utf-8?B?OVdnNlVuVWJ0MHRYekZ4NUxBREcxa2RET25sMGNhNW96RUlVcFFrcFVUTHBL?=
 =?utf-8?B?WjV2cktyamhUM1N3WU9TL0dpcnlxb3RBWklyZkwzMjZsK3cwTFBHdEUvZ080?=
 =?utf-8?B?ekk5YUY1Tmg1M0RIT0FxTVJITjNGczNLcE03WmhKbzFWOVJmNkJJeDh0eVFP?=
 =?utf-8?B?dWZWNmF2QTVCODNTQWI1ZnQxMVFpRmtCNnBxSzc3WXhvdTA2VlB3c3Y0bEZC?=
 =?utf-8?B?L3hOVG45RjNFN3ZOdUVicTFmTnRtSGpNNHROQjJCdDFLTnJFY3RVQnE2eGxm?=
 =?utf-8?B?bWNSeUw5Z1hKZWpIZ2lMRFRWMDAvOVQ5M2FmWlcwRnhFUEhROEVwdmg0QkVJ?=
 =?utf-8?B?bmVQNFlxMVEraUxDYWx4WjlXWEx2d0MvWGdxNEZBV3ErWi9Sd2dHZnBaQXVp?=
 =?utf-8?B?dllrQ0dYN254WHlybmhmV29uNFhwczJjWmM2bThKV204d01yb0xmdDlkWUhz?=
 =?utf-8?B?U0Y4Z284a2MwOVZwV0FFNzhqSGRKaHFFZzhXTlZvbGtMeVFQbzFMZjNLdkNp?=
 =?utf-8?B?VVlsRjFxQXZ1U0pNejEyUmZ1NytPUGFGcjBETVlwU3NnQUlUTm5Gd3BoUnNi?=
 =?utf-8?B?Qi9lelFYRmMyREFWanhLRFp3VTVzZFN0SmdwbzAwZDN0RGRYbDJxM2hvalpF?=
 =?utf-8?B?RXBUeDBQVDNNNTl2MnNGL3N1cmxWeDNmR0gxS09jdS9RNnJoUGJRd01pRW9Y?=
 =?utf-8?B?YW1WZjBZUGlRWGZkMWI1VHY4ek1CcXJ6VUw5dHRlNkFLZnZQUFIybDd0bVBX?=
 =?utf-8?B?RitqNkRtSzRGK0s4eDE2dTUwTXJ0elRPR2lRYVBkZUIvRmJEbkxIdG1aYjQ4?=
 =?utf-8?B?RDVYOFJTWjlKd1h4RlNrekFZcmZ0YkExQ09TZzRKSWtUVUc3ZGZlRlFOQmw2?=
 =?utf-8?B?blh3T2RQdXgwcytYR1BvdXlWTUNBZ01XU0I2UUphU3pqVXNRcUFyYjd0NjRO?=
 =?utf-8?B?MVIxR2xyMWI2ZXlXcUJlNGthaDBKVCtTcDJiajZCMUdFeURwVWdzSUc5OTN2?=
 =?utf-8?B?aHRkY0N3SEk5SDFvNSs2amZ0UW5PL2pqbXVFTHBoS0R2eURHSzlacGIxUkli?=
 =?utf-8?B?bkQxS09RZ2xrZFpUMER3alZMWWtqaGlBZzBBSTZxelk0ejFLL1MzMWlscWk5?=
 =?utf-8?B?WDNRUms3ZmZIVW5jclMzVko0dVlGZm1UYU1UUEd2akV0cUlXcWZ1Q01JNjBz?=
 =?utf-8?B?dDFrUlRidHJPSkxxbmlxdDM5NjlnNG9uT0tVVDU2czJIS25mK1JjUk85UENB?=
 =?utf-8?B?OC85QUc2SElkSTBSbUc2eFE4WHA3MGd5YXdRWU9SdnIxc3NzdlFud09lV0Vn?=
 =?utf-8?B?TVc4emZJUE9VNS9FYnZDL1BEWmprUzZicG1kT09Gd0lYTFVXYWQydm9OTUw4?=
 =?utf-8?B?dW4wMWJDdXRpdGlKMXZidmErbXNrWnA2TDBZTjFVQ0o4QjF4Sm82ZGh0TW1h?=
 =?utf-8?B?RzdRTWNOYzl5Vy9IMG01RVdGR3ZxMGMyY0ZEZGJpWFo0bFpERUlxRllrVnRQ?=
 =?utf-8?B?OHhSc1l6MUJpdERRM3M0ejh6V0ZPNEJnMzBiVXRmalZxN2ViZ2VlOG9kSWh4?=
 =?utf-8?B?MXpoUUpjRkRrbUg2Zkk4dklDcmZpSzdhWFQ3NzIyS2NhL3ZRcTlucmRYb2Jy?=
 =?utf-8?B?bHU2Sk9BbWZGWWxUWVNKVGlJODZuR1BoUG5WVFZFQlNMeGthUmorVWwxM0sr?=
 =?utf-8?B?emlzbVNYWjBsQUdaYmwycUxyQU5WOEcrWk5FdDJkaEFCRGxhRDZKU0ZaYmNQ?=
 =?utf-8?B?Q25xdDRZb2kzdjd6SG1KUHJmQ2FybE9TVmlNNFBCZnI5VFU2bjdZNmZ2aElV?=
 =?utf-8?B?SnQ4WnFPL3MreEYzeU41TngyYy9hb2Ric0VMQlFGcDd4NDQzNENIL3B0SCtx?=
 =?utf-8?B?dE50blJKOHFiNFpmQUYwZlFERHA0ckZheld1TmpVb09heWxlT1hZeFArZjRE?=
 =?utf-8?B?ajR5ajB3bStZS1Job2tRMk1USUpMaW9iNGM2TzZyUGNtM3UzOGZORmRCSzIz?=
 =?utf-8?B?UjFGVk1tWTBCU1RVRzBoN3FDMjhZa0FGY3FRVUZlanAxMDRiZXIyTXpPb2NT?=
 =?utf-8?B?clFLRGlHOExFQnYycTZqaW1WN2w4WDRzeWlKL2xYRDBoa21GUHdZczMrVE9G?=
 =?utf-8?B?WnQvWjA3TjRhdVNzRlB4R05sRkRtTGx1ek8wQ0E1MERZZklmM1ZCUzZJQ2R5?=
 =?utf-8?Q?LBx/Rfor1jIJJ7So=3D?=
X-Exchange-RoutingPolicyChecked: p3fcLaoRiJXuLCx9ozOYgvUyaHCzx/dCrXwb9dOOdJgOoj4ToPEyELi92REXzDaw9IuvxyiVaRnbLbnbLXmvNfWY7f/wu51XSEgP4jih3d2KswNmsHm7dZc3k4MRefAwPZ4SJOVM6KD34Vdu//dVwJ7x7oNqrHMbz4kKc1jHvgnjm9EBZlTSQInGWQTA3YoP5o2NKMNojVuBNYe1F8rK8xm8nwHwQCXJ+7gj5qohb8X/+w2mVALD+Zh86glJYrH0+n/lNUM4ZI/kE736Kerc9t9bFi+8Jk5sJtQSN0vPSjgpDwvlvMKm5b08MBTSgQUpr32hYxIy8w31Sj6gLdLXpA==
X-MS-Exchange-CrossTenant-Network-Message-Id: cba36a2e-b0dc-47b8-e339-08deacd61f82
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 07:48:00.2444 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IC5noEpSmT8oH1KFmW/mplqGY0qQDlWMOi2ockbKtk1FlnhrGb1Z9fI4Y8VJi4SdHvBzjoPZa01HQY2N8NPXXaW9HlGrK9UhNJeadVi2IsM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFA84FA90FC
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
X-Rspamd-Queue-Id: E3D694F340F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim,patchwork.freedesktop.org:url];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action


On 5/7/2026 11:35 PM, Manasi Navare wrote:
> Thanks Ankit for the detailed feedback and analysis, please find some 
> comments below :
>
> On Thu, May 7, 2026 at 4:52 AM Nautiyal, Ankit K 
> <ankit.k.nautiyal@intel.com> wrote:
>
>
>     On 5/6/2026 9:23 PM, Manasi Navare wrote:
>     > Hi Ankit, Ville, Jani,
>     >
>     > Thank you for the patch and the discussion here. Please see some
>     of my
>     > comments/feedback below:
>     >
>     > On Wed, May 6, 2026 at 12:25 AM Nautiyal, Ankit K
>     > <ankit.k.nautiyal@intel.com> wrote:
>     >
>     >
>     >     On 5/4/2026 6:47 PM, Nautiyal, Ankit K wrote:
>     >     >
>     >     > On 4/29/2026 10:30 PM, Nautiyal, Ankit K wrote:
>     >     >>
>     >     >> On 4/29/2026 5:44 PM, Ville Syrjälä wrote:
>     >     >>> On Tue, Apr 28, 2026 at 02:03:23PM +0530, Ankit Nautiyal
>     wrote:
>     >     >>>> intel_panel_fixed_mode() intends to choose a fixed mode
>     at or
>     >     above
>     >     >>>> the
>     >     >>>> requested refresh rate for VRR panels, so the requested
>     >     refresh can be
>     >     >>>> reached by extending vblank.
>     >     >>>>
>     >     >>>> This is called in compute config to find the 'best' fixed
>     >     mode for a
>     >     >>>> requested mode and also called during mode valid phase to
>     >     prune the
>     >     >>>> unsupported fixed modes.
>     >     >>>>
>     >     >>>> For Non-VRR panels there is no issue:
>     >     >>>> - When a user wants to do a full modeset (sets
>     >     DRM_MODE_ALLOW_MODESET
>     >     >>>>    flag) with a custom mode, the intel_panel_fixed_mode()
>     >     gives the
>     >     >>>> mode
>     >     >>>>    with refresh rate nearest to the requested mode.
>     >     >>>> - Seamless switch to a lower mode is only possible if the
>     >     platform has
>     >     >>>>    support for Double buffered MN and the sink is
>     Seamless-DRRS
>     >     >>>> capable.
>     >     >>>>    In this case the user sets a lower refresh rate mode and
>     >     doesn't
>     >     >>>> set
>     >     >>>>    the DRM_MODE_ALLOW_MODESET flag the
>     intel_panel_fixed_mode()
>     >     >>>> returns
>     >     >>>>    again the fixed mode whose refresh rate is nearest
>     to the
>     >     requested
>     >     >>>>    mode.
>     >     >>>> - Since Duble buffered MN is not supported on LNL+, the
>     seamless
>     >     >>>> switch
>     >     >>>>    is not possible for such panels from LNL+.
>     >     >>>>
>     >     >>>> For VRR panels the current logic has some issues:
>     >     >>>> - For VRR panels intel_panel_fixed_mode() intends to
>     choose a
>     >     fixed
>     >     >>>> mode
>     >     >>>>    at or above the requested refresh rate so the requested
>     >     refresh
>     >     >>>> can be
>     >     >>>>    reached by extending vblank.
>     >     >>>> - However, as per the current logic the helper can return a
>     >     lower
>     >     >>>> refresh
>     >     >>>>    rate mode, if the lower refresh rate mode is first
>     in the
>     >     list
>     >     >>>> of fixed
>     >     >>>>    mode. Later, if the selected fixed mode's refresh
>     rate < the
>     >     >>>> requested
>     >     >>>>    mode's refresh rate, then the requested rate is
>     matched by
>     >     >>>> extending
>     >     >>>>    the vblank.
>     >     >>>> - In case of a full modeset request with a custom mode this
>     >     is not a
>     >     >>>>    problem. But for the seamless switch features like
>     LRR (Lower
>     >     >>>> Refresh
>     >     >>>>    Rate) and the Seamless-DRRS this creates a problem
>     as this
>     >     >>>> results in
>     >     >>>>    change in vsync_start/end and resulting in a full
>     modeset.
>     >     >>>> - Furthermore, as with the Non-VRR panel case, the
>     >     Seamless-DRRS is
>     >     >>>> not
>     >     >>>>    supported on LNL+, but for VRR panels, the vblank can be
>     >     extended
>     >     >>>>    similar to LRR case. But due to the above mentioned
>     >     problem in the
>     >     >>>>    intel_panel_fixed_mode() this also results in full
>     modeset.
>     >     >>>>
>     >     >>>> To solve these problems for the VRR panels, identify if
>     the user
>     >     >>>> wants a
>     >     >>>> full modeset or expects seamless switch. If seamless switch
>     >     to a lower
>     >     >>>> mode is desired, make intel_panel_fixed_mode() return
>     the highest
>     >     >>>> refresh rate mode, provided the requested rate is in vrr
>     >     range. This
>     >     >>>> will then be modified to extend the vblank to provide
>     the desired
>     >     >>>> refresh rate.
>     >     >>>>
>     >     >>>> This is particularly needed for DRRS panels on platforms
>     >     without the
>     >     >>>> double buffered M/N support (display version 20+), where
>     >     seamless
>     >     >>>> clock
>     >     >>>> changes are not possible.
>     >     >>>>
>     >     >>>> To understand the user requirement for full
>     modeset/seamless
>     >     >>>> switch, the
>     >     >>>> intel_panel_fixed_mode() and
>     intel_panel_compute_config() need
>     >     >>>> access to
>     >     >>>> the connector state to check the allow_modeset flag.
>     >     >>>>
>     >     >>>> Add a nullable conn_state parameter to both. The mode_valid
>     >     callers
>     >     >>>> pass
>     >     >>>> NULL since they have no atomic state and the compute_config
>     >     callers
>     >     >>>> pass
>     >     >>>> their conn_state.
>     >     >>>>
>     >     >>>> Also remove the VRR check from is_best_fixed_mode()
>     since the
>     >     >>>> selection is
>     >     >>>> handled upfront in intel_panel_fixed_mode().
>     >     >>>>
>     >     >>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>     >     >>>> ---
>     >     >>>> drivers/gpu/drm/i915/display/icl_dsi.c     |  2 +-
>     >     >>>> drivers/gpu/drm/i915/display/intel_dp.c    |  6 ++--
>     >     >>>> drivers/gpu/drm/i915/display/intel_dsi.c   |  2 +-
>     >     >>>> drivers/gpu/drm/i915/display/intel_dvo.c   |  6 ++--
>     >     >>>> drivers/gpu/drm/i915/display/intel_lvds.c  |  4 +--
>     >     >>>> drivers/gpu/drm/i915/display/intel_panel.c | 35
>     >     >>>> +++++++++++-----------
>     >     >>>> drivers/gpu/drm/i915/display/intel_panel.h |  6 ++--
>     >     >>>> drivers/gpu/drm/i915/display/intel_sdvo.c  |  8 ++---
>     >     >>>> drivers/gpu/drm/i915/display/vlv_dsi.c     |  2 +-
>     >     >>>>   9 files changed, 37 insertions(+), 34 deletions(-)
>     >     >>>>
>     >     >>>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
>     >     >>>> b/drivers/gpu/drm/i915/display/icl_dsi.c
>     >     >>>> index afbaa0465842..1efe81404d01 100644
>     >     >>>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>     >     >>>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>     >     >>>> @@ -1671,7 +1671,7 @@ static int
>     gen11_dsi_compute_config(struct
>     >     >>>> intel_encoder *encoder,
>     >     >>>>       pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>     >     >>>> pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>     >     >>>>   -    ret = intel_panel_compute_config(intel_connector,
>     >     >>>> adjusted_mode);
>     >     >>>> +    ret = intel_panel_compute_config(intel_connector,
>     >     >>>> adjusted_mode, conn_state);
>     >     >>>>       if (ret)
>     >     >>>>           return ret;
>     >     >>>>   diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>     >     >>>> b/drivers/gpu/drm/i915/display/intel_dp.c
>     >     >>>> index 35b8fb5740aa..f014ce28e69f 100644
>     >     >>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>     >     >>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>     >     >>>> @@ -1588,7 +1588,7 @@ intel_dp_mode_valid(struct
>     drm_connector
>     >     >>>> *_connector,
>     >     >>>>       if (intel_dp_hdisplay_bad(display, mode->hdisplay))
>     >     >>>>           return MODE_H_ILLEGAL;
>     >     >>>>   -    fixed_mode = intel_panel_fixed_mode(connector,
>     mode);
>     >     >>>> +    fixed_mode = intel_panel_fixed_mode(connector,
>     mode, NULL);
>     >     >>>>       if (intel_dp_is_edp(intel_dp) && fixed_mode) {
>     >     >>>>           status = intel_panel_mode_valid(connector, mode);
>     >     >>>>           if (status != MODE_OK)
>     >     >>>> @@ -3577,9 +3577,9 @@ intel_dp_compute_config(struct
>     >     intel_encoder
>     >     >>>> *encoder,
>     >     >>>>       struct intel_connector *connector =
>     >     >>>> intel_dp->attached_connector;
>     >     >>>>       int ret = 0, link_bpp_x16;
>     >     >>>>   -    fixed_mode = intel_panel_fixed_mode(connector,
>     >     adjusted_mode);
>     >     >>>> +    fixed_mode = intel_panel_fixed_mode(connector,
>     >     adjusted_mode,
>     >     >>>> conn_state);
>     >     >>>>       if (intel_dp_is_edp(intel_dp) && fixed_mode) {
>     >     >>>> -        ret = intel_panel_compute_config(connector,
>     >     adjusted_mode);
>     >     >>>> +        ret = intel_panel_compute_config(connector,
>     >     adjusted_mode,
>     >     >>>> conn_state);
>     >     >>>>           if (ret)
>     >     >>>>               return ret;
>     >     >>>>       }
>     >     >>>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c
>     >     >>>> b/drivers/gpu/drm/i915/display/intel_dsi.c
>     >     >>>> index 9005c1f5d857..a480bb79dca7 100644
>     >     >>>> --- a/drivers/gpu/drm/i915/display/intel_dsi.c
>     >     >>>> +++ b/drivers/gpu/drm/i915/display/intel_dsi.c
>     >     >>>> @@ -64,7 +64,7 @@ enum drm_mode_status
>     >     intel_dsi_mode_valid(struct
>     >     >>>> drm_connector *connector,
>     >     >>>>       struct intel_display *display =
>     >     >>>> to_intel_display(connector->dev);
>     >     >>>>       struct intel_connector *intel_connector =
>     >     >>>> to_intel_connector(connector);
>     >     >>>>       const struct drm_display_mode *fixed_mode =
>     >     >>>> - intel_panel_fixed_mode(intel_connector, mode);
>     >     >>>> + intel_panel_fixed_mode(intel_connector, mode, NULL);
>     >     >>>>       int max_dotclk = display->cdclk.max_dotclk_freq;
>     >     >>>>       enum drm_mode_status status;
>     >     >>>>   diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c
>     >     >>>> b/drivers/gpu/drm/i915/display/intel_dvo.c
>     >     >>>> index 405b33aca9dd..0ec25d895777 100644
>     >     >>>> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
>     >     >>>> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
>     >     >>>> @@ -224,7 +224,7 @@ intel_dvo_mode_valid(struct
>     drm_connector
>     >     >>>> *_connector,
>     >     >>>>       struct intel_connector *connector =
>     >     >>>> to_intel_connector(_connector);
>     >     >>>>       struct intel_dvo *intel_dvo =
>     >     intel_attached_dvo(connector);
>     >     >>>>       const struct drm_display_mode *fixed_mode =
>     >     >>>> - intel_panel_fixed_mode(connector, mode);
>     >     >>>> + intel_panel_fixed_mode(connector, mode, NULL);
>     >     >>>>       int max_dotclk = display->cdclk.max_dotclk_freq;
>     >     >>>>       int target_clock = mode->clock;
>     >     >>>>       enum drm_mode_status status;
>     >     >>>> @@ -259,7 +259,7 @@ static int
>     intel_dvo_compute_config(struct
>     >     >>>> intel_encoder *encoder,
>     >     >>>>       struct intel_connector *connector =
>     >     >>>> to_intel_connector(conn_state->connector);
>     >     >>>>       struct drm_display_mode *adjusted_mode =
>     >     >>>> &pipe_config->hw.adjusted_mode;
>     >     >>>>       const struct drm_display_mode *fixed_mode =
>     >     >>>> - intel_panel_fixed_mode(intel_dvo->attached_connector,
>     >     >>>> adjusted_mode);
>     >     >>>> + intel_panel_fixed_mode(intel_dvo->attached_connector,
>     >     >>>> adjusted_mode, conn_state);
>     >     >>>>         /*
>     >     >>>>        * If we have timings from the BIOS for the
>     panel, put
>     >     them in
>     >     >>>> @@ -270,7 +270,7 @@ static int
>     intel_dvo_compute_config(struct
>     >     >>>> intel_encoder *encoder,
>     >     >>>>       if (fixed_mode) {
>     >     >>>>           int ret;
>     >     >>>>   -        ret = intel_panel_compute_config(connector,
>     >     adjusted_mode);
>     >     >>>> +        ret = intel_panel_compute_config(connector,
>     >     adjusted_mode,
>     >     >>>> conn_state);
>     >     >>>>           if (ret)
>     >     >>>>               return ret;
>     >     >>>>       }
>     >     >>>> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c
>     >     >>>> b/drivers/gpu/drm/i915/display/intel_lvds.c
>     >     >>>> index cc6d4bfcff10..2e30bc3f1e62 100644
>     >     >>>> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
>     >     >>>> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
>     >     >>>> @@ -396,7 +396,7 @@ intel_lvds_mode_valid(struct
>     drm_connector
>     >     >>>> *_connector,
>     >     >>>>       struct intel_display *display =
>     >     >>>> to_intel_display(_connector->dev);
>     >     >>>>       struct intel_connector *connector =
>     >     >>>> to_intel_connector(_connector);
>     >     >>>>       const struct drm_display_mode *fixed_mode =
>     >     >>>> - intel_panel_fixed_mode(connector, mode);
>     >     >>>> + intel_panel_fixed_mode(connector, mode, NULL);
>     >     >>>>       int max_pixclk = display->cdclk.max_dotclk_freq;
>     >     >>>>       enum drm_mode_status status;
>     >     >>>>   @@ -460,7 +460,7 @@ static int
>     >     intel_lvds_compute_config(struct
>     >     >>>> intel_encoder *encoder,
>     >     >>>>        * with the panel scaling set up to source from the
>     >     H/VDisplay
>     >     >>>>        * of the original mode.
>     >     >>>>        */
>     >     >>>> -    ret = intel_panel_compute_config(connector,
>     adjusted_mode);
>     >     >>>> +    ret = intel_panel_compute_config(connector,
>     adjusted_mode,
>     >     >>>> conn_state);
>     >     >>>>       if (ret)
>     >     >>>>           return ret;
>     >     >>>>   diff --git a/drivers/gpu/drm/i915/display/intel_panel.c
>     >     >>>> b/drivers/gpu/drm/i915/display/intel_panel.c
>     >     >>>> index 5e918ee0c8ea..65d017371d78 100644
>     >     >>>> --- a/drivers/gpu/drm/i915/display/intel_panel.c
>     >     >>>> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
>     >     >>>> @@ -59,24 +59,13 @@ intel_panel_preferred_fixed_mode(struct
>     >     >>>> intel_connector *connector)
>     >     >>>>                       struct drm_display_mode, head);
>     >     >>>>   }
>     >     >>>>   -static bool is_best_fixed_mode(struct intel_connector
>     >     *connector,
>     >     >>>> -                   int vrefresh, int fixed_mode_vrefresh,
>     >     >>>> +static bool is_best_fixed_mode(int vrefresh, int
>     >     fixed_mode_vrefresh,
>     >     >>>>                      const struct drm_display_mode
>     *best_mode)
>     >     >>>>   {
>     >     >>>>       /* we want to always return something */
>     >     >>>>       if (!best_mode)
>     >     >>>>           return true;
>     >     >>>>   -    /*
>     >     >>>> -     * With VRR always pick a mode with equal/higher than
>     >     requested
>     >     >>>> -     * vrefresh, which we can then reduce to match the
>     requested
>     >     >>>> -     * vrefresh by extending the vblank length.
>     >     >>>> -     */
>     >     >>>> -    if (intel_vrr_is_in_range(connector, vrefresh) &&
>     >     >>>> - intel_vrr_is_in_range(connector, fixed_mode_vrefresh) &&
>     >     >>>> -        fixed_mode_vrefresh < vrefresh)
>     >     >>>> -        return false;
>     >     >>>> -
>     >     >>>>       /* pick the fixed_mode that is closest in terms of
>     >     vrefresh */
>     >     >>>>       return abs(fixed_mode_vrefresh - vrefresh) <
>     >     >>>> abs(drm_mode_vrefresh(best_mode) - vrefresh);
>     >     >>>> @@ -84,15 +73,26 @@ static bool is_best_fixed_mode(struct
>     >     >>>> intel_connector *connector,
>     >     >>>>     const struct drm_display_mode *
>     >     >>>>   intel_panel_fixed_mode(struct intel_connector *connector,
>     >     >>>> -               const struct drm_display_mode *mode)
>     >     >>>> +               const struct drm_display_mode *mode,
>     >     >>>> +               const struct drm_connector_state
>     *conn_state)
>     >     >>>>   {
>     >     >>>>       const struct drm_display_mode *fixed_mode,
>     *best_mode =
>     >     NULL;
>     >     >>>>       int vrefresh = drm_mode_vrefresh(mode);
>     >     >>>>   +    /*
>     >     >>>> +     * With VRR always pick the highest refresh rate mode,
>     >     >>>> +     * which we can then reduce to match the requested
>     >     >>>> +     * vrefresh by extending the vblank length.
>     >     >>>> +     */
>     >     >>>> +    if (conn_state && !conn_state->state->allow_modeset &&
>     >     >>> The foo_state->state pointer should never be used. If
>     you need
>     >     the full
>     >     >>> atomic state then plumb it through from the top.
>     >     >>
>     >     >> Hmm noted.
>     >     >>
>     >     >>
>     >     >>>
>     >     >>>> + intel_vrr_is_capable(connector) &&
>     >     >>>> + intel_vrr_is_in_range(connector, vrefresh))
>     >     >>>> +        return
>     intel_panel_highest_vrefresh_mode(connector);
>     >     >>> What we want is the fixed mode that matches the current
>     >     adjusted mode
>     >     >>> exactly except for vtotal, and I think we also want to
>     >     maintain the
>     >     >>> vsync pulse location relative to vtotal.
>     >     >>
>     >     >> Oh alright. I was thinking the issue is in the best mode
>     logic
>     >     which
>     >     >> is resulting in lower mode getting picked when we wanted
>     a higher
>     >     >> mode as best fixed mode.
>     >     >>
>     >     >> I was under the impression that since the vsync start/end of
>     >     lower is
>     >     >> not the same with the higher mode and since this cannot be
>     >     modified
>     >     >> on the fly, it results in full modeset.
>     >     >>
>     >     >> However, as you said, vsync start/end can be modified
>     indeed the
>     >     >> problem becomes:
>     >     >>
>     >     >> - we are not scaling the vsync start/end similar to what
>     we are
>     >     doing
>     >     >> for vtotal.
>     >     >> - even if we do that, we need to remove the check for vsync
>     >     start/end
>     >     >> for fastboot.
>     >     >>
>     >     >> Another consideration is that is the vsync_start should be
>     >     inside the
>     >     >> vrr guardband, but I think if the vsync_start scales up
>     then it
>     >     will
>     >     >> still be inside the guardband so we should be covered.
>     >     >>
>     >     >>
>     >     >>>
>     >     >>> We should in fact fix the vsync_start/end mess first.
>     >     >>
>     >     >> You mean the existing vsync_start/end change due to AS SDP
>     >     thing? Or
>     >     >> you mean the above mentioned scaling up?
>     >     >>
>     >     >>
>     >     >>> We need to add
>     >     >>> TRANS_VSYNC handling to the LRR codepaths and allow that
>     to change
>     >     >>> during fastsets. And intel_panel_compute_config() needs to
>     >     preserve
>     >     >>> the vtotal-vsync distance when adjusting vtotal. I think
>     that
>     >     should
>     >     >>> all be fine for DP since it doesn't really use
>     TRANS_VSYNC for
>     >     >>> anything.
>     >     >>
>     >     >> Hmm I think I got some direction here. Thanks for making it
>     >     clearer.
>     >     >
>     >     >
>     >     > Hi Ville,
>     >     >
>     >     > Going through the Bspec, I have a query on the TRANS_VSYNC
>     part.
>     >     >
>     >     > For NVL onwards, the TRANS_VSYNC seems to be deprecated. As I
>     >     > understand, this is no more used with VRR timing
>     generator, instead
>     >     > TRANS_VRR_VSYNC is used.
>     >     > So we can avoid reading/writing it completely for
>     platforms that
>     >     > support VRR Timing Generator.
>     >     >
>     >     > But for platforms using the legacy timing generator, BSpec
>     says
>     >     > TRANS_VSYNC should not be changed while transcoder/port
>     are enabled.
>     >     > Given that, should we treat TRANS_VSYNC updates as
>     modeset-only on
>     >     > legacy TG platforms, and only allow the fastset path where VRR
>     >     TG is
>     >     > always used?
>     >     >
>     >     > Just wanted to make sure I’m interpreting your suggestion
>     correctly
>     >     > before changing the fastset checks.
>     >     >
>     >     > Thanks,
>     >     > Ankit
>     >     >
>     >
>     >     Just an update:
>     >
>     >     Maintaining vtotal-vsync pulse seems to be working, along
>     with the
>     >     change to always use highest RR mode as best mode.
>     >
>     >
>     > I see that the patch selects the highest refresh rate during
>     > compute_config.
>     > Would that be sufficient to allow VRR based fastset when userspace
>     > requests 60Hz at the initial modeset from userspace?
>
>
>     With this patch we only select the highest refresh rate mode when
>     allow_modeset is not set (i.e. seamless path).
>     For the initial modeset from userspace, I think the allow_modeset is
>     set, so we still pick the nearest fixed mode for the requested
>     refresh rate.
>
>     >
>     > I think what we might need is that during the very first hand
>     off to
>     > the kernel driver, is when it always internally sets the crtc state
>     > mode timings
>     > for the highest refresh rate mode such that when the usersapce
>     > requests to set the preferred mode of 60 Hz,
>     > the mode or the crtc timings would be set the only difference
>     would be
>     > the Vtotal and it will meet the VRR fastset requirements and
>     will be
>     > able to achieve this 60 Hz using VRR
>
>     To clarify, there are two kinds of panels with fixed modes we need to
>     consider here:
>
>     Type 1: Modes with different clocks (e.g. 60Hz @ 347MHz, 120Hz @
>     695MHz)
>
>     "2880x1800": 60 347660 2880 2928 2960 3040 1800 1803 1809 1906
>     0x48 0xa
>     "2880x1800": 120 695310 2880 2928 2960 3040 1800 1803 1809 1906
>     0x40 0xa
>     For such panels, it is not possible to seamlessly switch from a
>     lower RR
>     mode to a higher RR mode, since at lower clock we cannot increase the
>     clock without a full modeset.
>     But seamless switch from 120Hz to 60Hz can be achieved by running
>     at the
>     same (higher) clock and just extending the vtotal.
>
>     Type 2: Modes with same clock but different vtotal
>
>     "2880x1800": 60 709633 2880 2888 2920 3080 1800 3800 3816 3840
>     0x48 0xa
>
>     "2880x1800": 120 709633 2880 2888 2920 3080 1800 1880 1896 1920
>     0x40 0xa
>
>     Here the clock is the same, so we can go from higher RR to lower
>     RR or
>     vice versa just by changing the vtotal.
>     Seamless switching is possible in both directions.
>
>
> Yes correct, in our case this is how the modes are manifested, 120Hz 
> and 60Hz both have the same clock
> However the preferred mode marked is 60Hz. However what we are 
> observing is that the seamless switch
> is not happening from 60Hz to 120Hz and the userspace still puts both 
> these modes into separate config groups.
>
> So our proposal was that in case of the panels where both the panel 
> modes have same Pixel clock and only differ
> in Vtotal, the panel should always set the highest refresh rate (with 
> or without Allow modeset ). So then lower refresh rate
> 60 Hz can always be achieved using VRR seamlessly later when switch to 
> that mode is requested without allow modeset flag.


Hmm currently we are not making any distinction between these two types 
of panels at the time of selecting the best fixed mode.

If it makes sense, perhaps for VRR capable seamless DRRS panels (which 
have different clocks, same vtotal) we can avoid selecting High RR mode 
if the allow modeset flag is set.

This will help users who really want to set lower RR mode with a lower 
clock can get the best fixed lower RR mode (if they set the allow 
modeset flag)

For other VRR capable panels we can go always with high RR fixed mode 
irrespective of allow modeset flag.

But I need to try this out and check if it works for different cases.


>
>     So if the initial modeset is at a lower RR:
>     For Type 1: a full modeset is needed to go to higher RR. After
>     that, any
>     lower RR can be reached seamlessly.
>     For Type 2: switching to higher RR and back to lower RR can both
>     be done
>     seamlessly.
>
>
> For Type 2 panels, could we confirm that this switch is happening 
> correctly in both directions using
> the kms_vrr test switching refresh rates in the other direction as well?


Currently seamless switch to higher mode in this case was prevented by 
the vsync start/end change.

As suggested by Ville, we need to remove the check for vsync start/end 
from fastset [1] and also preserve the distance between vtotal-vsync 
while adjusting vtotal [2].

With these changes (sent only  to trybot) , the seamless switch is 
correctly taking place. I am working on these and will include these in 
next revision.

Trybot

[1] https://patchwork.freedesktop.org/patch/723253/?series=165364&rev=3

[2] https://patchwork.freedesktop.org/patch/723036/?series=165364&rev=3


Thanks,

Ankit

>
> Regards
> Manasi
>
>
>
>     >
>     > From the userspace perspective, 60Hz will still be the preferred
>     mode
>     > as advertised by the panel, but internally if the driver can always
>     > set the timings for the highest refresh rate, then switching from
>     > lower refresh rate 60 Hz to higher refresh rate 120Hz would be
>     > possible seamlessly.
>
>
>     The problem with always programming the highest refresh rate
>     timings on
>     the initial modeset is Type 1 panels.
>
>     Suppose the user explicitly requests 60Hz (with allow_modeset flag)
>     which on a Type 1 panel means 347MHz clock for power savings.
>
>     If the driver internally programs 120Hz @ 695MHz timings with vtotal
>     extended to produce 60Hz output,
>
>     the user ends up running at the higher clock. This defeats the
>     purpose
>     of selecting the lower RR mode.
>
>     So in the patch I have gone with the approach:
>
>     If user sets allow_modeset, then do not go with highest RR mode, but
>     find the best fixed mode as per existing logic.
>
>     But if it does not sets allow_modeset, then go with the highest RR
>     mode
>     (later adjust the vtotal).
>
>
>     Regards,
>
>     Ankit
>
>
>     >
>     > Regards
>     > Manasi
>     >
>     >
>     >     I still need to address the comment about avoid
>     >     deriving allow_modeset
>     >     from connector state directly.
>     >
>     >     Cc:
>     >
>     >     Manasi Navare <navaremanasi@google.com>
>     >
>     >
>     >     Regards,
>     >
>     >     Ankit
>     >
>     >
>     >     >
>     >     >>
>     >     >>
>     >     >> Regards,
>     >     >>
>     >     >> Ankit
>     >     >>
>     >     >>>
>     >     >>> +
>     >     >>>> list_for_each_entry(fixed_mode,
>     >     >>>> &connector->panel.fixed_modes, head) {
>     >     >>>>           int fixed_mode_vrefresh =
>     >     drm_mode_vrefresh(fixed_mode);
>     >     >>>>   -        if (is_best_fixed_mode(connector, vrefresh,
>     >     >>>> +        if (is_best_fixed_mode(vrefresh,
>     >     >>>> fixed_mode_vrefresh, best_mode))
>     >     >>>>               best_mode = fixed_mode;
>     >     >>>>       }
>     >     >>>> @@ -213,10 +213,11 @@ enum drrs_type
>     >     intel_panel_drrs_type(struct
>     >     >>>> intel_connector *connector)
>     >     >>>>   }
>     >     >>>>     int intel_panel_compute_config(struct intel_connector
>     >     *connector,
>     >     >>>> -                   struct drm_display_mode *adjusted_mode)
>     >     >>>> +                   struct drm_display_mode *adjusted_mode,
>     >     >>>> +                   const struct drm_connector_state
>     *conn_state)
>     >     >>>>   {
>     >     >>>>       const struct drm_display_mode *fixed_mode =
>     >     >>>> - intel_panel_fixed_mode(connector, adjusted_mode);
>     >     >>>> + intel_panel_fixed_mode(connector, adjusted_mode,
>     conn_state);
>     >     >>>>       int vrefresh, fixed_mode_vrefresh;
>     >     >>>>       bool is_vrr;
>     >     >>>>   @@ -414,7 +415,7 @@ intel_panel_mode_valid(struct
>     >     intel_connector
>     >     >>>> *connector,
>     >     >>>>                  const struct drm_display_mode *mode)
>     >     >>>>   {
>     >     >>>>       const struct drm_display_mode *fixed_mode =
>     >     >>>> - intel_panel_fixed_mode(connector, mode);
>     >     >>>> + intel_panel_fixed_mode(connector, mode, NULL);
>     >     >>>>         if (!fixed_mode)
>     >     >>>>           return MODE_OK;
>     >     >>>> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h
>     >     >>>> b/drivers/gpu/drm/i915/display/intel_panel.h
>     >     >>>> index 2f7a317995ea..c1189a20c8b2 100644
>     >     >>>> --- a/drivers/gpu/drm/i915/display/intel_panel.h
>     >     >>>> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
>     >     >>>> @@ -32,7 +32,8 @@ const struct drm_display_mode *
>     >     >>>> intel_panel_preferred_fixed_mode(struct intel_connector
>     >     *connector);
>     >     >>>>   const struct drm_display_mode *
>     >     >>>>   intel_panel_fixed_mode(struct intel_connector *connector,
>     >     >>>> -               const struct drm_display_mode *mode);
>     >     >>>> +               const struct drm_display_mode *mode,
>     >     >>>> +               const struct drm_connector_state
>     *conn_state);
>     >     >>>>   const struct drm_display_mode *
>     >     >>>> intel_panel_downclock_mode(struct intel_connector
>     *connector,
>     >     >>>>                  const struct drm_display_mode
>     *adjusted_mode);
>     >     >>>> @@ -47,7 +48,8 @@ enum drm_mode_status
>     >     >>>>   intel_panel_mode_valid(struct intel_connector *connector,
>     >     >>>>                  const struct drm_display_mode *mode);
>     >     >>>>   int intel_panel_compute_config(struct intel_connector
>     >     *connector,
>     >     >>>> -                   struct drm_display_mode
>     *adjusted_mode);
>     >     >>>> +                   struct drm_display_mode *adjusted_mode,
>     >     >>>> +                   const struct drm_connector_state
>     >     *conn_state);
>     >     >>>>   void intel_panel_add_edid_fixed_modes(struct
>     intel_connector
>     >     >>>> *connector,
>     >     >>>>                         bool use_alt_fixed_modes);
>     >     >>>>   void intel_panel_add_vbt_lfp_fixed_mode(struct
>     intel_connector
>     >     >>>> *connector);
>     >     >>>> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c
>     >     >>>> b/drivers/gpu/drm/i915/display/intel_sdvo.c
>     >     >>>> index 2e1af9e869de..e07c1070a3ec 100644
>     >     >>>> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
>     >     >>>> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
>     >     >>>> @@ -797,7 +797,7 @@
>     >     intel_sdvo_create_preferred_input_timing(struct
>     >     >>>> intel_sdvo *intel_sdvo,
>     >     >>>>         if (IS_LVDS(intel_sdvo_connector)) {
>     >     >>>>           const struct drm_display_mode *fixed_mode =
>     >     >>>> - intel_panel_fixed_mode(&intel_sdvo_connector->base,
>     mode);
>     >     >>>> + intel_panel_fixed_mode(&intel_sdvo_connector->base, mode,
>     >     NULL);
>     >     >>>>             if (fixed_mode->hdisplay != args.width ||
>     >     >>>> fixed_mode->vdisplay != args.height)
>     >     >>>> @@ -1396,11 +1396,11 @@ static int
>     >     intel_sdvo_compute_config(struct
>     >     >>>> intel_encoder *encoder,
>     >     >>>> pipe_config->sdvo_tv_clock = true;
>     >     >>>>       } else if (IS_LVDS(intel_sdvo_connector)) {
>     >     >>>>           const struct drm_display_mode *fixed_mode =
>     >     >>>> - intel_panel_fixed_mode(&intel_sdvo_connector->base,
>     mode);
>     >     >>>> + intel_panel_fixed_mode(&intel_sdvo_connector->base, mode,
>     >     >>>> conn_state);
>     >     >>>>           int ret;
>     >     >>>>             ret =
>     >     >>>> intel_panel_compute_config(&intel_sdvo_connector->base,
>     >     >>>> - adjusted_mode);
>     >     >>>> + adjusted_mode, conn_state);
>     >     >>>>           if (ret)
>     >     >>>>               return ret;
>     >     >>>>   @@ -1562,7 +1562,7 @@ static void
>     intel_sdvo_pre_enable(struct
>     >     >>>> intel_atomic_state *state,
>     >     >>>>       /* lvds has a special fixed output timing. */
>     >     >>>>       if (IS_LVDS(intel_sdvo_connector)) {
>     >     >>>>           const struct drm_display_mode *fixed_mode =
>     >     >>>> - intel_panel_fixed_mode(&intel_sdvo_connector->base,
>     mode);
>     >     >>>> + intel_panel_fixed_mode(&intel_sdvo_connector->base, mode,
>     >     >>>> conn_state);
>     >     >>>> intel_sdvo_get_dtd_from_mode(&output_dtd, fixed_mode);
>     >     >>>>       } else {
>     >     >>>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c
>     >     >>>> b/drivers/gpu/drm/i915/display/vlv_dsi.c
>     >     >>>> index 76e8cd0f65a4..bfe465443d20 100644
>     >     >>>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>     >     >>>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>     >     >>>> @@ -280,7 +280,7 @@ static int
>     intel_dsi_compute_config(struct
>     >     >>>> intel_encoder *encoder,
>     >     >>>>       pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>     >     >>>> pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>     >     >>>>   -    ret = intel_panel_compute_config(intel_connector,
>     >     >>>> adjusted_mode);
>     >     >>>> +    ret = intel_panel_compute_config(intel_connector,
>     >     >>>> adjusted_mode, conn_state);
>     >     >>>>       if (ret)
>     >     >>>>           return ret;
>     >     >>>>   --
>     >     >>>> 2.45.2
>     >
>
