Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B641D9B7BFA
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 14:44:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50B3110E18A;
	Thu, 31 Oct 2024 13:44:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IEjNq/ZI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9278010E18A
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 13:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730382260; x=1761918260;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=1Z0lVCVofiXUp9JSizBzZ5Jbqv6V+FgPZ73Jv5BnZtE=;
 b=IEjNq/ZIPuroOXrLXvBBiBjpVQxW2XavFLZvlm5SXbslJEsqL5kpSIbG
 q7mtfMAR5c5znLjAIj7qQYEmg0M8Mm+/2Ao1KgqmBLXW5/qRX+Cf8nT5G
 1K8nOh7riRhboZW7z9jPq4aPbF4cQoicgGiGbpjUnAeJsfv8n5XIKexr7
 1FeGjhRBM68o/3h1ckouGvUWk9swPNHxyjTsIikk6Snw8J/u5nhB/XELT
 XU1TLczRFMpxhvD9pf+rCyPIkhuFVh4NAYVI6pb58Fi11T4O/4sJmly7z
 dsHGwzmEPGeDrhzB7y9SChZAtP0+DeBKsGX3J6XF63Ed5aCNmeLKNBXf6 g==;
X-CSE-ConnectionGUID: S5A5ws1pTO6LPVt4Ccaucg==
X-CSE-MsgGUID: iX/Ij4upRROhKWjGprYDdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30284053"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30284053"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 06:44:05 -0700
X-CSE-ConnectionGUID: CC+QJKI7TlaY8/1YA34rOg==
X-CSE-MsgGUID: U+4OOEFDQMyVgxzKXnSz3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="87419759"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Oct 2024 06:44:05 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 31 Oct 2024 06:44:04 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 31 Oct 2024 06:44:04 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 31 Oct 2024 06:44:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yFTOngSFVfJnQQVuAJPlmYqsyGCFXnzw4KCdLxyhjrmnyOcGZkFpMF3DAPjAEGPFQEL4YvhcGoN11Aws0iDwwpCY+5RR9nlzgvUMugLO5aOukahBrArhMHW6XsdNav8aoZpOZNX0054PNvA64I2+Sn+vD0IOMoluobprKxGiwJkHHXf/gHDr0AEeb8nxdO+yBE8AHrUXczKZfVpzlatRscFgUR0yRcRGDYZg76/EhDXui3AJajLUfrhtpK2eW5Ex/HmIX7jJEws878oo2KSg1CxRqJUD18GhJhuF4voUqjFmhG5Q9T0necIzj0mMQJid1vqAqJaq68KZk2pCRfk0xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rkFr9FIe7VPIv12d4Y1S05Bh15MAMm61bG0nsWmlXZM=;
 b=vC4p19mWHk91mLUxMyYAMzUAf03U7gWWjlUJendssydVBqJPlFpRg0S9dRJRosCVVH/58AYYTDFOH/ccAgJ+aaNb0xbmQIHDziyA2CTUwLuGABCZS1FxZP8F1twP9W33XAdDJLp+kOoAoGMitu5bFuO9HlB5hxBTh1OG5ujfg+D2Mu1YcPSmYbugd7S/JzQpTaR3DQr0AsZBNyAIuAKnCjepuG9XeeTQixFRX/erSwjJ8eDytsoYZE6JCos/INXcqiWVpTFSA2jCAg2+RSIjuo6yceYNc/244rYloCko0UZ9pSIMZ+S20NKZ3J0yWl7/pByvwQ3RUCEvYFP64AyoQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by MW6PR11MB8340.namprd11.prod.outlook.com (2603:10b6:303:23e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.32; Thu, 31 Oct
 2024 13:44:01 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%7]) with mapi id 15.20.8114.015; Thu, 31 Oct 2024
 13:44:01 +0000
Date: Thu, 31 Oct 2024 13:43:52 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v4] drm/i915: ensure segment offset never exceeds allowed
 max
Message-ID: <nothvdakcxxywgnqkm36c6yshucbif6ndszhfvbgfp4aa474os@oqjrn6tgrlis>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <kjsmgowrerhkk2d7qxsbccosjb55usqhfmxse6lesxfqwxtvhu@twuaxfazvq2a>
 <ZyJKn7hbuxXqrH35@ashyti-mobl2.lan>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <ZyJKn7hbuxXqrH35@ashyti-mobl2.lan>
X-ClientProxiedBy: ZR2P278CA0057.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:53::14) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|MW6PR11MB8340:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d2b1a63-2962-4af2-227b-08dcf9b21413
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bCtRQldONFBFeGZ3QXgyMEpDTFFnam9wbi90cWdUc3ZRUHJvVjlSdVBJQmtT?=
 =?utf-8?B?Y2hGMmg5bzZ3MHZKbUZUeW5zY2VXei8xb1NsdE1sMzlXQ24yMEtnMzZRTTRs?=
 =?utf-8?B?STd6VXB6VHRQTHhyb3VwZGpHRGF1Z3lYb3pkTk5zQnZrVytFM0o5cTFSQWxU?=
 =?utf-8?B?L1ZGNStvcVIzUEVsNGRYUkFxVmJmZTZlZFRDVlNyYVo5dE83N3ROazMzT2NN?=
 =?utf-8?B?elBtaUdUWHBTUHJGS2xtbjF4TUJ5TGh2QUt2YldlbnJCMFphKzhBeW9pQ1RP?=
 =?utf-8?B?WlJ6OEk1d05JSHFzcDFZNW9iZk9PL3dURjlyTUZQK1BqTVNJanR4cjdQbUdV?=
 =?utf-8?B?TmxGMUg5aGw2aU1GTWFtMEQ1MjFvMHhaUWJMdDMvajhIMGJpU3l1SDJOL1hv?=
 =?utf-8?B?M1ZQeVZuY2ptRVlzV0NGb1ViTjNBU1hPRGQ4dnNDN1c5a0d2dzZhRXJHUXBm?=
 =?utf-8?B?SDVsWDRoNzdSalZ1c0JqTHNQT0k0VWlVOWNJSERhMDR2UTJRdUtPZXgvSUlu?=
 =?utf-8?B?YTNaT0J0cWRZN1JzbnVJY202Q3Zqa3hnN0EwMmNITlRMR2hvL3BiNCtEaHlC?=
 =?utf-8?B?dms4cEpKWWNEalpWdXByd1NSZEs2M2xqZklTalc5WWQ3bmFycDVVeTA0MmFJ?=
 =?utf-8?B?ZFFCQjRJSkFGN3cyNElzNld6a0ZISWhScVlRQmFZS2htQkNqM01aYUIvZ0g4?=
 =?utf-8?B?M08vcndKWGlPc0FmZmtrWW5vTHlXQlhoNnhWQkJrUTFLUFNSWmRzSnp2VXFi?=
 =?utf-8?B?L2MwNm5KcGN3a2ppeWwvSUxwRlpTK3REOFhFNWUydUNFMEJWWkUzYXBNdGZl?=
 =?utf-8?B?UDhUSEJJaEcxRmowWHpDc3I0NFo4OERUcnF4VTlZc3ZLQldodm5HTy8wQVhU?=
 =?utf-8?B?U0tXMzN1KzdLUWxuN2ZqUEo0TXZObklQZEZNMDl1R2hSTW9MVHM1ME92V29l?=
 =?utf-8?B?MVZneXJIYU5qVm1ic043RW5RaXpQTm1JOWVxaEZVRTNjOVY2UXY1S0kwQVF2?=
 =?utf-8?B?U051OSsvSnBBek4yQ3N2N0JrQnZUMFRaWmxXOTVHSGpTcmJLaG1PNnFTMEJ4?=
 =?utf-8?B?RXNYRGU5Mmc0K0FaZlFHRExIeUdVU0FveUdpYTR0K2MwQ3pCZ0xnc2J0NTA2?=
 =?utf-8?B?QzdhNkdESWwyQUhuT3RtQm02RDJFd21vZkZsTS9JTEphL09YOE1qaHVvWko1?=
 =?utf-8?B?UVpHSk5qcGpVOG1Sa0tpYythOFVGVVhURll0QndxbHF5cUUxM1RkNy9VMW5z?=
 =?utf-8?B?QzBuY1UvQnYvbVpsREFvOVNzQ2hwdjcxcUZ2OVpvTlh2ZjlxMmJNS2I1a29R?=
 =?utf-8?B?cVN2UFVnT3ZHSklxS2o3OEdnQlhjYTRmVWQ4MFFkTy8rUlNzemdjZU5YMUhP?=
 =?utf-8?B?K2FLdzVBZmhKOXdWR2xPaWREUWx2clR2ZXB2eDN5L2dwbHJ1RHk4aVVKM1RJ?=
 =?utf-8?B?enMzOTFOQ3ZWbWNwV0I3ZmVWQWhDV0RxYlNpSHpDNFdrOFp6T05rWFhMRDdX?=
 =?utf-8?B?Q0RJTXZrNzZxV0R4WDAwRXZValFiTHZFbXlLSmtiaktkS2ZGY0FQUUtvcjFU?=
 =?utf-8?B?cjZsM1FhRmh1KytwSjBIK0hOa2o4ZzhCMGJTTUkxZ2N3ZDRYMURlVGlDejBM?=
 =?utf-8?B?OU5nUTJBZU9NOS96NEE5OXVvcDJXU0VGU0xyRm50TzJWNm1PYnUwT3Z4TERm?=
 =?utf-8?B?V05WUmdUa0NBNW5TRUttNHZKUDhoM0tUTm9vKzhad2FsVXVYYU5xZmpWSE9j?=
 =?utf-8?Q?DfS3vH7R/NbTPcxf0wyclHbAkk8KVjDG399KVy0?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WE44YW9xVnBiNVRtTGxnRFVqSnF3S25BRDB4b0Z2SGFDaXhyRTRObzNxY1hH?=
 =?utf-8?B?bUwreVZhL2ZDaDZZOXZpZGhTQWVLSmJrNzJza1ErNit3WGIrZFlkb1VwbEY4?=
 =?utf-8?B?NjN4L2dVVFdXVlU5dDNIaVJ2Ny9NQUgwaGVPbGY3R0F3RVJsYitpUGFlb21p?=
 =?utf-8?B?MW44RGVCdnBkamVSNjk1djN4UnZpMWZpQm9FeGtzcDFKVTU3Mi81NEZQRWRH?=
 =?utf-8?B?NU9NbFZ5OTdSaTFlK0RqSUI0WWFVdnYybUIvQWNXcXA5NHJLMTFoMEpUYm5Z?=
 =?utf-8?B?NVJuTE1wanVvTVBXTlpsZEp5amtNWnVnaDFHS1FZUm5wRFZwcmRVd3gzd253?=
 =?utf-8?B?b1BVanZVcXFrV0NtaE1RWHhBbVBVbThuL2c5UnlURktHbkhacWJBS0pTYnZ5?=
 =?utf-8?B?MktMZGdlQWtZRVlqRktoSkgwb1JxUXY2NHpXY21qSDF2VkROU3dPTW1XSzEx?=
 =?utf-8?B?dW02YmIxVGV3dUVUeXExZ1dsV3JPa1ljOEZMTW80SVBJaWYzWEZIQ1c0NkVK?=
 =?utf-8?B?ZnVRM0VtWWxaRWJaTlpqa0FGZEx3VTJoTU0yWGZlV2hoalNPcGloSW1XWEo2?=
 =?utf-8?B?VGx6Yk1DaTFtOWIxdnFLUVNXSE9FNW9pcFV6bHU4YlVDUk5WQTRHY1pkVDkx?=
 =?utf-8?B?SENraXlkT0ljZms0VEtmWi9TRjU2WCtXNHlCK2VYSUloamhDa3dFQUVJZ253?=
 =?utf-8?B?RVVmUnhCdkxENEcyeVZqUHVrL0FrYTIvUGswbHMzaVV5TzcrdEpVSU5IZVlP?=
 =?utf-8?B?elhCT2dHT0hjSU9pMGZsQUpSZEdGS3AyMGdndzlHRzFNd2lNckJncmZPWXVH?=
 =?utf-8?B?ZDgrNUluU09xWFdBRTA0K3ZOeDdtMlF3d0krZjl4T2EvTkgyZGlnUjZya2dE?=
 =?utf-8?B?UCtPNmhCZHNmZWx6SzdrSlgvU2xPSDBGT2Rid3AwWDJyY3NKdDlPbGEwOFBE?=
 =?utf-8?B?eFV6U29LOHF0ZnQ2V0RIY2lEczJjYk8xc1BKU1l1VUh1bUdSNytQSCswTzAz?=
 =?utf-8?B?M2FVVkQ2NXozc2FyVUJSaDFCTEphNnkybTRwSGdWenNMemZlYjA5dlFhamla?=
 =?utf-8?B?ZEx5Smhtc1g5OG9hM2taZ2lCVTB3bTgxdzBybVZVTUFDYWNFSTR1Rk8yVmU1?=
 =?utf-8?B?MGYxN2FaSHNqRVIyTElmdmVZbUhMS21YV1BQOHpJV2FMeE9lRVRDUmJzd1VX?=
 =?utf-8?B?N3VEZnNBNU9WbFErK2RlTEdJbVNxY1AwWUplT2s5UVZVWUpUYWFLSlR4MmNh?=
 =?utf-8?B?WGZSM3o3eGFIYXBicXJwZE1nYkIzelMwa2EyWXo3RTJUYTZIQTBmcmFMbENr?=
 =?utf-8?B?R1ZVUTBYMGlYTkF3S0x1TCtDbXlUQ3VGVEJ5MFJsYUxRUkxsNWFsK3loMTRr?=
 =?utf-8?B?U2wwTTVnS2RYVlNLaEluWEQrelVwZDZ2eHNNd3orNXd0ci9PT2RXY3cwUmpm?=
 =?utf-8?B?cEpkeTUrc08wc0V2TFhRTFhmSzJkZys1eWIxblZQaTd1Yk5CYVNJNzZDNTdx?=
 =?utf-8?B?bHJ0ZXRJcEMrUUJhUkRkSXk0ZzNzZDl6Wm92UGc5dlg0TWJxVFZuVXEyeXVq?=
 =?utf-8?B?WXUrNlV5MnVRWFROaVVCM1Bzc1RxdlJYbjU0b254R3JvZXk0NVdUbDNvQ1pZ?=
 =?utf-8?B?a2NhTlVHUTFBTG5XTkR4TEU5L3JwcXV0SzdOekVIOW5SRXRtUnlkMk1jY2dR?=
 =?utf-8?B?Skt5UGkxRG1FNGc5OSs3eDFCY1BJUFFrNWNHdWJLM3FqaVdtZWwwbjg2WnN0?=
 =?utf-8?B?UGRXbjBza1pINy9uMWt4V3NBRW1QejZ5UVVRMkpqbXFGUWlDbnp0dVd1ZGdq?=
 =?utf-8?B?TVF5TUJ2VG5sMzNmQ1RYdDkrNThaV0FSdXcvUzNpbXFuWEFUaitZTmUwWTVL?=
 =?utf-8?B?ZUFZK2pNMzNINkd5dzA3a01QdkdnMWJsR3RIRGJDc0JMWlUzMW43Nzd1V1ZK?=
 =?utf-8?B?ampnOGZudEU1VEdOVEtCT1pTSWhlS2l0UExpOC9WNkEwdG1jOWV3dTFISjZE?=
 =?utf-8?B?cmswRDJQcUVpZUQ3cjlJNXhDYjRuUnF0cXhyY1FaSW41SWlnazJLTWNkR1FV?=
 =?utf-8?B?a3E4eVpBOFpNN3hhM1AxSTZnS09wcU5SQ3M1aFpuZTU4Qll2WFFRM1QrVWxU?=
 =?utf-8?B?TW8zZ0JSMEg0dUF2L3Y1NS8reHR0SWtHZVFacjQwOHZVc29ubGRjWEVBc0hO?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d2b1a63-2962-4af2-227b-08dcf9b21413
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2024 13:44:01.7047 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rtWH/2AB3F03SuRUqXngLmCpgrP0zWiJH16BY8xCWBicxBQfUe3ZQW1EaIZEgx37eMK9p8jHv2SBGFMMdMIjV2kk4HsjpalY8LgGMZ3mqzw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8340
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

Hi Andi,
thanks for review!

> > Commit 255fc1703e42 ("drm/i915/gem: Calculate object page offset for
> > partial memory mapping") introduced a new offset that is compared to
> > sg_dma_len(r.sgt.sgp) in remap_io_sg() function. However, later in
> > remap_sg() the offset (which at that point resides in r->sgt.curr)
> > is compared to r->sgt.max. Scatter-gather list's max relies on one
> 
> what we compare to max is not the offset, but the current sg
> item, right? Or did I miss something?
What I meant is the 'offset' value that is used to alter r->sgt.curr.

> > This patch uses r.sgt.max to check if offset is within allowed bounds,
> > because that max value is already set according to the `dma` value.
> 
> are you trying to fix any issues here? If so, which one?
That would be issue 12031 from gitlab, which describes failure in
gem_ctx_engines@invalid-engines test.

> > -	while (offset >= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT) {
> > -		offset -= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT;
> > +	while (offset >= r.sgt.max >> PAGE_SHIFT) {
> > +		offset -= r.sgt.max >> PAGE_SHIFT;
> 
> To me looks right sg_dma_len(), why max?
I am not 100% clear on what sg_dma_len() returns. Looking at
i915_scatterlist.h, inside __sgt_iter(), I see that scatterlist's max
is determined based on 'dma' flag, which suggests to me that
sg_dma_address() and s.sgp->length may be different values. Then later,
inside remap_io_sg() we compare 'offset' to the sg_dma_len(), but then
'offset' is used to set r.sgt.curr (so it corresponds to the current sg
item, right?), which then is compared to r.sgt.max in remap_sg().

At the same time, also in remap_io_sg(), the while condition comparison
uses sg_dma_len() regardless of 'dma' value (it is always false during
the test reported in the issue), which seems wrong, if sg_dma_len() and
s.sgp->length could hold different values (so we'd use s.sgp->length
to set s.max value in i915_scatterlist.h, but then use sg_dma_len()
as 'max' in remap_io_sg()).
I also noticed that these values are different in failed test runs.

Please correct me, if I'm wrong. I want to understand this issue and
the code better.

Thanks
Krzyszotf

