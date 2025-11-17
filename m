Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 595DFC62BBD
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 08:34:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BDBE10E06A;
	Mon, 17 Nov 2025 07:34:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CXu61/8j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35AFF10E06A;
 Mon, 17 Nov 2025 07:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763364886; x=1794900886;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WvjHze7wHWIL7lMQAFus1/0rDZhiqGdFPt3HjW0rA24=;
 b=CXu61/8jS+skgyd17l9Dtqwrykjji0Z0ZO0u9pg6qtytU55dSKAYZbQY
 hKZEZM/sVYMxtiFGmMWk7VYJ7VW8GDphwvXqq9/cVEwwLhmsusYX0M59d
 EjrdTgpKiIAShT7t9JTrXVEaJACVJmS3RMTPB2atGW92RtPcPSUUQBkMt
 S0w6+xwK/j22IZ+5rhaqAW8c06EDk1zHrNhqfeDTNPHYGPgo+S6ww1jbi
 Wa9F0eO3XBhYZf4b6T5PuXNX6B3O756uhCSgbcdQHslClE2Pklcy59j60
 NTBimUmSWeQQsAF4NUlxZWdXXLrwo+GUH+KWnqO+i+QykJkk0zQdlh22x Q==;
X-CSE-ConnectionGUID: L4bZAHOZRF6ww/8XuqYfVg==
X-CSE-MsgGUID: HWwlgTCdQGOvWjnxzF1AQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="67963065"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="67963065"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 23:34:45 -0800
X-CSE-ConnectionGUID: 4yPwoToDRRqV/ZRSAibGIQ==
X-CSE-MsgGUID: FYLqPpu5Qu+HXWt6p+TeQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="190393778"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 23:34:45 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 16 Nov 2025 23:34:45 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Sun, 16 Nov 2025 23:34:45 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.0) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 16 Nov 2025 23:34:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NxoUPIDBmlGQgaXIuXn3McXggHSvT9nmsex/I5fwvTVTQNgpYen/5o8gxYWyYZk2VhrXOC/sMAMjwlLGdxT3D8fro4SRIre1Kh8UGQ2mAa79Z1RwbO0OU+InejTN56+CzsNuLnZRm03sQS3FgHQyTKTvjSKphl4f+fOPkbJ25xDGrkCM5e1yZLy29gdSkG4Z5JR+mOt8pEv/4U+EqPoG24eMb8823oL/bW+taa3P6s6Ty5LgS5hSRLH1DakCHkvg49NyPBETCZ93fgSql6nhWg89PsyY5DicFRM0H9fe8OsELmROlk0MjO6qbxsIHs4/vWazhfEaGbMEgnjC16iXWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SXDkTUTeB9GNARSREiToG+RCd5q5bqCzbeyyGBkUEg0=;
 b=HMP/uxH1IM3IEjcOJhX9Y4SlNupQ/6HjBdRwCXcOKZPhmMbUMD7oN5XwIIpIGw+BRmYUbVorq9oynY8k7FFEUxYjH3WT+0QLNhSI7tzaH6fvxibJ1Dt5oBkFUttdWvru5RdO6ZRxN79kzzBctzpiQcUdRzrDtG5Fm746LkptXBWAvZ9v21C476Y80LPifO6yd5967nKbB135IsQ8nXNXuPRFj9AlzHnNOB0a5W6flO8RDtM1qGJq4f64hkR9OHi4Z9VggRhW2DfcoLob9rE38q9ynOslqg9OnpMELYDc+QJCy0Ha4tAlwOAQBfBIOAmiH1IJwq7YMOpfWpHYWdGb+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB6986.namprd11.prod.outlook.com (2603:10b6:930:56::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.21; Mon, 17 Nov
 2025 07:34:42 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9298.010; Mon, 17 Nov 2025
 07:34:42 +0000
Message-ID: <80aedd90-26dc-4edb-91e9-9c3ff08b8f3d@intel.com>
Date: Mon, 17 Nov 2025 13:04:34 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] drm/i915/alpm: Allow LOBF only if window1 > alpm
 check_entry lines
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jouni.hogander@intel.com>, <animesh.manna@intel.com>
References: <20251114052746.158751-1-ankit.k.nautiyal@intel.com>
 <20251114052746.158751-3-ankit.k.nautiyal@intel.com>
 <aRdGFoATz-liPKxO@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aRdGFoATz-liPKxO@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0250.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ae::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB6986:EE_
X-MS-Office365-Filtering-Correlation-Id: bbcd9dfc-8a9f-45d1-25f8-08de25abc5c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a01pOXVZbWkva1o2cEN0TEFZdnRJNTI3eEtvUzB2MHRRTHpBUVRLK3VmcmlS?=
 =?utf-8?B?TCsxVGxjUG1mSWJ1b2tlVjVUTS85bHFPWHZQM2o5WUh5bGtJUVpwMm1tVTVS?=
 =?utf-8?B?enVDYUk3YnIzcDljUUZXcXMvRzR5UUVsN0dzUW8rRlBiV3pmb20vbE03U05W?=
 =?utf-8?B?bHNJMkh5RzU4czQ5YlFDbkNvQzZaa0svN2MwQ0ZYczkzcXZFUDErdzhVbFFB?=
 =?utf-8?B?b0hadjd4UUNWUGlleWdkN083L2FsZXc3SkNxbTZyUUU4d3djYndTK2VZcXhW?=
 =?utf-8?B?SXJYQlFFNk5QK2FIN3BMUFpQZmFWVmE0RCtWc2ZlUXg2eE45SGNUUGM5SU94?=
 =?utf-8?B?N0hnZSt6VGVaeWZrMkpoR0ZIdzJMeEp1bWVjU1ZGbE5oMkNhcmhIMVlCZFRt?=
 =?utf-8?B?VmtoL1cwSzhYVWlUNG9ydUxhZmRFaU5qeU8yak85dHA3NWZaMXU2NFQvRmV1?=
 =?utf-8?B?enBoOUVYTll4NXovWmpKTEpzNDRPSnEwRnM3enIrb0txbHJOSUJsYzNjN0xE?=
 =?utf-8?B?L3h3cjkxVHJZcVJiRjc5NFUzNG1BNjJJTlB1dDYxRGR0bE9oR011Q3hOekFo?=
 =?utf-8?B?WUxSYXJJQ01LOVBOUERLODNvVjhLVGdXeHRVRG0vbjk3WFM2ZlpmZURwYmV1?=
 =?utf-8?B?TmMvSHN3c0FUVGV3ajVSTXZOS2QrcWFqc1cxQUlSdk1jd1BJN2ZpZGkwSmVi?=
 =?utf-8?B?MXVwN1MwVW1mVTlhR0owT3gxN1cyMm1TRTNtVDc3b0lWcUF1UHBFRFdZTmNz?=
 =?utf-8?B?K2ZQT2ROcmlTRlVUemlHd0V0clNuVFA5ZGE2bHRvRkFUWXU2cU9pZlhDR1NV?=
 =?utf-8?B?R291TnVTVHVRekl1T3JIMmZSV1d4MEY1SGlnWUNhYU5FUmxiUytUajdnTmtM?=
 =?utf-8?B?REVFN1B5QnF0aWxlbDNOUTZYYWNTRTdIVHZJY1UzKzF0OU5pV3phaVdUYlla?=
 =?utf-8?B?WkN1aU9GUTZmSnZaUFN4YmVia21Gc3ZqOUsvZzdaT0dIWG04Y2FOQnhpOW9J?=
 =?utf-8?B?alZPS1dGbjMrQllNS0hnSnI3NXcrZWdqelFRZnpKK0ZJRUp5SzZHVzNXUVRN?=
 =?utf-8?B?a1NkSXlTUHhia2JBMWs1aFJkZGV0ZUNnTGRnUHhzSUJmL0ZueiszUnJiY05U?=
 =?utf-8?B?SnRyVGtVK3kvT0gxS3Y0TzRuT0pTZ04vVmt4Z3hUMjhhMVRaOHZuRGh5cW9k?=
 =?utf-8?B?WDU4cW4yNnBBVWVGME9nOWc4VWd3RFcrRC9HYjBZTlFCcXk5bzRVVkNXbjZR?=
 =?utf-8?B?bis0eXdmMzdSZlJmVXEzV1VRUWs4SCtOK0NNL3BVSHpSWGNmRzcwVGVESWJF?=
 =?utf-8?B?bllTMytTS1EyMWVQVjBueUNSeEJzQU5zVWJqUWc3cmVVT09WU3RjaW5rZDlN?=
 =?utf-8?B?MHZ3ZXFzanl3M2Q0WXg5U1VNblBOajVOZ0pvZ1BJc3hoZDVuaG54cmI3UzBy?=
 =?utf-8?B?elQ4azNKZ1dYMXp5ZVB2elpvQkdQcHZ6VWx5NG53ZG9oTU9hR2g5YkIzODR4?=
 =?utf-8?B?ZWdwbFdONTd1TmxSWU9sTlNrVEV3T1hFOGFBM3RUQUc1RldpdnNBMW1kT1dm?=
 =?utf-8?B?bmcyNWZ4Wks5UUwySjIwYTJIdjZHRjZOV09mTHVIQVRidE5SZlQ1L0ZNYmFR?=
 =?utf-8?B?RFpSSFhEampJWEFwaFlSQ1dLM2JWYnM4dXR6VFFUVlF6aHQ4bC9jRkVScWNU?=
 =?utf-8?B?cW5Rd1ZWWXp5bW9oTzhTQWxxRm4xZHZDcjRWem9OQVZXZFVXdGx6VjlLTXFl?=
 =?utf-8?B?ZFlZWVJlSXIrQmNQN1YxbVdSSXVsY08rbmRERVV5ZmlCa1VpN0lHaXVsQWta?=
 =?utf-8?B?S0NHVDlXTGl3NDVjeVJtYzJUaWJqSVBKbzVyWFg3aFREYzlxaHJWUm5vZkFk?=
 =?utf-8?B?dmIxa2FZZGc5TWR6b0M3S1BEekY3eWU3Nm95YzNZSU9vMWI2bmRaSWhueWRU?=
 =?utf-8?Q?th9Nx7oh1Cw9gM/ej0PvJqZVpb01lBa3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S0JUb0E3Lzg1UHpHVnZIU3A1WHp5NlJVOXhLQW1rNjJyY1BPQkJkY0JLc2E2?=
 =?utf-8?B?L3R6UmdKSm9oZjVjREI2US9mQlp1Y0hGM1JGblZkOStKa2Joc09Jd2xUenpy?=
 =?utf-8?B?Y3ZQdTdGcE9tRDdzQ1dhK3dBajhlRDkwdXg5TGhBcHNRTnA0b0FPZ3gzdlkx?=
 =?utf-8?B?MmZQV3RwYlpDSE50Sm5uTGJTV0RReGVZd1Q3aG9rUUxJMXN0ZEZUcmN2SEdq?=
 =?utf-8?B?MUJYZW5pUllmWmNzakE4SXpIOTl4ZEM1eFZCdzg5NXY0SkxBeldKeTZaakJG?=
 =?utf-8?B?WlYxV3JxSTJYVjZLbzZBZHZDdTVIV0xyREorT1piOEdhQkV0c2RNbGpoYkpZ?=
 =?utf-8?B?b0thSEZ6U0NHVFRWd3BtU24vdm5sTWE4YXJpSjRxdDA3RGdRaTRKeUxNeTRF?=
 =?utf-8?B?WW5DUng3ZEc4RlJmK2RCT2tNZkhTQ1M0djU2MVlMUkl2SElaam5vekV3NHQ3?=
 =?utf-8?B?RWx6N1FDYmxKaTBNRE5NZS9KWGJrRi94OHdoc2dnU2FPL1ZoZHRoaEtNRzFO?=
 =?utf-8?B?bytDZkRITjQ1ZnpQbUgyRVJmS1VySCswQ2JjbjBUYVR2UkdYdnlZdjZKaDRl?=
 =?utf-8?B?WVJDRzFMRy9YNXp0MEx0TTNaNllKbis2N2JnT2s0dncxV3FXNHBselRjMWZw?=
 =?utf-8?B?S0Vkd0tZQUF3b1llVGVqZFMrYWp5TENOVFcrZzRKWkE0dWdDbyt3TGgxZ21U?=
 =?utf-8?B?YkJKU2xIaWRTSjlLckhIdmJqVmEwR25LTmhGcisvM2x1SWViNU80akppM1gz?=
 =?utf-8?B?L2FUblhVMW51TUl5Y2JURlZTeDJrZ2FqT05MYXpJOHpsTU9GOU5ybEg4TGtZ?=
 =?utf-8?B?Y0txL0hJdHZ6Q2RHN0lySEU4MTRVaXRLR1dGNnlTV2w5UHExbmV6Wld2Rkxj?=
 =?utf-8?B?YmVwT2Z2ZXFWY0ZvQUhDdXUxVUR6NXNFaUhzaEdSZ05XVkVPbmNUU0RDd082?=
 =?utf-8?B?SzRyUkFhV3JRdzliZ3JHNmd0TURkQXVjR1llYjQ5Rmt3N0kvb25QMVYycXJW?=
 =?utf-8?B?czVhL0JCb2FUcDZsOWFwYUoyZkpyTUIveUtzRkc1akU3d282eVhudXd6Y1A1?=
 =?utf-8?B?SWFyVHZnWVVYeEt1THZWWmZhSUZGSytPSWtnSmxyNklQS2RuUHE0NnRCdWx0?=
 =?utf-8?B?RFJnUGlCS3VTMTVYaUJuamVjRkhBbDA5NkRVSVFwbDExaWp5TUt5Z2hYMWpt?=
 =?utf-8?B?MUNMOXZlYXAzV0FJL29ZTjlLUzhVTVpmSTlRU25oVDR3MTVmQWlsMHJzanY2?=
 =?utf-8?B?Yld2MFo4aDNLbmMweVYwMnRRdm9Hb0EzNCtYYXFkU2tXb1pNOHhTTXVhVHNs?=
 =?utf-8?B?WU5MRVl0VlIwUkhlbWt5THh3NWlEckwzaytJVE50elBJTSsvRUU4b3JYTFdq?=
 =?utf-8?B?NjFqa1FZY3BaZUt1V1AwS3NkRitnd2gyeXhqTGJMODlBZ0tPekhHTjBsZDFF?=
 =?utf-8?B?ZXM2bXMyUy9wS2RwNFJQWGtGcFZSSUdYUnk2amFGS0VDZlNKMWtwZU55MFhy?=
 =?utf-8?B?Vk9pL1ZUOVV2MEpqS004RmFrU2wyYjY5SWlndlVyK0cveUJ1dmthZUhWK0Qy?=
 =?utf-8?B?QldQOGZ4K3BNbS8wUC9TRWxnZW5BWk56ZTltY1FFWE9EVjNBTjZIU2k0bFNN?=
 =?utf-8?B?dUg1dzVLaUR3QlpFMGEwRE5MWHREdE9JTjNpaklkSDZHdEFMSlBXQnA0cERP?=
 =?utf-8?B?NHc0c2RTRzcvOGs0VzRGVWJLdkluemZuRWpLUmJocHdyRVdOUTA0bkY2TGEv?=
 =?utf-8?B?ZjEvUm5YOW1LdVp4eitNdXdsbEhYWHFOOTJsbVZXQ3FDQkRoVmpUSDErNTI5?=
 =?utf-8?B?Z2JwNjMvQTVpbVhQWjJBL1lyZERSTkdlWW4vbUorc0hCMndEUDhyK0c0b1gv?=
 =?utf-8?B?V1BCTkFaNzhSNXlUTUdBTGRBUjhSRENZVmx4cUMyNmMzSnY4a0hoVDl6dnd1?=
 =?utf-8?B?MmJxQWJYYW8wY05DWDhEMVc2T2JMdW9lSHk2bjdyNE44bkljVDJpWUVRZ2VS?=
 =?utf-8?B?YndMR05hUzFXYjQ2S1lWTW4wN3d2aitORThWRkhVY0hBTXBSTmdkQmV0MDhr?=
 =?utf-8?B?TkVpcjdxRjlNVFhFOTVwV3BzdzZGR2NCUHFtS1k5cG90aDZhdytYOWliTXhG?=
 =?utf-8?B?ZEplcklvcURFSUN5QXlTbGNZallqWjY0Zi9vSGNveVFONGdqY2IxcU9JcVNs?=
 =?utf-8?B?Z0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bbcd9dfc-8a9f-45d1-25f8-08de25abc5c7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2025 07:34:42.5667 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vQjZAHV6f1M27/TbBJnwE6xQQp8vVCFzL+EY0GOb/Q0hFX8/ApkmxZufWu1HLjbdHolTaOfr5+LUfIUI6Snys1OSkt/mz0q/iP+xlp/tv38=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6986
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


On 11/14/2025 8:39 PM, Ville Syrjälä wrote:
> On Fri, Nov 14, 2025 at 10:57:43AM +0530, Ankit Nautiyal wrote:
>> LOBF must be disabled if the number of lines within Window 1 is not greater
>> than ALPM_CTL[ALPM Entry Check]
>>
>> v2: Consider the case where SCL is in the active region. (Ville)
>>
>> Bspec:71041
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_alpm.c | 22 ++++++++++++++++++++++
>>   1 file changed, 22 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
>> index 98cbf5dde73b..686e4d13f864 100644
>> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
>> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
>> @@ -263,6 +263,23 @@ int intel_alpm_lobf_min_guardband(struct intel_crtc_state *crtc_state)
>>   	return first_sdp_position + waketime_in_lines + crtc_state->set_context_latency;
>>   }
>>   
>> +static bool intel_alpm_lobf_is_window1_sufficient(struct intel_crtc_state *crtc_state)
>> +{
>> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>> +	int vblank = adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vdisplay;
>> +	int window1;
>> +
>> +	/*
>> +	 * LOBF must be disabled if the number of lines within Window 1 is not
>> +	 * greater than ALPM_CTL[ALPM Entry Check]
>> +	 */
>> +	window1 = vblank - min(vblank,
>> +			       crtc_state->vrr.guardband +
>> +			       crtc_state->set_context_latency);
> Dunno why you have the min() here? guardband+SCL can never
> exceed the total vblank length.


Hmm.. for PTL+ platforms, the SCL can be in vactive region, at that time 
SCL + guardband will become more than vblank.

In that case window1 would be 0.

I believed this is what you were pointing to in [1] or did I miss something.


[1]  https://lore.kernel.org/intel-xe/aQM_VK0wTlEiub9O@intel.com/


Regards,

Ankit




>
>> +
>> +	return window1 > crtc_state->alpm_state.check_entry_lines;
>> +}
>> +
>>   void intel_alpm_lobf_compute_config_late(struct intel_dp *intel_dp,
>>   					 struct intel_crtc_state *crtc_state)
>>   {
>> @@ -272,6 +289,11 @@ void intel_alpm_lobf_compute_config_late(struct intel_dp *intel_dp,
>>   	if (!crtc_state->has_lobf)
>>   		return;
>>   
>> +	if (!intel_alpm_lobf_is_window1_sufficient(crtc_state)) {
>> +		crtc_state->has_lobf = false;
>> +		return;
>> +	}
>> +
>>   	/*
>>   	 * LOBF can only be enabled if the time from the start of the SCL+Guardband
>>   	 * window to the position of the first SDP is greater than the time it takes
>> -- 
>> 2.45.2
