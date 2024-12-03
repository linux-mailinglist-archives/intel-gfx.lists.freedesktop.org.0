Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 995CA9E15D8
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 09:32:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44F2D10E971;
	Tue,  3 Dec 2024 08:32:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mr6cg1lS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0E2410E970;
 Tue,  3 Dec 2024 08:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733214769; x=1764750769;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XJOeOOOjYdQClyWm3MNYDHFSyPHVgfUqZLfZddjgsrM=;
 b=mr6cg1lSwniOdfCync3se1/acdk6EEWgW+zN6mHzMONvtO4okezSytCA
 ay+INZdbo79niYr4k/5IFH8RKNnc0ky4enr4/NhTOmI9rsju7CaP647PC
 7+D/UakUMD1pzjL/UmBytQu2NLLsHf9LtMVVheAxdkj/3cEVnLsI9jELy
 rwpd0m6nQpa+y09oJ/gNRy23AISGsPAQqUwXDYoP5oNQ3KPn7cgX59xmi
 Hs27hBdYfNtpmj0G8HaPMTUvJLkuY2SauTBP2pmxRCw5Ug4cIfl8bN1D7
 vA/jjTex51QfyudlA/p2UV1lJb8OK740IXITH/wnSzxYVSORTHf6CZSLF g==;
X-CSE-ConnectionGUID: 2m3AYGx3TzKJR+ZUExi3ww==
X-CSE-MsgGUID: Jxud4kx4QDS7N8xo5GpysA==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="37349499"
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="37349499"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 00:32:47 -0800
X-CSE-ConnectionGUID: 2vY4uvJiT9WKtcCdRthK/g==
X-CSE-MsgGUID: FBlIew3IQ7CK7x2Vcv7g6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="124192504"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Dec 2024 00:32:47 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Dec 2024 00:32:46 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Dec 2024 00:32:46 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Dec 2024 00:32:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n0iD4HD8VryoWj3GFSPwuXHNClp22reQTIoHMWalAM0w4+D99lhf6MVcLFFHak4c86VbRaUrdhOGS/DIXAFgQ0e2pK+w9/5ezFbrL+AOBvzbakOVkno7t0IlV19tsEAfUTnAFQd+yD55D/j/QhGAu1XG5iZBI1ww9xTS+gyPOh76D1cXPrCpZv9pWn/j155/kje1yhDIBzA2K2IylfA9Xa+Jd20Jkp0QrBgwENT2QTHAJLhpxvqebN8hfyhdZmQMjgUVk2t0SjUbSGH5HY9wq+nm/LcZxx1j+j+4vYQqhHFQgJvK+QMp5WIWcdxjvux9ZIOyOci/gg4il6p6978sow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a9exgzUaS6RK04JGvCCs98nBs7nyAZo0G/YdwLeyZ90=;
 b=hK0N3P/XgCoPB9CoNpFPJRGf76u50iAseRIMS0fTuJv37o+c2yn9j+30y2lN5d21y2qgvUSGTuJ256STj7KV4pHGcNzWiPGTY8GpHS9PJTE4yMbYeGW798MxbNdMSw9qFmsKqpNMB8dIYCNr9prJjnxF1oHK3SfopaTumWQ/6G4XixOXjXLwyiSSIDMDtFBJ5/MJM0vEiHQJWXiO9lEhU7agdYE9QMVAVsQsQjM0Z3SQ2WCWoJVEYBEzwTca0XrllJ7WiRt7mRKgXfGb6NmsU/cHb5YufdmBFSPM4X1TMuo2DJ6e1WGOzRx88AmDibrzRq326pcE06fbq25oKpka9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB6783.namprd11.prod.outlook.com (2603:10b6:806:25f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.18; Tue, 3 Dec
 2024 08:32:36 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8207.017; Tue, 3 Dec 2024
 08:32:36 +0000
Message-ID: <767bdf26-11f5-40d6-9933-1ca69c76954c@intel.com>
Date: Tue, 3 Dec 2024 14:02:02 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/12] drm/i915/dp: Return early if DSC not supported
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
References: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
 <20241120103802.134295-3-ankit.k.nautiyal@intel.com>
 <SN7PR11MB675041BF8EB49756CFEDA323E3282@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <SN7PR11MB675041BF8EB49756CFEDA323E3282@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0030.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:25::35) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB6783:EE_
X-MS-Office365-Filtering-Correlation-Id: 985f6e05-b437-4a0c-7073-08dd13750a26
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K2Y4aVJubjNUMGJJY1dDVVMzaWhWVTF1cm41aVRSeGw0bERxT3JmbFE2dExi?=
 =?utf-8?B?QmNIbnpsUlFISEVKWUt6cmJkd1dqanI4eFpzbkpKbE51T3VFMXFnYUFYY0FD?=
 =?utf-8?B?OTcyYVNleFd5L2hjYzgyZHhUd29KdzZrV3ViUDFRSlNoa3REenRkNmt6MVNU?=
 =?utf-8?B?U3VROGdiRFhaOGhyVmJ3Y2c1NGtMRHg3VFhja3FxMFR6Q3FoWW5SV010a0lj?=
 =?utf-8?B?N0NDemRvdGZPaTAvS3lndEl4Y0NJbFNPcytiNGEybzZjMURya0ZVcXdkMndy?=
 =?utf-8?B?ZzZOK3hwRG94T0hPMjJFUlRIdHROVHpETjVjRVVvY1NsK0tLdW83WVBSQzFV?=
 =?utf-8?B?cGdLWlBadUo3UTNHcnF6YVJmWktuYVViY3loVGdSTzZIWkJlMnF4eXpTNlZX?=
 =?utf-8?B?TUczQ3hiZ3pBMEtJMEFPNElFVkc2dGtJaXN5ZkNxSFNHRTd6QVBNM3RPeitM?=
 =?utf-8?B?TzRRRjJHbzdRaldabGVwYVJGaFdKT1hPbnNKdk5YZWg5VmtSZm5qank2ZTRK?=
 =?utf-8?B?SHV4eHgrUnB6UUVCTE9EemhxdWpybFRzT0hkMjhIS2VjbFhHSm1qWktRRHpL?=
 =?utf-8?B?bzhWenJISGVvU0o1cXRVV3laWWMwTzVER29sWk83SHR2WXFHUFRycU1CZFFm?=
 =?utf-8?B?dlVRQyt3YWFJc1VrSHg2Uk96dU9sUmFtYnZ2WVB3MjlBZFB4TUc1YVVhWkxE?=
 =?utf-8?B?Nk5mQVp0OWVuVnNnOTJXc1J1bHVpZHl6UFNHRUdsdmJGT1huclE4RUlsTGJw?=
 =?utf-8?B?YUphNklsNDBoK1dkT1RyNXVrY3BjcE1oR2c4Ny8xZzhRa2FxU0hFWG8rRFRN?=
 =?utf-8?B?Slp5TFFmUUNWV1dyNnJXb3hCMXVnNTdreGZLS002bzFCdkthQTZhbnJwRUQv?=
 =?utf-8?B?Yi8ra3p1T21wdCtXa3VuZVJHb2l0OVJvRG15WVNsWTRWNndGTTAzL2E1N0Fp?=
 =?utf-8?B?QnFYTXE5bmVjcGxVVzJrMzhmTDh2cXZyakc4b0ZMSFpXMTNvR2NyNkhtY0pW?=
 =?utf-8?B?VFp3ZXYwYVZpb2lIdDlIdk1mMWFxS08zcGlhNEJmcXFUeEFyNXUzMUVRUG43?=
 =?utf-8?B?OFVGQjlvaDZmY0U5dkNsZTRxbDdPZkkrRHBGajdUNm8wU1VPbGhESmxBUm9r?=
 =?utf-8?B?RFBHVjF6ckpmNU9zSGljNURzZTFxbGRqRUx0RmJJWlFjTzhNazAvVDU2Q0ln?=
 =?utf-8?B?ZHpLYTZSWHE3TXhPQitLODRiYnVDVElWZW1VUHUwNVJrMFVlN3hJdkhISmpQ?=
 =?utf-8?B?andRNHlaa05XZzdmbjFlTFRTWFFnOVBldVE1SnREUjlxN2dtS3IxMzNtek1U?=
 =?utf-8?B?YmQzWDRWYnpySFpON2I1VUdrWHl2VEVGUTVwNGFSSGtkSTZUZ1pwSnRTTFla?=
 =?utf-8?B?dmZROEtuVDVyS3g0T3NqckJ1a3pPYWROQzkxRGk1Mkc1ck5PZlVQNWp3bVc1?=
 =?utf-8?B?QWQ2SXBqeWFaRStjZm1UYWEvT2RncitRU0tyWjY3UVg2ZFlacGFtL1p5RU5N?=
 =?utf-8?B?S3EvemxRVVBNVlNlZ0ttdjJ3b1l0RmVXWWhPMElFc2VSUk01QmlQVFpwbkRj?=
 =?utf-8?B?RGhGS3BTSTBWNzU1eExhU3ZzV3lHRk9xbzBHZjIzczZxOEFnRU1kZG5WaW5S?=
 =?utf-8?B?TEhBK3JCUFRhMGhYd3pxTmxsSXFsVWxSSi9MVUZrYjd5M1ZIbVFJRk5hd2tB?=
 =?utf-8?B?ZVBUR0IyUmE5QmRzTlFKbkx1VXJZeGdpQzU1Um45cndQSkZYUkQxYUNPU3l0?=
 =?utf-8?B?MjlOVUR2V3FTdTR4SkJnQlFjMXNBSGpBbU1YTVVIQkJpUVdsVE5Ra1hrT0Iv?=
 =?utf-8?B?K3B6OTQyejlleHMySjlkQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MFJxN21iV1NScjR6Y250TG0yeGl2eDlqWUxQN0lxenpRNmF2RUdKMnBNY29i?=
 =?utf-8?B?MXgreHByZTk2SzhFS21pOGpxM3I2UjM0YWpvdWZpQjZRN2h0eVJVZUI0TXZL?=
 =?utf-8?B?OUhXRmtRdUh3ZUpmR2hqTkFZWjVmRmpOV3VaMWt1d2RaSHpuUVpsKzNHZ0Rr?=
 =?utf-8?B?U0cydFVDM1h4NDFPWndGNGZTTEtMT1B4cFI1cmxOWHhyRGQ1MEc0TlVQaWtu?=
 =?utf-8?B?N3ZxVXFoaHE0L3l3eE16Nkw2Q0NRZ3BMUllxa2xLekFEaW85SDNaZUVOQ2Jo?=
 =?utf-8?B?OU5WdUhwYlJMN3JlaXlUb1Nub2huNjBObENpODJBYnlmR0tnR1IxSkpxWW1n?=
 =?utf-8?B?bjZmUEYwc2pvbnFBU3F0aHAwVnhaS0o5SGFlMml2cmVBc0RsWTVOWTMveXJG?=
 =?utf-8?B?TkVEb3lFbWdTU2hqYi9yVHJ3ZzJmUWtENFRCTllLWWtaejN6RXZKSzIxOW9t?=
 =?utf-8?B?VHV2M0JwR2xnOHFnMUZPYWVPTU10enJ1em4wdWRWRWM1Tjh0dGhFNTNFYkx1?=
 =?utf-8?B?bWJvWFdEc2txa3JkaVBtS2dad3AvZHJlbWdkUE5GMit0MzlCeXo1U2V6T3RE?=
 =?utf-8?B?VVVZM3JPL2Ywa0l2RUltbEVQRkw1RTdqNHh2V05TUmt1UnNqWUZpbW5PeDly?=
 =?utf-8?B?QVFtd3hmbUlRVjBMUUVrY0xEaFIxNGtnVHhNQXR6SU5RYkxuNFV3ajY4Z3pX?=
 =?utf-8?B?ejF1WXBlb1N3Qy8rQnBEeWxhWHNtTUU3MUVld0JKRWlJSDRlQUo1cDg3cnRm?=
 =?utf-8?B?UEs1djUreDZ3ODJPRVJZM0NGdXNiTmtOeVA5cTU2amJaNkFyWXY1MDFNYmdI?=
 =?utf-8?B?aEIyQ3lGcmo3b2ZYOWdjWElseDFWNlpFckpUbWtkMmRsZXN6SCs3Z0MrUTUz?=
 =?utf-8?B?WHpaa3hrU3JkOFNQRWg4aWNrYjZQQ2tOU1dmbEZ2Vmp1YUozOGRvODJtU3dq?=
 =?utf-8?B?aGJxQ296UEdCa2VzVXJkQ1pRS21uYlNaZG55enZsTXBQTkxTNHBiemRSdjI3?=
 =?utf-8?B?WkRhVnhwS3RwSE9HNTY3b29hZFN1M0RqeXIrV1NBRDVvTzBZNklxcTNmdURC?=
 =?utf-8?B?M2xZNDF3VEd5aWw2UGdZaDdEcVpsK3k3dEE0UXNXc2RMa09CaFptcU1vVDZQ?=
 =?utf-8?B?S3o4SVAwZk9lR2xHRGlNU21wVFJ0RlptTzlldVFTbG5VS29uaUpObmpCcEth?=
 =?utf-8?B?QlFyZFgwUFZqaDQwOTdXZDJmVjNwcUF2dDh1RDRzT2d1Qkd3SkhQcUZVblhB?=
 =?utf-8?B?TWQ0UlNVN0l4QkJtWHJ2c3liSmlDeDFwWk1yak04WmpKVkxLQjFZdGpLbGdK?=
 =?utf-8?B?WXdsZzI5MEM2OG1vM0xHd29KYzN2d0doNDBDQnd5N25RTjRuS0NzcjRpU2JV?=
 =?utf-8?B?bmJHUlU5YXNOV2Rkb0Y4YUNWbDhPTjN3YWU5a25qYjJ3NkRSYkJOcjVGamo5?=
 =?utf-8?B?ZUIxdy9GSVpRZjNSTnFVVU81R01XYXJjcWdFa295U2JmWTNKM216TFcvVU41?=
 =?utf-8?B?d2hIT2JGd0FXYVRBMFNxOE5RQ2ZHOFd3dElUUkMzMG1rYmhxbWVZbDhUWkJJ?=
 =?utf-8?B?WjVxZnlwR2RiekZ1bm4rU21qQUg4K29qekx5QW5wckxvSEx4TVhISUZ3ZXZz?=
 =?utf-8?B?dkpxNXNmVWpGQ0Fub1haRnFSa0FGKzcrZlF0dmJwMjZaOFo0aFF6N0F0ejN4?=
 =?utf-8?B?Tm9LdisvZ1pmQS9SaG5CY0RXMEZGZHJxKzN6QVNJSEQwUGQ4QVQyN0FodG9o?=
 =?utf-8?B?dXBJU042dG1OWEU1TDc3VDZhRS8rM2lRL2hvaDRVeEZIZnE5bE0rN2hVSE5h?=
 =?utf-8?B?d01aemtlaUV3L1FUU3ZIS1QxZXNNcHpUb1lvYXU1RW52ZU4yTUlKZ2ZuaU9l?=
 =?utf-8?B?RmlobHFoYnRsV1h3Nk5SMFpQeEY4dkZId0dsTUlmNC85ZUhNMkh1dGpxcWxN?=
 =?utf-8?B?ZzJjMm1CR0d6K1VPQ1pwcTZnbzBiWVlUR0REK3BadFZ2WUIzUGpOdFEyR083?=
 =?utf-8?B?K0hvV09Rdm9kZTc0SUV5anY0WWNwTHVvSjdsZGJiemNXL0k3dk5NUzNoZmRw?=
 =?utf-8?B?bndsWFJGWHdFanpkaWxneENERkVBNkFUWEFYSWMyamlMMFMrTU5YV3gvcWo3?=
 =?utf-8?B?b3U3ZVlveXhPYWRqZ1lnMHZ0MlFlbUV2ODNNZmtWVzM1Wk9lMVM0ck84UFBy?=
 =?utf-8?B?dlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 985f6e05-b437-4a0c-7073-08dd13750a26
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2024 08:32:36.0473 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6FDkCZRaSPb4VRZ+Ie91Vis46WPlnA9n76v87AXTcA0iECgNodXfn3gFLKfCofokNJFoPknCm9zdTO76UAn1pIu8kqx9OW738Jnh3UCOV94=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6783
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


On 11/27/2024 11:13 AM, Kandpal, Suraj wrote:
>
>> -----Original Message-----
>> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
>> Sent: Wednesday, November 20, 2024 4:08 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj <suraj.kandpal@intel.com>;
>> jani.nikula@linux.intel.com; Deak, Imre <imre.deak@intel.com>
>> Subject: [PATCH 02/12] drm/i915/dp: Return early if DSC not supported
>>
>> Check for DSC support before computing link config with DSC.
>> For DP MST we are already doing the same.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 6 +++---
>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> b/drivers/gpu/drm/i915/display/intel_dp.c
>> index db9ddbcdd159..dee15a05e7fd 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -2378,9 +2378,6 @@ int intel_dp_dsc_compute_config(struct intel_dp
>> *intel_dp,
>>   		 intel_dp_supports_fec(intel_dp, connector, pipe_config) &&
>>   		 !intel_dp_is_uhbr(pipe_config));
>>
>> -	if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
>> -		return -EINVAL;
>> -
>>   	if (!intel_dp_dsc_supports_format(connector, pipe_config-
>>> output_format))
>>   		return -EINVAL;
>>
>> @@ -2643,6 +2640,9 @@ intel_dp_compute_link_config(struct intel_encoder
>> *encoder,
>>   			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
>>   			    str_yes_no(intel_dp->force_dsc_en));
>>
>> +		if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
>> +			return -EINVAL;
>> +
> Mostly looks good to me but I was thinking what if we made intel_dp_supports_dsc one of the conditions that
> Determines if dsc is needed or not.


Thanks Suraj for looking into the series once again.

I think that mixing intel_dp_supports_dsc with dsc_needed will 
complicate the check.

Currently dsc_is_needed is set: if dsc is forced or if its needed for 
joiner case or if its needed because bandwidth is not sufficient for the 
given mode.

If dsc is not needed, we dont need to check DSC support.

If DSC is indeed required, first logical thing to do should be to check 
if DSC is supported.


Regards,

Ankit

>
> Regards,
> Suraj Kandpal
>
>>   		if (!intel_dp_compute_config_limits(intel_dp, pipe_config,
>>
>> respect_downstream_limits,
>>   						    true,
>> --
>> 2.45.2
