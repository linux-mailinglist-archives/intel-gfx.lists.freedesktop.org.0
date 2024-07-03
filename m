Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 202E79255E3
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2024 10:52:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79D4C10E11B;
	Wed,  3 Jul 2024 08:52:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zd2y2anP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B2AD10E11B
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2024 08:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719996723; x=1751532723;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OmGerFMumXxso35M8EwHCzHqBafKz536nnKpXwudfuk=;
 b=Zd2y2anPPuOJZbKOIkK56F3LLmf8tQl4GGaU36uxCm31GifpPLmS4Zh2
 /CI8h9JqN4DpQseFwLHPrCLMIGLHNYxtpRuWWXZ7/BA/ohDN7FyJJUVvb
 fzicsx552u8AiOzc9LjUNyROA3RU4EFU7+palWudeS3yCS+2aNRKQls6i
 alirgkLlrkM2nndGzNmR6v7+dHyM37JQzAcPm+0CjwTJa24YT47ZsrZC5
 addpdhEI++oLhGX76otjdFQRf885Y/fDcTHiZd6H0MS0h+6Zczo3OqG8I
 IBuqdxbLEcyzvA0HpkX3GpbHUHVJKpEs9bhr0LZdAmqYRt8mL7y6Ep3Rf w==;
X-CSE-ConnectionGUID: 3l5akuVDQ9mdVkfNlqs5uQ==
X-CSE-MsgGUID: QkmuLa1RSMGoQ1wa8P7/5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="21023802"
X-IronPort-AV: E=Sophos;i="6.09,181,1716274800"; d="scan'208";a="21023802"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2024 01:52:02 -0700
X-CSE-ConnectionGUID: ps/slSZzTW6K/0a/r95bvQ==
X-CSE-MsgGUID: NFoeXH94R7SL5vDgYYviag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,181,1716274800"; d="scan'208";a="46605047"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jul 2024 01:52:02 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 3 Jul 2024 01:52:01 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 3 Jul 2024 01:52:01 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 3 Jul 2024 01:52:01 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 3 Jul 2024 01:52:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HEVoQbxb7GVKkYAFQ4SvdFnlxsc/QO7SR8GYm0YWkrjGnDGfcsPUq+ZnqeGI8UdwixadtNrdG3ysRhZwe5RN1fM9C6iC/xLoymVL0z8bEuqT6hE0WESniyC2xB+XMeeYiL/cr5gLzi3amoVUH13iIoJYlCTb1et+rIKgyxwgh9d/K9xEAQJENQZzgdPwI7JJTgjDXi0rsnUyTl0/gwYrLT1ncc4obE624SsxNGCAwBy9/Mf8GXh6YV/pHsvR9DthJ2BoJbRlYxjmvArEM3t8KAGS4vywtq2puGeU5nTZVARE1/RCIEeF7Y4AnOxoGeU2yGoHCVaEONxaa7UHp/cA4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GuHoUhEQXNEXXULtslspwXproX9m5GFmQUTBpeS6HCA=;
 b=WJGSivvCqSR56oWKplvL0l/jP6wDeA+3Kc9tjGeM3655ANhFt8FE2LUK7iLnddhSC7+2li7OoQW8gzuLKzJlHNmrvPPjQgdv9A9/H7FNeADuCEizaWbVYrgJ1W6G7+DMFa8Xuyi4H2R7gcS85QJIZRlpXXocOdF6ctEZoptBeZLvRrppK5EK7NV6oODVORaXEGsQp95oVlqww+mHkv+qm9E/0WTlzA2HexLmSb5m6rYRv8ZjLg26ZzGmI06D0guOL81RMnhP1q9FnQTirR/Ib1JWa+61KV+4Xf89CUuvzRuUMecXHZ2r6ewTj/dz5nbJ5b8I461cb40MoomJiLmZiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB5183.namprd11.prod.outlook.com (2603:10b6:a03:2d9::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.25; Wed, 3 Jul
 2024 08:51:58 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.7719.036; Wed, 3 Jul 2024
 08:51:58 +0000
Message-ID: <f93e80b7-7cd2-4296-b001-61d86899f0b2@intel.com>
Date: Wed, 3 Jul 2024 14:21:48 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] drm/i915: Compute config and mode valid changes for
 ultrajoiner
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <jani.saarinen@intel.com>, <ville.syrjala@linux.intel.com>
References: <20240626081842.10614-1-stanislav.lisovskiy@intel.com>
 <20240626081842.10614-4-stanislav.lisovskiy@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240626081842.10614-4-stanislav.lisovskiy@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXP287CA0024.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::32) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB5183:EE_
X-MS-Office365-Filtering-Correlation-Id: 93c77360-2fde-458c-93e9-08dc9b3d657f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UGhoZ1k1WlVocXNYL1NaUUl5SDZneCtucTZMQk1aaTRrWEVIZGxOYi9OT1Z4?=
 =?utf-8?B?Zm0zMDJYRkxSM0Z3N0hkN2NjL2hnRGpxbVc2amQrM1dtb3lBUlg0bzlMMkF5?=
 =?utf-8?B?a29Gam9KcDdzU1dDd3NwNFFaVHRnRUlmMWFwYUZUZlU1QVBuMTljdHp4SDcr?=
 =?utf-8?B?YldsbjlQMWF0aDVTdDRYTTdTT3pGaEVXM0djVG5zd2s0ODdQVkUzd3VpaHY4?=
 =?utf-8?B?bFRDZXRuZUh3Z290VEtVZm9JKy8yOUlZTG9ucmVtbFlCa0RMUVlyeDNYNlo5?=
 =?utf-8?B?YVJQWVhzWE9FSEFHSW4zZDNvMEZ4YlQrOTNSb01uZDhQM1EvMlREK1g0U2h4?=
 =?utf-8?B?Ym9acnFUMnBkeVlJSVBNbnVnNU16OUxuTmZZRmlNMGdoeDB3SXh0MU5ZbTEv?=
 =?utf-8?B?K3BLZ1hadUFPc1R1WVRiWjFEYmhxSzBldHBUVjd1ZDlWeSt6SHo2SHcrdTJJ?=
 =?utf-8?B?ZVhQS3oxWjRUQ0U0M1pIVlZjV1A0d0liRUhnMjRKT08rbGpyWmQrQkd2UUR2?=
 =?utf-8?B?MnF2TlRsSkdzSU1DbkNpM0FhZ21iVnFmM251ZWlDTGU2UDVrMFFaUXMvSG1r?=
 =?utf-8?B?aXVRRmtuVFh5UmRpWHltOE5wYUVvT3F1QmFpNVdQb0c0b1NZOVE0Y0ZnSktO?=
 =?utf-8?B?VUt3ZzRobjhwUlpvbkRCd0tLanl2QXNWMlVNUnBOdFNIOXRocmQzR3Z6RlA3?=
 =?utf-8?B?YkMvMUE2MTFqUUxCWDBkME4zUld0aVB0ckczbVlzdnpjcFdnZjBObmJDNDRX?=
 =?utf-8?B?Mk4zeVEvT0UwZEtJN0krMUxxY0V3NVk3L3pIdEZBTUNhL0U1UEUwdERNVGMw?=
 =?utf-8?B?bURqWmNNUmdja1JFUW5DWGRJcldaZkVHa1doV0RCb2ZYUzNLNEd0UkIvVXFZ?=
 =?utf-8?B?V1dLWlZJejZiWVNxcVpoTVJGN2UxUURUcVpaU0Mxbnp5M2huQk56ak1tWS93?=
 =?utf-8?B?ZU90WEE2MkxyaW5aQnppVllmZzNsc3gwbUo3bmpjR0ZCMjBPYnFXVmo2YzFr?=
 =?utf-8?B?MTh3UWV6ZFZwcmpld1ZacEl2Snd3YVV0N0dwMFVkeVBiTldRL1VEbDZzeTgz?=
 =?utf-8?B?WiswdGowYjRVaUxUMk5OSkY3U1NhN1pNdSt6Q0lXdFd6SWM3UWtraHcwMzRu?=
 =?utf-8?B?eEhWYk5RMVRJQ2U4Y094RnlGSE15alBPT1RlNFZpMTd2R3cxRmV5V1hmeGt4?=
 =?utf-8?B?cVVJRkZBdEYySHJ1RHdLWmNwWWRJV2wvTEp4S3F2VUwvaU1rUStLbEZuTU84?=
 =?utf-8?B?emo2VkY4VFQxUGYzR29LeDIrSEcvTmRPeit1MzNHY0o0alJIRGxhUktWNGhh?=
 =?utf-8?B?NHlYemprdDVJMkNBUVBqSUxvUHNlZlU5aC9pWldaMlkxV2FIZWJmRVFuM1VG?=
 =?utf-8?B?RDhqbXlNc01WTmJvOEhCV2N0N2FIeE90T2U5SjdiWFhNVU1OZjRvb0pBZTNi?=
 =?utf-8?B?azQra1Y4cFZsZkk3Tkg3RUpCT1M5c3VjM203cFIvZ0x0Ukp3aDhGRlF5dmxU?=
 =?utf-8?B?bnZzMmtuQzVBYTdOZ2NZUHYyVmtyUFNwZ2NibE5PbHVZVEcrNk9tVjJoWGlo?=
 =?utf-8?B?eXBvSU9ZZ3E3Q1dsNmdtb3VodXhvUEpsTTVGOTNwUXRKRVFYSHBPcnk2V3dD?=
 =?utf-8?B?YVVpaUxxQm8vclR6N3V6SjhUVkNWY3R5U2FlczVCTTBMbmQ3YXE2YUVPOVZB?=
 =?utf-8?B?ZVR1QkQ2cWV2amo1WXNSdzBQczNJM3JlOXhybGd3MEZOK2xmUVFDbmRnd3Y1?=
 =?utf-8?B?ckg3RTRHZThVM2tWRTVIODdLNE1iTk9QTzRMWkNXb25HYmZrY3J2QzJKSTJT?=
 =?utf-8?B?Y3o0SjdNZlZBUnd5SnllUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VVZRbVpPWWRkMzQxYkZDNjhrcXNIN1ZseEdJYXhoTExGWTYrZlptR0gwUG5Z?=
 =?utf-8?B?MGQxeHcxMld1RUFUV0FKVU5peWFXblI4N3orbXVYL1djaTZLc3RZd2plWUZC?=
 =?utf-8?B?RU9UNlhMTFk5Z0RiRGsvSmRhN2dlVHdKaHFyM0wvbTlpVExQVEhkSWZES2hX?=
 =?utf-8?B?V1NNQTFtdWtNV0dkNFNHN0kvSUpxR05LT1U1Q1lHdWVpRXBZUXNLMnRTNWNH?=
 =?utf-8?B?OExaUzA4ZFJoUW9MU213Nmx1Vk1ZR2VFbnlTWWxSQWdFMEFZTEUzeXlBa2pX?=
 =?utf-8?B?WUV3NnJMS2h5MDMwTmVaYVJFZzF5OHFROHdRK2lUU0NESWR0TWw5TW5JWHp5?=
 =?utf-8?B?THN0dnphODU4WUFOUlg4Y1pubTdSdW9qN2UzYlRYOStRVkJkb1VEQW1VbitB?=
 =?utf-8?B?NE1pV3haUUN5b0hTOTZjQTJSeDJ0eFN4QmpkemZjbllPS2wvSkhqYnNFQkJa?=
 =?utf-8?B?R0QxRWRzdDJCWDJyVzArSGgrZlZKbjIrZFAwaDdnVjMvOEEvSVBTOS9rSFJJ?=
 =?utf-8?B?Y3JxcEJpcUZKbDFRRXFTOG5SM3Bna0VEMFo4NjgwanBLSXFtYitjeTM4YUtK?=
 =?utf-8?B?MmQ1OUVzZU1yaGkyTVRrMkNPZnNuTmNsL3YzcG9mOU9SaE1jZlhJYkszM0FO?=
 =?utf-8?B?R2pQY1ZUKzI1b2MwbllHZm1rUWVJR0FtVmdKT3JLZmFuZkRFNGVQTXJuenhv?=
 =?utf-8?B?SnBOSmkvaGZTeUpib29jYm00eFNFQ2s2WXVqTmxPY1ZTRmk2aEhubTNRd0pH?=
 =?utf-8?B?b2hxSHI0T3hONWJ6NFJzSXJhbmFQUG1MdDl4M0FMSlRqb2J5cHJ0a09OMkIw?=
 =?utf-8?B?Q3plRTFFaHF0Z2s1a1c3ZC82NTF4Q0xDTm1uSER6NTFpOGd2VzBRWE9WeHJl?=
 =?utf-8?B?eWlVZHFyclhUd2trc0hseHRMc1kraVVtcW9QNktoNFJ4SUZHb3k5aTErMEgy?=
 =?utf-8?B?aHU1eWtrOFpiSHhhWG1DVDJnNEVKUmhJeDlUR1pONmNOU2lKdlZkTy9kaVk0?=
 =?utf-8?B?ZDNmSzFyVEhkYzRiTXMvSEdoU0IyTDRCdTUrVG1pSko3TXB0NUdsNXg0U2cz?=
 =?utf-8?B?amFZMFN1VVhpdUV4eVI4dzV3TWhpNlNlQTcrNmJ4QTh2ZFZ2Ti9uZnlOek9Y?=
 =?utf-8?B?Mi94TGUxT1RTb2R0T0VyVUJoMktUQ2dWRTI4VTN0Nk90TEJjUUtNN3JaYk5k?=
 =?utf-8?B?aFBIMk56anU3bkQ0Q2dDZ1hXT2pWZHpWbDliKzhpaUxyL0xHdXRxLzBzN25q?=
 =?utf-8?B?N0pudmpJbmt6R1VMWDFCZThIOEZtUTEyOERwMVFubzkrWFZTTXhWdE9nOTVX?=
 =?utf-8?B?S1U4eUFwK2RHZjYzYTNremJ3RXJNNzFRemVBY2FLR3d4OHBQVHJDS2FwQ2x5?=
 =?utf-8?B?S2R4MXYvRHJVSjFNUjNTUlE0eHRsMy9BL0l1dzVIQ0oxNDVLS0krc1F0SW04?=
 =?utf-8?B?dGlVTWxGVEpZaGdiVy92UTJ2SmFIWHZpNitvbjRQdy8yUUhIQUY1N3NCbkh0?=
 =?utf-8?B?TkFJUUd3MjNwb25aR2szdkg0bU1NdTNtTkIyeTNrZHlSWWFoT0RtZEd0QXlt?=
 =?utf-8?B?SS9FTEdhMGhIVm11TFJjbWpqb3lLcm1KSFVaOW1Va3FyZnVLVnNOaHR3Ylpo?=
 =?utf-8?B?TndQRVg3cGtmbU9nQmxCc29uWnowZE82L0pkRFB2ZkJ1ZEdDbWFtN3MxYUpS?=
 =?utf-8?B?eFRKeklZRGZmcXBQbUx1RURHVVpZRURBMW9ENVRqWnlUOVJOaW5oc2p2bHRp?=
 =?utf-8?B?VVB2dDVxVlcrUVhlMWlEZVdVNHJHQ1p2QlQvdGo2VlNsdm5TeDk4OVJYbUhL?=
 =?utf-8?B?YTMyak9zOVhyQ0FoOEIxWEloQUhvYlBQQmF4UGgzb3VOS0pPSHNrMjBlbjlS?=
 =?utf-8?B?OWt5WHZSRzVVRmtQRzFQeEJUUlBaK2lpOVFkeDY3QkY0cjFOdUZOL2pDcVNp?=
 =?utf-8?B?T0ZyeHVucXh1N2s5UFNsWG8yUXE2Z2VLVW1oa3E2WjBNTTh1VmVWNytuZUo1?=
 =?utf-8?B?cWFWOU5HeHBQZnBiNXhQaW50cUkzU3htazduLyswbXlzL1p5eXdzUDBlTWRT?=
 =?utf-8?B?ckU0Wkpidmk5VlFKTHpTUlk4TW9wcm5tOXRpbFpXck9xbmpBL1ZKaTlSRThO?=
 =?utf-8?B?b3BhbUxLUzQvWnVQOTBSRTQva293NUdOekZ6eVkrUDZCSnB5ZkhOZzA3MGJt?=
 =?utf-8?B?V0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 93c77360-2fde-458c-93e9-08dc9b3d657f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2024 08:51:58.1452 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 10k4xmXIBfNIpQZ1isWa1mLQ9TyD2VnY9bsXrVsAQRsAWKlfB9QYR18n4WdqUG0ajtVlpbBKWyK0G75PlchZsBDjZqMpGkT4VUPqzaHBKng=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5183
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


On 6/26/2024 1:48 PM, Stanislav Lisovskiy wrote:
> Implement required changes for mode validation and compute config,
> to support Ultrajoiner.
> This also includes required DSC changes and checks.
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c |   5 +-
>   drivers/gpu/drm/i915/display/intel_display.h |   3 +-
>   drivers/gpu/drm/i915/display/intel_dp.c      | 117 ++++++++++++++-----
>   drivers/gpu/drm/i915/display/intel_dp.h      |  18 ++-
>   drivers/gpu/drm/i915/display/intel_dp_mst.c  |  35 +++---
>   drivers/gpu/drm/i915/display/intel_dsi.c     |   2 +-
>   drivers/gpu/drm/i915/display/intel_hdmi.c    |  14 ++-
>   drivers/gpu/drm/i915/display/intel_vdsc.c    |  25 +++-
>   8 files changed, 164 insertions(+), 55 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index f702ead9b5f3..4c934f07ead7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8246,7 +8246,8 @@ enum drm_mode_status intel_cpu_transcoder_mode_valid(struct drm_i915_private *de
>   enum drm_mode_status
>   intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
>   				const struct drm_display_mode *mode,
> -				bool joiner)
> +				bool bigjoiner,
> +				bool ultrajoiner)
>   {
>   	int plane_width_max, plane_height_max;
>   
> @@ -8263,7 +8264,7 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
>   	 * too big for that.
>   	 */
>   	if (DISPLAY_VER(dev_priv) >= 11) {
> -		plane_width_max = 5120 << joiner;
> +		plane_width_max = (5120 << bigjoiner) << ultrajoiner;
>   		plane_height_max = 4320;
>   	} else {
>   		plane_width_max = 5120;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index bac81b7ab764..0a51f24af405 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -415,7 +415,8 @@ u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
>   enum drm_mode_status
>   intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
>   				const struct drm_display_mode *mode,
> -				bool joiner);
> +				bool bigjoiner,
> +				bool ultrajoiner);

Can we use joined_pipes here and in other places instead of 2 separate 
variables?

So we pass joined_pipes as either 0, 2, 4 for no-joiner, big-joiner, and 
ultra-joiner.

This will help simplifying the computations for example for slice count 
(mentioned inline).

We can perhaps have a patch only with this change, just replacing 
'joiner' with joined_pipes and later just send joined_pipes with 4 for 
ultra joiner in another patch?


>   enum drm_mode_status
>   intel_cpu_transcoder_mode_valid(struct drm_i915_private *i915,
>   				const struct drm_display_mode *mode);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3903f6ead6e6..1ea1e89d8f45 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -760,33 +760,41 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
>   static
>   u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
>   				       u32 mode_clock, u32 mode_hdisplay,
> -				       bool bigjoiner)
> +				       bool bigjoiner, bool ultrajoiner)
>   {
>   	u32 max_bpp_small_joiner_ram;
> +	u32 max_bpp_joiner;
>   
>   	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
> -	max_bpp_small_joiner_ram = small_joiner_ram_size_bits(i915) / mode_hdisplay;
> +	max_bpp_joiner = max_bpp_small_joiner_ram =
> +		small_joiner_ram_size_bits(i915) / mode_hdisplay;
>   
> -	if (bigjoiner) {
> -		int bigjoiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
> -		/* With bigjoiner multiple dsc engines are used in parallel so PPC is 2 */
> +	/* if ultra joiner is enabled, we have 2 bigjoiners enabled */
> +	if (bigjoiner || ultrajoiner) {
> +		int joiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
> +		/* With joiner multiple dsc engines are used in parallel so PPC is 2 */
>   		int ppc = 2;
> -		u32 max_bpp_bigjoiner =
> -			i915->display.cdclk.max_cdclk_freq * ppc * bigjoiner_interface_bits /
> +		max_bpp_joiner =
> +			i915->display.cdclk.max_cdclk_freq * ppc * joiner_interface_bits /
>   			intel_dp_mode_to_fec_clock(mode_clock);
>   
>   		max_bpp_small_joiner_ram *= 2;
> +	}
>   
> -		return min(max_bpp_small_joiner_ram, max_bpp_bigjoiner);
> +	if (ultrajoiner) {
> +		/* both get multiplied by 2, because ram bits/ppc now doubled */
> +		max_bpp_small_joiner_ram *= 2;
> +		max_bpp_joiner *= 2;
>   	}
>   
> -	return max_bpp_small_joiner_ram;
> +	return min(max_bpp_small_joiner_ram, max_bpp_joiner);
>   }
>   
>   u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
>   					u32 link_clock, u32 lane_count,
>   					u32 mode_clock, u32 mode_hdisplay,
>   					bool bigjoiner,
> +					bool ultrajoiner,
>   					enum intel_output_format output_format,
>   					u32 pipe_bpp,
>   					u32 timeslots)
> @@ -832,7 +840,7 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
>   				intel_dp_mode_to_fec_clock(mode_clock));
>   
>   	joiner_max_bpp = get_max_compressed_bpp_with_joiner(i915, mode_clock,
> -							    mode_hdisplay, bigjoiner);
> +							    mode_hdisplay, bigjoiner, ultrajoiner);
>   	bits_per_pixel = min(bits_per_pixel, joiner_max_bpp);
>   
>   	bits_per_pixel = intel_dp_dsc_nearest_valid_bpp(i915, bits_per_pixel, pipe_bpp);
> @@ -842,7 +850,8 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
>   
>   u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>   				int mode_clock, int mode_hdisplay,
> -				bool bigjoiner)
> +				bool bigjoiner,
> +				bool ultrajoiner)
>   {
>   	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>   	u8 min_slice_count, i;
> @@ -876,7 +885,7 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>   
>   	/* Find the closest match to the valid slice count values */
>   	for (i = 0; i < ARRAY_SIZE(valid_dsc_slicecount); i++) {
> -		u8 test_slice_count = valid_dsc_slicecount[i] << bigjoiner;
> +		u8 test_slice_count = (valid_dsc_slicecount[i] << bigjoiner) << ultrajoiner;

If we use joined_pipes as mentioned earlier, we can perhaps just use:

u8 test_slice_count = valid_dsc_slicecount[i] << (joined_pipes / 2);


Regards,

Ankit



>   
>   		if (test_slice_count >
>   		    drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd, false))
> @@ -886,6 +895,10 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>   		if (bigjoiner && test_slice_count < 4)
>   			continue;
>   
> +		/* ultrajoiner needs 2 bigjoiners to be enabled */
> +		if (ultrajoiner && test_slice_count < 8)
> +			continue;
> +
>   		if (min_slice_count <= test_slice_count)
>   			return test_slice_count;
>   	}
> @@ -1162,9 +1175,9 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
>   	return MODE_OK;
>   }
>   
> -bool intel_dp_need_joiner(struct intel_dp *intel_dp,
> -			  struct intel_connector *connector,
> -			  int hdisplay, int clock)
> +bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
> +			     struct intel_connector *connector,
> +			     int hdisplay, int clock)
>   {
>   	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>   
> @@ -1195,6 +1208,35 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
>   	return true;
>   }
>   
> +static
> +bool intel_can_ultrajoiner(const struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +
> +	return IS_DGFX(i915) && DISPLAY_VER(i915) >= 14;
> +}
> +
> +bool intel_dp_need_ultrajoiner(struct intel_dp *dp, int clock)
> +{
> +	const struct intel_encoder *encoder = &dp_to_dig_port(dp)->base;
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +
> +	if (!intel_can_ultrajoiner(encoder))
> +		return false;
> +
> +	return clock > (i915->display.cdclk.max_dotclk_freq * 2);
> +}
> +
> +bool intel_is_bigjoiner(const struct intel_crtc_state *pipe_config)
> +{
> +	return hweight8(pipe_config->joiner_pipes) == 2;
> +}
> +
> +bool intel_is_ultrajoiner(const struct intel_crtc_state *pipe_config)
> +{
> +	return hweight8(pipe_config->joiner_pipes) == 4;
> +}
> +
>   static enum drm_mode_status
>   intel_dp_mode_valid(struct drm_connector *_connector,
>   		    struct drm_display_mode *mode)
> @@ -1209,7 +1251,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>   	u16 dsc_max_compressed_bpp = 0;
>   	u8 dsc_slice_count = 0;
>   	enum drm_mode_status status;
> -	bool dsc = false, joiner = false;
> +	bool dsc = false, bigjoiner = false, ultrajoiner = false;
>   
>   	status = intel_cpu_transcoder_mode_valid(dev_priv, mode);
>   	if (status != MODE_OK)
> @@ -1230,11 +1272,16 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>   		target_clock = fixed_mode->clock;
>   	}
>   
> -	if (intel_dp_need_joiner(intel_dp, connector,
> -				 mode->hdisplay, target_clock)) {
> -		joiner = true;
> +	if (intel_dp_need_ultrajoiner(intel_dp, target_clock)) {
> +		ultrajoiner = true;
> +		max_dotclk *= 4;
> +	}
> +	else if (intel_dp_need_bigjoiner(intel_dp, connector,
> +				    mode->hdisplay, target_clock)) {
> +		bigjoiner = true;
>   		max_dotclk *= 2;
>   	}
> +
>   	if (target_clock > max_dotclk)
>   		return MODE_CLOCK_HIGH;
>   
> @@ -1278,20 +1325,22 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>   								    max_lanes,
>   								    target_clock,
>   								    mode->hdisplay,
> -								    joiner,
> +								    bigjoiner,
> +								    ultrajoiner,
>   								    output_format,
>   								    pipe_bpp, 64);
>   			dsc_slice_count =
>   				intel_dp_dsc_get_slice_count(connector,
>   							     target_clock,
>   							     mode->hdisplay,
> -							     joiner);
> +							     bigjoiner,
> +							     ultrajoiner);
>   		}
>   
>   		dsc = dsc_max_compressed_bpp && dsc_slice_count;
>   	}
>   
> -	if (intel_dp_joiner_needs_dsc(dev_priv, joiner) && !dsc)
> +	if (intel_dp_joiner_needs_dsc(dev_priv, bigjoiner, ultrajoiner) && !dsc)
>   		return MODE_CLOCK_HIGH;
>   
>   	if (mode_rate > max_rate && !dsc)
> @@ -1301,7 +1350,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>   	if (status != MODE_OK)
>   		return status;
>   
> -	return intel_mode_valid_max_plane_size(dev_priv, mode, joiner);
> +	return intel_mode_valid_max_plane_size(dev_priv, mode, bigjoiner, ultrajoiner);
>   }
>   
>   bool intel_dp_source_supports_tps3(struct drm_i915_private *i915)
> @@ -2015,7 +2064,8 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
>   
>   	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(i915, adjusted_mode->clock,
>   								adjusted_mode->hdisplay,
> -								pipe_config->joiner_pipes);
> +								intel_is_bigjoiner(pipe_config),
> +								intel_is_ultrajoiner(pipe_config));
>   	dsc_max_bpp = min(dsc_max_bpp, dsc_joiner_max_bpp);
>   	dsc_max_bpp = min(dsc_max_bpp, to_bpp_int(limits->link.max_bpp_x16));
>   
> @@ -2249,7 +2299,8 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>   			intel_dp_dsc_get_slice_count(connector,
>   						     adjusted_mode->crtc_clock,
>   						     adjusted_mode->crtc_hdisplay,
> -						     pipe_config->joiner_pipes);
> +						     intel_is_bigjoiner(pipe_config),
> +						     intel_is_ultrajoiner(pipe_config));
>   		if (!dsc_dp_slice_count) {
>   			drm_dbg_kms(&dev_priv->drm,
>   				    "Compressed Slice Count not supported\n");
> @@ -2399,14 +2450,15 @@ int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state)
>   	return intel_dp_link_required(adjusted_mode->crtc_clock, bpp);
>   }
>   
> -bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_joiner)
> +bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool bigjoiner, bool ultrajoiner)
>   {
>   	/*
>   	 * Pipe joiner needs compression up to display 12 due to bandwidth
>   	 * limitation. DG2 onwards pipe joiner can be enabled without
>   	 * compression.
> +	 * Ultrajoiner always needs compression.
>   	 */
> -	return DISPLAY_VER(i915) < 13 && use_joiner;
> +	return (DISPLAY_VER(i915) < 13 && bigjoiner) || ultrajoiner;
>   }
>   
>   static int
> @@ -2424,18 +2476,21 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>   	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>   	struct link_config_limits limits;
>   	bool dsc_needed, joiner_needs_dsc;
> +	bool bigjoiner = false, ultrajoiner = false;
>   	int ret = 0;
>   
>   	if (pipe_config->fec_enable &&
>   	    !intel_dp_supports_fec(intel_dp, connector, pipe_config))
>   		return -EINVAL;
>   
> -	if (intel_dp_need_joiner(intel_dp, connector,
> -				 adjusted_mode->crtc_hdisplay,
> -				 adjusted_mode->crtc_clock))
> +	if (intel_dp_need_ultrajoiner(intel_dp, adjusted_mode->crtc_clock))
> +		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 3, crtc->pipe);
> +	else if (intel_dp_need_bigjoiner(intel_dp, connector,
> +					 adjusted_mode->crtc_hdisplay,
> +					 adjusted_mode->crtc_clock))
>   		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
>   
> -	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, pipe_config->joiner_pipes);
> +	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, bigjoiner, ultrajoiner);
>   
>   	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
>   		     !intel_dp_compute_config_limits(intel_dp, pipe_config,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index a0f990a95ecc..6a3615757c95 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -122,7 +122,7 @@ int intel_dp_effective_data_rate(int pixel_clock, int bpp_x16,
>   				 int bw_overhead);
>   int intel_dp_max_link_data_rate(struct intel_dp *intel_dp,
>   				int max_dprx_rate, int max_dprx_lanes);
> -bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_joiner);
> +bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_bigjoiner, bool use_ultrajoiner);
>   bool intel_dp_has_joiner(struct intel_dp *intel_dp);
>   bool intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
>   			    const struct drm_connector_state *conn_state);
> @@ -142,6 +142,7 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
>   					u32 link_clock, u32 lane_count,
>   					u32 mode_clock, u32 mode_hdisplay,
>   					bool bigjoiner,
> +					bool ultrajoiner,
>   					enum intel_output_format output_format,
>   					u32 pipe_bpp,
>   					u32 timeslots);
> @@ -151,10 +152,17 @@ int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector
>   					 int bpc);
>   u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>   				int mode_clock, int mode_hdisplay,
> -				bool bigjoiner);
> -bool intel_dp_need_joiner(struct intel_dp *intel_dp,
> -			  struct intel_connector *connector,
> -			  int hdisplay, int clock);
> +				bool bigjoiner, bool ultrajoiner);
> +bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
> +			     struct intel_connector *connector,
> +			     int hdisplay, int clock);
> +bool intel_dp_need_ultrajoiner(struct intel_dp *intel_dp, int clock);
> +bool intel_is_bigjoiner(const struct intel_crtc_state *pipe_config);
> +bool intel_is_ultrajoiner(const struct intel_crtc_state *pipe_config);
> +bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state);
> +bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state);
> +bool intel_crtc_is_joiner_primary_master(const struct intel_crtc_state *crtc_state);
> +enum pipe intel_crtc_master_pipe(const struct intel_crtc_state *crtc_state);
>   
>   static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 27ce5c3f5951..13828c011d9c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -105,7 +105,8 @@ static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
>   		dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
>   							       adjusted_mode->clock,
>   							       adjusted_mode->hdisplay,
> -							       crtc_state->joiner_pipes);
> +							       intel_is_bigjoiner(crtc_state),
> +							       intel_is_ultrajoiner(crtc_state));
>   	}
>   
>   	overhead = drm_dp_bw_overhead(crtc_state->lane_count,
> @@ -576,16 +577,19 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>   	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>   		return -EINVAL;
>   
> -	if (intel_dp_need_joiner(intel_dp, connector,
> -				 adjusted_mode->crtc_hdisplay,
> -				 adjusted_mode->crtc_clock))
> +	if (intel_dp_need_ultrajoiner(intel_dp, adjusted_mode->crtc_clock))
> +		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 3, crtc->pipe);
> +	else if (intel_dp_need_bigjoiner(intel_dp, connector,
> +				    adjusted_mode->crtc_hdisplay,
> +				    adjusted_mode->crtc_clock))
>   		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
>   
>   	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>   	pipe_config->has_pch_encoder = false;
>   
> -	joiner_needs_dsc = intel_dp_joiner_needs_dsc(dev_priv, pipe_config->joiner_pipes);
> +	joiner_needs_dsc = intel_dp_joiner_needs_dsc(dev_priv, intel_is_bigjoiner(pipe_config),
> +						     intel_is_ultrajoiner(pipe_config));
>   
>   	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
>   		     !intel_dp_mst_compute_config_limits(intel_dp,
> @@ -1388,7 +1392,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>   	int max_dotclk = to_i915(connector->dev)->display.cdclk.max_dotclk_freq;
>   	int max_rate, mode_rate, max_lanes, max_link_clock;
>   	int ret;
> -	bool dsc = false, joiner = false;
> +	bool dsc = false, bigjoiner = false, ultrajoiner = false;
>   	u16 dsc_max_compressed_bpp = 0;
>   	u8 dsc_slice_count = 0;
>   	int target_clock = mode->clock;
> @@ -1431,9 +1435,12 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>   	 *   corresponding link capabilities of the sink) in case the
>   	 *   stream is uncompressed for it by the last branch device.
>   	 */
> -	if (intel_dp_need_joiner(intel_dp, intel_connector,
> -				 mode->hdisplay, target_clock)) {
> -		joiner = true;
> +	if (intel_dp_need_ultrajoiner(intel_dp, target_clock)) {
> +		ultrajoiner = true;
> +		max_dotclk *= 4;
> +	} else if (intel_dp_need_bigjoiner(intel_dp, intel_connector,
> +					   mode->hdisplay, target_clock)) {
> +		bigjoiner = true;
>   		max_dotclk *= 2;
>   	}
>   
> @@ -1461,20 +1468,22 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>   								    max_lanes,
>   								    target_clock,
>   								    mode->hdisplay,
> -								    joiner,
> +								    bigjoiner,
> +								    ultrajoiner,
>   								    INTEL_OUTPUT_FORMAT_RGB,
>   								    pipe_bpp, 64);
>   			dsc_slice_count =
>   				intel_dp_dsc_get_slice_count(intel_connector,
>   							     target_clock,
>   							     mode->hdisplay,
> -							     joiner);
> +							     bigjoiner,
> +							     ultrajoiner);
>   		}
>   
>   		dsc = dsc_max_compressed_bpp && dsc_slice_count;
>   	}
>   
> -	if (intel_dp_joiner_needs_dsc(dev_priv, joiner) && !dsc) {
> +	if (intel_dp_joiner_needs_dsc(dev_priv, bigjoiner, ultrajoiner) && !dsc) {
>   		*status = MODE_CLOCK_HIGH;
>   		return 0;
>   	}
> @@ -1484,7 +1493,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>   		return 0;
>   	}
>   
> -	*status = intel_mode_valid_max_plane_size(dev_priv, mode, joiner);
> +	*status = intel_mode_valid_max_plane_size(dev_priv, mode, bigjoiner, ultrajoiner);
>   	return 0;
>   }
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
> index bd5888ce4852..1a7e9a56fccd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi.c
> @@ -76,7 +76,7 @@ enum drm_mode_status intel_dsi_mode_valid(struct drm_connector *connector,
>   	if (fixed_mode->clock > max_dotclk)
>   		return MODE_CLOCK_HIGH;
>   
> -	return intel_mode_valid_max_plane_size(dev_priv, mode, false);
> +	return intel_mode_valid_max_plane_size(dev_priv, mode, false, false);
>   }
>   
>   struct intel_dsi_host *intel_dsi_host_init(struct intel_dsi *intel_dsi,
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 19498ee455fa..35be89050512 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2048,7 +2048,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
>   			return status;
>   	}
>   
> -	return intel_mode_valid_max_plane_size(dev_priv, mode, false);
> +	return intel_mode_valid_max_plane_size(dev_priv, mode, false, false);
>   }
>   
>   bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
> @@ -2341,6 +2341,18 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>   		return ret;
>   	}
>   
> +	if (adjusted_mode->crtc_clock > dev_priv->display.cdclk.max_dotclk_freq ||
> +	    pipe_config->joiner_pipes) {
> +		if (pipe_config->dsc.slice_count < 2) {
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "Cannot split stream to use 2 VDSC instances\n");
> +			return -EINVAL;
> +		}
> +
> +		pipe_config->dsc.dsc_split = true;
> +	}
> +
> +
>   	if (intel_hdmi_is_ycbcr420(pipe_config)) {
>   		ret = intel_panel_fitting(pipe_config, conn_state);
>   		if (ret)
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 11058bb37d5a..206b3e77e0d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -13,6 +13,7 @@
>   #include "intel_crtc.h"
>   #include "intel_de.h"
>   #include "intel_display_types.h"
> +#include "intel_dp.h"
>   #include "intel_dsi.h"
>   #include "intel_qp_tables.h"
>   #include "intel_vdsc.h"
> @@ -379,7 +380,9 @@ int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
>   {
>   	int num_vdsc_instances = intel_dsc_get_vdsc_per_pipe(crtc_state);
>   
> -	if (crtc_state->joiner_pipes)
> +	if (intel_is_ultrajoiner(crtc_state))
> +		num_vdsc_instances *= 4;
> +	else if (intel_is_bigjoiner(crtc_state))
>   		num_vdsc_instances *= 2;
>   
>   	return num_vdsc_instances;
> @@ -770,6 +773,13 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
>   	}
>   }
>   
> +static bool intel_crtc_ultrajoiner_enable_needed(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	return intel_is_ultrajoiner(crtc_state) && crtc->pipe != PIPE_D;
> +}
> +
>   void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -788,8 +798,21 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
>   		dss_ctl2_val |= RIGHT_BRANCH_VDSC_ENABLE;
>   		dss_ctl1_val |= JOINER_ENABLE;
>   	}
> +
>   	if (crtc_state->joiner_pipes) {
> +		/*
> +		 * This bit doesn't seem to follow master/slave logic or
> +		 * any other logic, so lets just add helper function to
> +		 * at least hide this hassle..
> +		 */
> +		if (intel_crtc_ultrajoiner_enable_needed(crtc_state))
> +			dss_ctl1_val |= ULTRA_JOINER_ENABLE;
> +
> +		if (intel_crtc_is_ultrajoiner_primary(crtc_state))
> +			dss_ctl1_val |= PRIMARY_ULTRA_JOINER_ENABLE;;
> +
>   		dss_ctl1_val |= BIG_JOINER_ENABLE;
> +
>   		if (intel_crtc_is_bigjoiner_primary(crtc_state))
>   			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
>   	}
