Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MGwWB/YUnWkGMwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 04:03:18 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2B41813D4
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 04:03:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36B9C10E48F;
	Tue, 24 Feb 2026 03:03:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MCRfDPLm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDF3910E48D;
 Tue, 24 Feb 2026 03:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771902194; x=1803438194;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WVI8gR6A6DREncyK5tyOAVx1A4wQNrDVdjh8lXfHz7w=;
 b=MCRfDPLm1xiFSJzhU8eBJfNeCiLOSNjzpkCLki6nkc3qtGWaO4TxIxM3
 XuDCKx7b3oW6aw1JWkgGI76+u56khhgut2FvnPRW6yP07NriG6sTFjj8H
 STQVqHGuFvyrYRe/5qfzENB5f9kqkIGVS53Xde4oXwW83eXNsnDYzJvVG
 1HpT37GrftU8pBvlzDJQBCpzlt+8AsAgx0nv+Z02NMdLhD/ZPY+kNLASl
 tSi0MU8tUrOJa5HtM9Bhh0O4H3JcbX5nNtNVpkB35L2ueXvpc8nC2y4oI
 wfwAMionk0dqQNpUIuSo7xme55aDTZ4/bcxJ8COi8m+1Wq2s8yJdFtg2s A==;
X-CSE-ConnectionGUID: KFG7KETKTq+wZ1rlNsoK9A==
X-CSE-MsgGUID: PisFTNucR3yi42Kj7wdq8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="60486250"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="60486250"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 19:03:13 -0800
X-CSE-ConnectionGUID: sg37ypj8SOuK+Z93PtImtQ==
X-CSE-MsgGUID: 757V0nD/RXW48QHehg1/Fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="215617734"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 19:03:13 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 19:03:12 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 19:03:12 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.6) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 19:03:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d0a6LtEDeyUZUr6egDpKE0fWm2K+CzifKSNQx5dbOsumAIGD2Y6Xm8XyzRtUmD9Xr17hHAwFyYmeTDhq0fV2aqC0ct4L6zK+WI7/cAVjjQEm/xvGwTCyIksqmU3Y32xPbUBeEiGtyYIye/G28rdTXvGFPkXDE2CIvi4PAAgYfwazU+/gz9Ou50QDk7nRawb+U8lE19woo4xbyyKyHeBVH/L19kV+H6SRccH+lJ0CDCNUuYxPoUulF9a9PD4uHtayPpkhM+W11qOHodAVzb4B0+fjRfcEGM17oE8J1yfn+4pBWyvZS1PKfrNa8cKq4LmhDzEnEdo967LKC8c2+tOIoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H0sMTI5TovTLtWvW/cpBuj05AVGFXk/fggelMhSmHAE=;
 b=sOWK28WzcEagurf54gVhw7hj/+Z0taMYyeNW+t6b7ViLF/J+ee/KPmqL8goBy34hLwMVuyVSUcmEO++isFcNBASVd35U3pSJ3lCs+EmslOdjsOse9iMp3U0R+s5GGE3Vg0SVRhBMpOCRAkrGE5TGj2MwBse58AoXU7pGVl7VN9caL7oofcMK4A7nZdyJydn09OSShRtQO6Rv1Pz3q6gCPK5JfyZ0BZflN533gICcCsauMsK6hwKpDrmouWvMksbsD9aaIg0pToi5YuPPtAyEthz8938A37pxU79rgB2wstUxCKAH/of1Kxz5zRZwuhG6O8CkKZge7W884wkMyetrjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH8PR11MB7966.namprd11.prod.outlook.com (2603:10b6:510:25d::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Tue, 24 Feb
 2026 03:03:10 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 03:03:10 +0000
Message-ID: <67bdaa9a-4186-4cad-8ae4-67f4b3e4d733@intel.com>
Date: Tue, 24 Feb 2026 08:33:04 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/8] drm/i915/backlight: Update debug log during backlight
 setup
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>
References: <20260220050217.2453681-1-suraj.kandpal@intel.com>
 <20260220050217.2453681-7-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20260220050217.2453681-7-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0005.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:176::14) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|PH8PR11MB7966:EE_
X-MS-Office365-Filtering-Correlation-Id: 5bf2091b-ea9b-4afc-bffc-08de73513dd9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bHg1VTRYeEtGQ3lVK0UrVVJqdFNjcUEyMll1NTRMT2c0RDkxVnBGaWtHLzJq?=
 =?utf-8?B?NVFTandEcG9uOS9RZXBqKzI5VlZmMnVFTWlsQzBOVTZ1RGR1c3JhcTBVMnFU?=
 =?utf-8?B?aFU5bnVmNEt1L1J5R1F0cmxNb09Ya2p4VXRoNDg5ZXdjNmVOcnRWUFBkUGlO?=
 =?utf-8?B?djQzTW8xV21Vemc4K3k4VFRaV1RDbm81SGN6M0x0TW1YNEVJNUxmTG1lUDUw?=
 =?utf-8?B?b3FscTNYSjl5NUpxVk9MMXp3bkpVc1h2SE1LbHF0bWtVRDBoZG1EOWhhejBS?=
 =?utf-8?B?OGp5WFRRQXFaWTVhZTM5TkJuNmo3bHNHU2JiN3lwVzQwd3d2QUR2Q0gySzMw?=
 =?utf-8?B?OWRnOXo0MlM5MlI5ZHMxUmNScm1wVUZnNEpPR0piVEdWb2RwalNFWnZtQU9h?=
 =?utf-8?B?STNMZ21rbFpma1hXc1M3b21CS1JUS3UyRm1ydGlvSlhrKytndjNhWnZJK0U1?=
 =?utf-8?B?d2djZitZWWpicHBvdFVXMkNoRDdBbEg2N1ZiekxHYkJPa1J5NGhueXg0K0Zo?=
 =?utf-8?B?V09lWVdxcFBJd1FLS1BXQURCb3JvRVEyWmIyZUd2aEY4bVVaS2V2RGxLMVBT?=
 =?utf-8?B?Tys0Y2pPR0FTSXl4R05ydUR2NkljZjRrRTZ1TlA2cFFxT1E4UC9DNnZqbWcv?=
 =?utf-8?B?eW1ETTZ0TXpFVk1BZlY0SDdvcXZ2QW5ZbjJVeVdnM3hLb0xVMG5hd1NVeTYz?=
 =?utf-8?B?ejlpQzdscHQ4V3BVVE5hVlNJbWtxRmtCM3JNRGM5YTZNWHZIcnpyWEE5dHNX?=
 =?utf-8?B?L1J0Tkl6czJsenNURnJjb201ZStKU25UUVR5RjZPOEs2RjdTKzM3ek9XRk1D?=
 =?utf-8?B?WUJyc3UxK0FuRzMzK1ppVm9DcDBXeWVWekJYU09IeXVlMW9ZMk5LdXByT0lX?=
 =?utf-8?B?VE5GT1EyNm5HYUdHQ0ZCMXkvTU9yY0dGdUlOSlZOdXlXTnRJNVRGMlFkbkU1?=
 =?utf-8?B?dTUwTWNuTVlCR0IzWWNXVzNnVCtpMVlNa2g5NlNEN0N4bTRkYXFISkNZZUxD?=
 =?utf-8?B?Q2xCOTI0UmRVRmVmdGF6LzJpT3JrTlBLbW9kUzl6VWNOL0pySHdidnEyN29y?=
 =?utf-8?B?b082ZnFac3RmOERGTXJMR1l5NnRaRkR2V0kyTUJqYmVieWlRRndreTRoMnVM?=
 =?utf-8?B?ZWZuRzVzeWVuTStmWEFJM2pwWFBIR2lLK0lLUFdBSFB1TWgxZUF0aHBhZFB5?=
 =?utf-8?B?amlZTVNzME1KRnljYnlFLzFZdzRWd3BzMTl5OTQ4a3lMQTRVbmMrUVNzTngy?=
 =?utf-8?B?OElYRzdqTWZycGoxZmhtM2I5QlhHSmFQWUNJWWxON1ZvQU1oSW93UnhTMmNM?=
 =?utf-8?B?czUyWmlidWpENmZxazU0ZmVITElhQTR1RWhpRTJMT3NKakdzVDBTUjFHNEFF?=
 =?utf-8?B?cGVEay85bnpVeFA5eTAyeTNGMDg3NjBsQVdadVBPVnp4dVltUG80UUdIejB6?=
 =?utf-8?B?RW9oZHJKYkRWTUhVYXQ4N01PZmZrK1JtT0pLU2FUS2F4d2M0Y1VLeUcybE1M?=
 =?utf-8?B?a1kvUlR2aTVSakc1MmY4N0crQ2FkZ2h1cUZhZXFZVVdvRFBhUlkyaEhJVVFD?=
 =?utf-8?B?eTZmUXNhSWQ2L0UydFJ4MEFUVm1wVi9zSTJBWGhvaTRqMENwbjE1ZEhHb1RH?=
 =?utf-8?B?OU9QcDZibTkxSy9XUHJ4TnJoWEQyVGg4WXlwakNEY3JFbnNrYU5iSHJNc3JK?=
 =?utf-8?B?NWd0R25mWjQ0RFFOU3RqSTVObzlJVFVzVmpScGRiU3lmZ1R0NSt3Q3V3bXIr?=
 =?utf-8?B?R3VyeGpMbmtHTmhxUU5ick9XSlg1ZVNxS3lJeUpValN0MFVPWnJCaXU4SHR5?=
 =?utf-8?B?cEkvTTRwNUV5bXUzZCtScHJOazBIdkZTR1h3ZHppWlZWVU1DY2ZtdWtzaWNx?=
 =?utf-8?B?NTJnRTdnZklNZ3MvQmtxdkN1emtTVE0zYVNtbVJNNXdEMTEveFlKU3RLTzk0?=
 =?utf-8?B?U3IzdUtTbzhxeThpTVFnZWRVSnBrTzh6ZjBtUU8xbXBKdkJyNmlBWm9IT3hZ?=
 =?utf-8?B?ZGl6YlhUb054Sjh6a21RZ2lRQjkrUnJsc0t6Vy9IY2JxcTZxbTdJWXFVTGhi?=
 =?utf-8?B?bmxBbkd0R1A3SXQ0LzhGU0dyRjJGVnhWZUlTRlR3azNYbmREYU5FSFptMGFM?=
 =?utf-8?Q?Plis=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RmpSZkRvYkpoM09Od0Ruc3gvOEFqRFZmanRvbWo4NzB4WXBvUVM0NkpoYjR4?=
 =?utf-8?B?N216cUs5NHE3a05ZWnZWM0ZKbHVtMlRzZEw5aFJYTzBmbXlhMEpvTjMrdEto?=
 =?utf-8?B?bE52TGJNRFgyWHRvWm5mVXlYRm5RY092OS9HQmIrbDdmWldkWlJjNUFDKzIx?=
 =?utf-8?B?aEZoZHdYZFZreGsreVc5aEFoNjFSanducE42UzNhaGU4Ukc2cVViYWdLNHA1?=
 =?utf-8?B?TTI4MkpicWl1anhLbVE5UDBWbklYdXVkaGNoZ0ZwOFpUeGNkbWt3RzBUaVdz?=
 =?utf-8?B?ZG9qM3JzR21JWmRFZk5UZXhVYzVNNSs4bmNYNW1SZGJ6bEpsWDFxRlMydEpl?=
 =?utf-8?B?Z3BmNGFRSGVvQnZjTVBlQ0JCNEdCVGQ1cmZQemdMd1dod0s3SVFBZUpiSEdN?=
 =?utf-8?B?OW5lSUJCODk2R0ZKQWR3NHQvZSt5THl4b015ZDU2Y2hWT1o5UklYU0ZqT1Fk?=
 =?utf-8?B?NlQvdnNsNEgzZ0tRY29kbExkaTkvSFRsMWxzTkR6eXlaT0RtSldXRVRmc2da?=
 =?utf-8?B?ZWdsamp0dEFqVVlvTjBvaHZTbzBYakJ1dWtkVUdFbG43MDFEWkw3cDJVRWpz?=
 =?utf-8?B?N1RGc1VQZnkyRExLdm9Xcm1FMkpKYVVYVFFGeHh0c2FsL0JRL2FKeWJGWXdU?=
 =?utf-8?B?TTgrWVc4VnAvOWgwNHdkR3p5QS90b3hZOGQ0ZkZsbGZUTkUxNkUwMkk1bWpl?=
 =?utf-8?B?aVdmOW9ETWNkVWx5Tk5Pd0dJbE15c2F5SnB3ZXIyNTBFbDd3a1g1L3VYVzJU?=
 =?utf-8?B?K3BLYjhWQ0hVVHFPaGxXak1IRUZXeFpiSU9zN1QxSW04UUlZaGVYcUE5S3N0?=
 =?utf-8?B?Q1RLT3lDVm9LdDI4cC9TNU9JSlhUMGRhd3VRZHhLZWJydS93aFNIUys5RFZt?=
 =?utf-8?B?VHljWS9IWUt5Nnc2V1p3MVJ1ZWJTL0Q2QjV3RHFYZ2hxbHp2cTNES2FPYTlj?=
 =?utf-8?B?aWdkOWd1SzNTa2VTeHhiR2d5cFpralNDdHVVMHRyQWduZWJXajlRdjU0Ykhk?=
 =?utf-8?B?MlNnbkhxdmVlcEFKVTlEdXhWY25JZWl6emZ6SzZyYWUvUGsxVjdiek81M0NH?=
 =?utf-8?B?QkExS0lKUXRIK1NTQ0FCZkJEZFB1ck8yYlBmLzhrYXNSK1QzczZxZnhWMWFM?=
 =?utf-8?B?a1NQYjdvY3VYak1pWi9WRzF0amo0MDIrTFV5SWVNT011U0VwSHZHU1NKRWdh?=
 =?utf-8?B?cVRwZkVXRHVqSHFXdVMxSmV1RERZZjJXcGM1RmFHcjlNbmsyRnhQVE8xY2R3?=
 =?utf-8?B?K3k0eVhBNzdEcG0rKzFBVFFoZi9ELzkrWEwyYTI4S0tvR0JkOStBUlpVNUhw?=
 =?utf-8?B?QlErVE9XMDQ2RE1lR2JYOURUdmY5aHMzTUx5ZERJcEd0dlEvMzFJSmVSS2lV?=
 =?utf-8?B?bmdYMDJXd3lPaFl2aDJ3L3FLYkVqMjZmVGRWQ0FheFFQd1U1ZkJwUGlaanRy?=
 =?utf-8?B?YlFQbWZRQndIWFhJOGVodHZ0VkpJeHh4ekZZd3htM2RUVUQ5aGJ3ZGpXVmhq?=
 =?utf-8?B?aEUxcGd3VHFBM1JnMEFPd1FSVG4yK2JLd0tzSnlzSExjc0djcHJ3eDdidkhL?=
 =?utf-8?B?WFZSUSt6N1lkRWlqMTd3cHVEQlpEQnVGYWYrNDFFUXU0c3VVQnowTWxNMWZC?=
 =?utf-8?B?MWJoR0JReVR6SGN5U2JCSXlaNy9lRG9lSHUwc0JwY2NId1BTc3B5THFtRkxP?=
 =?utf-8?B?aDFFQVlGa01COENlS0Vmc0YzNzlBcGViMmRaT2h2TkpOYzZzOVA3eEVxaXpy?=
 =?utf-8?B?V2MwcWFkeFpvK0RncnJEYjdSc3lZVnJkUGZhbmtQYSsrTDVuVlh0ZEFhV2Zo?=
 =?utf-8?B?aVNNeHJjaWprbGo1MThwTmR3a0NoSWJ1N1ppMTFPNHg0dGRuYytZT0RxaWNz?=
 =?utf-8?B?SlZrQms4WjVvdVRVMUtWd2ZRdnNkaVQ3bFFIR28yZWs3N20xbTROYmd5SE9p?=
 =?utf-8?B?R0V1Y2xYeWRjRENaMk45UDZFeEtBWk1GbDgzeGdQbTZDVTZiWTAxL2xiZnA1?=
 =?utf-8?B?ZlNSWDV1OENDVkMwVll4VlhVZzllcFRtcTViYksvQWMreVJ6Kzg0ZWV4RTlV?=
 =?utf-8?B?aS9Ub1ozRXhETDFoQ0NqU3NQcmlIT2VYQXg2d1JxQmVaTnNyaHgwTXJtNGpv?=
 =?utf-8?B?U09MQ2Y5b3pEeStQZndONmY0ZnREYisxMGp1dGVoRVBQdGhNeUFtd2ZJdDFO?=
 =?utf-8?B?aThJUXEvUExFRTQzKzRmVTd4SXdIandZRGl0My82SVFoVzEwZVJrSHhyTTJR?=
 =?utf-8?B?WWVNcVNWSTVWc2RSWmg5SkJwT2lXVlBWalpwUVRmQkE2eXZub3BQVEFnNVcz?=
 =?utf-8?B?V2s0Wk5HRnpNd1ZQSURDeExndGJsZWZxWEEzUjlyVjF3OHFTUy9YQnJYNXJY?=
 =?utf-8?Q?3fxnDfnFoibOml6A=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bf2091b-ea9b-4afc-bffc-08de73513dd9
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 03:03:10.3683 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wX3jL3UzyO368LkC7K9LDeBYkXUmKr9lZHK2n14kTMYK8M8+kOYHYTkHJH4EYfPlS0fxUMVXRNo+bqvN17HVDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7966
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 5D2B41813D4
X-Rspamd-Action: no action

On 20-02-2026 10:32, Suraj Kandpal wrote:
> With luminance_set which represents PANEL_LUMINANCE_OVERRIDE, we
> have another variable other than aux_enable to decide if we use
"other than" is redundant
Leads to a new thinking that is there another variable other than the 
two mentioned above.
> PWM or DPCD. Make drm_dbg_kms log represent that.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
With the above change

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
-------------------

>   drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index c7143869bafd..043c9aef2ea6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -539,7 +539,8 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
>   	drm_dbg_kms(display->drm,
>   		    "[CONNECTOR:%d:%s] AUX VESA backlight enable is controlled through %s\n",
>   		    connector->base.base.id, connector->base.name,
> -		    dpcd_vs_pwm_str(panel->backlight.edp.vesa.info.aux_enable));
> +		    dpcd_vs_pwm_str(panel->backlight.edp.vesa.info.aux_enable ||
> +				    panel->backlight.edp.vesa.info.luminance_set));
>   	drm_dbg_kms(display->drm,
>   		    "[CONNECTOR:%d:%s] AUX VESA backlight level is controlled through %s\n",
>   		    connector->base.base.id, connector->base.name,
