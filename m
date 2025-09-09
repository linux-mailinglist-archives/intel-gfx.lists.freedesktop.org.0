Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2E2B4FBF2
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 15:00:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10B5510E703;
	Tue,  9 Sep 2025 13:00:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XDzXmTEq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7CCF10E703
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Sep 2025 13:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757422836; x=1788958836;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=42zr/HLJOHohZmovnwRSKwla1unzhfw5fCHjx1LDpn8=;
 b=XDzXmTEq3osOcj4AW65ix+HbKizMVX2uKOl1CCIMmrciBhUpS3p/N9pq
 MrCGDYn0JetWznISh04uEv6PNc4cnCoEN83u2GK4w1DOHoI0n9HHUt8Jm
 aZGv4gOw1pkEnYY0Rsnqw8OmL/YSlN7hh4P+ZOYKH8rwFhtypr8MnLiLc
 H1vhYKFrtAAyRZXF37yI3m2qYZcFzWufX45W3tUFg8Hi6hrct2Cgl/c1H
 csYld48WrfNYoP9J0X6QyEFtHllhbCmoRWC7krIp3yE1xSc9/XUwa7tKU
 LZDmyprmtwz/U2bGasXKYnKocMy4T8eYfB4Q6ZzBclU0Z8SaPdN+14YHi A==;
X-CSE-ConnectionGUID: BsNYwH+yTHWCTmajiAO/+A==
X-CSE-MsgGUID: 6PbDcptaSXqzcRCPO8NljA==
X-IronPort-AV: E=McAfee;i="6800,10657,11547"; a="59642581"
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="59642581"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 06:00:35 -0700
X-CSE-ConnectionGUID: En8USd5NSu6pRsNjUZ6RvQ==
X-CSE-MsgGUID: IFsue1vyRuKlH8CHa/ZhAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="172997302"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 06:00:35 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 06:00:35 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 9 Sep 2025 06:00:35 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.79)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 06:00:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eQ1tS5YFhTEobM6aJJ6VQQ780YVe/1ayGkK7EYSMG9g9wkACnh9NTR41ovyPLWmApWdT4wKeGywfm+NKbQNmZOlzIqpdj3JP0h6+8Ov/mazaNEHIu4g3Ivsh64/doB03NaasXEFG1CvQQyPssPoxpAF7GEkhuP8VfMos6utoQ0eIMbdZ44m7r/MkNgBmIQTn+EuIygq1Q+RS1NTS0MUk9422C3DJ7uT1i7T9Ig35YV+tindTAasf5yDbLpPluzS4RQDOJm+qfPsfQqWXyXSh5pd6LWyj08443DNJ0/9gtaoeRe5j9MmvhzGvAFtoKpQqtn8EhbqsCqmwQB2wLzWNHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=txoqvpEwsfCQqMZBS7dR25ey+f4I9uMfhvoG/K35JSI=;
 b=pyXQfOXEUt9gDbWx46oXv1sClK2gMECoA+b0IWoHi8nKDXlZ/52E3NUoFcinjJ3jcqWdDAiKvFZWhhEX71MN2HoQwylOG2xXzXLxON16LXzKmYvRrXgatR9TPIybE5NOzsYUrKNhDBx4GJeEAI3NEx9H15PTwDLHEku0W/01HJF/0qq+UFfGfuo6pco1Lnv6bEXyI3Wrbf/0PU9g96r/GSviXbbnrjttBb83xHCgrcIHQ1jTbvCrg0dly8dfA8ZPojwMBcrfLfQ8FeW8Wys0NtBuGXbUzhlvAfcEPHmcXtJYxK5qlwOuGdG/4DSAk+HORL+nyviVc7wuYquRrb4EDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DS7PR11MB6127.namprd11.prod.outlook.com (2603:10b6:8:9d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Tue, 9 Sep
 2025 13:00:31 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9094.021; Tue, 9 Sep 2025
 13:00:31 +0000
Date: Tue, 9 Sep 2025 13:00:23 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Simona Vetter <simona@ffwll.ch>, Jani Nikula
 <jani.nikula@linux.intel.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v2 5/5] drm: Avoid undefined behavior on u16 multiplication
 in drm_crtc_vblank_helper_get_vblank_timestamp_internal()
Message-ID: <e8f0573611539180fb470d4451e427c0c59232f7.1757416325.git.krzysztof.karas@intel.com>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1757416325.git.krzysztof.karas@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <cover.1757416325.git.krzysztof.karas@intel.com>
X-ClientProxiedBy: TLZP290CA0004.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::15) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DS7PR11MB6127:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c4c1983-87c7-487b-1c8a-08ddefa0db6a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Rk1PaUs4V0xpUUFpdUVZak92TVdkY0pKSENuTWxsUGd0S3VoYWlvRTNUekth?=
 =?utf-8?B?R3VXNkVMcEtGWGhzRE1LcWJxTE53WXQ3dktMNGNZY0xUcDFZZWxRdmp3bTZH?=
 =?utf-8?B?VG5qZEJLMWg4aFZibldoNVh2eEh0YW40R0c5T0dzSDJwWVdTNng3enc3Y2Fq?=
 =?utf-8?B?d3JmWE9jWS9ySm1DbWxodXRLTlRyajEwbnhCVytiN0hRRUsvZ29VanV1cjNP?=
 =?utf-8?B?bHRwdlhzUENXbm11cVh6eWVWYzMyQWNORmoyeVpkNlFMR1VCbkIrWXhvWmJQ?=
 =?utf-8?B?RTNyNmIxYWNsQVNocHA2VFd3VVd2bzZ6dEo3VUR2dkdFSVdQZmlIekdaeU8z?=
 =?utf-8?B?aS9qOEJsaFFHUVVWcnJJYkl6MUxMQnZhanhUckMrZ3FCay94d3dXZVB3d0E4?=
 =?utf-8?B?bnAzQ25zckQyQThvaXovU21zd3dwanRCUnF6QkRNdlJ1SStLVHExUTIwY2hu?=
 =?utf-8?B?ZE1DWk1JY2IvRTNhVHRTUUpZVitEWXZUTEsvaDdmSlkvZU9WZDNKNHhDbDVW?=
 =?utf-8?B?RWMrSWJiOHJ1TnpiV2ZzUkU2UVBRbVVuVzk0UnNQUjVkWlZ4OFovWTZ2UDNM?=
 =?utf-8?B?Vm5RWHhiYkQ2NmhadVhUNytyZTNpNTR0N1hrWWRsSEdXL0RjT0FBN2JjelJv?=
 =?utf-8?B?YjlKRXkvVXNadEtuK2pjdkVrMVdXa0lydGw4RmdTZGZuaWRtcy9UaVN1K240?=
 =?utf-8?B?QlNoUWo5UVR6eXJUVEVQdGRwWXFWVm5vQy9mTUdWNFg5MFpqT2lqbFZHeUNF?=
 =?utf-8?B?bTgyNGNrajhBVFk0MTJpSlZmMXlUQThNRytXK1FTKzBkZ0FWOVR4R2VvRlN0?=
 =?utf-8?B?MEtZdjkxd0hraDhxdmZYVFJkZTVENDFIWHhPSFAzUU1WUzRBWTZxMWE2Z2h2?=
 =?utf-8?B?QUttMHlCcEZKd3B2dSt4bkhXU3plWjNYUVZoUUtRUUFUeDRtc1ZyZlhDMEZQ?=
 =?utf-8?B?aytrK1JlQmVHZk40dldmWnFSeTRtNUFZTEhBTmZZWU52QS9COXYvaTNmdEoz?=
 =?utf-8?B?RE5xcGE0dnZ1K1lMZmpUK1RBM0pmSzFLWC9jN3B5LzJwcVdKTzVIRm9iY1Fs?=
 =?utf-8?B?Zm14UFFhTGpWeUdZN0hLbS9NZ1J4R3F6V2RDdnVQOGUwamtjbWw3VThTVyt5?=
 =?utf-8?B?dTJYSml2Y1VDc3RqMmZZOWlQNEkvZlQ4dW5HU1pBb2I5c0t0R1NPTWFNeERK?=
 =?utf-8?B?YVpTTm4zWTJKVEpybEVwMFhyM2Y0ZzVRNkFKMG9FcmJzWkllZDRhcitvWHhY?=
 =?utf-8?B?NWxGRzVsbHBueXhYc3ltaWJuRWU4MDQ0cEhvbGUrb0s1ZEVRK3QxZXFDdmhj?=
 =?utf-8?B?NEIxS3BWbnRmUlAwSnZ1amIrWXNMUDA1WDNTRzdRUWJLWjNVUlVLa2FRV3Vi?=
 =?utf-8?B?T2NvNGQ1ZERRaTJsQ3BTN0VpYWlOTTdiVjQvWnRocVhRWHJaa1A5NkJ5K0xZ?=
 =?utf-8?B?YW8vVGY0T2xwa1ZRalRjY3MvSlV1ZWMxZkhhOFNzTDZSRWFCMm9uRloxS0d1?=
 =?utf-8?B?QWV5b1ZvcnFvOGpWRS9zSzRXZDRvdWY1TU9EejZIZkMybG0rNldTT2R5M0pt?=
 =?utf-8?B?bGJQVzVCT3UyTVE0QTEvUzA5ckJ6TFd6SHEwQkJSN1JiNWxQY3gzRWhFMG12?=
 =?utf-8?B?SnBzbFRGOGhQMm43OXJqTnFlOGhCT0dORm9nR25PdnZsT0FKSVBSVm10UG1W?=
 =?utf-8?B?eER5d1h4Rldkb2pKNEtnUjVSQjRyYzNKeFd4OXZCZURLU25pU2xpODZMZXVo?=
 =?utf-8?B?SDJGZkU4cUQweGJHWloybzFqME95blYrbW1PSU43RlAweG1aZzJYbVNxR0tz?=
 =?utf-8?B?NXJCNmhVd3hHK1J2b25rZjIvY2hKWG9YTGx3RXBQMDNtZ3NIb3VSY21ENXAy?=
 =?utf-8?B?RGpDbURjYXdHbXM4azczOE1mT2pFejZ2aCtqcWdWSVhLZ3lLL3VBUTdYUVJU?=
 =?utf-8?Q?vISgEX7duUA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MnRJbnpWNS9Md1B0eHhQSUNPRjRtVDYxWHJtQkRBaHRjalExNWdjVTNlM0dQ?=
 =?utf-8?B?MnVNWExYelRMYlJWM0IreUNOOGJYMkJTWmRqY2x6R0UzTWVwV2o3V0VTMDla?=
 =?utf-8?B?SDJ3ekdXTVp0UkYvU3hueld2MFgxZEFsenlCL0s0MFhsclZJTGdlcGNMVHVi?=
 =?utf-8?B?TzlCR2hjQXFSc1B2M0NTVE1yQzhqcTJldGQxRU9GZ1EzNXN3ZDRPc3RmNjZC?=
 =?utf-8?B?aTZwZGFWR3BCclViTzRUNnlrbWNqWDBrZTYwalJNNjd3NmFUeWdIYUg1UHZB?=
 =?utf-8?B?ZlRsSlJBam9kMHdNUitnNGY5ZGxxWVRzaGpvN0pSUDFXdmlKb3dWY05weHdJ?=
 =?utf-8?B?aWhRdkZYcTMvZmxDZWZWdFI0UWdSMjE2MFBpbXJYUzVQYnEweXJYTmZjd2gv?=
 =?utf-8?B?VU1sOE5DZ0hRUkNuUE92MUlSVFNDMGNvcVFoelRDSmc1TU0rUkhlalN5bFRh?=
 =?utf-8?B?WENtYy9nRC9HZmZNUFhKSjI5eXd1YlFsekQ3NGZOWW43bTdERmFMM0taRDAz?=
 =?utf-8?B?SE9PR01pSk9EKzFMRVBJV01mclN3ZEVwT3RSaWswMU5ZeXMveDdNbm1WRWJm?=
 =?utf-8?B?dXVmaGlEZXMvdTlUV2xTT1A0U2J0ODZQeWFhZzNMa3FyNTNYL1E4S3NrSlBM?=
 =?utf-8?B?eDBUSXU5Y0JDOS9jNnRaam8zM2dPOXhyQjk5WWNGUEJNWkVHVFNNR2w1WTdz?=
 =?utf-8?B?THhaSHQ2UzRTVnlQV1hkZ0lHRlZITTBtMWFyemZNdi9TUnl0S2VnakkrZnZh?=
 =?utf-8?B?REtZZWE2WGNmNHprVmo0MUNZN2Z3a25qUkJIZFFYUHlRMHE4SjFQbXBnMUtY?=
 =?utf-8?B?aXU1U2RRYTFPbmhBQ3Fad2tuMnh2OUlOUUFWNTdTMWdPSzkzSG96ZFlwcUJI?=
 =?utf-8?B?clZ5QlpjeGFVUnM0R0VSUVRRNG4zUHlVQ2NJMll2L2xRR2x1dUwvK2RKNlJU?=
 =?utf-8?B?YkN2QmtYMWk0YUJzb3NRT1NMT0dPZGZVcHp3Q3JiS2VjZ1N1Q0FJWGp1U2NX?=
 =?utf-8?B?c2VvYmRnWTNTNEhmaExwRkYzdE43WS9nUnowdldab1hHUnkwYnhtcnRjUENi?=
 =?utf-8?B?QWlSNjd6QkJ4ZWVGMzh2ZVJjbDhTdW1uclM3U2tFLy9lalp0TURlZUEyMTZE?=
 =?utf-8?B?eHU3RWdqbm02dFRLalQvdkNvQ3RJcTgzbjU1MFlaWEF2cEVVMWpLWlBDT09z?=
 =?utf-8?B?Q3FKWjA4L2tzaXAxaXBPUDRQNjhnN0ZVclZEeTRTNndkMEljNHBKTXQ0V2ky?=
 =?utf-8?B?WlJraFh6ZjhxUnE1QWlMeVVFb3F2dDBySXM5c28xYUp2NU1xS0xDbVJRT0I1?=
 =?utf-8?B?a3BZN21ZcWdjTHNVYkhQbE9Ga1hYbUJuTC9sUjVaZjBHbGhJTmJTZjk5ZnFm?=
 =?utf-8?B?VXpTQlE4ekt1OXVuWUdCYUpIUElPRjFMSmswa3FhcFRpcXlqWkdhQnhwZXV2?=
 =?utf-8?B?U0dxTVlqV3RqTFQ0VGFSUE1Ic2FOT21vQnFHelF1cFc0MlZ4OXlPT29WakE0?=
 =?utf-8?B?eUY2T2RpR0NoS3d6OERjcW9jNzBQaDdWcVJkNkVPQ2F1aE0zanpnK1NsR1pr?=
 =?utf-8?B?ZTN1TmIxNFA1N2JBUWNnTXFhMnJGTVJqM1hlS0htcksrQzY3WGU3VDR6Y293?=
 =?utf-8?B?WFF1SjZ2MEl5V240RHE5U3p0MjY2eHc4SURQVFlsdHYydFhCK3M2Zzd4WDRQ?=
 =?utf-8?B?SHRjSDhQN0l0R1k4bVRlWXRvZy90cjJFL0Vtc1Zrb0VwVHR6SmhOYUdPdjh3?=
 =?utf-8?B?TTNlM2lEMHlzWU5LTy9KdS9BNEYyUzRwc1BhajdXSUR1TzJIa0hrT1VGNjNh?=
 =?utf-8?B?YkZxUzVoSVhhekxtbEh4VERHS2NjNmNveGsvV1NvNjNOVVFMUHAra1M2MExC?=
 =?utf-8?B?MlpML1ZQeU1SZHRMRlc0QjU1Y0ZpY3FXc2g0ZXVvN1pVQ3dTMEc1WmhOeUV6?=
 =?utf-8?B?V09jaExSbXpqMmR6bnBJaWdNdGNWWnFienRUdG10dnd2dDR5ei9PTDQ5dU9V?=
 =?utf-8?B?Y29LU21oUkhaM0xkdGo5MVJEbVRuaTc5aUt6dDZMUnNOa25qd1VObWUyR0tO?=
 =?utf-8?B?TThicCt5MHlwUzRpYVU3NmxRalB4REI2Nm9qVnhLMEVJR0xQeVR0UnlSNnM1?=
 =?utf-8?B?NWVLNlhlYTVqSVN1RkJvMzB4b2tUazAxanNBN05tcCthUml1R0srWlVPZFFL?=
 =?utf-8?B?aEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c4c1983-87c7-487b-1c8a-08ddefa0db6a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2025 13:00:31.6675 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mCux0yiep4KaSnUFqrwH9+XUCt3G0Aqf4disuJjJn2mnfqNx6Nj9pW+hNF0c9kpH7cvra74pLK10X0uLOV95HH1+uZduYRyxq7/vX3lAatM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6127
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

vpos (int) field multiplied by crtc_htotal (u16) may cause
implicit promotion of the latter and overflow the result causing
undefined behavior.

Cast one of the operands to unsigned int to avoid that.

Fixes: 3ed4351a83ca ("drm: Extract drm_vblank.[hc]")
Cc: Simona Vetter <simona@ffwll.ch>
Cc: <stable@vger.kernel.org> # v4.13+
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/drm_vblank.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index 46f59883183d..8a3a82962494 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -779,7 +779,7 @@ drm_crtc_vblank_helper_get_vblank_timestamp_internal(
 	 * since start of scanout at first display scanline. delta_ns
 	 * can be negative if start of scanout hasn't happened yet.
 	 */
-	delta_ns = div_s64(1000000LL * (vpos * mode->crtc_htotal + hpos),
+	delta_ns = div_s64(1000000LL * ((unsigned int)vpos * mode->crtc_htotal + hpos),
 			   mode->crtc_clock);
 
 	/* Subtract time delta from raw timestamp to get final
-- 
2.34.1


-- 
Best Regards,
Krzysztof
