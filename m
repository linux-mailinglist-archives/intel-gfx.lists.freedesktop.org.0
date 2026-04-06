Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHTqLYlE02knggcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 07:28:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 355F63A1972
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 07:28:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BAEF10E20D;
	Mon,  6 Apr 2026 05:28:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iq0L0/TI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A886A10E0A9;
 Mon,  6 Apr 2026 05:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775453318; x=1806989318;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=btlAFzogB1Ar8hVEk1v5gmVT0D8/ViQBhKRH0NfpRMI=;
 b=iq0L0/TIVvoFS+kYvfEZ/UOMaAPpPoLB4Jst99e8sQtm7M7M39bbITHQ
 GVRXih+iMktUjsCQkrLVgrDGvrY0PEizX3aiDndaMN6TFpjojt4AobgQm
 1AjsS3ajrEu2w2aX+MO7SEU93N2qIYTi5/UVjaMofeQGRJDuF2mKVtFBs
 U0fLGCc5Dx2R0cbpnkyEdpgu68iuNo+K25n7c0XRFrQDXGfUDKDqLrbWi
 4ON7SIdAaZ9zKdFMaBS896Z9JEh1hzgr0kKjSg0WtzPlJuAD17FDM16D6
 I7e3DQYYHdA1XkqthAUDO3LhigbybpeVxDCkt1vRfd5A9eRsdV2Xqrnn3 w==;
X-CSE-ConnectionGUID: eZdGLTgzSLWqBpoqZzZbMA==
X-CSE-MsgGUID: OYNbXrsDQE+3RSwjOjwG9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11750"; a="99029481"
X-IronPort-AV: E=Sophos;i="6.23,163,1770624000"; d="scan'208";a="99029481"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2026 22:28:37 -0700
X-CSE-ConnectionGUID: h1g1mCs8QqeTg0RjOuXorg==
X-CSE-MsgGUID: XcFkeZpdRWOH5WpZzeDj9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,163,1770624000"; d="scan'208";a="222986284"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2026 22:28:37 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 5 Apr 2026 22:28:36 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 5 Apr 2026 22:28:36 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.15) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 5 Apr 2026 22:28:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MWTmrc9tPa2RdYbiL5Fuh4Q9oRGxmwmdT4PTcHzcV1nI9mg53yMAxc9hZ3RWb9CI6zNJ/nBUuUdvM6rcPKvxcjuXjJ2y2BgPlgsj4SCjZF4Nxtm00Ru4Zapt5j7JIAFwD2shCq0XPp9NB+74uqxMlM+6gK+Ndty4tOgk0P5Io3Bu6LNtZeqIubdPoONTsbt6nz3IELzoNalpwe8AGtQC2YlZt70xM1cDzEiCLLpGMpDedKJmivvupUY//fPoWe7EvRtuK/8DqhgIqJwe+hfad/XddO1ynViXa9ysjxVX/mcZIuzAUaaWCf4eaVtEDat8IS9x7Dh3ms1RRXMba5FHjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rOaA9oPsTT2ACGcqPQ6QzkSsLzJSXLwyhrW76G745lE=;
 b=N4Xdb81eH1bdfc5tIhreKif/69r3vi+ZZgvQxIkhH4StnYjMaoyH5/zzcD2JLU8bezTy59c1eLhyonX0mwr5iXoZpmyHQJNWLeU/F4wPVSSXwl9vakP+Zpmi4tUuBKkyI3jl2xV0EomLd1bLVFtbo2WHIKKYecFEYsbJ6i555+6Qu+6UKCLf1V7JYdjbGhVwuHpxPrfcsFxVB7K1ctTQPL6TMtP7Vf+a+hTXW1vfc1gw41On8sM7mSGjqZfzpx18T6NmBskUdwu0+LoaAR0JEK6MlHM5GEPmvq7sOiO9lJ3ZshWUpAidZcxbywDl15hLnBLqrvOGMpvwpmLa+YPCbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.18; Mon, 6 Apr
 2026 05:28:34 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9769.016; Mon, 6 Apr 2026
 05:28:34 +0000
Message-ID: <630b95ab-7637-4397-903f-30ee9d4a286c@intel.com>
Date: Mon, 6 Apr 2026 10:58:27 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/9] drm/i915/hdmi: Restructure 4:2:0 vs. 4:4:4 mode
 validation
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, Nicolas Frattaroli
 <nicolas.frattaroli@collabora.com>
References: <20260330235339.29479-1-ville.syrjala@linux.intel.com>
 <20260330235339.29479-4-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260330235339.29479-4-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0016.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB6117:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a6755f9-529c-4e21-61d5-08de939d58a3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: LGGPyyh5fDbHiJWak4t5xZ5ujlu0YiOVxBdP5+RLdJ4Zqyub0quPOt2yWUhkeSdCAWWyXWG9N9canoSU1dHHiFJcCpdnv2pF8eqXoFLbDbo71swlz8KCyFoaZ3pHqChU0+V2ESeSnnaViiGu2YxteXTKKpvhRmKn1tpK5fcaE1yvJziC83myvAKwsQM4NsrcA2IMayfrO+ST/1QnezOEgv5G5L8cXCEdNzvVwzAFBhZpy66jkVAQxSZGwRzSGWJyBOVC6Y2eEdyigEQDzpDXr7iUT8cDY380Z1PiKamwamya/cqrfqy/xTu7cNaIUqgtPG46TDXMRCxeZSDEcVrDDUNKOnNWrxJwM59qHHcMQboA+iy85+AYw8I3AZbKIWBeCjYaiLjDRGIMfCLz5GdAHtI0Bc15PMaAxfAwJe+GZKeXV6mQYnMGN5SpbHU4KhdOTY+35Z7GUpG+lPDfRVJnGZ/jhWNi4NXx8d8agXVfa1vmUPcudxZ6zxD7fYkw/5o3MSa6Bd3GxdYidHhRyBD2pzFSOPamJLE5kntXGTRdqEQrY1KUaBcRLg0s8zpq4CTh6Y01SZxWjHPjF+VYAbmgD5HoMgKF5OqNSBNecLooSZ/VKk5Ul1oqaNZEv65rRqyUsToO9RgSyzdMWz+OkRriXJyD3f540ig3FzfP4g03iVQNRCpcEpaxRSmNKB8cUfpquDYdHaESRsW9JpXZnas5zjSIge2JAzOy0uD1yOBfOM0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d2w0T3V2dGI3eUEvTTBFSTZLb2N0eHZZbkdNNk1DRXlMdlB2UkdNSzZrb0dJ?=
 =?utf-8?B?RXlSRzJZTm5IdlFYSVY5ZnRGemtJdmU4N3hEUzZSNjBPM2ZBVmhhR1hZTW91?=
 =?utf-8?B?VnhwV29ZNGlwZ3dWSWlnUjJLeFVGdVZrTjVmL0ZPMkEvaStTdm9pRGQ0aUFE?=
 =?utf-8?B?T0FHdXdiSVVYN2tBNDhUck5yWGdkNlJnQ1NnZTdOS2kvTEVXbnhZNkxVb2t6?=
 =?utf-8?B?NzRyb0lpZmd4U2tzQi9WTHFjS3BsQUtINm5rdmMraFh2NW1sSFRLYjRZVUhN?=
 =?utf-8?B?dmRwTkNRbGJ1cUUwLzdDZmRsYkF3Z3NxbU5NTUZYTjFFbUQ1V3ErbXZpTVA2?=
 =?utf-8?B?a3NPMFFnSk5wbFY2aEx4azRpZGdBS3cvbmowbkZmd2U1bUxsL2lKUFgxOFN2?=
 =?utf-8?B?SjQ4bWVGNzh4TEFBS0U2WjN6T0pEaENoL01hRGFESUZNVU0rVzBoSTY4SThn?=
 =?utf-8?B?WGs2YWU4RnpGT0ZJeURNWDBXYVBCb3kvMzBQT0tnOTduYzM2dDJvdnBMVnVZ?=
 =?utf-8?B?Q0ducjBwRitDUkFqRENETDVnaW1TQ2p2WGVXcGxzWXQ0eWpkNHY3VHNoeHdS?=
 =?utf-8?B?RFc4QzBhZnlLbXRaZkNvVHZSK2FhMk9hOUZLMEtUZHNnWFlTWmVtS2FQQW0z?=
 =?utf-8?B?ZW9LQ29IRml4TzVYZXRSS3lkS2VRVXJiMUhpcE1CUzFlRnhwNTdMR1ZQT0dr?=
 =?utf-8?B?d3FxdjgycmhpK0xRQXY3YVdnM1MvOVZ4empaYW9UMHhrWXVrOUhFSFUrc1g1?=
 =?utf-8?B?TUNrMXhXR1I0NWhYRVJkZnU5czRBV3N4eUZLNzNrZnJlZ0VqdFUyUFhuRjlJ?=
 =?utf-8?B?NDNYY0FQVFB3STdsTFBCNFRLZkdMQ2dQK0JZZ0hoaW9GdEM5aWY5MGMyZGRj?=
 =?utf-8?B?MlVZbFRqM1Z4MVlrbjdVNEtHQjRrZFZHem95Q0x3K1djb2l6MUxucjdhODkw?=
 =?utf-8?B?ekY1WTc5aThpRnZDd3FVNVFCcEc5NC9oYWlud2hBTTY3eE81bEZOenk0Qjlv?=
 =?utf-8?B?YytQV2hqQUZKUGtGY3g1WmpmcEt0aS85czk4MkY4NE5ZUWZacjlPeG50N0NE?=
 =?utf-8?B?aVZkeVVHZ2NHc3pFN3lVRnU4YUJRaGhPZjFPKzlYR3JnaVNLdEVZaHRpM2M1?=
 =?utf-8?B?ZXN0Y0ltMTIzS0U1WHhpQ2MybndHTmpZaVZ4U3NsUHlrajNqZStYRDhHTHlu?=
 =?utf-8?B?SkN5bG95MG0rcDBOby8waWVEVU9qRVN4SG9FREVOWU93c1NaQ1BVVERoWGRx?=
 =?utf-8?B?WVhhNmlqUFBWVkZGRWw5SVMxMWVGYmtlOUk3dUlNZ0dkZVJpMVBIbU5MUmhp?=
 =?utf-8?B?WGlJTm9CZUpSOGRVcGp6MnpodlFUN1B2U2lMVllZVmd4QWcyaktPdkRwUzNW?=
 =?utf-8?B?UEIyZS9KOXoxNTRsMW9CQWNGYmdJd3ozb0E0QmJ5QVM2QlRBc1htSVI5Vlkv?=
 =?utf-8?B?TThTZVo3cXBGNUFEelRzMlEvZDRYZzFVQkVSa2QyTDA4TUlabnVVQ1FEK2JO?=
 =?utf-8?B?U1ZUL2g3MDAxMWNVT1h1cTNqbjdxcDJQUlZ2eEZZdk5yajlWOUdhU2lxVDJz?=
 =?utf-8?B?aEJndEpyRE13dFZ3SzNtWG9ta1pKaXFWNE00YWt3T0FsY0t4WTk3ZTZ2V1V1?=
 =?utf-8?B?WU1aS3pnQ0ZjM0JrVmh1R0ZOR1hia2NOemRVNEZOVU51cGNkQUwyVWJTbnE3?=
 =?utf-8?B?cmwwenhvU01zcHlLbmpVTWNWQ040cXhNamJZTldZQ0kzQmNqUmsvN1k4OFdW?=
 =?utf-8?B?aVhmV29lVUlaUU01Zm5DWlZTSXBYTFZwTGVZZTltdEtzWG1XOVppd2RTSXVE?=
 =?utf-8?B?YXRTYXhEazdHOTJBS0hHczJuM3lhR3dxT1FkMktzdG1aZnFoai9NRlpZRk92?=
 =?utf-8?B?alp5eGhRYm9nbEpIbGpYSmlsVnFUZjJVU0ljRFowSkwxRWQxZWh6NTI0Y0NZ?=
 =?utf-8?B?ejIveWkxbDR6aWN0TkZOK2c5QUJteUVoZDNjb2RYamF6eTBUQXRuM2x6dlc0?=
 =?utf-8?B?SXdqZFZuZ0V4S2xnWmdweitETW1YRnFsdXQ1NGh3KzBVSTV3cG9LNVlrSDdr?=
 =?utf-8?B?RFg3d3dTN3hPZ1VWT3pwZlVRVHhpVHlqNjZKSlJyNUt0dW1YcHp3UHV4eDdV?=
 =?utf-8?B?SEM1K2pyUmVudENsZVh6dzc4Y24xMSs3eWtkcVhTcjdJcCtLdklvRTJKNG1o?=
 =?utf-8?B?WjJzREdCbm1ubGFoc0p4NTBIYnhWakxxZGtMaU5RVjZJMU9mWUtPWVpneE0w?=
 =?utf-8?B?UnJZMm5lSkg0ekRYaElyWmIxc1pxZ09nUllQK1VmUHh5K01xSjFqeHZFd2tH?=
 =?utf-8?B?RjJwaUJrZUxROWZWY3R1ZWhSV0tHUU1rMVJVd3RaaUhBZURKdVV0ZkxQMUhY?=
 =?utf-8?Q?13/CH9Kav83kYuCs=3D?=
X-Exchange-RoutingPolicyChecked: NWvYbZurfthfKY6kkKmLYkLC4pgLa+bRv9ACxxgN0qn0o+A0SPi8ZCqWgPwiHEpm0V7W1yQUDOnyttalQmFT0gLKUwfLboX51Qhw5wxQ3w7Y5GEconnzmw3/FaL0gEGBryIKf/VZJfgaV8axXsMXHRdTTdZ+D4oRa5T8y3T2PVht7ynn6HsFSoupUIw/ZKRLnMs/6StXcgaj1DOO+prc2q9kzlEnNvGF2dot2Jte/eHAcSiS8vSRJp1FgIiLk7y7/11zPBSU9kG4C/Wamc5hhD8E4HIzDHm6LZnhSSEKzzq1zldzXLIubJ0iavMn5BWmqHOiwqEYyQ6jWqn/nCYa8g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a6755f9-529c-4e21-61d5-08de939d58a3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2026 05:28:34.2716 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gg9Cch+DZNZV9K+UTh5huTjiWZa1sM5FIlZakg3Bh3vIuEjwDNGykYE/Uo8SKEEbK6jHEAcFPkC+KCB+uzzmVHQ7i9IQ4/dBnLvC7bVt1QE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6117
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,collabora.com:email,intel.com:dkim,intel.com:email,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 355F63A1972
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/31/2026 5:23 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Restructure the HDMI mode validation to resemble the new
> intel_hdmi_compute_formats(). Keeping the two in sync helps
> to avoid different bugs in each.
>
> The main difference between mode_valid() and
> intel_hdmi_compute_formats() is that we don't want the
> Hail Mary RGB fallback for "4:2:0 only" modes.
>
> Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_hdmi.c | 60 ++++++++++++-----------
>   1 file changed, 32 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 16873fc7bcb9..95bd38c620d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2045,6 +2045,27 @@ intel_hdmi_sink_format_valid(struct intel_connector *connector,
>   	}
>   }
>   
> +static enum drm_mode_status
> +intel_hdmi_mode_valid_format(struct intel_connector *connector,
> +			     const struct drm_display_mode *mode,
> +			     int clock, bool has_hdmi_sink,
> +			     enum intel_output_format sink_format)
> +{
> +	struct intel_display *display = to_intel_display(connector);
> +	enum drm_mode_status status;
> +
> +	status = intel_hdmi_sink_format_valid(connector, mode,
> +					      has_hdmi_sink, sink_format);
> +	if (status != MODE_OK)
> +		return status;
> +
> +	status = intel_pfit_mode_valid(display, mode, sink_format, 0);
> +	if (status != MODE_OK)
> +		return status;
> +
> +	return intel_hdmi_mode_clock_valid(&connector->base, clock, has_hdmi_sink, sink_format);
> +}
> +
>   static enum drm_mode_status
>   intel_hdmi_mode_valid(struct drm_connector *_connector,
>   		      const struct drm_display_mode *mode)
> @@ -2052,12 +2073,11 @@ intel_hdmi_mode_valid(struct drm_connector *_connector,
>   	struct intel_connector *connector = to_intel_connector(_connector);
>   	struct intel_display *display = to_intel_display(connector);
>   	struct intel_hdmi *hdmi = intel_attached_hdmi(connector);
> +	const struct drm_display_info *info = &connector->base.display_info;
>   	enum drm_mode_status status;
>   	int clock = mode->clock;
>   	int max_dotclk = display->cdclk.max_dotclk_freq;
>   	bool has_hdmi_sink = intel_has_hdmi_sink(hdmi, connector->base.state);
> -	bool ycbcr_420_only;
> -	enum intel_output_format sink_format;
>   
>   	status = intel_cpu_transcoder_mode_valid(display, mode);
>   	if (status != MODE_OK)
> @@ -2084,36 +2104,20 @@ intel_hdmi_mode_valid(struct drm_connector *_connector,
>   	if (clock > 600000)
>   		return MODE_CLOCK_HIGH;
>   
> -	ycbcr_420_only = drm_mode_is_420_only(&connector->base.display_info, mode);
> +	if (drm_mode_is_420_only(info, mode)) {
> +		status = intel_hdmi_mode_valid_format(connector, mode, clock, has_hdmi_sink,
> +						      INTEL_OUTPUT_FORMAT_YCBCR420);
> +	} else {
> +		status = intel_hdmi_mode_valid_format(connector, mode, clock, has_hdmi_sink,
> +						      INTEL_OUTPUT_FORMAT_RGB);
>   
> -	if (ycbcr_420_only)
> -		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> -	else
> -		sink_format = INTEL_OUTPUT_FORMAT_RGB;
> -
> -	status = intel_pfit_mode_valid(display, mode, sink_format, 0);
> +		if (status != MODE_OK && drm_mode_is_420_also(info, mode))
> +			status = intel_hdmi_mode_valid_format(connector, mode, clock, has_hdmi_sink,
> +							      INTEL_OUTPUT_FORMAT_YCBCR420);
> +	}
>   	if (status != MODE_OK)
>   		return status;
>   
> -	status = intel_hdmi_mode_clock_valid(&connector->base, clock, has_hdmi_sink, sink_format);
> -	if (status != MODE_OK) {
> -		if (ycbcr_420_only ||
> -		    !connector->base.ycbcr_420_allowed ||
> -		    !drm_mode_is_420_also(&connector->base.display_info, mode))
> -			return status;
> -
> -		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> -
> -		status = intel_pfit_mode_valid(display, mode, sink_format, 0);
> -		if (status != MODE_OK)
> -			return status;
> -
> -		status = intel_hdmi_mode_clock_valid(&connector->base, clock, has_hdmi_sink,
> -						     sink_format);
> -		if (status != MODE_OK)
> -			return status;
> -	}
> -
>   	return intel_mode_valid_max_plane_size(display, mode, 1);
>   }
>   
