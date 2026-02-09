Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WIkEHybviWn4EQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 15:28:54 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D432711050E
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 15:28:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C126F10E403;
	Mon,  9 Feb 2026 14:28:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gzek7VPw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9426910E3FF;
 Mon,  9 Feb 2026 14:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770647330; x=1802183330;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DSV6taLP7mw1O29cYvayn5Lucw9C4mMHoo1B+Fxrlb4=;
 b=gzek7VPwTR8Bnb6VlqFUQH/g0DGno5KdUnKwLaviA2uwLR/ydY1AcsIR
 APaPdhzj+wc6ZNyEMY3+wpMEsL5Odmz9TPBtMeNhswFwz+EAgDScsbmYe
 eDnQNufG0HbcJLvFo/ceMD2BppAAj0LoSvtUxqb9VDkTcaI9PZFQYokOK
 rShptb332Rr9XBzUVHP8HRr5uYB3x/34LOoDDkjIoZNObj1o52t2LsnHt
 v0mv9uC7mWZ3brjuLbgJ++TZhB0ZZzJD1g9iOB695UwZ6N6gGwiJ50R33
 D54XN1tJ/ivm3ncWrX5DC8vSpfSFS9wVh5jxAEHtL9dRBR/Kmx81OeVP4 g==;
X-CSE-ConnectionGUID: ggAnmCV9QAyF3t6SC80HCg==
X-CSE-MsgGUID: kx954G+XQKKE0sBCIGv9Cw==
X-IronPort-AV: E=McAfee;i="6800,10657,11696"; a="71659648"
X-IronPort-AV: E=Sophos;i="6.21,282,1763452800"; d="scan'208";a="71659648"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 06:28:49 -0800
X-CSE-ConnectionGUID: qzYubbLsSCuCWHjCIzBRAw==
X-CSE-MsgGUID: jObWc/MJT8auAVD9SxSmZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,282,1763452800"; d="scan'208";a="216090158"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 06:28:49 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 06:28:48 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 9 Feb 2026 06:28:48 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.2) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 06:28:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xzLl2Dr0/l0CzWbUmwRAHK1I0WWlVh8lVNX0lT9kBsa/Hlt6RW1tB+qGKfU1vM4lS1fUo6dp4bxf1coQWNnnQmqB/N6fPgfoJ8a463Etf0IWnSDMVtSLSZoS3l0OIvIBYIJTg3FPLzBOwPMS7oG6U+wxc85a5/UHbKcV5EggFm7kBf6Rrm8IJqFPNhxsSBgefv1eJ5iA/CUrC7RV1CwnySGEVVqMFWuNYA5bWTZB+LCKlTq+DctYYg+aatoIisLpwZf4xfk9wQ6IVmFm1jMuQCLQyL1bCt6F5xCv4IlSTlhiAlg4GV+WCBh/thwa15haJ02KP0c8xlcaV9+5N0Vktw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OhFycjTs6IuUNPSewOupaC5I3QXACRMoFysHKopzBfE=;
 b=FTb7TUT/TaMG36hIS0+qh7h5MT3HZ1fEYeByWCEyhZCXvsdbKD357Nhb9GrqU2i3CvQfBfMiAdU4v+H7usGJBINENCB7TwyC/B5ghDFv8UsnFiwjCWVIvfO47NxUfiwLx/A87a69sPJvWI/WSD/LTjqUBPujG8ostnBBA0Cs5AWEIY+PfRCrrj1M3fSHg4XU4zPTw0LLuw163VbymREGdjdsBUlxzUO97Jwr1ATOKQUrXD2wOobriNdo8hOzkswo9UL5bFQxA/Dd+RzlhX9/2zjYnNnSQFC/1fyN0gAmeMj9yrCtHWSwxfZVsjFsIr5xuayGyoO0y12S6ilne3qjjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by MW4PR11MB7126.namprd11.prod.outlook.com (2603:10b6:303:222::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.18; Mon, 9 Feb
 2026 14:28:38 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9587.017; Mon, 9 Feb 2026
 14:28:38 +0000
Message-ID: <baa6c5c6-5adb-4cf5-9d01-ad8d2c37db1d@intel.com>
Date: Mon, 9 Feb 2026 19:58:32 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] drm/i915/dp: Fix pipe BPP clamping due to HDR
Content-Language: en-GB
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: <stable@vger.kernel.org>, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
References: <20260209133817.395823-1-imre.deak@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260209133817.395823-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0213.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ab::11) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|MW4PR11MB7126:EE_
X-MS-Office365-Filtering-Correlation-Id: f4c2071b-6050-4d57-2bac-08de67e783df
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M3dRQ0NmUXFnTm56SGV4UUhLM1l0ZW5KaW1PTzVMTEx5S2VrRk9NSStBRW1z?=
 =?utf-8?B?QStETnZpT2pCVHFGYzFGNVY5YkFMTGFIdE9BSzdiMUpWREUrYllLcUJrMmMr?=
 =?utf-8?B?dG5VSWNiTjVlWjd5WnhNOERXVkVnb2xJWjFhRVgySUpvRGVMUVZWZGhuOEpQ?=
 =?utf-8?B?R1p2U1ViTWJCKzEyNGRTL0Q2VUsvWmdXd0p5WDIvcDdid0QzTG9mNnN0OWgz?=
 =?utf-8?B?WktqTGhnSDdnLzJPVTRWOE5LRTU4MkNXbHF5bDV3ckh1S09ZWE9GRFBZMmJW?=
 =?utf-8?B?RW1NZ1A3YlhHdkNObVk0bjhCMDlFekd3aHlORHVNZkdoM1VMWXdhd2tncWJ4?=
 =?utf-8?B?QWdlcDZ3MlNFZUdDSjNpbjBSMWM2RnlDenVyMlF5TVFNbXpheG5RRzBJWDlv?=
 =?utf-8?B?dlE1N0ZqL3F3NVU3WXUvVVUrQWpxRTFxKzd2bHpRRHpwMWJPYzRVeEZEUTFG?=
 =?utf-8?B?SjZDdk9TcTlWeDRXUGZBSzR2UUNlSHFhcVFRVEF4SlMrZnZiM3JoZ0VaZ0o1?=
 =?utf-8?B?bDBZZVBac1BaQnZJMUdxV0ZCUy9QYktwemhnUGVBZFJJblB1anJhbzduYmpH?=
 =?utf-8?B?UitORzgxQnVLU1ZtYi9SOVNQeWM4dzRGQlQ2SVJHU3lkZC9WUUJBd2FUc01x?=
 =?utf-8?B?YlVhZlordE52Ly9lTjQyT1NSNXJqZmw5OU82RjRaekJhNjdZYkdScnJsOXdR?=
 =?utf-8?B?M3BTZ0JEc2MzVTZBakdQNTAxMms5NGV2YjlRajk0M21sTnpjQjVZYXJ1Y3Bx?=
 =?utf-8?B?R3V3WlZ1dDdOSDNiSDYyVHBxbmtIcUljWVZvTW1wRFlvM2FudFJMTUxuWkNT?=
 =?utf-8?B?cWdHUTZpOEo0dTlJZG1vTlpHRGVpbHl1UXBmeDE1TjRza3M0amxzczhwbGJv?=
 =?utf-8?B?Rm15UUwyUkI4UVNqSWZqTStaM1EyOTNBV2NxTnNWa09IMmF2QWNQRXpReHdG?=
 =?utf-8?B?dFhZWFZCcnp5RTNMUzdzVHlIVU1lZkZlT3RuNDVBcXFHQWxzeUJCc1QzUkps?=
 =?utf-8?B?eS9LOFVjVjB4ZDFkdkk5Z1JEeFIzSkJTMUZLUE5heTMwbk5WNHEvWmRkLzhQ?=
 =?utf-8?B?ajJqdkk2enZranBRbUVXMlBTMDhqY0Q4YjhoUEN0bXhuUW5NVHlJakh0RC9O?=
 =?utf-8?B?TERrRVJrald5dWRzS0FaUXViTDVZY1FEZkZnKzVDZ1NDOW5SQ0YvK1FQTmZo?=
 =?utf-8?B?N0NobGE0MjRrTkt6akl5ZTdxbEVsNFBUS2V3aDU3Um4yTTZRbEloNmx5SC9Y?=
 =?utf-8?B?bHY5UWRMWnNXdnJrK0tnMTJMa0t1OUI1R0RUZXpFZGxmOGVhNjJHSDVjcEZn?=
 =?utf-8?B?ZzIxU21zTEE0Ym9UWWlLVEhZZEJQTThHRlVCcU9FN1NKNG1iYzBTbm5KY0kz?=
 =?utf-8?B?K1ozcytNT2h1OGpGeTI5MkhxWDU5SFFmemJsYnpFQ1o4cFFlU0R4WEJSa0JJ?=
 =?utf-8?B?bzM3NUVHRDdRSkIrTGRlY254TWdERzFyMXRJR2dTWFBicUphcUhPckNpd2ZN?=
 =?utf-8?B?NnNxeHpjU2RwVFIzekoxRDZNVjhPTHhCbjBtQmFTQm1jRjFoWTZZVVd1eHNh?=
 =?utf-8?B?NytnL1hBdmNIRjRCRzY5cFU4Y1c3d0hncjRZdkhNTkh1eW1VN2Jhc1ZGYkNB?=
 =?utf-8?B?NkhKWWZvY1MxeHVySy8zSmJKTWg1QmxyWXB5YnBYUkVUdWNIWkhzQ2pVNTda?=
 =?utf-8?B?dlZ3V1o0VHhvL01kZ2cwdUNiQ1BSbFFKdlo5cmJTT0VzSGdCREJXZ0VWV1Yr?=
 =?utf-8?B?dlpla05jaUdQVEFLMTlXdHZQbDVqaHU4RWZqMUtUOUhIWHlEd1A0cUtZVmFX?=
 =?utf-8?B?QlNzNkdKbld6VUV4bk9PZVBhck1nbTUrNXExbndYdyt5ZUwwWEkzbWEySEsy?=
 =?utf-8?B?VCtoSnlHVncxVlVlQUR0Rm4yaGJVdVlVNzc3UEhXVTBDdFN4dE13YkhmLzF4?=
 =?utf-8?B?T05DU1V6Nm9SSmZYYmxNWnIxL25CYWpPRFlGRU5PWkViQndzcmxtZHlXSUJj?=
 =?utf-8?B?Mjg5anZYVFRQSVZPNy9kRG9oOGplOW5iMXIzdXJhTUswSnRBOWh1QVFJWVV3?=
 =?utf-8?Q?WPCsf/?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d3ViS1Blbjl4S1ZKWUF2ZytHSDJyNTNKcGlCMTJsYlV6bUdxTnVYR0k3Q1Fa?=
 =?utf-8?B?VDREak9WZ29nWjJ0SDVHU2ZOTUsySDIrVkV4QktGZVdub2hUdDV3UjhvZmtM?=
 =?utf-8?B?T2s3WUpZQlNNdTIrQW5hTmltSlpxallmbk1FRjlJRU00ZXc4Vkpya0g2cmNB?=
 =?utf-8?B?cm1QejBUSGNQWXphVElkY2dzdHIzUEF1N0J1OEc3aG9IR0lSdDFiQWtFeTZV?=
 =?utf-8?B?aXhDWlVOWmZRdzRFUHBCTDlvam5tR2hpUWdGZWdUZlFvb0kwYUQwTDhvdHMy?=
 =?utf-8?B?U0s4enpHN3BlWFp5YTNqTWVTWHkzakJrdkZkeFJRZUVqMHErMW1tSXJSOW5K?=
 =?utf-8?B?YzNpM253YzJVcmlNTnRhMHB4eGNsWktsek4xRzduRUtlM2RtM2hxKzIveG1s?=
 =?utf-8?B?MURXcXd6MUFzV2ZPeU52R2NNUlp2VmNCVWgyM1hQZWlYL2N2aEdjL2hkZkl5?=
 =?utf-8?B?NlR0UFdMdzFPMk1aRXV6NTF0a0QydWVjcnk0S2NoWVdFRUtJeEJxNGxPb0JS?=
 =?utf-8?B?a3RqWlByRjU2ZVpUTmtpZU1xczgzVXNBMlFkWnY5b1JjcWNlYXpXR3Z1eThS?=
 =?utf-8?B?eFBpeTJ3R3JYQW5mREFmbWt4UVoyMTk1d3VvbGIzaS8wdXNGdmR3c2w4ZGc0?=
 =?utf-8?B?SHF3TXZZaTFnRUFDdzVtQmVCVE9hS2FYd3hVM21VRG1FTXJJVmRLN1VpRm9j?=
 =?utf-8?B?SXVlMFZYUmh4SjRvVDZLU3greDMxanlrSUZ3K0t0Ty9yVUdsaFgvN09zenZU?=
 =?utf-8?B?RjRHZDRPSGVlMDlkakQ5RVFER0hTcEhSY1pBZUtocUJmcmdOenFhbk16anZH?=
 =?utf-8?B?d1BZYlRvZVZrejFPaDJicWtielo5QUNIYU9RR2JmVFd0US94RVEvNWhIcC9p?=
 =?utf-8?B?NWt4NFp2dmZnOWZJRllDZTlJZVBsRzA1dnF6TGpTbUl2UGFTaERKNExZUXcx?=
 =?utf-8?B?R2V1MEoycEpFZzZMSWl2NEFNamE4T3E1YnRackdLcDB2QzM4V2dEbUhsQlpP?=
 =?utf-8?B?VEVnblUxWk9tUEVlcXNHNEZ2SmNTQktyZkd4VU9JSkZ4VzYxMjkvejNZcXdY?=
 =?utf-8?B?Zk1jdEQ5QVRCdmlCTlltVFhaM2phajFJZ2k5RTcweUdsaC93UVkwVGVQMDAz?=
 =?utf-8?B?aDdUb0NtbkF6WVkvemxwSnFqRUk3MGlTOXd3dUFsVkhNSEo1SjNILzN2VmRo?=
 =?utf-8?B?d2drajAxb1psQkhSNzUyNUNNUjk0ZWxmc0VLeFlNU1BEbC9JeEl6UXlKQ3VI?=
 =?utf-8?B?bEFwVndsclRpM1dSODBhNDVCZTNlSjdOTDhMWW1PWmhhdFNjblFZZC92OW5P?=
 =?utf-8?B?dWc2YzZOaVZQQ2s2RnZxTXQxZ3hJN2pyMkY4ZElNVWJGdzUzeFA0YUJxNlV2?=
 =?utf-8?B?Wm00YWJXMGRYb2pjb3ZHdk5YUU9OOTJ2eTlmaW1sMEZaeklPMUNpU3hSSHRl?=
 =?utf-8?B?MWo0R2NmMGVCZnYvNjVYYkYwamlUSEVZT2NVL2h2bFNqNDl5UXBRaERVbU0x?=
 =?utf-8?B?YWY5VGJncWt3QUZucmQrcjlkTURjNmE1LzZpQVoxb25zSWRKYndiL2pQNDN0?=
 =?utf-8?B?cmJKNTY2SDU3TUFNeTFyWWUvYlhFWElLeVJVMFRUenVMWDl2SEp1WkNMaE04?=
 =?utf-8?B?VXpnMDNZbXY4aHpwMnRsNUhBNk5vbSsxbldHZ3pDaytTcFhRNzk3K0pRaUdB?=
 =?utf-8?B?dm03ZStWd2VEWHB1Y0ZSOFRhTHVSTTMvb3ViaGVWanJJc2srOGZCNEM5SXhv?=
 =?utf-8?B?SExaYmMxaVhZU3lFcmRtUDF2dE44dkZSQlU4RlB0c2dwZ0U3YUNsRmRFVjd5?=
 =?utf-8?B?VWhaNVFpM1BSRFNjREF6My83bDlmSmFZTGYxSDU1OUJGMDBsNytJbTBaZVZa?=
 =?utf-8?B?WG5QbUlqZEJkZ08zMkErY2FPMlRMaW5adVlGZnJRUzVOSnVMbUowVWIzZk5X?=
 =?utf-8?B?L0JNTDBYVm9lbmpDemg5bDh4NDVxUyt2SDBaKzFGbjhLazQ2QnhVVEZJT3dW?=
 =?utf-8?B?aDZZRGhUamVrdXphOVZuamZPd1FZWFQ0andHQmNDWEoybExQT094R1lKNzF0?=
 =?utf-8?B?Y3RDa2xLcUdFbWdaZHJRUkpNTjVtNDJmMmVkTS9mK3R4WVpMSnN1bmgzRjZT?=
 =?utf-8?B?U2NuOHhuRXBOTFFsV0tyVTRMNXRuSDdiM0ViYS85Wkk2Y1lOU3pCUDJzSWI1?=
 =?utf-8?B?YzVZUXlTTis5KzN1NjBEQmthVEFjOHplQnFBdDBydngyREVuMFVWZ01qQ0FK?=
 =?utf-8?B?cVhBK0MwVWZHMUhDUnd6YUJsOWF2RDdSSVU0S0MvTnFsZVVqRTlGVEJObmNi?=
 =?utf-8?B?MURlNmxTdUdjUUFaeGQ2RzBObHFhVG44bUM3Uk14V2JwYnd1dDI2S2N3ZEFI?=
 =?utf-8?Q?URSlUkrhzGZIV+hU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f4c2071b-6050-4d57-2bac-08de67e783df
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 14:28:38.4487 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VgMrTBU41aUBKwRCNU3clLGMZOGRBXUOilLYXNUlpVuxOwtBPCgQuH185NkmSdFR/Evkf4cNvI9Lj11N1wRf6zyZWJDkeHAgddBfRQFtvmg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7126
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: D432711050E
X-Rspamd-Action: no action



On 2/9/2026 7:08 PM, Imre Deak wrote:
> The pipe BPP value shouldn't be set outside of the source's / sink's
> valid pipe BPP range, ensure this when increasing the minimum pipe BPP
> value to 30 due to HDR.
> 
> While at it debug print if the HDR mode was requested for a connector by
> setting the corresponding HDR connector property. This indicates
> if the requested HDR mode could not be enabled, since the selected
> pipe BPP is below 30, due to a sink capability or link BW limit.
> 
> v2:
> - Also handle the case where the sink could support the target 30 BPP
>    only in DSC mode due to a BW limit, but the sink doesn't support DSC
>    or 30 BPP as a DSC input BPP. (Chaitanya)
> - Debug print the connector's HDR mode in the link config dump, to
>    indicate if a BPP >= 30 required by HDR couldn't be reached. (Ankit)
> - Add Closes: trailer. (Ankit)
> - Don't print the 30 BPP-outside of valid BPP range debug message if
>    the min BPP is already > 30 (and so a target BPP >= 30 required
>    for HDR is ensured).

Does this match the current implementation?

> 
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7052

Also,
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15503

> Fixes: ba49a4643cf53 ("drm/i915/dp: Set min_bpp limit to 30 in HDR mode")
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: <stable@vger.kernel.org> # v6.18+
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com> # v1
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 20 +++++++++++++++++---
>   1 file changed, 17 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 4b786706ea2de..7fd20df10f26f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2703,6 +2703,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
>   			       bool dsc,
>   			       struct link_config_limits *limits)
>   {
> +	struct intel_display *display = to_intel_display(intel_dp);
>   	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
>   	struct intel_connector *connector =
>   		to_intel_connector(conn_state->connector);
> @@ -2715,8 +2716,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
>   	limits->min_lane_count = intel_dp_min_lane_count(intel_dp);
>   	limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
>   
> -	limits->pipe.min_bpp = intel_dp_in_hdr_mode(conn_state) ? 30 :
> -				intel_dp_min_bpp(crtc_state->output_format);
> +	limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
>   	if (is_mst) {
>   		/*
>   		 * FIXME: If all the streams can't fit into the link with their
> @@ -2732,6 +2732,19 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
>   							respect_downstream_limits);
>   	}
>   
> +	if (!dsc && intel_dp_in_hdr_mode(conn_state)) {
> +		if (intel_dp_supports_dsc(intel_dp, connector, crtc_state) &&
> +		    limits->pipe.max_bpp >= 30)
> +			limits->pipe.min_bpp = max(limits->pipe.min_bpp, 30);
> +		else
> +			drm_dbg_kms(display->drm,
> +				    "[CONNECTOR:%d:%s] Can't force 30 bpp for HDR (pipe bpp: %d-%d DSC-support: %s)\n",
> +				    connector->base.base.id, connector->base.name,
> +				    limits->pipe.min_bpp, limits->pipe.max_bpp,
> +				    str_yes_no(intel_dp_supports_dsc(intel_dp, connector,
> +								     crtc_state)));
> +	}
> +

Nit: We could collect the output of intel_dp_supports_dsc() in a variable.

But not a blocker.

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

>   	if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector, limits))
>   		return false;
>   
> @@ -2869,10 +2882,11 @@ intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
>   	}
>   
>   	drm_dbg_kms(display->drm,
> -		    "DP lane count %d clock %d bpp input %d compressed " FXP_Q4_FMT " link rate required %d available %d\n",
> +		    "DP lane count %d clock %d bpp input %d compressed " FXP_Q4_FMT " HDR %s link rate required %d available %d\n",
>   		    pipe_config->lane_count, pipe_config->port_clock,
>   		    pipe_config->pipe_bpp,
>   		    FXP_Q4_ARGS(pipe_config->dsc.compressed_bpp_x16),
> +		    str_yes_no(intel_dp_in_hdr_mode(conn_state)),
>   		    intel_dp_config_required_rate(pipe_config),
>   		    intel_dp_max_link_data_rate(intel_dp,
>   						pipe_config->port_clock,

