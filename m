Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBC2AD572C
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 15:34:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F1D910E37F;
	Wed, 11 Jun 2025 13:34:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TpA2Euzf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C95DA10E37F
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jun 2025 13:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749648873; x=1781184873;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=RKI/wW0aEWW9iEYA2y2NntuQnV61YUHi/9TNGx/LL9s=;
 b=TpA2Euzf48bRD5xOgVNFt4ThpmDvkaktKALjnFGNKTR7Dr6aXj7KzDLq
 Ov69IaxuRemLlY2CaMCVyo+6rblSReVArr7zArfkw4UhDSARtf7R2I0HK
 Qnabt3o5VcsXCBm6YHpSpV2UsdvA3tTDZDonTF7y6WbHJmhxJBE7H+5Wm
 ea3H8+5equTPlStlVanZbQCqwWNkphXdoVmLz1JFuoB4b/g4w7s7q42IT
 hnjtsLJ6+v6Q81Q1fiege8J+SZke/EaK2lnvOUs8oMu2Pzggc2bZaUed2
 17Fb8TE3xFyIuU1fnN+YDcdtgSu3k1sEbnAM1TrW93uSVr0pOPdItE1rt w==;
X-CSE-ConnectionGUID: V3l3v5G6R/SGLlbctvZJ/w==
X-CSE-MsgGUID: 6uEig5oAQUeV1qFSHY+B4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51014635"
X-IronPort-AV: E=Sophos;i="6.16,227,1744095600"; d="scan'208";a="51014635"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 06:34:33 -0700
X-CSE-ConnectionGUID: mkakwcrrTWOWQU83/jgC0A==
X-CSE-MsgGUID: AHq174qdSdW6WCETe8J1lA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="184408311"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 06:34:06 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 11 Jun 2025 06:34:06 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 11 Jun 2025 06:34:06 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.45)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 11 Jun 2025 06:34:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zu8E0nDsCvBHs9gacpMAXrg8QY6UhKIAB8pG2AgE38YJYPLlwE1x3OswxwY5MBlSLIgOxsSUFrmoRkTuKwIaxBm3CxQlQdEqQ+yaWijRxLEFG1wlDwBjacMela3XScVLDXmhUoZ0qYl0tpi+LxJ/SMqOBQCXs1/XU9wWRrKS97uELYyyjRAzglAbu0xeNl83Lrby9dd49NCcEgg32cDEyDIuWWksUCY2rHBjkhrt+1vxs/qOu4mjsZtOZAfIEtlN9pjBoIK//uKfP1oLZ1gevPFzyxRXWCc3OCdzGHhJlLDMCIzOsB+RX+E/UH47ilbBDmLc6bYH4U2iupWUyVsTFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YVK9vR6BvWmTO3muYokq4F5x4XO3Z9FJD0dBDMhmCtM=;
 b=jigfZJ7YMibhT24UgdEgZl70TfP3gYOS4RAw2aJqBd3BUV4bzJIh6mQslhj0tCIJ2w608EaLiMu5fEQF5VWRdVkDNRyvuZCrcHbluMcgdAUZNMue7WUz2cR95z91HofqKpGSB3r/R1LW+yndEzWbPEW8QB8L0rtnND38rqHS9KvPYyxRbID3YnRrh6y+nRFayLQdx2q3CEl4ij6No6mtxNOPdN5QFCHXjv/KZBt/qj7qCuS+qrBbZiKPP6mDD5y6IJVpBaVT4tgPvogO+jy9iyjm/DktLhbFOG3uKCFqhx/GUx98/j0NN8RUY23CHI6959ABGyUkINc1SaKcesUT0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by MN0PR11MB6060.namprd11.prod.outlook.com (2603:10b6:208:378::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.26; Wed, 11 Jun
 2025 13:33:30 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%6]) with mapi id 15.20.8835.018; Wed, 11 Jun 2025
 13:33:29 +0000
Date: Wed, 11 Jun 2025 13:33:19 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Matthew Auld <matthew.auld@intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Chris Wilson
 <chris.p.wilson@linux.intel.com>
Subject: [PATCH v2] drm/i915/selftests: Keep mock file open during
 unfaultable migrate with fill
Message-ID: <ihbtaij3hk3rl63yl6vgbccwizv4igb2erm63vqzsqlp4e66m3@jo4r6iji3yqr>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: WA2P291CA0034.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::7) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|MN0PR11MB6060:EE_
X-MS-Office365-Filtering-Correlation-Id: 5842f8b7-12ca-4c00-5441-08dda8ec8d77
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZmhqSVo4Qk1DeWxCd3hEZUNwU1RDVXVkQzZzQlQ0cVpQNEl4Z1QvbVp2blBI?=
 =?utf-8?B?Ukt0TUdoSXY0L2dSNURKV2JhNE1Dak1jVWZoR2tzbldLRVpydkpxMTdMczhX?=
 =?utf-8?B?UkxqNlBNd1huQlgvc1BjV0lRa05wVUJtOFZSY1IvWTNNS3hJQ01QTk5BM0pJ?=
 =?utf-8?B?RUFsbmtvYytySXhPNCtlaXJuQmIwNFpLL095Zkp2Q3lxWU5hOTM5cnBVaStx?=
 =?utf-8?B?V1dXYkFHN0tDR0JSdWgrMUNsY1lScHlQWXk4UlUvY1ltVkdyTHhyODFvR0tu?=
 =?utf-8?B?a1ZFb0pxUE5wUTZyQVYrNnIrbTlVdU9iQUU2bVhqdHdhZllPMEgrNWQ0c24w?=
 =?utf-8?B?YkJjaTkxenRSbmN3VE1aSFJMM3JGM0xsTnIvWFpmNVU3c3N5MHlNVW5BeExo?=
 =?utf-8?B?R0dDL2tjNVdGUGNYMDN4dGxTOXhocWx5c3NVMyt0eHRZUlZjOXA3bTNBYWQ0?=
 =?utf-8?B?Z0lxN0FueE9QYm5RaFR4M3JaM1h2cGQxNlZQNzRuYWsrUTF4bW1sRjJjUkMy?=
 =?utf-8?B?Wk9wUllxQXVLZFBzZmlxM21vT2RRT3BhZklVdEhPekVyQ1FWWjZkT1lYVVF6?=
 =?utf-8?B?TzZwQ3FQZjZJWnh4aWtRb3ZNS0REaUtLR3V1VittdWVKTlZYV1owcXNWTDc4?=
 =?utf-8?B?dnZqOUUwNmt6NWdHaTJldGtONFZXTE9sUVMzTnpMQ2RkUXZVeUtMMjloUlRr?=
 =?utf-8?B?eWpyOGtUNzROVXB0a1pIdWdROCt5MGhXNE81RUJEbW4vVjhaWHFiZ2UrZE9p?=
 =?utf-8?B?U25kQTRJRkZsWHJPNFlJd2hMdzVmKzREY3IvMFpSaHhSME5kRnFOeWhCbzVx?=
 =?utf-8?B?WmpjMW9qVmpNb3hBTGVRN1YxRzlBMWpNWGtleVc0dkFBTzcxK0twNVBMeGc3?=
 =?utf-8?B?UHpLRkg4dlhIdUZnbmJ1aGZGSnZyeEY0aFhnUHBGMjU5MCtKSEZnNHQrS0t6?=
 =?utf-8?B?UnQ1ZCt3eG1JdTVtL1ZpR1M4SCtvM1JnSlRaVk93S3ZKelZ4Zkk2SFdlSnRZ?=
 =?utf-8?B?WW5nQ1h6ektFWGYyU01pemRNemlPNzUybUxQVlQyK2diTEZHc1ZUcGI2UTlo?=
 =?utf-8?B?elFWandlMnAwTjc1OXJJcEhHeWxDYXhDT3JTSHV1TFA1aUd1bjB5VGl2WnhD?=
 =?utf-8?B?VlVJeWt6eDlCcExuNkRTdVI5clF3L0xRZVBmaUpvRVB6RFczRzcyQmkwWjI2?=
 =?utf-8?B?b3hXSzEzY3p0MTBaS0k3MkxwbXhqRytsRG1jZ3VXZkR2azZTcFcvMnBKMTVR?=
 =?utf-8?B?TUprazlHRXljb1pidlk3MU9Zb3B5UzdHRFR5bGVSaXcrcHFqK0tpVVFBaFBi?=
 =?utf-8?B?NW4vdkcyRElqTmJESlJQU1VOeFl0YmFxQk5XYjZWMS9XczVDT2RaYnRmblZR?=
 =?utf-8?B?b3hOajd4UXR0QVRFNkVWdEg3S0F4OWtLTXFpdVFSdHJHSUFqNzNjRnBOTHFB?=
 =?utf-8?B?VGlRS2ZlS0xnVVdQTktvaGtHQmJvY1F3ekxlWVZuNDJrZks0L0NjTkovQUlk?=
 =?utf-8?B?NHZqcDZ2UmNQUFUxL1V1U2UreDZsU2lBcHM0UEErRm9Na1BIcHBVbC9yMDBa?=
 =?utf-8?B?aEppN3lyN2tqUU5kdzhENHNkZ3lTNEFNa20vV21FbHlnbkc2UGNQMUtEMzky?=
 =?utf-8?B?K29qZ2NrMDJZMmd6NEhuK2liTTRCa1pLQUd1c0M0b3JuL2RiNEtucmZkbmhW?=
 =?utf-8?B?TFl2amdsTDRXUjRvY1dVUkNHYzdQOCthRWxHY2dDcTlxcVNNdW1XZVNWL0xT?=
 =?utf-8?B?MXcvcnRJWDZFOS9KQzRvL0FUUDdpdzQrR1VvMmNCZmdOb3c1eFFPWVlJcGZM?=
 =?utf-8?Q?PAI9ybhgFJFlKssJ3QqpXOLG013Aidg0ps5GA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cDhwYWFCQzJRMGVjL1ZuTHBFUUF5WlU3SmNZamR2Z0pFbmw1R0lXNEY4SjVr?=
 =?utf-8?B?UVduRU5kRkszb3pqR0dvZXJ4VHE4Mzg2ZCt3NEl3TGZiVndmZzlwbEdNV2w4?=
 =?utf-8?B?Mll1bXpWUVpsU2w4aUJZbGtYMUNVempIWlptbUZFOVRyR0Jma1VITjFDb0Iw?=
 =?utf-8?B?R2JoN2hHaWd3Qk1VL2RQS3Joa1hrUE1iM2kydGwvZjEyRUhpQWtGMUdTZlFR?=
 =?utf-8?B?VXpXaVJLb1k4aElxMHR1aHhJaW56QUFCQTlzSFQ2OGZPN01tV0hVMmprNDBF?=
 =?utf-8?B?RTB1YXdiMDlEb3IremxQNVlwWTU3RUtVemJVM2FNVCtWaEMydWFESlNGVTZM?=
 =?utf-8?B?dFFCVWZyWVF2enhTZ3ZtTFFBNElFbjNDRDIzSC9pVVpSdm9JVmVCZ01KdE53?=
 =?utf-8?B?Um5nOWRXa0x0dWg4RXQ5MFZVNHpvckpwZlUxNjlDWGNFa3I4aTdFaFJma3NL?=
 =?utf-8?B?MndidlpuNnMwcjkvWTJJdkJTSE1XazhiKzAySkh3bVVqUE5ndWVFY2ZsT1oy?=
 =?utf-8?B?Y1dCdFpDekxSekU4NU9jSVhVMDdqL0JWTnhUdW1uS0xZVXQ4Z2xrYlhRV0ZH?=
 =?utf-8?B?UDBQSzlWZ29KeFRYNW03a0U5alc4a2toS0ZHa214Y1JxMUJjN3REU1hQdG9v?=
 =?utf-8?B?K1FRcStZRVA3WlcvcG04VitYT2JvMmFUSStTeDQ1MGZkeHdNeHZ0MVlQdFhO?=
 =?utf-8?B?UCsrMGhDZlFIZFBUTDM5UUZhYzFySkprbXFoWFJ2ZVNLMzNJOGtqRDgvdEtC?=
 =?utf-8?B?VURLbU9ZaU5NVkVhL3BCSTRDa283NU9LbmVyR2xlTkNYcWZxVEhpTVVORXBw?=
 =?utf-8?B?UG82Z3NKeUNkclBVbTlNRGZDMkhEd1R2Q2tLRGJQS0lyNHc3TTdEdG41UXBY?=
 =?utf-8?B?Z014UFlrTmhXS0hLcjdjS0p1cm92VlJpWVdqUHlYcW9WMThybTRNWkwwaXlT?=
 =?utf-8?B?STRUdlJRekFUNjlCNVBGZHU1ZDZyUGQ5THM5dlB4NzI5Q00veUlRODBndmRG?=
 =?utf-8?B?clFTUkduVzltdmdPRVFiOUJNQ0tYcGNpQXZoaFc2MXpqVGdVYStRY0ZCdTFz?=
 =?utf-8?B?clh0MUg0SXpIcy92V1BwVThCRWtMM3ZlRHJXQmo1RVJ0Zi92VUtZQkoyZXNz?=
 =?utf-8?B?Qnk2cmVGNTVaK0JlSjR5dFNqZGhqa3BxWDRuWW1Md2o2c1lzeEFybDM5Z2l5?=
 =?utf-8?B?U0JFazNTMmFNT08reWExdmxlbm1mRVlnSzVqSmk5d1B0U2FPOGl6Q1ZaTS81?=
 =?utf-8?B?Z2dDNWNsL3dmdjF0cS9TcVp1WlN2Sk80QTloTi9WRmFIOVgweW9uMUtCaEJ2?=
 =?utf-8?B?Ryt3cmdWQXBIVEI2L1g0eTlyazYxdkNCRGhneW53dnYwcGJUdnRMdTBseC85?=
 =?utf-8?B?SGZQa0lkR01kNXRHenFla2RyV0RRR0hRWmRQN0Y3QVNHVFJLblRiYUduTEV2?=
 =?utf-8?B?QXo5UlJTRkd4ZkFFdTNYOEFjelMyLzRsLzlDdUJKNDhtY0txSTZHMkR1MWNt?=
 =?utf-8?B?UnVUOE0xOW1Ka2pTd29YQ3hKYk00Qm05blFDbWozWmZUNjBxejZwU1kveVdI?=
 =?utf-8?B?c0hTTWpwanZrbEt4Qm9KSVJRSWZmZTBtak5FTmJUbTdVd2czSFlFTGxydDRI?=
 =?utf-8?B?TURGdEVyVmhMeXg5ZldTVHM5MGlWWVBHV0pVY28xQTg3amtyT3EzU0orK0xj?=
 =?utf-8?B?VmxsZkNZcmorNUF2NjE5MEd0bE9wWkc2dzcrL0wvOVgxcjFXdWEzSURoSUUy?=
 =?utf-8?B?WHdBRjFUQ0NoOUFrRU91ZWh6M1k0MlpHV2lFUHRZM0NnNnk2Wm8vM2RVYW9p?=
 =?utf-8?B?RUovS05GNUlrc1FsUnVjMGNVc0o2MGxQNUhhdWpYZ3M2ejVNYUxZZENvNkNF?=
 =?utf-8?B?dUVEd0dPdVR3UXVjekdPSTZCTngrOHdvZ3B3TnNyamZ0TTdHT1ZrWnV5NitB?=
 =?utf-8?B?U2RvZUlZVFFvSEsrbW91K25XZXRXeDlxWUJGditXRVNpMjdJV1NBQndYK3N5?=
 =?utf-8?B?TXZCdUhvdmF1UkNrVGVwUDNRWWRlRHhiMHVtZy9RTEhMSEZGQVQ4VkpycnJR?=
 =?utf-8?B?WTVDdWgvNEVheG5aZk9SajRnL3NlNUQzNGRHRmk1a01nTWV3M3JnK1VJNWkv?=
 =?utf-8?B?QXlpMDJ3VzhxM3p1UFRGVXJQS1h1eDEzWWorbWdRY2U0SVBvTS9pWGh4aXhh?=
 =?utf-8?B?U3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5842f8b7-12ca-4c00-5441-08dda8ec8d77
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2025 13:33:29.7970 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nf1VgQDskv5/+2J8tagrdEzH/1TrhrZTUJPBA9wzkEfswsI3mbY39YMcAqxXr25Gz9+SgCSYhBoRM1OvDGkaky9DnMQhxJp7CnhD+2ER5aI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6060
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

igt_mmap_migrate() tests migration with various parameters.
In one of the cases, where FILL and UNFAULTABLE flags are set,
during first stages of this test a mock file is opened in
igt_mmap_offset(), which results in allocating some data in the
GPU memory. Then, also in igt_mmap_offset(), the file is closed
(fput) and the cleanup of that data is scheduled. Right after
that, the test calls igt_fill_mappable() to fill all available
GPU memory. At this point, three scenarios are possible
(N = max size of GPU memory for this test in MiB):
 1) the data cleanup does not fire until the whole test is over,
so the memory is fully occupied by 1 MiB with that data and
N - 1 MiB added by igt_fill_mappable(),
 2) the data cleanup fires before igt_fill_mappable() completes,
so the whole memory is populated with N MiB by
igt_fill_mappable(),
 3) the data cleanup is performed right after fill is done,
so only N - 1 MiB are in the GPU memory, preventing the test
from properly faulting - we'd expect no space left, but an
object was able to fit in the remaining 1 MiB.

Amend the problem by keeping the mock file open throughout the
duration of this test and calling fput() from the test itself.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
On DG2 platforms the memory for data allocated as a result of
opening a mock file remains occupied until the test is done
(scenario 1), but on ATSM cards the data is freed earlier
(scenarios 2 and 3), which leads to sporadic failures.

During testing I observed that the max memory was equal
to either 4096 or 2048 and igt_fill_mappable() tries to allocate
as many 1k objects as possible before halving allocation size.

 .../drm/i915/gem/selftests/i915_gem_mman.c    | 11 ++++-
 drivers/gpu/drm/i915/selftests/igt_mmap.c     | 47 +++++++++++++------
 drivers/gpu/drm/i915/selftests/igt_mmap.h     |  8 ++++
 3 files changed, 50 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 9c3f17e51885..216d1d5ec2f5 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1176,6 +1176,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 	struct drm_i915_private *i915 = placements[0]->i915;
 	struct drm_i915_gem_object *obj;
 	struct i915_request *rq = NULL;
+	struct file *mock_file;
 	unsigned long addr;
 	LIST_HEAD(objects);
 	u64 offset;
@@ -1194,14 +1195,19 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 	if (err)
 		goto out_put;
 
+	/* Pretend to open("/dev/dri/card0") */
+	mock_file = mock_drm_getfile(i915->drm.primary, O_RDWR);
+	if (IS_ERR(mock_file))
+		return PTR_ERR(mock_file);
+
 	/*
 	 * This will eventually create a GEM context, due to opening dummy drm
 	 * file, which needs a tiny amount of mappable device memory for the top
 	 * level paging structures(and perhaps scratch), so make sure we
 	 * allocate early, to avoid tears.
 	 */
-	addr = igt_mmap_offset(i915, offset, obj->base.size,
-			       PROT_WRITE, MAP_SHARED);
+	addr = igt_mmap_offset_with_file(i915, offset, obj->base.size,
+					 PROT_WRITE, MAP_SHARED, mock_file);
 	if (IS_ERR_VALUE(addr)) {
 		err = addr;
 		goto out_put;
@@ -1299,6 +1305,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 	}
 
 out_put:
+	fput(mock_file);
 	i915_gem_object_put(obj);
 	igt_close_objects(i915, &objects);
 	return err;
diff --git a/drivers/gpu/drm/i915/selftests/igt_mmap.c b/drivers/gpu/drm/i915/selftests/igt_mmap.c
index e920a461bd36..ebe2c1933f03 100644
--- a/drivers/gpu/drm/i915/selftests/igt_mmap.c
+++ b/drivers/gpu/drm/i915/selftests/igt_mmap.c
@@ -9,17 +9,22 @@
 #include "i915_drv.h"
 #include "igt_mmap.h"
 
-unsigned long igt_mmap_offset(struct drm_i915_private *i915,
-			      u64 offset,
-			      unsigned long size,
-			      unsigned long prot,
-			      unsigned long flags)
+unsigned long igt_mmap_offset_with_file(struct drm_i915_private *i915,
+					u64 offset,
+					unsigned long size,
+					unsigned long prot,
+					unsigned long flags,
+					struct file *file)
 {
 	struct drm_vma_offset_node *node;
-	struct file *file;
 	unsigned long addr;
 	int err;
 
+	if (!file) {
+		pr_info("file cannot be NULL\n");
+		return -EINVAL;
+	}
+
 	/* no need to refcount, we own this object */
 	drm_vma_offset_lock_lookup(i915->drm.vma_offset_manager);
 	node = drm_vma_offset_exact_lookup_locked(i915->drm.vma_offset_manager,
@@ -31,22 +36,36 @@ unsigned long igt_mmap_offset(struct drm_i915_private *i915,
 		return -ENOENT;
 	}
 
-	/* Pretend to open("/dev/dri/card0") */
-	file = mock_drm_getfile(i915->drm.primary, O_RDWR);
-	if (IS_ERR(file))
-		return PTR_ERR(file);
-
 	err = drm_vma_node_allow(node, file->private_data);
 	if (err) {
-		addr = err;
-		goto out_file;
+		fput(file);
+		return err;
 	}
 
 	addr = vm_mmap(file, 0, drm_vma_node_size(node) << PAGE_SHIFT,
 		       prot, flags, drm_vma_node_offset_addr(node));
 
 	drm_vma_node_revoke(node, file->private_data);
-out_file:
+
+	return addr;
+}
+
+unsigned long igt_mmap_offset(struct drm_i915_private *i915,
+			      u64 offset,
+			      unsigned long size,
+			      unsigned long prot,
+			      unsigned long flags)
+{
+	struct file *file;
+	unsigned long addr;
+
+	/* Pretend to open("/dev/dri/card0") */
+	file = mock_drm_getfile(i915->drm.primary, O_RDWR);
+	if (IS_ERR(file))
+		return PTR_ERR(file);
+
+	addr = igt_mmap_offset_with_file(i915, offset, size, prot, flags, file);
 	fput(file);
+
 	return addr;
 }
diff --git a/drivers/gpu/drm/i915/selftests/igt_mmap.h b/drivers/gpu/drm/i915/selftests/igt_mmap.h
index acbe34d81a6d..7b177b44cd3c 100644
--- a/drivers/gpu/drm/i915/selftests/igt_mmap.h
+++ b/drivers/gpu/drm/i915/selftests/igt_mmap.h
@@ -11,6 +11,7 @@
 
 struct drm_i915_private;
 struct drm_vma_offset_node;
+struct file;
 
 unsigned long igt_mmap_offset(struct drm_i915_private *i915,
 			      u64 offset,
@@ -18,4 +19,11 @@ unsigned long igt_mmap_offset(struct drm_i915_private *i915,
 			      unsigned long prot,
 			      unsigned long flags);
 
+unsigned long igt_mmap_offset_with_file(struct drm_i915_private *i915,
+					u64 offset,
+					unsigned long size,
+					unsigned long prot,
+					unsigned long flags,
+					struct file *file);
+
 #endif /* IGT_MMAP_H */
-- 
2.43.0

