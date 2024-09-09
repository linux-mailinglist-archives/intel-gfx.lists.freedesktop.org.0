Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E08A3970DBF
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 08:10:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E798710E2CD;
	Mon,  9 Sep 2024 06:10:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MqBMspuD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63E7D10E2C4
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2024 06:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725862217; x=1757398217;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YDo1YT3Bd13kssMLKoUWnb7CJHOgchS0MuhpJs9gfyQ=;
 b=MqBMspuDjC6rnA6NnbuXY10wJZfb1UUQMp/vwmmV+OM3rYmlvNVr/cG5
 pUaMkdygLx0f67SOu4jQ7F2SVOaYX7l6wBRhKPejwDKG9ac2/8XiZHlw3
 2A4i8uTAmW/QGcu2vT5ffrua4k64Cp2ssbFPAhVATRl3VJSKOQEVFnpZ8
 GBpMvyBJzHFXQt8lgEGQCCCAMMd5lCjRwHop6EfUCId6urO8rLqGP8C7u
 tl7zHNhUrowjbZGBzsFtRBnwHN37cF2RiYjRs2VCbUWovT6nUxiv7DBJM
 B1gEQtx405cHS/EP/+IlpJMM7tQBgHUm2ipVu5NjYt6yXdFFp4PhzCmnM A==;
X-CSE-ConnectionGUID: elzyYdi2TjmPM3l+CT3WoA==
X-CSE-MsgGUID: JlPUjk1tQbWiVbl42bo0Zw==
X-IronPort-AV: E=McAfee;i="6700,10204,11189"; a="24477111"
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; d="scan'208";a="24477111"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2024 23:10:17 -0700
X-CSE-ConnectionGUID: f2kJBi+mRsOAB8JeauZ55w==
X-CSE-MsgGUID: klm5vOzBRM+LLFYvEYRVJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; d="scan'208";a="71327489"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Sep 2024 23:10:16 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 8 Sep 2024 23:10:15 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 8 Sep 2024 23:10:15 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 8 Sep 2024 23:10:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i4UZQBJp8908gvtkWHsDIlJoormPqYVXwhn2hGQ9eAPvTFWgI/MVfPizxcn5LTOJ+jpwwADCS7n1ISFKQU05Ge6qJ8nZReqQydIhok/wU5nLLMUrtJ3uK7jcIjzxtatA6UvA4mZuhgyyQVcRNvikEdODCQePgFCa2j8F1eLpSlXPeThAOrdrmlwp9mrEBIYoit3uvJuzvp1DD1M48IMgeoGprRs+guWCZ3cO+yrHpOfFriib3zY56PABHEttR/UUKc2iekRIeOosBHvBwMO/ul8sQIarfpTh7rn6C2VSLqNfZiVtZ5YeEjKBo5Bvbqzkr8RIraL0UKy9ZLh/j7hJLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uvny4DStZxTAWzX7vchxReqFiNphV1th11YGPXyunYk=;
 b=TTlaq+uNXRea7jL/+76NKFQAKsT8uSFzMYGnktbjGYzEXohTomGwjEDHy4haXf9ZcwZWAavp2SSDn61ZNq8WuBBZ9HrW5E8MXoxSEmdOctnVg+oIiBRGNZPM+rGZFlywpHDC9WP7cvAuNY6SqNWcR00vq5/Nw+m5kABYcBODFLevS2toVp0xbco+x54EtaDDTqZxrMMLDQdDflilRyjvlrMF/U+EAY5JnklGMxKWA3xdpJUQcdcXJN1wkbPjrrX2PHUCmwsCfcn0U0NzzWXMCkSoJmqylGJR+TEyyPD0Eg99A7dhsOIB5AyefM8Vv7j/9SNVLC6ITndPhGjG8y8WQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB7431.namprd11.prod.outlook.com (2603:10b6:510:273::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Mon, 9 Sep
 2024 06:10:13 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7918.024; Mon, 9 Sep 2024
 06:10:13 +0000
Message-ID: <ffdf83d7-c9bb-470f-9b68-28d074f36e0f@intel.com>
Date: Mon, 9 Sep 2024 11:40:04 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/14] drm/i915/display: Use joined pipes in
 intel_mode_valid_max_plane_size
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jani.saarinen@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
 <20240906125807.3960642-4-ankit.k.nautiyal@intel.com>
 <ZtsXFNV4bxJQPE1r@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZtsXFNV4bxJQPE1r@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0077.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB7431:EE_
X-MS-Office365-Filtering-Correlation-Id: 234b4513-78d1-47a6-2ef2-08dcd09610f4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YXVlZXBQUlBQazhSV1FnTisrZ1U1dUxjZzloaDMzd0t4Q0xPaVZ6Mm95SkVZ?=
 =?utf-8?B?eHVWcW9hVjlDMVMzd2JFdld1OWFaZmtmcUU2ZFowdUtBMTJrNDlEMndvOWdk?=
 =?utf-8?B?d1NYVjhmMUZ6UTZEdVFJejdKK2NZcXBEcEYzMTNQR2FmcXVKZEx0YWdobCs5?=
 =?utf-8?B?YWsyUGczeVNtUlE1MXBqUDRPK01ydUtJdE82VGJCZU82MWhYdzlpQ1UxQWlw?=
 =?utf-8?B?NWVrMklNWnZEMHhMOEhWYmprVkoxL0J6a1IxSHVHcmRaZWFPZUxCU0MzN0h0?=
 =?utf-8?B?TUVGM2ZkR0dRNFB5aXlpNkRGTzkvSWlsV3R4MndMRGxrN0wzd2VOV3ZSWTdn?=
 =?utf-8?B?SmtzaEE3VStoRnNyRUtFdGZ5M1RYQ3QxZXozTnNtZEhtaFQzT2d1Z3ZOMnAv?=
 =?utf-8?B?K0xjRWc1d0tCVm5aaCtUNEtMVjBXTlppUHJjT1FILy9BdWVWWmVMdDJEUkUv?=
 =?utf-8?B?MmtKZEpvT3pmeGlMbXgyNTYyalhnTGxGcExWeDl3bWFDTkFSYitKb2JocDlG?=
 =?utf-8?B?cWgyVGlFL2poWHlyN3RpNkRIeXV4cWpmZHIvSzV1TFpHWjBXQ0ZlcnJ4SEJM?=
 =?utf-8?B?RG9nWEZybmZYUWpSeXNJQUhWaE1VRndQdElJanFuYW9UNEI3cFVFRWF6V2pt?=
 =?utf-8?B?S3BQZHFYWWZGdlRnRnh0Y0tNMzJkUEtsRHBqMWNkU1hnTjhvYmtsQXZaQWVU?=
 =?utf-8?B?T0w0WHF4WDY2WHJ4WTRUL0hqdlV3STlvRjV2M1ByeEE1MXlOZnl1aTBhMisx?=
 =?utf-8?B?MmpPbHBJZnR3TlVDRVBOMWNjemJEUkt4L3VpL3h3bDZ2VHNrOXNHRWNqUmY3?=
 =?utf-8?B?cS9ZYWlwTW9NTU9TaEIrRXFxcUd5OG9KaVJ2Q3BrOFJqU0VkZXRFNGo2bE0v?=
 =?utf-8?B?c21ac0h0Ni9McVNGeWZwU3gvaERZV0NudW00SXg2bXJMZUJUTjNBRVFSQVpP?=
 =?utf-8?B?elIwRkovUlNEZWM1Q1U2OUdZSU42dVMwTFpRSDRqNjlFSWU2dGFaVjlzTG52?=
 =?utf-8?B?Q3N1OXdYUTh0YTF6U2hsVkVhNCtZWk81WG9pMGF2RkU4VTBXcTB3ZDNBc2lU?=
 =?utf-8?B?cG1FWnVDZjk5UC9LakZIV2x1K3pYWE9jUFBRWFNCK3hlNVduWnQ0ZDhUOGkw?=
 =?utf-8?B?Y0VvRjc4WklabzkxWmJGNnVUSWpmdlhwK3lPSTl5a1BsbFJOQUU2Rm15d1Bh?=
 =?utf-8?B?ZXcwS3NUMUhTUlRPVEJTZWNpNzZnVkxhWGV0dEU4RG00a09QS3ZwYklaZk41?=
 =?utf-8?B?VVh2dkRZdnc0emQvYXN3Zjk3bDFJd1o3YTZWd0dwZEgrdTFycUxxb2V5YWFW?=
 =?utf-8?B?VDlZWFYwdFdUVEpKOGNNL3o2d1Z5MlFrRSs1RFhVSHpDVGhyOUVKOTVHOUVp?=
 =?utf-8?B?QW54eDlGWFhaTi85c0NqSytabHIrbGVwTHQrYWt6TTJjeVNDalM4RnRvNUJ3?=
 =?utf-8?B?Q3hkTVRJR2kxYUwrQXE2MEFSc2pDazRMMXlZZFR4R2pEb2JnM1RIMHpJYUpo?=
 =?utf-8?B?MUx0TFA0TGdkYW5DdEdEMEFKaTdSR003M2tSUGFTcTZHUkRDNWJhTUJHU1NR?=
 =?utf-8?B?bGM5TXlWWXkvTmh5bmM3WFZWWkRFeWo2UUVuT3JFNjJRNVJKZzFWZzYyVlEz?=
 =?utf-8?B?ZWd4LzJWcnloYm1wY05vYWNUcWgzKzZIR3dFMHBTamdLTGZCVkMrcTByMGpO?=
 =?utf-8?B?UmxSVTliMkZsR2JYTk5oY3J4OHNaTFZPcFlWTFIzaWVxSU5ETFNRb0xMekMv?=
 =?utf-8?B?akQ3cWw4UVE5cWNrNjJQdzZQRlVmQ1NQQ0FnaW8wT01KNnJZMmU0WW5LeEFP?=
 =?utf-8?B?aE5hdnFjLy9lWmZXTnlRdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q0NJVjBQQnhPdmVkZzFUTHRwcThnYnVMNkIzMGlJdlN6RjBCK2RwSEQvanRS?=
 =?utf-8?B?cFFPQ09pUDRoV2taTWVLM3FKSy84VHFONlcyMkZYaTVKbnUybkcrRFlhdUdE?=
 =?utf-8?B?MHp0MEN0Ly94WEJvNDlOb0Z1OGcveWJDMy9sRVVoMXhzZVU0ZlZxY2NzQ1pq?=
 =?utf-8?B?V2QvUmVZWjVTRmo0ZnBFVmI0Wjd6VXNjSjNuQmhCOE1HbW9nZDQ3Q2Joc2lT?=
 =?utf-8?B?SCtkSHBmWVNEcFFRd0xTUHJvSWQvSXVsa1ZNYU45d2JwbzJQbHAxeEQvMjJj?=
 =?utf-8?B?MnFrS2M0bmhXazlEZFJXWTE3azU5ZlNsS0NlQ3ZsYWduOUFPM1VGQms5c2hD?=
 =?utf-8?B?S0xaSC9FRENINzlRZmc2NmQ4d2NpYU94anEvMVlPWWVYTjlaQU8yQWNlU2hS?=
 =?utf-8?B?MGwxMDRKeGhMOUtVSy8rNnBNS0xDR0s5aXJpTkErQUorYzNMMDZ3U2M5cmc2?=
 =?utf-8?B?L1UrcWVPTGFsNUMxeFZCeEc3S2c0c3prRlVxVkpMd2tFMkREaU16TkY3UUxK?=
 =?utf-8?B?eXlTS3RZbTY0YlBLZ3E4cXVuSEpDcEF1bitmVTVqZHBqTWxScVlqdVdGM0Ni?=
 =?utf-8?B?R25sVlp4Tk9SSkl3UkpteVJMdzdzSDRhVG92aUZXMDBpMU93YmxDV1dSMCtR?=
 =?utf-8?B?UHlWZjVjejNmNlh5NnM2Q3dBMHZmVUN0WXF5YnMvMEFKZk1TKzQ0MldySVZM?=
 =?utf-8?B?SmJZcEpjcFptTWdneVd6Z3ROOHN6eEhlZzNVSG1XKzlvelAwTHZyZU1FUDcr?=
 =?utf-8?B?T0pNdXV0Y3ZlUEdOSUttTXZTQk1tQk1nNEFUc3RteFJZamJ2SnNmMXQ1TWZs?=
 =?utf-8?B?TVRSSVo0VXNNeHh3dnR4MGV6Rm5PWlBXRFRWdGw5Smk2OEZ6NEpmZXNOZ2pL?=
 =?utf-8?B?SS9DMldHTG1hVTRSQXZtMVRZTmNzUkt2ZFZEbEhSdHRVZ2gzN0k2VTVuZ0Fi?=
 =?utf-8?B?THRycHFJbVRXZkJTc0RhRjIwQ1dEck0xT3QzTHRCcE1BYWxDa1M0UDQ3NklK?=
 =?utf-8?B?Z1ExTkwrRS9qNlgzc3pCaFpiRTVlTlR4Q2kvaUtBcjdjQUJKbWFhTXV2VzNH?=
 =?utf-8?B?UHNoRFgyZEZLWDlycHhWcE82a2oyaXpaUXoyb2FjZTJHZEg1Y2ZsN0tRL2ZE?=
 =?utf-8?B?N0hNSlJVVEVqVkF4QXB5UnVGSnRTVVlxVktpaFpTNGRQd3l1eHUxTG4wNGRv?=
 =?utf-8?B?emp1SEpXS2NHR3RjYys1SHpubjRsS1MvcVJCWjZyakd1SndRNklmdlBGYXVE?=
 =?utf-8?B?SEJGUS9XQW9yc2pocDkxdUZOaUFoWXVudlQ2S3AwUmxuMFhGelcxSFdONnRP?=
 =?utf-8?B?SzU4bkNGa1FYUWJjYXpZV2tRRTBNZEpNV3FPcGFhOE9uekF0TlRoaTlhTkt2?=
 =?utf-8?B?UXJGNld3d05lRTFIa1ZwVHVaSExDQTQrN1hYOWZSOXJoSmZEWnNmbXhVRHdF?=
 =?utf-8?B?aGhRbjdpVHlhZzJpaGh1TDlnSXdOK0RqMnhSandPcmI4cWhmL29Qd0U1QWZT?=
 =?utf-8?B?UjNJWVRKN0xmSmdWSFVLRTN2L0RsZ2t1NFNNRlV4eFJ3Sm9iMUMwSkFWUDM5?=
 =?utf-8?B?QUluaHdCVHVBdjZMTkpUQmN0QVRsTGxmNGpnaTNmK3JrWFMwYjVJVDlncjFq?=
 =?utf-8?B?SWl2NGZJcEFrVzFkL3p4eVArYzF4cmoyNTFrSDhtZ2J5cXpCWWJhMDdUVS9y?=
 =?utf-8?B?bTgraDd4enlWU2Y2WHFaUWg5SzVpV2xGQjhJRC9YSytyK0gxK09qdDJRUHhi?=
 =?utf-8?B?dk9RQllJSDZXVEh6T0RNQ2tQbm9vbnlxU3F5eW42TGM4c1lCTmsvd3BCc1Jj?=
 =?utf-8?B?ekZtdnFMZTR0U2tXWmg5dnpNR1A0NC9NRjkvbVZuZjdqUVQrVnhzVnpCb0hD?=
 =?utf-8?B?K0FYZW5kUnFtT2pTcU96K2dxSmdEQVIxb1dCYXlxTTBjdmZ1ZDE2YTlCMVNO?=
 =?utf-8?B?by9hNmZGV3RnYnZaR1hBNUVMQnVmN0JlY3RVcGgrVDE3dXh2WmFDaVkxNGtp?=
 =?utf-8?B?M1I1NGJHM1ltSTJpUGppM1VKNmtvck1sSnpJRFo0OHBNN000TVpXMUxLQ3h0?=
 =?utf-8?B?bSt3Yk9vcVgxckxPVlRKTmlHKzJ5YVVqMGhJZlBzSkpuS1AzZEdiYXVTR05K?=
 =?utf-8?B?ejVrY24xUlRrY3c5TUVSdDVLazI1R01GZTVmMDFNMUZwRm44Vkpmb1duY3Fp?=
 =?utf-8?B?VEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 234b4513-78d1-47a6-2ef2-08dcd09610f4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2024 06:10:12.9014 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L2SwzA9BpJLt8195VBs5xi2ncKoicj1rrM6C9aVL7BHnOvercy8NvOOLX+r5dO/FtyB+eK8qBNyQirDwPooRDmBhF+db8A6jdR6Tld6fldY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7431
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


On 9/6/2024 8:22 PM, Ville Syrjälä wrote:
> On Fri, Sep 06, 2024 at 06:27:56PM +0530, Ankit Nautiyal wrote:
>> In preparation of ultrajoiner, use number of joined pipes in the
>> intel_mode_valid_max_plane_size helper, instead of joiner flag.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
>>   drivers/gpu/drm/i915/display/intel_display.h | 3 ++-
>>   drivers/gpu/drm/i915/display/intel_dp.c      | 2 +-
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c  | 2 +-
>>   drivers/gpu/drm/i915/display/intel_dsi.c     | 2 +-
>>   drivers/gpu/drm/i915/display/intel_hdmi.c    | 2 +-
>>   6 files changed, 8 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 82492ee6c2e6..257e479310c2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -8088,7 +8088,7 @@ enum drm_mode_status intel_cpu_transcoder_mode_valid(struct drm_i915_private *de
>>   enum drm_mode_status
>>   intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
>>   				const struct drm_display_mode *mode,
>> -				bool joiner)
>> +				enum intel_joiner_pipe_count joined_pipes)
> Make that 'int num_joined_pipes' everywhere and I think the results
> will be far less confusing.
Got it will, as mentioned earlier, will get rid of this enum.
>
>>   {
>>   	int plane_width_max, plane_height_max;
>>   
>> @@ -8105,7 +8105,7 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
>>   	 * too big for that.
>>   	 */
>>   	if (DISPLAY_VER(dev_priv) >= 11) {
>> -		plane_width_max = 5120 << joiner;
>> +		plane_width_max = 5120 << joined_pipes / 2;
> 5120 * num_joined_pipes

Will simplify this, as suggested.

Thanks & Regards,

Ankit

>
>>   		plane_height_max = 4320;
>>   	} else {
>>   		plane_width_max = 5120;
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
>> index 3b90c5190d65..c0f8bb7e5095 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>> @@ -31,6 +31,7 @@
>>   #include "intel_display_limits.h"
>>   
>>   enum drm_scaling_filter;
>> +enum intel_joiner_pipe_count;
>>   struct dpll;
>>   struct drm_atomic_state;
>>   struct drm_connector;
>> @@ -415,7 +416,7 @@ u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
>>   enum drm_mode_status
>>   intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
>>   				const struct drm_display_mode *mode,
>> -				bool joiner);
>> +				enum intel_joiner_pipe_count joined_pipes);
>>   enum drm_mode_status
>>   intel_cpu_transcoder_mode_valid(struct drm_i915_private *i915,
>>   				const struct drm_display_mode *mode);
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index f95b62a026b6..71f33470f7a8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1402,7 +1402,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>   	if (status != MODE_OK)
>>   		return status;
>>   
>> -	return intel_mode_valid_max_plane_size(dev_priv, mode, joiner);
>> +	return intel_mode_valid_max_plane_size(dev_priv, mode, joined_pipes);
>>   }
>>   
>>   bool intel_dp_source_supports_tps3(struct drm_i915_private *i915)
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index d3ff22f53fd5..9aae14a2ed15 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -1525,7 +1525,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>>   		return 0;
>>   	}
>>   
>> -	*status = intel_mode_valid_max_plane_size(dev_priv, mode, joiner);
>> +	*status = intel_mode_valid_max_plane_size(dev_priv, mode, joined_pipes);
>>   	return 0;
>>   }
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
>> index bd5888ce4852..92b3aa25366a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsi.c
>> @@ -76,7 +76,7 @@ enum drm_mode_status intel_dsi_mode_valid(struct drm_connector *connector,
>>   	if (fixed_mode->clock > max_dotclk)
>>   		return MODE_CLOCK_HIGH;
>>   
>> -	return intel_mode_valid_max_plane_size(dev_priv, mode, false);
>> +	return intel_mode_valid_max_plane_size(dev_priv, mode, INTEL_NONE_JOINER_PIPES);
>>   }
>>   
>>   struct intel_dsi_host *intel_dsi_host_init(struct intel_dsi *intel_dsi,
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> index 869fa00f7ef2..21b72a0bddea 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> @@ -2057,7 +2057,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
>>   			return status;
>>   	}
>>   
>> -	return intel_mode_valid_max_plane_size(dev_priv, mode, false);
>> +	return intel_mode_valid_max_plane_size(dev_priv, mode, INTEL_NONE_JOINER_PIPES);
>>   }
>>   
>>   bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
>> -- 
>> 2.45.2
